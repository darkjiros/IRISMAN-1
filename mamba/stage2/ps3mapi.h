#ifndef __PS3API_H__
#define __PS3API_H__

#define SYSCALL8_OPCODE_PS3API			 	0x7777
#define PS3API_OPCODE_GET_VERSION			0x1001
#define PS3API_OPCODE_GET_ALL_PROC			0x2002
#define PS3API_OPCODE_GET_PROC_MEM			0x3003
#define PS3API_OPCODE_SET_PROC_MEM			0x4004

int ps3mapi_set_process_mem(uint32_t pid, uint64_t addr, char *buf, int size );
int ps3mapi_get_process_mem(uint32_t pid, uint64_t addr, int size );
int ps3mapi_get_all_processes();
process_t ps3mapi_get_process_by_pid(uint32_t pid);

#endif /* __PS3API_H__ */

