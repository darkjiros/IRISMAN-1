#include <lv2/lv2.h>
#include <lv2/libc.h>
#include <lv2/memory.h>
#include <lv2/process.h>
#include <lv2/symbols.h>
#include <lv2/io.h>
#include "ps3mapi.h"

int ps3mapi_set_process_mem(uint32_t pid, uint64_t addr, char *buf, int size )
{
	int ret =-1;
	process_t process = ps3mapi_get_process_by_pid(pid);
	if (process == 0) return -2;
	buf = get_secure_user_ptr(buf);
	ret = copy_to_process(process, (void *)buf, (void *)addr, size);
	return ret;
}

int ps3mapi_get_process_mem(uint32_t pid, uint64_t addr, int size )
{
	char path[0x420];
	void *buf;
	int ret = -1;
	process_t process = ps3mapi_get_process_by_pid(pid);
	if (process == 0) return -2;
	int	fd;
	sprintf(path, "/dev_hdd0/tmp/PS3API/tmp/%s-%lx-%i.get.bin", get_process_name(process), addr, size);
	buf = alloc(KB(64), 0x27);
	if (!buf) return ret;
	ret = cellFsOpen(path, CELL_FS_O_WRONLY|CELL_FS_O_CREAT|CELL_FS_O_TRUNC, &fd, 0666, NULL, 0);
	if (ret != 0) return ret;
	int sizetoread = KB(64);
	int leftsize = size;
	if (size < KB(64)) sizetoread = size;
	while  (0 < leftsize) 
	{
		uint64_t written;
		copy_from_process(process, (void *)addr, buf, sizetoread);
		cellFsWrite(fd, buf, sizetoread, &written);
		addr += sizetoread;
		leftsize -= sizetoread;
		if (leftsize < KB(64)) sizetoread = leftsize;
		if (sizetoread == 0) break;
	}
	cellFsClose(fd);
	dealloc(buf, 0x27);
	return ret;
}

int ps3mapi_get_all_processes()
{
	char procname[0x420];
	int ret, fd;
	ret = cellFsOpen("/dev_hdd0/tmp/PS3API/tmp/all_process.bin", CELL_FS_O_WRONLY|CELL_FS_O_CREAT|CELL_FS_O_TRUNC, &fd, 0666, NULL, 0);
	if (ret != 0) return ret;
	uint64_t *proc_list = *(uint64_t **)MKA(TOC+process_rtoc_entry_1);	
	proc_list = *(uint64_t **)proc_list;
	proc_list = *(uint64_t **)proc_list;
	int count = 0;	
	for (int i = 0; i < 0x10; i++)
	{
		process_t process = (process_t)proc_list[1];	
		proc_list += 2;		
		if ((((uint64_t)process) & 0xFFFFFFFF00000000ULL) != MKA(0))
			continue;
		uint64_t written;
		count ++;
		sprintf(procname, "%s\n", get_process_name(process));
		cellFsWrite(fd, procname, strlen(procname), &written);	
	}
	cellFsClose(fd);
	return 0;
}

process_t ps3mapi_get_process_by_pid(uint32_t pid)
{
	uint64_t *proc_list = *(uint64_t **)MKA(TOC+process_rtoc_entry_1);	
	proc_list = *(uint64_t **)proc_list;
	proc_list = *(uint64_t **)proc_list;	
	for (int i = 0; i < 0x10; i++)
	{
		process_t process = (process_t)proc_list[1];	
		proc_list += 2;		
		if ((((uint64_t)process) & 0xFFFFFFFF00000000ULL) != MKA(0))
			continue;
		if (process->pid == pid) return process;
	}
	return 0;
}
