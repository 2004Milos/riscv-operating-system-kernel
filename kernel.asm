
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	31013103          	ld	sp,784(sp) # 80007310 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	0f0030ef          	jal	ra,8000310c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN6Kernel14supervisorTrapEv>:
.extern _ZN6Kernel21supervisorTrapHandlerEv
.align 4
.global _ZN6Kernel14supervisorTrapEv
.type _ZN6Kernel14supervisorTrapEv, @function
_ZN6Kernel14supervisorTrapEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp id, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\id, \id * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN6Kernel21supervisorTrapHandlerEv
    80001084:	4a0000ef          	jal	ra,80001524 <_ZN6Kernel21supervisorTrapHandlerEv>

    .irp id, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\id, \id * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:


.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <_Z9mem_allocm>:
/**
 * C API function for allocation on heap
 * @param size Size in bytes to be allocated
 * @return pointer to allocated heap space
 */
void* mem_alloc(size_t size) {
    80001124:	ff010113          	addi	sp,sp,-16
    80001128:	00813423          	sd	s0,8(sp)
    8000112c:	01010413          	addi	s0,sp,16
    size_t size_in_blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001130:	03f50513          	addi	a0,a0,63
    80001134:	00655513          	srli	a0,a0,0x6
    
    __asm__ volatile("mv a1, %0" : : "r"(size_in_blocks)); //send size as argument for ecall
    80001138:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01"); //send opcode as second argument (0x01 - mem_alloc)
    8000113c:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001140:	00000073          	ecall

    void* ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001144:	00050513          	mv	a0,a0
    return ret;
}
    80001148:	00813403          	ld	s0,8(sp)
    8000114c:	01010113          	addi	sp,sp,16
    80001150:	00008067          	ret

0000000080001154 <_Z8mem_freePv>:
/**
 * C API function to free allocated space
 * @param ptr pointer to heap space allocated by mem_alloc
 * @return negative error code or 0 for successfull free
 */
int mem_free (void* ptr) {
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ptr)); //send pointer as argument for ecall
    80001160:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02"); //send opcode as second argument (0x02 - mem_free)
    80001164:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001168:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    8000116c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001170:	0005051b          	sext.w	a0,a0
    80001174:	00813403          	ld	s0,8(sp)
    80001178:	01010113          	addi	sp,sp,16
    8000117c:	00008067          	ret

0000000080001180 <_Z13thread_createPP3TCBPFvPvES2_>:
 * C API function to start thread on start_routine function
 * @param arg pointer to the function argument
 * @param handle if created successfully here is written the handle of new thread
 * @return negative error code or 0 for successfull free
 */
int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    80001180:	ff010113          	addi	sp,sp,-16
    80001184:	00813423          	sd	s0,8(sp)
    80001188:	01010413          	addi	s0,sp,16

    __asm__ volatile("mv a7, %0" : : "r"(arg));
    8000118c:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    80001190:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    80001194:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    80001198:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    8000119c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800011a0:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800011a4:	0005051b          	sext.w	a0,a0
    800011a8:	00813403          	ld	s0,8(sp)
    800011ac:	01010113          	addi	sp,sp,16
    800011b0:	00008067          	ret

00000000800011b4 <_Z11thread_exitv>:

/**
 * C API function to terminate current thread
 * @return negative error code or 0 for successfull free
 */
int thread_exit() {
    800011b4:	ff010113          	addi	sp,sp,-16
    800011b8:	00813423          	sd	s0,8(sp)
    800011bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800011c0:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    800011c4:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800011c8:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800011cc:	0005051b          	sext.w	a0,a0
    800011d0:	00813403          	ld	s0,8(sp)
    800011d4:	01010113          	addi	sp,sp,16
    800011d8:	00008067          	ret

00000000800011dc <_Z15thread_dispatchv>:

/**
 * C API function to potentially switch to another thread
 */
void thread_dispatch (){
    800011dc:	ff010113          	addi	sp,sp,-16
    800011e0:	00813423          	sd	s0,8(sp)
    800011e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800011e8:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800011ec:	00000073          	ecall
}
    800011f0:	00813403          	ld	s0,8(sp)
    800011f4:	01010113          	addi	sp,sp,16
    800011f8:	00008067          	ret

00000000800011fc <_Z8sem_openPP10KSemaphorej>:
 * C API function to open a semaphore
 * @param handle pointer to semaphore handle
 * @param init initial value of semaphore
 * @return negative error code or 0 for success
 */
int sem_open(sem_t* handle, unsigned init) {
    800011fc:	ff010113          	addi	sp,sp,-16
    80001200:	00813423          	sd	s0,8(sp)
    80001204:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001208:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    8000120c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001210:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001214:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001218:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000121c:	0005051b          	sext.w	a0,a0
    80001220:	00813403          	ld	s0,8(sp)
    80001224:	01010113          	addi	sp,sp,16
    80001228:	00008067          	ret

000000008000122c <_Z9sem_closeP10KSemaphore>:
/**
 * C API function to close a semaphore
 * @param handle semaphore handle
 * @return negative error code or 0 for success
 */
int sem_close(sem_t handle) {
    8000122c:	ff010113          	addi	sp,sp,-16
    80001230:	00813423          	sd	s0,8(sp)
    80001234:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001238:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    8000123c:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001240:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001244:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001248:	0005051b          	sext.w	a0,a0
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z8sem_waitP10KSemaphore>:
/**
 * C API function to wait on a semaphore
 * @param id semaphore handle
 * @return negative error code or 0 for success
 */
int sem_wait(sem_t id) {
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001264:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001268:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    8000126c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001270:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001274:	0005051b          	sext.w	a0,a0
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z10sem_wait_nP10KSemaphorej>:
 * C API function to wait on a semaphore for n resources
 * @param id semaphore handle
 * @param n number of resources to wait for
 * @return negative error code or 0 for success
 */
int sem_wait_n(sem_t id, unsigned n) { //bitan je redosled jer n stize u a1 a id u a0, i drugi redosled bi pregazio 
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (n));
    80001290:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x25");
    80001298:	02500513          	li	a0,37
    __asm__ volatile ("ecall");
    8000129c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800012a0:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800012a4:	0005051b          	sext.w	a0,a0
    800012a8:	00813403          	ld	s0,8(sp)
    800012ac:	01010113          	addi	sp,sp,16
    800012b0:	00008067          	ret

00000000800012b4 <_Z10sem_signalP10KSemaphore>:
/**
 * C API function to signal a semaphore
 * @param id semaphore handle
 * @return negative error code or 0 for success
 */
int sem_signal(sem_t id) {
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800012c4:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800012c8:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800012cc:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800012d0:	0005051b          	sext.w	a0,a0
    800012d4:	00813403          	ld	s0,8(sp)
    800012d8:	01010113          	addi	sp,sp,16
    800012dc:	00008067          	ret

00000000800012e0 <_Z12sem_signal_nP10KSemaphorej>:
 * C API function to signal a semaphore for n resources
 * @param id semaphore handle
 * @param n number of resources to signal
 * @return negative error code or 0 for success
 */
int sem_signal_n(sem_t id, unsigned n) {
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00813423          	sd	s0,8(sp)
    800012e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (n));
    800012ec:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x26");
    800012f4:	02600513          	li	a0,38
    __asm__ volatile ("ecall");
    800012f8:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800012fc:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001300:	0005051b          	sext.w	a0,a0
    80001304:	00813403          	ld	s0,8(sp)
    80001308:	01010113          	addi	sp,sp,16
    8000130c:	00008067          	ret

0000000080001310 <_Z10time_sleepm>:
/**
 * C API function to sleep for a specified time
 * @param time time to sleep
 * @return negative error code or 0 for success
 */
int time_sleep(time_t time) {
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    8000131c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80001320:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    80001324:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001328:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000132c:	0005051b          	sext.w	a0,a0
    80001330:	00813403          	ld	s0,8(sp)
    80001334:	01010113          	addi	sp,sp,16
    80001338:	00008067          	ret

000000008000133c <_Z4getcv>:

/**
 * C API function to get a character from the input buffer
 * @return character from the input buffer
 */
char getc() {
    8000133c:	ff010113          	addi	sp,sp,-16
    80001340:	00813423          	sd	s0,8(sp)
    80001344:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80001348:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    8000134c:	00000073          	ecall

    char ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001350:	00050513          	mv	a0,a0
    return ret;
}
    80001354:	0ff57513          	andi	a0,a0,255
    80001358:	00813403          	ld	s0,8(sp)
    8000135c:	01010113          	addi	sp,sp,16
    80001360:	00008067          	ret

0000000080001364 <_Z4putcc>:

/**
 * C API function to put a character into the output buffer
 * @param c character to put into the output buffer
 */
void putc(char c) {
    80001364:	ff010113          	addi	sp,sp,-16
    80001368:	00813423          	sd	s0,8(sp)
    8000136c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    80001370:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80001374:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001378:	00000073          	ecall
}
    8000137c:	00813403          	ld	s0,8(sp)
    80001380:	01010113          	addi	sp,sp,16
    80001384:	00008067          	ret

0000000080001388 <_ZN6Kernel16outputThreadBodyEPv>:
    // Nit koja jedina prazni buffOUT na konzolu (mora biti nit, ne kod u
    // prekidnoj rutini, jer Buffer::get() blokira na semaforu kad je prazan).
    TCB::createThread(outputThreadBody, nullptr);
}

void Kernel::outputThreadBody(void*) {
    80001388:	ff010113          	addi	sp,sp,-16
    8000138c:	00113423          	sd	ra,8(sp)
    80001390:	00813023          	sd	s0,0(sp)
    80001394:	01010413          	addi	s0,sp,16
    80001398:	00c0006f          	j	800013a4 <_ZN6Kernel16outputThreadBodyEPv+0x1c>
    while (true) {
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
            char c = buffOUT->get(); //blokira (preko semafora) dok ima nesto za slanje - bezbedno ovde, ovo je obicna nit, ne prekidna rutina
            (*(char *) CONSOLE_TX_DATA) = c;
        }
        thread_dispatch(); //ako konzola trenutno nije spremna za prijem, ustupi procesor umesto da se vrti u mestu
    8000139c:	00000097          	auipc	ra,0x0
    800013a0:	e40080e7          	jalr	-448(ra) # 800011dc <_Z15thread_dispatchv>
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    800013a4:	00006797          	auipc	a5,0x6
    800013a8:	f447b783          	ld	a5,-188(a5) # 800072e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800013ac:	0007b783          	ld	a5,0(a5)
    800013b0:	0007c783          	lbu	a5,0(a5)
    800013b4:	0ff7f793          	andi	a5,a5,255
    800013b8:	0207f793          	andi	a5,a5,32
    800013bc:	fe0780e3          	beqz	a5,8000139c <_ZN6Kernel16outputThreadBodyEPv+0x14>
            char c = buffOUT->get(); //blokira (preko semafora) dok ima nesto za slanje - bezbedno ovde, ovo je obicna nit, ne prekidna rutina
    800013c0:	00006517          	auipc	a0,0x6
    800013c4:	fd053503          	ld	a0,-48(a0) # 80007390 <_ZN6Kernel7buffOUTE>
    800013c8:	00002097          	auipc	ra,0x2
    800013cc:	c40080e7          	jalr	-960(ra) # 80003008 <_ZN6Buffer3getEv>
            (*(char *) CONSOLE_TX_DATA) = c;
    800013d0:	00006797          	auipc	a5,0x6
    800013d4:	f307b783          	ld	a5,-208(a5) # 80007300 <_GLOBAL_OFFSET_TABLE_+0x30>
    800013d8:	0007b783          	ld	a5,0(a5)
    800013dc:	00a78023          	sb	a0,0(a5)
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    800013e0:	fc5ff06f          	j	800013a4 <_ZN6Kernel16outputThreadBodyEPv+0x1c>

00000000800013e4 <_ZN6Kernel10popSppSpieEv>:
    }
}

void Kernel::popSppSpie() {
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    static inline void ms_sstatus(uint64 mask) {
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    }

    static inline void mc_sstatus(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800013f0:	10000793          	li	a5,256
    800013f4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra"); //sepc = adresa odmah iza poziva ove funkcije (ra), da bi sret "nastavio" tacno tu, samo u User modu
    800013f8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret"); //vrati se iz trap-a
    800013fc:	10200073          	sret
}
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_ZN6Kernel11initBuffersEv>:

Buffer *Kernel::buffIN;
Buffer *Kernel::buffOUT;

void Kernel::initBuffers() {
    8000140c:	fe010113          	addi	sp,sp,-32
    80001410:	00113c23          	sd	ra,24(sp)
    80001414:	00813823          	sd	s0,16(sp)
    80001418:	00913423          	sd	s1,8(sp)
    8000141c:	01213023          	sd	s2,0(sp)
    80001420:	02010413          	addi	s0,sp,32
        char get();
        Buffer(int cap);
        ~Buffer();
        void* operator new(size_t size)
        {
            return MemoryAllocator::instance().kmem_alloc(size);
    80001424:	00001097          	auipc	ra,0x1
    80001428:	660080e7          	jalr	1632(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    8000142c:	03000593          	li	a1,48
    80001430:	00001097          	auipc	ra,0x1
    80001434:	6e0080e7          	jalr	1760(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    80001438:	00050493          	mv	s1,a0
    buffIN = new Buffer(512);
    8000143c:	20000593          	li	a1,512
    80001440:	00002097          	auipc	ra,0x2
    80001444:	a88080e7          	jalr	-1400(ra) # 80002ec8 <_ZN6BufferC1Ei>
    80001448:	00006797          	auipc	a5,0x6
    8000144c:	f497b823          	sd	s1,-176(a5) # 80007398 <_ZN6Kernel6buffINE>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	634080e7          	jalr	1588(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001458:	03000593          	li	a1,48
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	6b4080e7          	jalr	1716(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    80001464:	00050493          	mv	s1,a0
    buffOUT = new Buffer(512);
    80001468:	20000593          	li	a1,512
    8000146c:	00002097          	auipc	ra,0x2
    80001470:	a5c080e7          	jalr	-1444(ra) # 80002ec8 <_ZN6BufferC1Ei>
    80001474:	00006797          	auipc	a5,0x6
    80001478:	f097be23          	sd	s1,-228(a5) # 80007390 <_ZN6Kernel7buffOUTE>
}
    8000147c:	01813083          	ld	ra,24(sp)
    80001480:	01013403          	ld	s0,16(sp)
    80001484:	00813483          	ld	s1,8(sp)
    80001488:	00013903          	ld	s2,0(sp)
    8000148c:	02010113          	addi	sp,sp,32
    80001490:	00008067          	ret
    80001494:	00050913          	mv	s2,a0
        }
        void operator delete(void* ptr)
        {
            MemoryAllocator::instance().kmem_free(ptr);
    80001498:	00001097          	auipc	ra,0x1
    8000149c:	5ec080e7          	jalr	1516(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800014a0:	00048593          	mv	a1,s1
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	7f4080e7          	jalr	2036(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
            return;
    800014ac:	00090513          	mv	a0,s2
    800014b0:	00007097          	auipc	ra,0x7
    800014b4:	028080e7          	jalr	40(ra) # 800084d8 <_Unwind_Resume>
    800014b8:	00050913          	mv	s2,a0
            MemoryAllocator::instance().kmem_free(ptr);
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	5c8080e7          	jalr	1480(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800014c4:	00048593          	mv	a1,s1
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	7d0080e7          	jalr	2000(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
            return;
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00007097          	auipc	ra,0x7
    800014d8:	004080e7          	jalr	4(ra) # 800084d8 <_Unwind_Resume>

00000000800014dc <_ZN6Kernel4initEv>:
void Kernel::init() {
    800014dc:	ff010113          	addi	sp,sp,-16
    800014e0:	00113423          	sd	ra,8(sp)
    800014e4:	00813023          	sd	s0,0(sp)
    800014e8:	01010413          	addi	s0,sp,16
    initBuffers();
    800014ec:	00000097          	auipc	ra,0x0
    800014f0:	f20080e7          	jalr	-224(ra) # 8000140c <_ZN6Kernel11initBuffersEv>
    w_stvec((uint64)&supervisorTrap);
    800014f4:	00006797          	auipc	a5,0x6
    800014f8:	e247b783          	ld	a5,-476(a5) # 80007318 <_GLOBAL_OFFSET_TABLE_+0x48>
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
        return x;
    }

    static inline void w_stvec(uint64 x) {
        __asm__ volatile("csrw stvec, %0" : : "r"(x));
    800014fc:	10579073          	csrw	stvec,a5
    TCB::createThread(outputThreadBody, nullptr);
    80001500:	00000593          	li	a1,0
    80001504:	00000517          	auipc	a0,0x0
    80001508:	e8450513          	addi	a0,a0,-380 # 80001388 <_ZN6Kernel16outputThreadBodyEPv>
    8000150c:	00001097          	auipc	ra,0x1
    80001510:	9e4080e7          	jalr	-1564(ra) # 80001ef0 <_ZN3TCB12createThreadEPFvPvES0_>
}
    80001514:	00813083          	ld	ra,8(sp)
    80001518:	00013403          	ld	s0,0(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_ZN6Kernel21supervisorTrapHandlerEv>:

using Body = void (*)(void*);

void Kernel::supervisorTrapHandler()
{
    80001524:	f9010113          	addi	sp,sp,-112
    80001528:	06113423          	sd	ra,104(sp)
    8000152c:	06813023          	sd	s0,96(sp)
    80001530:	04913c23          	sd	s1,88(sp)
    80001534:	05213823          	sd	s2,80(sp)
    80001538:	05313423          	sd	s3,72(sp)
    8000153c:	07010413          	addi	s0,sp,112
        __asm__ volatile("csrr %0, scause" : "=r"(x));
    80001540:	142027f3          	csrr	a5,scause
    80001544:	faf43823          	sd	a5,-80(s0)
        return x;
    80001548:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL) {//timer interrupt can be recognized by the value 1 only in the least and most significant bits in the scause register.
    8000154c:	fff00793          	li	a5,-1
    80001550:	03f79793          	slli	a5,a5,0x3f
    80001554:	00178793          	addi	a5,a5,1
    80001558:	02f70e63          	beq	a4,a5,80001594 <_ZN6Kernel21supervisorTrapHandlerEv+0x70>
        mc_sip(BitMaskSip::SIP_SSIP); //clear the timer interrupt pending bit in the sip register
        TCB::time_tick();
    }
    else if(scause == 0x8000000000000009UL){ //Hardware interrupt
    8000155c:	fff00793          	li	a5,-1
    80001560:	03f79793          	slli	a5,a5,0x3f
    80001564:	00978793          	addi	a5,a5,9
    80001568:	04f70063          	beq	a4,a5,800015a8 <_ZN6Kernel21supervisorTrapHandlerEv+0x84>
                status = *((char *) CONSOLE_STATUS);
            }
        }
        plic_complete(irq);
    }
    else if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000156c:	ff870713          	addi	a4,a4,-8
    80001570:	00100793          	li	a5,1
    80001574:	0ce7fe63          	bgeu	a5,a4,80001650 <_ZN6Kernel21supervisorTrapHandlerEv+0x12c>
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    
    return;
    80001578:	06813083          	ld	ra,104(sp)
    8000157c:	06013403          	ld	s0,96(sp)
    80001580:	05813483          	ld	s1,88(sp)
    80001584:	05013903          	ld	s2,80(sp)
    80001588:	04813983          	ld	s3,72(sp)
    8000158c:	07010113          	addi	sp,sp,112
    80001590:	00008067          	ret
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001594:	00200793          	li	a5,2
    80001598:	1447b073          	csrc	sip,a5
        TCB::time_tick();
    8000159c:	00001097          	auipc	ra,0x1
    800015a0:	d64080e7          	jalr	-668(ra) # 80002300 <_ZN3TCB9time_tickEv>
    800015a4:	fd5ff06f          	j	80001578 <_ZN6Kernel21supervisorTrapHandlerEv+0x54>
        int irq = plic_claim();
    800015a8:	00002097          	auipc	ra,0x2
    800015ac:	3bc080e7          	jalr	956(ra) # 80003964 <plic_claim>
    800015b0:	00050493          	mv	s1,a0
        if (irq == 10) // Keyboard interrupt
    800015b4:	00a00793          	li	a5,10
    800015b8:	00f50a63          	beq	a0,a5,800015cc <_ZN6Kernel21supervisorTrapHandlerEv+0xa8>
        plic_complete(irq);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00002097          	auipc	ra,0x2
    800015c4:	3dc080e7          	jalr	988(ra) # 8000399c <plic_complete>
    800015c8:	fb1ff06f          	j	80001578 <_ZN6Kernel21supervisorTrapHandlerEv+0x54>
            volatile char status = *((char *) CONSOLE_STATUS);
    800015cc:	00006797          	auipc	a5,0x6
    800015d0:	d1c7b783          	ld	a5,-740(a5) # 800072e8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800015d4:	0007b903          	ld	s2,0(a5)
    800015d8:	00094783          	lbu	a5,0(s2)
    800015dc:	f8f40ba3          	sb	a5,-105(s0)
    800015e0:	0280006f          	j	80001608 <_ZN6Kernel21supervisorTrapHandlerEv+0xe4>
                if (!buffIN->full()) buffIN->put(c);
    800015e4:	00098593          	mv	a1,s3
    800015e8:	00002097          	auipc	ra,0x2
    800015ec:	998080e7          	jalr	-1640(ra) # 80002f80 <_ZN6Buffer3putEc>
    800015f0:	0480006f          	j	80001638 <_ZN6Kernel21supervisorTrapHandlerEv+0x114>
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
    800015f4:	00098593          	mv	a1,s3
    800015f8:	00002097          	auipc	ra,0x2
    800015fc:	988080e7          	jalr	-1656(ra) # 80002f80 <_ZN6Buffer3putEc>
                status = *((char *) CONSOLE_STATUS);
    80001600:	00094783          	lbu	a5,0(s2)
    80001604:	f8f40ba3          	sb	a5,-105(s0)
            while (status & CONSOLE_RX_STATUS_BIT) { //receive data dok god ima novopristiglih znakova
    80001608:	f9744783          	lbu	a5,-105(s0)
    8000160c:	0017f793          	andi	a5,a5,1
    80001610:	fa0786e3          	beqz	a5,800015bc <_ZN6Kernel21supervisorTrapHandlerEv+0x98>
                char c = (*(char *) CONSOLE_RX_DATA);
    80001614:	00006797          	auipc	a5,0x6
    80001618:	ccc7b783          	ld	a5,-820(a5) # 800072e0 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000161c:	0007b783          	ld	a5,0(a5)
    80001620:	0007c983          	lbu	s3,0(a5)
                if (!buffIN->full()) buffIN->put(c);
    80001624:	00006517          	auipc	a0,0x6
    80001628:	d7453503          	ld	a0,-652(a0) # 80007398 <_ZN6Kernel6buffINE>
        }
        bool full() { return cnt==cap;}
    8000162c:	02852703          	lw	a4,40(a0)
    80001630:	00052783          	lw	a5,0(a0)
    80001634:	faf718e3          	bne	a4,a5,800015e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
    80001638:	00006517          	auipc	a0,0x6
    8000163c:	d5853503          	ld	a0,-680(a0) # 80007390 <_ZN6Kernel7buffOUTE>
    80001640:	02852703          	lw	a4,40(a0)
    80001644:	00052783          	lw	a5,0(a0)
    80001648:	faf70ce3          	beq	a4,a5,80001600 <_ZN6Kernel21supervisorTrapHandlerEv+0xdc>
    8000164c:	fa9ff06f          	j	800015f4 <_ZN6Kernel21supervisorTrapHandlerEv+0xd0>
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    80001650:	141027f3          	csrr	a5,sepc
    80001654:	fcf43423          	sd	a5,-56(s0)
        return x;
    80001658:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    8000165c:	00478793          	addi	a5,a5,4
    80001660:	f8f43c23          	sd	a5,-104(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    80001664:	100027f3          	csrr	a5,sstatus
    80001668:	fcf43023          	sd	a5,-64(s0)
        return x;
    8000166c:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus =  r_sstatus();
    80001670:	faf43023          	sd	a5,-96(s0)
        __asm__ volatile("mv %0, a0" : "=r"(x));
    80001674:	00050793          	mv	a5,a0
    80001678:	faf43c23          	sd	a5,-72(s0)
        return x;
    8000167c:	fb843783          	ld	a5,-72(s0)
        uint64 volatile opcode = r_a0();
    80001680:	faf43423          	sd	a5,-88(s0)
        switch (opcode) {
    80001684:	fa843783          	ld	a5,-88(s0)
    80001688:	04200713          	li	a4,66
    8000168c:	04f76063          	bltu	a4,a5,800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
    80001690:	00279793          	slli	a5,a5,0x2
    80001694:	00005717          	auipc	a4,0x5
    80001698:	98c70713          	addi	a4,a4,-1652 # 80006020 <CONSOLE_STATUS+0x10>
    8000169c:	00e787b3          	add	a5,a5,a4
    800016a0:	0007a783          	lw	a5,0(a5)
    800016a4:	00e787b3          	add	a5,a5,a4
    800016a8:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r" (size));
    800016ac:	00058493          	mv	s1,a1
                pointer = MemoryAllocator::instance().kmem_alloc(size);
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	3d4080e7          	jalr	980(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800016b8:	00048593          	mv	a1,s1
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	454080e7          	jalr	1108(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(pointer));
    800016c4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800016c8:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    800016cc:	fa043783          	ld	a5,-96(s0)
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    800016d0:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800016d4:	f9843783          	ld	a5,-104(s0)
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    800016d8:	14179073          	csrw	sepc,a5
    return;
    800016dc:	e9dff06f          	j	80001578 <_ZN6Kernel21supervisorTrapHandlerEv+0x54>
                __asm__ volatile("mv %0, a1" : "=r" (pointer));
    800016e0:	00058493          	mv	s1,a1
                value = MemoryAllocator::instance().kmem_free(pointer);
    800016e4:	00001097          	auipc	ra,0x1
    800016e8:	3a0080e7          	jalr	928(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	5a8080e7          	jalr	1448(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(value));
    800016f8:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800016fc:	04542823          	sw	t0,80(s0)
                break;
    80001700:	fcdff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    80001704:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    80001708:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
    8000170c:	00088593          	mv	a1,a7
                *tcb = TCB::createThread(body, arg);
    80001710:	00000097          	auipc	ra,0x0
    80001714:	7e0080e7          	jalr	2016(ra) # 80001ef0 <_ZN3TCB12createThreadEPFvPvES0_>
    80001718:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    8000171c:	00050863          	beqz	a0,8000172c <_ZN6Kernel21supervisorTrapHandlerEv+0x208>
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
    80001720:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001724:	04542823          	sw	t0,80(s0)
    80001728:	fa5ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                    __asm__ volatile ("li t0, -1"); //-1 = error
    8000172c:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001730:	04542823          	sw	t0,80(s0)
    80001734:	f99ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                TCB::running->setFinished(true);
    80001738:	00006797          	auipc	a5,0x6
    8000173c:	be87b783          	ld	a5,-1048(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001740:	0007b783          	ld	a5,0(a5)
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001744:	00100713          	li	a4,1
    80001748:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    8000174c:	00001097          	auipc	ra,0x1
    80001750:	8bc080e7          	jalr	-1860(ra) # 80002008 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80001754:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001758:	04542823          	sw	t0,80(s0)
                break;
    8000175c:	f71ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                TCB::dispatch();
    80001760:	00001097          	auipc	ra,0x1
    80001764:	8a8080e7          	jalr	-1880(ra) # 80002008 <_ZN3TCB8dispatchEv>
                break;
    80001768:	f65ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a2" : "=r" (init)); //initial value of semaphore
    8000176c:	00060513          	mv	a0,a2
    80001770:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80001774:	00058493          	mv	s1,a1
                *semHandle = KSemaphore::createSemaphore(init);
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	354080e7          	jalr	852(ra) # 80001acc <_ZN10KSemaphore15createSemaphoreEj>
    80001780:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80001784:	00050863          	beqz	a0,80001794 <_ZN6Kernel21supervisorTrapHandlerEv+0x270>
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
    80001788:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)"); //override a0 on stack to return value
    8000178c:	04542823          	sw	t0,80(s0)
    80001790:	f3dff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                    __asm__ volatile ("li t0, -1"); //load immediate -1 into t0 (error)
    80001794:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    80001798:	04542823          	sw	t0,80(s0)
    8000179c:	f31ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800017a0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800017a4:	00050c63          	beqz	a0,800017bc <_ZN6Kernel21supervisorTrapHandlerEv+0x298>
                    returnValue = semHandlePtr->close();
    800017a8:	00000097          	auipc	ra,0x0
    800017ac:	378080e7          	jalr	888(ra) # 80001b20 <_ZN10KSemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue)); //load return value into temporary register t0
    800017b0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override a0 on stack to return value
    800017b4:	04542823          	sw	t0,80(s0)
                break;
    800017b8:	f15ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                else returnValue = -2;
    800017bc:	ffe00513          	li	a0,-2
    800017c0:	ff1ff06f          	j	800017b0 <_ZN6Kernel21supervisorTrapHandlerEv+0x28c>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800017c4:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800017c8:	00050e63          	beqz	a0,800017e4 <_ZN6Kernel21supervisorTrapHandlerEv+0x2c0>
                    returnValue = semHandlePtr->kwait_n(1);
    800017cc:	00100593          	li	a1,1
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	0e0080e7          	jalr	224(ra) # 800018b0 <_ZN10KSemaphore7kwait_nEj>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800017d8:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); 
    800017dc:	04542823          	sw	t0,80(s0)
                break;
    800017e0:	eedff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                else returnValue = -2;
    800017e4:	ffe00513          	li	a0,-2
    800017e8:	ff1ff06f          	j	800017d8 <_ZN6Kernel21supervisorTrapHandlerEv+0x2b4>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800017ec:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800017f0:	00050e63          	beqz	a0,8000180c <_ZN6Kernel21supervisorTrapHandlerEv+0x2e8>
                    returnValue = semHandlePtr->ksignal_n(1);
    800017f4:	00100593          	li	a1,1
    800017f8:	00000097          	auipc	ra,0x0
    800017fc:	1c4080e7          	jalr	452(ra) # 800019bc <_ZN10KSemaphore9ksignal_nEj>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80001800:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001804:	04542823          	sw	t0,80(s0)
                break;
    80001808:	ec5ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                else returnValue = -2;
    8000180c:	ffe00513          	li	a0,-2
    80001810:	ff1ff06f          	j	80001800 <_ZN6Kernel21supervisorTrapHandlerEv+0x2dc>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80001814:	00058513          	mv	a0,a1
                __asm__ volatile ("mv %0, a2" : "=r" (value)); //n value
    80001818:	00060593          	mv	a1,a2
                if(semHandlePtr!= nullptr) {
    8000181c:	00050e63          	beqz	a0,80001838 <_ZN6Kernel21supervisorTrapHandlerEv+0x314>
                    returnValue = semHandlePtr->kwait_n(value);
    80001820:	0005859b          	sext.w	a1,a1
    80001824:	00000097          	auipc	ra,0x0
    80001828:	08c080e7          	jalr	140(ra) # 800018b0 <_ZN10KSemaphore7kwait_nEj>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000182c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001830:	04542823          	sw	t0,80(s0)
                break;
    80001834:	e99ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                else returnValue = -2;
    80001838:	ffe00513          	li	a0,-2
    8000183c:	ff1ff06f          	j	8000182c <_ZN6Kernel21supervisorTrapHandlerEv+0x308>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80001840:	00058513          	mv	a0,a1
                __asm__ volatile ("mv %0, a2" : "=r" (value)); //n value
    80001844:	00060593          	mv	a1,a2
                if(semHandlePtr!= nullptr) {
    80001848:	e80502e3          	beqz	a0,800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                    returnValue = semHandlePtr->ksignal_n(value);
    8000184c:	0005859b          	sext.w	a1,a1
    80001850:	00000097          	auipc	ra,0x0
    80001854:	16c080e7          	jalr	364(ra) # 800019bc <_ZN10KSemaphore9ksignal_nEj>
    80001858:	e75ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a1" : "=r" (value)); //time value
    8000185c:	00058513          	mv	a0,a1
                returnValue = TCB::time_sleep(value);
    80001860:	0005051b          	sext.w	a0,a0
    80001864:	00001097          	auipc	ra,0x1
    80001868:	9d4080e7          	jalr	-1580(ra) # 80002238 <_ZN3TCB10time_sleepEm>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000186c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001870:	04542823          	sw	t0,80(s0)
                break;
    80001874:	e59ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                returnValue = buffIN->get();
    80001878:	00006517          	auipc	a0,0x6
    8000187c:	b2053503          	ld	a0,-1248(a0) # 80007398 <_ZN6Kernel6buffINE>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	788080e7          	jalr	1928(ra) # 80003008 <_ZN6Buffer3getEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80001888:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    8000188c:	04542823          	sw	t0,80(s0)
                break;
    80001890:	e3dff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a1" : "=r" (c));
    80001894:	00058593          	mv	a1,a1
                buffOUT->put(c);
    80001898:	0ff5f593          	andi	a1,a1,255
    8000189c:	00006517          	auipc	a0,0x6
    800018a0:	af453503          	ld	a0,-1292(a0) # 80007390 <_ZN6Kernel7buffOUTE>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	6dc080e7          	jalr	1756(ra) # 80002f80 <_ZN6Buffer3putEc>
                break;
    800018ac:	e21ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>

00000000800018b0 <_ZN10KSemaphore7kwait_nEj>:
#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"

int KSemaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
    if (closed) {
    800018b0:	00054783          	lbu	a5,0(a0)
    800018b4:	0e079c63          	bnez	a5,800019ac <_ZN10KSemaphore7kwait_nEj+0xfc>
int KSemaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
    800018b8:	fd010113          	addi	sp,sp,-48
    800018bc:	02113423          	sd	ra,40(sp)
    800018c0:	02813023          	sd	s0,32(sp)
    800018c4:	00913c23          	sd	s1,24(sp)
    800018c8:	01213823          	sd	s2,16(sp)
    800018cc:	01313423          	sd	s3,8(sp)
    800018d0:	01413023          	sd	s4,0(sp)
    800018d4:	03010413          	addi	s0,sp,48
    800018d8:	00050493          	mv	s1,a0
    800018dc:	00058913          	mv	s2,a1
        return -1;
    }

    if (value >= n) { //value is never negative
    800018e0:	00452583          	lw	a1,4(a0)
    800018e4:	0325e863          	bltu	a1,s2,80001914 <_ZN10KSemaphore7kwait_nEj+0x64>
        value -= n;
    800018e8:	412585bb          	subw	a1,a1,s2
    800018ec:	00b52223          	sw	a1,4(a0)
        return 0;
    800018f0:	00000513          	li	a0,0
    if (closed) {
        return -1;
    }

    return 0;
}
    800018f4:	02813083          	ld	ra,40(sp)
    800018f8:	02013403          	ld	s0,32(sp)
    800018fc:	01813483          	ld	s1,24(sp)
    80001900:	01013903          	ld	s2,16(sp)
    80001904:	00813983          	ld	s3,8(sp)
    80001908:	00013a03          	ld	s4,0(sp)
    8000190c:	03010113          	addi	sp,sp,48
    80001910:	00008067          	ret
    blocked.addLast(
    80001914:	00850a13          	addi	s4,a0,8
        new BlockedThreadInfo(TCB::running, n)
    80001918:	01000513          	li	a0,16
    8000191c:	00001097          	auipc	ra,0x1
    80001920:	b48080e7          	jalr	-1208(ra) # 80002464 <_Znwm>
    80001924:	00050993          	mv	s3,a0
    80001928:	00006797          	auipc	a5,0x6
    8000192c:	9f87b783          	ld	a5,-1544(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001930:	0007b783          	ld	a5,0(a5)
private:
    class BlockedThreadInfo {
        TCB* thread; //pointer to blocked thread
        unsigned requested; //number of resources requested by the blocked thread (1 for wait, n for wait_n)

        BlockedThreadInfo(TCB* thread, unsigned requested) : thread(thread), requested(requested) {}
    80001934:	00f53023          	sd	a5,0(a0)
    80001938:	01252423          	sw	s2,8(a0)
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::instance().kmem_alloc(size);
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	148080e7          	jalr	328(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001944:	01000593          	li	a1,16
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	1c8080e7          	jalr	456(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001950:	01353023          	sd	s3,0(a0)
    80001954:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80001958:	008a3783          	ld	a5,8(s4)
    8000195c:	04078263          	beqz	a5,800019a0 <_ZN10KSemaphore7kwait_nEj+0xf0>
        {
            tail->next = elem;
    80001960:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001964:	00aa3423          	sd	a0,8(s4)
        } else
        {
            head = tail = elem;
        }
        size++;
    80001968:	010a3783          	ld	a5,16(s4)
    8000196c:	00178793          	addi	a5,a5,1
    80001970:	00fa3823          	sd	a5,16(s4)
    TCB::running->setBlocked(true);
    80001974:	00006797          	auipc	a5,0x6
    80001978:	9ac7b783          	ld	a5,-1620(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000197c:	0007b783          	ld	a5,0(a5)

    bool isBlocked() const { return this->blocked; }

    void setBlocked(bool value) { this->blocked = value; }
    80001980:	00100713          	li	a4,1
    80001984:	02e780a3          	sb	a4,33(a5)
    thread_dispatch();
    80001988:	00000097          	auipc	ra,0x0
    8000198c:	854080e7          	jalr	-1964(ra) # 800011dc <_Z15thread_dispatchv>
    if (closed) {
    80001990:	0004c783          	lbu	a5,0(s1)
    80001994:	02079063          	bnez	a5,800019b4 <_ZN10KSemaphore7kwait_nEj+0x104>
    return 0;
    80001998:	00000513          	li	a0,0
    8000199c:	f59ff06f          	j	800018f4 <_ZN10KSemaphore7kwait_nEj+0x44>
            head = tail = elem;
    800019a0:	00aa3423          	sd	a0,8(s4)
    800019a4:	00a4b423          	sd	a0,8(s1)
    800019a8:	fc1ff06f          	j	80001968 <_ZN10KSemaphore7kwait_nEj+0xb8>
        return -1;
    800019ac:	fff00513          	li	a0,-1
}
    800019b0:	00008067          	ret
        return -1;
    800019b4:	fff00513          	li	a0,-1
    800019b8:	f3dff06f          	j	800018f4 <_ZN10KSemaphore7kwait_nEj+0x44>

00000000800019bc <_ZN10KSemaphore9ksignal_nEj>:

int KSemaphore::ksignal_n(unsigned n) {
    if(this->closed) {
    800019bc:	00054783          	lbu	a5,0(a0)
    800019c0:	0c079863          	bnez	a5,80001a90 <_ZN10KSemaphore9ksignal_nEj+0xd4>
int KSemaphore::ksignal_n(unsigned n) {
    800019c4:	fd010113          	addi	sp,sp,-48
    800019c8:	02113423          	sd	ra,40(sp)
    800019cc:	02813023          	sd	s0,32(sp)
    800019d0:	00913c23          	sd	s1,24(sp)
    800019d4:	01213823          	sd	s2,16(sp)
    800019d8:	01313423          	sd	s3,8(sp)
    800019dc:	01413023          	sd	s4,0(sp)
    800019e0:	03010413          	addi	s0,sp,48
    800019e4:	00050493          	mv	s1,a0
        return -1;
    }

    this->value += n;
    800019e8:	00452783          	lw	a5,4(a0)
    800019ec:	00b785bb          	addw	a1,a5,a1
    800019f0:	00b52223          	sw	a1,4(a0)
    800019f4:	0440006f          	j	80001a38 <_ZN10KSemaphore9ksignal_nEj+0x7c>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    800019f8:	000a3423          	sd	zero,8(s4)

        T *ret = elem->data;
    800019fc:	00093983          	ld	s3,0(s2)
            MemoryAllocator::instance().kmem_free(ptr);
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	084080e7          	jalr	132(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001a08:	00090593          	mv	a1,s2
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	28c080e7          	jalr	652(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
        delete elem;
        size--;
    80001a14:	010a3783          	ld	a5,16(s4)
    80001a18:	fff78793          	addi	a5,a5,-1
    80001a1c:	00fa3823          	sd	a5,16(s4)
    while (this->blocked.peekFirst()) {
        BlockedThreadInfo* bti = this->blocked.peekFirst(); //FIFO - unlock threads in the order they were blocked
        if (bti->requested <= this->value) {
            this->value -= bti->requested;
            bti = this->blocked.removeFirst();
            bti->thread->setBlocked(false);
    80001a20:	0009b783          	ld	a5,0(s3)
    80001a24:	020780a3          	sb	zero,33(a5)
            Scheduler::put(bti->thread);
    80001a28:	0009b503          	ld	a0,0(s3)
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	3e0080e7          	jalr	992(ra) # 80002e0c <_ZN9Scheduler3putEP3TCB>
            delete bti;
    80001a34:	04099663          	bnez	s3,80001a80 <_ZN10KSemaphore9ksignal_nEj+0xc4>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001a38:	0084b783          	ld	a5,8(s1)
    80001a3c:	04078e63          	beqz	a5,80001a98 <_ZN10KSemaphore9ksignal_nEj+0xdc>
        return head->data;
    80001a40:	0007b783          	ld	a5,0(a5)
    while (this->blocked.peekFirst()) {
    80001a44:	06078c63          	beqz	a5,80001abc <_ZN10KSemaphore9ksignal_nEj+0x100>
        if (bti->requested <= this->value) {
    80001a48:	0087a703          	lw	a4,8(a5)
    80001a4c:	0044a783          	lw	a5,4(s1)
    80001a50:	06e7ea63          	bltu	a5,a4,80001ac4 <_ZN10KSemaphore9ksignal_nEj+0x108>
            this->value -= bti->requested;
    80001a54:	40e787bb          	subw	a5,a5,a4
    80001a58:	00f4a223          	sw	a5,4(s1)
            bti = this->blocked.removeFirst();
    80001a5c:	00848a13          	addi	s4,s1,8
        if (!head) { return 0; }
    80001a60:	0084b903          	ld	s2,8(s1)
    80001a64:	00090a63          	beqz	s2,80001a78 <_ZN10KSemaphore9ksignal_nEj+0xbc>
        head = head->next;
    80001a68:	00893783          	ld	a5,8(s2)
    80001a6c:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001a70:	f80796e3          	bnez	a5,800019fc <_ZN10KSemaphore9ksignal_nEj+0x40>
    80001a74:	f85ff06f          	j	800019f8 <_ZN10KSemaphore9ksignal_nEj+0x3c>
        if (!head) { return 0; }
    80001a78:	00090993          	mv	s3,s2
    80001a7c:	fa5ff06f          	j	80001a20 <_ZN10KSemaphore9ksignal_nEj+0x64>
            delete bti;
    80001a80:	00098513          	mv	a0,s3
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	a30080e7          	jalr	-1488(ra) # 800024b4 <_ZdlPv>
    80001a8c:	fadff06f          	j	80001a38 <_ZN10KSemaphore9ksignal_nEj+0x7c>
        return -1;
    80001a90:	fff00513          	li	a0,-1
            break;
        }
    }

    return 0;
}
    80001a94:	00008067          	ret
    return 0;
    80001a98:	00000513          	li	a0,0
}
    80001a9c:	02813083          	ld	ra,40(sp)
    80001aa0:	02013403          	ld	s0,32(sp)
    80001aa4:	01813483          	ld	s1,24(sp)
    80001aa8:	01013903          	ld	s2,16(sp)
    80001aac:	00813983          	ld	s3,8(sp)
    80001ab0:	00013a03          	ld	s4,0(sp)
    80001ab4:	03010113          	addi	sp,sp,48
    80001ab8:	00008067          	ret
    return 0;
    80001abc:	00000513          	li	a0,0
    80001ac0:	fddff06f          	j	80001a9c <_ZN10KSemaphore9ksignal_nEj+0xe0>
    80001ac4:	00000513          	li	a0,0
    80001ac8:	fd5ff06f          	j	80001a9c <_ZN10KSemaphore9ksignal_nEj+0xe0>

0000000080001acc <_ZN10KSemaphore15createSemaphoreEj>:

KSemaphore *KSemaphore::createSemaphore(unsigned int init) {
    80001acc:	fe010113          	addi	sp,sp,-32
    80001ad0:	00113c23          	sd	ra,24(sp)
    80001ad4:	00813823          	sd	s0,16(sp)
    80001ad8:	00913423          	sd	s1,8(sp)
    80001adc:	02010413          	addi	s0,sp,32
    80001ae0:	00050493          	mv	s1,a0
        return MemoryAllocator::instance().kmem_alloc(size);
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	fa0080e7          	jalr	-96(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001aec:	02000593          	li	a1,32
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	020080e7          	jalr	32(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    List() : head(0), tail(0), size(0) {}
    80001af8:	00053423          	sd	zero,8(a0)
    80001afc:	00053823          	sd	zero,16(a0)
    80001b00:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80001b04:	00952223          	sw	s1,4(a0)
        this->closed = false;
    80001b08:	00050023          	sb	zero,0(a0)
    return new KSemaphore(init);
}
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	02010113          	addi	sp,sp,32
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    if (closed) {
    80001b20:	00054783          	lbu	a5,0(a0)
    80001b24:	0a079263          	bnez	a5,80001bc8 <_ZN10KSemaphore5closeEv+0xa8>
int KSemaphore::close() {
    80001b28:	fd010113          	addi	sp,sp,-48
    80001b2c:	02113423          	sd	ra,40(sp)
    80001b30:	02813023          	sd	s0,32(sp)
    80001b34:	00913c23          	sd	s1,24(sp)
    80001b38:	01213823          	sd	s2,16(sp)
    80001b3c:	01313423          	sd	s3,8(sp)
    80001b40:	01413023          	sd	s4,0(sp)
    80001b44:	03010413          	addi	s0,sp,48
    80001b48:	00050493          	mv	s1,a0
        return -1;
    }
    closed = true;
    80001b4c:	00100793          	li	a5,1
    80001b50:	00f50023          	sb	a5,0(a0)
    80001b54:	0400006f          	j	80001b94 <_ZN10KSemaphore5closeEv+0x74>
        if (!head) { tail = 0; }
    80001b58:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    80001b5c:	00093a03          	ld	s4,0(s2)
            MemoryAllocator::instance().kmem_free(ptr);
    80001b60:	00001097          	auipc	ra,0x1
    80001b64:	f24080e7          	jalr	-220(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001b68:	00090593          	mv	a1,s2
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	12c080e7          	jalr	300(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    80001b74:	0109b783          	ld	a5,16(s3)
    80001b78:	fff78793          	addi	a5,a5,-1
    80001b7c:	00f9b823          	sd	a5,16(s3)

    while (this->blocked.peekFirst()) {
        BlockedThreadInfo* bti = this->blocked.removeFirst();
        bti->thread->setBlocked(false);
    80001b80:	000a3783          	ld	a5,0(s4)
    80001b84:	020780a3          	sb	zero,33(a5)
        Scheduler::put(bti->thread);
    80001b88:	000a3503          	ld	a0,0(s4)
    80001b8c:	00001097          	auipc	ra,0x1
    80001b90:	280080e7          	jalr	640(ra) # 80002e0c <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001b94:	0084b783          	ld	a5,8(s1)
    80001b98:	02078c63          	beqz	a5,80001bd0 <_ZN10KSemaphore5closeEv+0xb0>
        return head->data;
    80001b9c:	0007b783          	ld	a5,0(a5)
    while (this->blocked.peekFirst()) {
    80001ba0:	04078a63          	beqz	a5,80001bf4 <_ZN10KSemaphore5closeEv+0xd4>
        BlockedThreadInfo* bti = this->blocked.removeFirst();
    80001ba4:	00848993          	addi	s3,s1,8
        if (!head) { return 0; }
    80001ba8:	0084b903          	ld	s2,8(s1)
    80001bac:	00090a63          	beqz	s2,80001bc0 <_ZN10KSemaphore5closeEv+0xa0>
        head = head->next;
    80001bb0:	00893783          	ld	a5,8(s2)
    80001bb4:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001bb8:	fa0792e3          	bnez	a5,80001b5c <_ZN10KSemaphore5closeEv+0x3c>
    80001bbc:	f9dff06f          	j	80001b58 <_ZN10KSemaphore5closeEv+0x38>
        if (!head) { return 0; }
    80001bc0:	00090a13          	mv	s4,s2
    80001bc4:	fbdff06f          	j	80001b80 <_ZN10KSemaphore5closeEv+0x60>
        return -1;
    80001bc8:	fff00513          	li	a0,-1
    }
    return 0;
    80001bcc:	00008067          	ret
    return 0;
    80001bd0:	00000513          	li	a0,0
    80001bd4:	02813083          	ld	ra,40(sp)
    80001bd8:	02013403          	ld	s0,32(sp)
    80001bdc:	01813483          	ld	s1,24(sp)
    80001be0:	01013903          	ld	s2,16(sp)
    80001be4:	00813983          	ld	s3,8(sp)
    80001be8:	00013a03          	ld	s4,0(sp)
    80001bec:	03010113          	addi	sp,sp,48
    80001bf0:	00008067          	ret
    return 0;
    80001bf4:	00000513          	li	a0,0
    80001bf8:	fddff06f          	j	80001bd4 <_ZN10KSemaphore5closeEv+0xb4>

0000000080001bfc <_Z8functionPv>:
#include "../h/syscall_cpp.hpp"
sem_t sem;
void function(void* arg) {
    80001bfc:	fe010113          	addi	sp,sp,-32
    80001c00:	00113c23          	sd	ra,24(sp)
    80001c04:	00813823          	sd	s0,16(sp)
    80001c08:	00913423          	sd	s1,8(sp)
    80001c0c:	02010413          	addi	s0,sp,32
    for (int i = 0; i < 5; i++) {
    80001c10:	00000493          	li	s1,0
    80001c14:	00400793          	li	a5,4
    80001c18:	0297ca63          	blt	a5,s1,80001c4c <_Z8functionPv+0x50>
        Console::putc('a');
    80001c1c:	06100513          	li	a0,97
    80001c20:	00001097          	auipc	ra,0x1
    80001c24:	c44080e7          	jalr	-956(ra) # 80002864 <_ZN7Console4putcEc>
        Thread::sleep(5);
    80001c28:	00500513          	li	a0,5
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	bbc080e7          	jalr	-1092(ra) # 800027e8 <_ZN6Thread5sleepEm>
        sem_signal(sem);
    80001c34:	00005517          	auipc	a0,0x5
    80001c38:	76c53503          	ld	a0,1900(a0) # 800073a0 <sem>
    80001c3c:	fffff097          	auipc	ra,0xfffff
    80001c40:	678080e7          	jalr	1656(ra) # 800012b4 <_Z10sem_signalP10KSemaphore>
    for (int i = 0; i < 5; i++) {
    80001c44:	0014849b          	addiw	s1,s1,1
    80001c48:	fcdff06f          	j	80001c14 <_Z8functionPv+0x18>
    }
}
    80001c4c:	01813083          	ld	ra,24(sp)
    80001c50:	01013403          	ld	s0,16(sp)
    80001c54:	00813483          	ld	s1,8(sp)
    80001c58:	02010113          	addi	sp,sp,32
    80001c5c:	00008067          	ret

0000000080001c60 <_Z8userMainv>:
        sem_signal(sem);
    }
};

void userMain()
{
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	01213023          	sd	s2,0(sp)
    80001c74:	02010413          	addi	s0,sp,32
    
    sem_open(&sem, 0);
    80001c78:	00000593          	li	a1,0
    80001c7c:	00005517          	auipc	a0,0x5
    80001c80:	72450513          	addi	a0,a0,1828 # 800073a0 <sem>
    80001c84:	fffff097          	auipc	ra,0xfffff
    80001c88:	578080e7          	jalr	1400(ra) # 800011fc <_Z8sem_openPP10KSemaphorej>
    Thread* t1 = new Thread(function, nullptr);
    80001c8c:	02000513          	li	a0,32
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	7d4080e7          	jalr	2004(ra) # 80002464 <_Znwm>
    80001c98:	00050493          	mv	s1,a0
    80001c9c:	00000613          	li	a2,0
    80001ca0:	00000597          	auipc	a1,0x0
    80001ca4:	f5c58593          	addi	a1,a1,-164 # 80001bfc <_Z8functionPv>
    80001ca8:	00001097          	auipc	ra,0x1
    80001cac:	aa4080e7          	jalr	-1372(ra) # 8000274c <_ZN6ThreadC1EPFvPvES0_>
    t1->start();
    80001cb0:	00048513          	mv	a0,s1
    80001cb4:	00001097          	auipc	ra,0x1
    80001cb8:	ac8080e7          	jalr	-1336(ra) # 8000277c <_ZN6Thread5startEv>
    MyPeriodicThread* pt = new MyPeriodicThread(10);
    80001cbc:	03000513          	li	a0,48
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	7a4080e7          	jalr	1956(ra) # 80002464 <_Znwm>
    80001cc8:	00050493          	mv	s1,a0
        : PeriodicThread(period)
    80001ccc:	00a00593          	li	a1,10
    80001cd0:	00001097          	auipc	ra,0x1
    80001cd4:	be4080e7          	jalr	-1052(ra) # 800028b4 <_ZN14PeriodicThreadC1Em>
    80001cd8:	00005797          	auipc	a5,0x5
    80001cdc:	56078793          	addi	a5,a5,1376 # 80007238 <_ZTV16MyPeriodicThread+0x10>
    80001ce0:	00f4b023          	sd	a5,0(s1)
    pt->start();
    80001ce4:	00048513          	mv	a0,s1
    80001ce8:	00001097          	auipc	ra,0x1
    80001cec:	a94080e7          	jalr	-1388(ra) # 8000277c <_ZN6Thread5startEv>
    sem_wait_n(sem, 10);
    80001cf0:	00a00593          	li	a1,10
    80001cf4:	00005517          	auipc	a0,0x5
    80001cf8:	6ac53503          	ld	a0,1708(a0) # 800073a0 <sem>
    80001cfc:	fffff097          	auipc	ra,0xfffff
    80001d00:	588080e7          	jalr	1416(ra) # 80001284 <_Z10sem_wait_nP10KSemaphorej>
}
    80001d04:	01813083          	ld	ra,24(sp)
    80001d08:	01013403          	ld	s0,16(sp)
    80001d0c:	00813483          	ld	s1,8(sp)
    80001d10:	00013903          	ld	s2,0(sp)
    80001d14:	02010113          	addi	sp,sp,32
    80001d18:	00008067          	ret
    80001d1c:	00050913          	mv	s2,a0
    Thread* t1 = new Thread(function, nullptr);
    80001d20:	00048513          	mv	a0,s1
    80001d24:	00000097          	auipc	ra,0x0
    80001d28:	790080e7          	jalr	1936(ra) # 800024b4 <_ZdlPv>
    80001d2c:	00090513          	mv	a0,s2
    80001d30:	00006097          	auipc	ra,0x6
    80001d34:	7a8080e7          	jalr	1960(ra) # 800084d8 <_Unwind_Resume>
    80001d38:	00050913          	mv	s2,a0
    MyPeriodicThread* pt = new MyPeriodicThread(10);
    80001d3c:	00048513          	mv	a0,s1
    80001d40:	00000097          	auipc	ra,0x0
    80001d44:	774080e7          	jalr	1908(ra) # 800024b4 <_ZdlPv>
    80001d48:	00090513          	mv	a0,s2
    80001d4c:	00006097          	auipc	ra,0x6
    80001d50:	78c080e7          	jalr	1932(ra) # 800084d8 <_Unwind_Resume>

0000000080001d54 <_ZN16MyPeriodicThread18periodicActivationEv>:
    void periodicActivation() override {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
        Console::putc('b');
    80001d64:	06200513          	li	a0,98
    80001d68:	00001097          	auipc	ra,0x1
    80001d6c:	afc080e7          	jalr	-1284(ra) # 80002864 <_ZN7Console4putcEc>
        sem_signal(sem);
    80001d70:	00005517          	auipc	a0,0x5
    80001d74:	63053503          	ld	a0,1584(a0) # 800073a0 <sem>
    80001d78:	fffff097          	auipc	ra,0xfffff
    80001d7c:	53c080e7          	jalr	1340(ra) # 800012b4 <_Z10sem_signalP10KSemaphore>
    }
    80001d80:	00813083          	ld	ra,8(sp)
    80001d84:	00013403          	ld	s0,0(sp)
    80001d88:	01010113          	addi	sp,sp,16
    80001d8c:	00008067          	ret

0000000080001d90 <_ZN16MyPeriodicThreadD1Ev>:
class MyPeriodicThread : public PeriodicThread {
    80001d90:	ff010113          	addi	sp,sp,-16
    80001d94:	00113423          	sd	ra,8(sp)
    80001d98:	00813023          	sd	s0,0(sp)
    80001d9c:	01010413          	addi	s0,sp,16
  sem_t myHandle; 
 
}; 
 
 
class PeriodicThread : public Thread { 
    80001da0:	00005797          	auipc	a5,0x5
    80001da4:	5587b783          	ld	a5,1368(a5) # 800072f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001da8:	01078793          	addi	a5,a5,16
    80001dac:	00f53023          	sd	a5,0(a0)
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	810080e7          	jalr	-2032(ra) # 800025c0 <_ZN6ThreadD1Ev>
    80001db8:	00813083          	ld	ra,8(sp)
    80001dbc:	00013403          	ld	s0,0(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZN16MyPeriodicThreadD0Ev>:
    80001dc8:	fe010113          	addi	sp,sp,-32
    80001dcc:	00113c23          	sd	ra,24(sp)
    80001dd0:	00813823          	sd	s0,16(sp)
    80001dd4:	00913423          	sd	s1,8(sp)
    80001dd8:	02010413          	addi	s0,sp,32
    80001ddc:	00050493          	mv	s1,a0
    80001de0:	00005797          	auipc	a5,0x5
    80001de4:	5187b783          	ld	a5,1304(a5) # 800072f8 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001de8:	01078793          	addi	a5,a5,16
    80001dec:	00f53023          	sd	a5,0(a0)
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	7d0080e7          	jalr	2000(ra) # 800025c0 <_ZN6ThreadD1Ev>
    80001df8:	00048513          	mv	a0,s1
    80001dfc:	00000097          	auipc	ra,0x0
    80001e00:	6b8080e7          	jalr	1720(ra) # 800024b4 <_ZdlPv>
    80001e04:	01813083          	ld	ra,24(sp)
    80001e08:	01013403          	ld	s0,16(sp)
    80001e0c:	00813483          	ld	s1,8(sp)
    80001e10:	02010113          	addi	sp,sp,32
    80001e14:	00008067          	ret

0000000080001e18 <main>:
#include "../h/memory_allocator.hpp"

extern void userMain();

void main()
{
    80001e18:	fc010113          	addi	sp,sp,-64
    80001e1c:	02113c23          	sd	ra,56(sp)
    80001e20:	02813823          	sd	s0,48(sp)
    80001e24:	04010413          	addi	s0,sp,64

    Kernel::init();
    80001e28:	fffff097          	auipc	ra,0xfffff
    80001e2c:	6b4080e7          	jalr	1716(ra) # 800014dc <_ZN6Kernel4initEv>
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80001e30:	00200793          	li	a5,2
    80001e34:	1007a073          	csrs	sstatus,a5
    Kernel::ms_sstatus(Kernel::SSTATUS_SIE);

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001e38:	00000593          	li	a1,0
    80001e3c:	00000513          	li	a0,0
    80001e40:	00000097          	auipc	ra,0x0
    80001e44:	0b0080e7          	jalr	176(ra) # 80001ef0 <_ZN3TCB12createThreadEPFvPvES0_>
    80001e48:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    80001e4c:	00005797          	auipc	a5,0x5
    80001e50:	4d47b783          	ld	a5,1236(a5) # 80007320 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001e54:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80001e58:	00000613          	li	a2,0
    80001e5c:	00005597          	auipc	a1,0x5
    80001e60:	47c5b583          	ld	a1,1148(a1) # 800072d8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001e64:	fd040513          	addi	a0,s0,-48
    80001e68:	fffff097          	auipc	ra,0xfffff
    80001e6c:	318080e7          	jalr	792(ra) # 80001180 <_Z13thread_createPP3TCBPFvPvES2_>
    80001e70:	00c0006f          	j	80001e7c <main+0x64>

    while(!threads[1]->isFinished() || Kernel::outputPending()) {
        thread_dispatch();
    80001e74:	fffff097          	auipc	ra,0xfffff
    80001e78:	368080e7          	jalr	872(ra) # 800011dc <_Z15thread_dispatchv>
    while(!threads[1]->isFinished() || Kernel::outputPending()) {
    80001e7c:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80001e80:	0207c783          	lbu	a5,32(a5)
    80001e84:	fe0788e3          	beqz	a5,80001e74 <main+0x5c>
    static bool outputPending() { return !buffOUT->empty(); }
    80001e88:	00005797          	auipc	a5,0x5
    80001e8c:	4807b783          	ld	a5,1152(a5) # 80007308 <_GLOBAL_OFFSET_TABLE_+0x38>
    80001e90:	0007b783          	ld	a5,0(a5)
        bool empty() { return cnt==0;}
    80001e94:	0287a783          	lw	a5,40(a5)
    80001e98:	fc079ee3          	bnez	a5,80001e74 <main+0x5c>
    }

    return;
    80001e9c:	03813083          	ld	ra,56(sp)
    80001ea0:	03013403          	ld	s0,48(sp)
    80001ea4:	04010113          	addi	sp,sp,64
    80001ea8:	00008067          	ret

0000000080001eac <_Z41__static_initialization_and_destruction_0ii>:
            SleepingThreads.addLast(t);
        } else {
            Scheduler::put(t);
        }
    }
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00813423          	sd	s0,8(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    80001eb8:	00100793          	li	a5,1
    80001ebc:	00f50863          	beq	a0,a5,80001ecc <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001ec0:	00813403          	ld	s0,8(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret
    80001ecc:	000107b7          	lui	a5,0x10
    80001ed0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ed4:	fef596e3          	bne	a1,a5,80001ec0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80001ed8:	00005797          	auipc	a5,0x5
    80001edc:	4d078793          	addi	a5,a5,1232 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    80001ee0:	0007b023          	sd	zero,0(a5)
    80001ee4:	0007b423          	sd	zero,8(a5)
    80001ee8:	0007b823          	sd	zero,16(a5)
    80001eec:	fd5ff06f          	j	80001ec0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001ef0 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001ef0:	fd010113          	addi	sp,sp,-48
    80001ef4:	02113423          	sd	ra,40(sp)
    80001ef8:	02813023          	sd	s0,32(sp)
    80001efc:	00913c23          	sd	s1,24(sp)
    80001f00:	01213823          	sd	s2,16(sp)
    80001f04:	01313423          	sd	s3,8(sp)
    80001f08:	03010413          	addi	s0,sp,48
    80001f0c:	00050913          	mv	s2,a0
    80001f10:	00058993          	mv	s3,a1
    static TCB *running;

    static List<TCB> SleepingThreads;

    void* operator new(size_t size) {
        return MemoryAllocator::instance().kmem_alloc(size);
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	b70080e7          	jalr	-1168(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001f1c:	05000593          	li	a1,80
    80001f20:	00001097          	auipc	ra,0x1
    80001f24:	bf0080e7          	jalr	-1040(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    80001f28:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            sleepTime(0),
            arg(arg)
    80001f2c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001f30:	00090a63          	beqz	s2,80001f44 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001f34:	00002537          	lui	a0,0x2
    80001f38:	00000097          	auipc	ra,0x0
    80001f3c:	554080e7          	jalr	1364(ra) # 8000248c <_Znam>
    80001f40:	0080006f          	j	80001f48 <_ZN3TCB12createThreadEPFvPvES0_+0x58>
    80001f44:	00000513          	li	a0,0
            arg(arg)
    80001f48:	00a4b423          	sd	a0,8(s1)
    80001f4c:	00000797          	auipc	a5,0x0
    80001f50:	1e878793          	addi	a5,a5,488 # 80002134 <_ZN3TCB13threadWrapperEv>
    80001f54:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f58:	04050063          	beqz	a0,80001f98 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    80001f5c:	000027b7          	lui	a5,0x2
    80001f60:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001f64:	00f4bc23          	sd	a5,24(s1)
    80001f68:	02048023          	sb	zero,32(s1)
    80001f6c:	020480a3          	sb	zero,33(s1)
    80001f70:	0204b423          	sd	zero,40(s1)
    80001f74:	0334b823          	sd	s3,48(s1)
    80001f78:	0204bc23          	sd	zero,56(s1)
    80001f7c:	0404b023          	sd	zero,64(s1)
    80001f80:	0404b423          	sd	zero,72(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001f84:	04090063          	beqz	s2,80001fc4 <_ZN3TCB12createThreadEPFvPvES0_+0xd4>
    80001f88:	00048513          	mv	a0,s1
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	e80080e7          	jalr	-384(ra) # 80002e0c <_ZN9Scheduler3putEP3TCB>
    80001f94:	0300006f          	j	80001fc4 <_ZN3TCB12createThreadEPFvPvES0_+0xd4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001f98:	00000793          	li	a5,0
    80001f9c:	fc9ff06f          	j	80001f64 <_ZN3TCB12createThreadEPFvPvES0_+0x74>
    80001fa0:	00050913          	mv	s2,a0
        MemoryAllocator::instance().kmem_free(ptr);
    80001fa4:	00001097          	auipc	ra,0x1
    80001fa8:	ae0080e7          	jalr	-1312(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80001fac:	00048593          	mv	a1,s1
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	ce8080e7          	jalr	-792(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
    80001fb8:	00090513          	mv	a0,s2
    80001fbc:	00006097          	auipc	ra,0x6
    80001fc0:	51c080e7          	jalr	1308(ra) # 800084d8 <_Unwind_Resume>
}
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	02813083          	ld	ra,40(sp)
    80001fcc:	02013403          	ld	s0,32(sp)
    80001fd0:	01813483          	ld	s1,24(sp)
    80001fd4:	01013903          	ld	s2,16(sp)
    80001fd8:	00813983          	ld	s3,8(sp)
    80001fdc:	03010113          	addi	sp,sp,48
    80001fe0:	00008067          	ret

0000000080001fe4 <_ZN3TCB5yieldEv>:
{
    80001fe4:	ff010113          	addi	sp,sp,-16
    80001fe8:	00813423          	sd	s0,8(sp)
    80001fec:	01010413          	addi	s0,sp,16
        __asm__ volatile("mv a0, %0" : : "r"(x));
    80001ff0:	01300793          	li	a5,19
    80001ff4:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001ff8:	00000073          	ecall
}
    80001ffc:	00813403          	ld	s0,8(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <_ZN3TCB8dispatchEv>:
{
    80002008:	fe010113          	addi	sp,sp,-32
    8000200c:	00113c23          	sd	ra,24(sp)
    80002010:	00813823          	sd	s0,16(sp)
    80002014:	00913423          	sd	s1,8(sp)
    80002018:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000201c:	00005497          	auipc	s1,0x5
    80002020:	3a44b483          	ld	s1,932(s1) # 800073c0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002024:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked() && !old->isSleeping()) {
    80002028:	00079a63          	bnez	a5,8000203c <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked() const { return this->blocked; }
    8000202c:	0214c783          	lbu	a5,33(s1)
    80002030:	00079663          	bnez	a5,8000203c <_ZN3TCB8dispatchEv+0x34>
    bool isSleeping() { return this->sleepTime > 0; }
    80002034:	0284b783          	ld	a5,40(s1)
    80002038:	02078c63          	beqz	a5,80002070 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    8000203c:	00001097          	auipc	ra,0x1
    80002040:	d40080e7          	jalr	-704(ra) # 80002d7c <_ZN9Scheduler3getEv>
    80002044:	00005797          	auipc	a5,0x5
    80002048:	36a7be23          	sd	a0,892(a5) # 800073c0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000204c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80002050:	01048513          	addi	a0,s1,16
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	0bc080e7          	jalr	188(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000205c:	01813083          	ld	ra,24(sp)
    80002060:	01013403          	ld	s0,16(sp)
    80002064:	00813483          	ld	s1,8(sp)
    80002068:	02010113          	addi	sp,sp,32
    8000206c:	00008067          	ret
        Scheduler::put(old);
    80002070:	00048513          	mv	a0,s1
    80002074:	00001097          	auipc	ra,0x1
    80002078:	d98080e7          	jalr	-616(ra) # 80002e0c <_ZN9Scheduler3putEP3TCB>
    8000207c:	fc1ff06f          	j	8000203c <_ZN3TCB8dispatchEv+0x34>

0000000080002080 <_ZN3TCB10releaseAllEv>:
void TCB::releaseAll() {
    80002080:	fd010113          	addi	sp,sp,-48
    80002084:	02113423          	sd	ra,40(sp)
    80002088:	02813023          	sd	s0,32(sp)
    8000208c:	00913c23          	sd	s1,24(sp)
    80002090:	01213823          	sd	s2,16(sp)
    80002094:	01313423          	sd	s3,8(sp)
    80002098:	01413023          	sd	s4,0(sp)
    8000209c:	03010413          	addi	s0,sp,48
    800020a0:	00050913          	mv	s2,a0
    800020a4:	03c0006f          	j	800020e0 <_ZN3TCB10releaseAllEv+0x60>
        if (!head) { tail = 0; }
    800020a8:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    800020ac:	0004ba03          	ld	s4,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    800020b0:	00001097          	auipc	ra,0x1
    800020b4:	9d4080e7          	jalr	-1580(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800020b8:	00048593          	mv	a1,s1
    800020bc:	00001097          	auipc	ra,0x1
    800020c0:	bdc080e7          	jalr	-1060(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    800020c4:	0109b783          	ld	a5,16(s3)
    800020c8:	fff78793          	addi	a5,a5,-1
    800020cc:	00f9b823          	sd	a5,16(s3)
    void setBlocked(bool value) { this->blocked = value; }
    800020d0:	020a00a3          	sb	zero,33(s4)
        Scheduler::put(tcb);
    800020d4:	000a0513          	mv	a0,s4
    800020d8:	00001097          	auipc	ra,0x1
    800020dc:	d34080e7          	jalr	-716(ra) # 80002e0c <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800020e0:	03893783          	ld	a5,56(s2)
    800020e4:	02078863          	beqz	a5,80002114 <_ZN3TCB10releaseAllEv+0x94>
        return head->data;
    800020e8:	0007b783          	ld	a5,0(a5)
    while (this->joined.peekFirst()) {
    800020ec:	02078463          	beqz	a5,80002114 <_ZN3TCB10releaseAllEv+0x94>
        TCB* tcb = this->joined.removeFirst();
    800020f0:	03890993          	addi	s3,s2,56
        if (!head) { return 0; }
    800020f4:	03893483          	ld	s1,56(s2)
    800020f8:	00048a63          	beqz	s1,8000210c <_ZN3TCB10releaseAllEv+0x8c>
        head = head->next;
    800020fc:	0084b783          	ld	a5,8(s1)
    80002100:	02f93c23          	sd	a5,56(s2)
        if (!head) { tail = 0; }
    80002104:	fa0794e3          	bnez	a5,800020ac <_ZN3TCB10releaseAllEv+0x2c>
    80002108:	fa1ff06f          	j	800020a8 <_ZN3TCB10releaseAllEv+0x28>
        if (!head) { return 0; }
    8000210c:	00048a13          	mv	s4,s1
    80002110:	fc1ff06f          	j	800020d0 <_ZN3TCB10releaseAllEv+0x50>
}
    80002114:	02813083          	ld	ra,40(sp)
    80002118:	02013403          	ld	s0,32(sp)
    8000211c:	01813483          	ld	s1,24(sp)
    80002120:	01013903          	ld	s2,16(sp)
    80002124:	00813983          	ld	s3,8(sp)
    80002128:	00013a03          	ld	s4,0(sp)
    8000212c:	03010113          	addi	sp,sp,48
    80002130:	00008067          	ret

0000000080002134 <_ZN3TCB13threadWrapperEv>:
{
    80002134:	fe010113          	addi	sp,sp,-32
    80002138:	00113c23          	sd	ra,24(sp)
    8000213c:	00813823          	sd	s0,16(sp)
    80002140:	00913423          	sd	s1,8(sp)
    80002144:	02010413          	addi	s0,sp,32
    Kernel::popSppSpie();
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	29c080e7          	jalr	668(ra) # 800013e4 <_ZN6Kernel10popSppSpieEv>
    running->body(running->arg);
    80002150:	00005497          	auipc	s1,0x5
    80002154:	25848493          	addi	s1,s1,600 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    80002158:	0184b783          	ld	a5,24(s1)
    8000215c:	0007b703          	ld	a4,0(a5)
    80002160:	0307b503          	ld	a0,48(a5)
    80002164:	000700e7          	jalr	a4
    running->setFinished(true);
    80002168:	0184b503          	ld	a0,24(s1)
    void setFinished(bool value) { finished = value; }
    8000216c:	00100793          	li	a5,1
    80002170:	02f50023          	sb	a5,32(a0)
    running->releaseAll(); //release all joined threads that are waiting for this thread to finish
    80002174:	00000097          	auipc	ra,0x0
    80002178:	f0c080e7          	jalr	-244(ra) # 80002080 <_ZN3TCB10releaseAllEv>
    thread_dispatch();
    8000217c:	fffff097          	auipc	ra,0xfffff
    80002180:	060080e7          	jalr	96(ra) # 800011dc <_Z15thread_dispatchv>
}
    80002184:	01813083          	ld	ra,24(sp)
    80002188:	01013403          	ld	s0,16(sp)
    8000218c:	00813483          	ld	s1,8(sp)
    80002190:	02010113          	addi	sp,sp,32
    80002194:	00008067          	ret

0000000080002198 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished; }
    80002198:	02054783          	lbu	a5,32(a0)
    if(!handle->isFinished()) {
    8000219c:	00078463          	beqz	a5,800021a4 <_ZN3TCB4joinEPS_+0xc>
    800021a0:	00008067          	ret
void TCB::join(TCB* handle) {
    800021a4:	fd010113          	addi	sp,sp,-48
    800021a8:	02113423          	sd	ra,40(sp)
    800021ac:	02813023          	sd	s0,32(sp)
    800021b0:	00913c23          	sd	s1,24(sp)
    800021b4:	01213823          	sd	s2,16(sp)
    800021b8:	01313423          	sd	s3,8(sp)
    800021bc:	03010413          	addi	s0,sp,48
    800021c0:	00050493          	mv	s1,a0
        running->setBlocked(true);
    800021c4:	00005997          	auipc	s3,0x5
    800021c8:	1fc9b983          	ld	s3,508(s3) # 800073c0 <_ZN3TCB7runningE>
    void setBlocked(bool value) { this->blocked = value; }
    800021cc:	00100793          	li	a5,1
    800021d0:	02f980a3          	sb	a5,33(s3)
        handle->joined.addLast(running); //join this thread to the handle's joined list so it waits for the handle to finish
    800021d4:	03850913          	addi	s2,a0,56
            return MemoryAllocator::instance().kmem_alloc(size);
    800021d8:	00001097          	auipc	ra,0x1
    800021dc:	8ac080e7          	jalr	-1876(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800021e0:	01000593          	li	a1,16
    800021e4:	00001097          	auipc	ra,0x1
    800021e8:	92c080e7          	jalr	-1748(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800021ec:	01353023          	sd	s3,0(a0)
    800021f0:	00053423          	sd	zero,8(a0)
        if (tail)
    800021f4:	00893783          	ld	a5,8(s2)
    800021f8:	02078a63          	beqz	a5,8000222c <_ZN3TCB4joinEPS_+0x94>
            tail->next = elem;
    800021fc:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002200:	00a93423          	sd	a0,8(s2)
        size++;
    80002204:	01093783          	ld	a5,16(s2)
    80002208:	00178793          	addi	a5,a5,1
    8000220c:	00f93823          	sd	a5,16(s2)
}
    80002210:	02813083          	ld	ra,40(sp)
    80002214:	02013403          	ld	s0,32(sp)
    80002218:	01813483          	ld	s1,24(sp)
    8000221c:	01013903          	ld	s2,16(sp)
    80002220:	00813983          	ld	s3,8(sp)
    80002224:	03010113          	addi	sp,sp,48
    80002228:	00008067          	ret
            head = tail = elem;
    8000222c:	00a93423          	sd	a0,8(s2)
    80002230:	02a4bc23          	sd	a0,56(s1)
    80002234:	fd1ff06f          	j	80002204 <_ZN3TCB4joinEPS_+0x6c>

0000000080002238 <_ZN3TCB10time_sleepEm>:
    if (timeout == 0) {
    80002238:	0a050863          	beqz	a0,800022e8 <_ZN3TCB10time_sleepEm+0xb0>
int TCB::time_sleep(time_t timeout) {
    8000223c:	fe010113          	addi	sp,sp,-32
    80002240:	00113c23          	sd	ra,24(sp)
    80002244:	00813823          	sd	s0,16(sp)
    80002248:	00913423          	sd	s1,8(sp)
    8000224c:	02010413          	addi	s0,sp,32
    if (running->isBlocked() || running->isFinished()) {
    80002250:	00005497          	auipc	s1,0x5
    80002254:	1704b483          	ld	s1,368(s1) # 800073c0 <_ZN3TCB7runningE>
    bool isBlocked() const { return this->blocked; }
    80002258:	0214c783          	lbu	a5,33(s1)
    8000225c:	08079a63          	bnez	a5,800022f0 <_ZN3TCB10time_sleepEm+0xb8>
    bool isFinished() const { return finished; }
    80002260:	0204c783          	lbu	a5,32(s1)
    80002264:	08079a63          	bnez	a5,800022f8 <_ZN3TCB10time_sleepEm+0xc0>
    void setSleeping(time_t value) { this->sleepTime = value; }
    80002268:	02a4b423          	sd	a0,40(s1)
            return MemoryAllocator::instance().kmem_alloc(size);
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	818080e7          	jalr	-2024(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002274:	01000593          	li	a1,16
    80002278:	00001097          	auipc	ra,0x1
    8000227c:	898080e7          	jalr	-1896(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002280:	00953023          	sd	s1,0(a0)
    80002284:	00053423          	sd	zero,8(a0)
        if (tail)
    80002288:	00005797          	auipc	a5,0x5
    8000228c:	1287b783          	ld	a5,296(a5) # 800073b0 <_ZN3TCB15SleepingThreadsE+0x8>
    80002290:	04078263          	beqz	a5,800022d4 <_ZN3TCB10time_sleepEm+0x9c>
            tail->next = elem;
    80002294:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002298:	00005797          	auipc	a5,0x5
    8000229c:	10a7bc23          	sd	a0,280(a5) # 800073b0 <_ZN3TCB15SleepingThreadsE+0x8>
        size++;
    800022a0:	00005717          	auipc	a4,0x5
    800022a4:	10870713          	addi	a4,a4,264 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    800022a8:	01073783          	ld	a5,16(a4)
    800022ac:	00178793          	addi	a5,a5,1
    800022b0:	00f73823          	sd	a5,16(a4)
    TCB::dispatch(); //this won't put the sleeping thread back into the ready queue.
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	d54080e7          	jalr	-684(ra) # 80002008 <_ZN3TCB8dispatchEv>
    return 0;
    800022bc:	00000513          	li	a0,0
}
    800022c0:	01813083          	ld	ra,24(sp)
    800022c4:	01013403          	ld	s0,16(sp)
    800022c8:	00813483          	ld	s1,8(sp)
    800022cc:	02010113          	addi	sp,sp,32
    800022d0:	00008067          	ret
            head = tail = elem;
    800022d4:	00005797          	auipc	a5,0x5
    800022d8:	0d478793          	addi	a5,a5,212 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    800022dc:	00a7b423          	sd	a0,8(a5)
    800022e0:	00a7b023          	sd	a0,0(a5)
    800022e4:	fbdff06f          	j	800022a0 <_ZN3TCB10time_sleepEm+0x68>
        return 0;
    800022e8:	00000513          	li	a0,0
}
    800022ec:	00008067          	ret
        return -1;
    800022f0:	fff00513          	li	a0,-1
    800022f4:	fcdff06f          	j	800022c0 <_ZN3TCB10time_sleepEm+0x88>
    800022f8:	fff00513          	li	a0,-1
    800022fc:	fc5ff06f          	j	800022c0 <_ZN3TCB10time_sleepEm+0x88>

0000000080002300 <_ZN3TCB9time_tickEv>:
void TCB::time_tick(){
    80002300:	fd010113          	addi	sp,sp,-48
    80002304:	02113423          	sd	ra,40(sp)
    80002308:	02813023          	sd	s0,32(sp)
    8000230c:	00913c23          	sd	s1,24(sp)
    80002310:	01213823          	sd	s2,16(sp)
    80002314:	01313423          	sd	s3,8(sp)
    80002318:	03010413          	addi	s0,sp,48
    for(size_t i = 0; i < SleepingThreads.getSize(); i++) {
    8000231c:	00000993          	li	s3,0
    80002320:	0400006f          	j	80002360 <_ZN3TCB9time_tickEv+0x60>
        if (!head) { tail = 0; }
    80002324:	00005797          	auipc	a5,0x5
    80002328:	0807b623          	sd	zero,140(a5) # 800073b0 <_ZN3TCB15SleepingThreadsE+0x8>
    8000232c:	05c0006f          	j	80002388 <_ZN3TCB9time_tickEv+0x88>
        if (!head) { return 0; }
    80002330:	00048913          	mv	s2,s1
    80002334:	0800006f          	j	800023b4 <_ZN3TCB9time_tickEv+0xb4>
            head = tail = elem;
    80002338:	00005797          	auipc	a5,0x5
    8000233c:	07078793          	addi	a5,a5,112 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    80002340:	00a7b423          	sd	a0,8(a5)
    80002344:	00a7b023          	sd	a0,0(a5)
        size++;
    80002348:	00005717          	auipc	a4,0x5
    8000234c:	06070713          	addi	a4,a4,96 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    80002350:	01073783          	ld	a5,16(a4)
    80002354:	00178793          	addi	a5,a5,1
    80002358:	00f73823          	sd	a5,16(a4)
    8000235c:	00198993          	addi	s3,s3,1
        if (!tail) { return 0; }
        return tail->data;
    }

    size_t getSize() {
        return size;
    80002360:	00005797          	auipc	a5,0x5
    80002364:	0587b783          	ld	a5,88(a5) # 800073b8 <_ZN3TCB15SleepingThreadsE+0x10>
    80002368:	0af9f663          	bgeu	s3,a5,80002414 <_ZN3TCB9time_tickEv+0x114>
        if (!head) { return 0; }
    8000236c:	00005497          	auipc	s1,0x5
    80002370:	03c4b483          	ld	s1,60(s1) # 800073a8 <_ZN3TCB15SleepingThreadsE>
    80002374:	fa048ee3          	beqz	s1,80002330 <_ZN3TCB9time_tickEv+0x30>
        head = head->next;
    80002378:	0084b783          	ld	a5,8(s1)
    8000237c:	00005717          	auipc	a4,0x5
    80002380:	02f73623          	sd	a5,44(a4) # 800073a8 <_ZN3TCB15SleepingThreadsE>
        if (!head) { tail = 0; }
    80002384:	fa0780e3          	beqz	a5,80002324 <_ZN3TCB9time_tickEv+0x24>
        T *ret = elem->data;
    80002388:	0004b903          	ld	s2,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    8000238c:	00000097          	auipc	ra,0x0
    80002390:	6f8080e7          	jalr	1784(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002394:	00048593          	mv	a1,s1
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	900080e7          	jalr	-1792(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    800023a0:	00005717          	auipc	a4,0x5
    800023a4:	00870713          	addi	a4,a4,8 # 800073a8 <_ZN3TCB15SleepingThreadsE>
    800023a8:	01073783          	ld	a5,16(a4)
    800023ac:	fff78793          	addi	a5,a5,-1
    800023b0:	00f73823          	sd	a5,16(a4)
    void decSleep() { if (this->sleepTime > 0) this->sleepTime--; }
    800023b4:	02893783          	ld	a5,40(s2)
    800023b8:	00078663          	beqz	a5,800023c4 <_ZN3TCB9time_tickEv+0xc4>
    800023bc:	fff78793          	addi	a5,a5,-1
    800023c0:	02f93423          	sd	a5,40(s2)
    bool isSleeping() { return this->sleepTime > 0; }
    800023c4:	02893783          	ld	a5,40(s2)
        if (t->isSleeping()) {
    800023c8:	02078e63          	beqz	a5,80002404 <_ZN3TCB9time_tickEv+0x104>
            return MemoryAllocator::instance().kmem_alloc(size);
    800023cc:	00000097          	auipc	ra,0x0
    800023d0:	6b8080e7          	jalr	1720(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800023d4:	01000593          	li	a1,16
    800023d8:	00000097          	auipc	ra,0x0
    800023dc:	738080e7          	jalr	1848(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800023e0:	01253023          	sd	s2,0(a0)
    800023e4:	00053423          	sd	zero,8(a0)
        if (tail)
    800023e8:	00005797          	auipc	a5,0x5
    800023ec:	fc87b783          	ld	a5,-56(a5) # 800073b0 <_ZN3TCB15SleepingThreadsE+0x8>
    800023f0:	f40784e3          	beqz	a5,80002338 <_ZN3TCB9time_tickEv+0x38>
            tail->next = elem;
    800023f4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800023f8:	00005797          	auipc	a5,0x5
    800023fc:	faa7bc23          	sd	a0,-72(a5) # 800073b0 <_ZN3TCB15SleepingThreadsE+0x8>
    80002400:	f49ff06f          	j	80002348 <_ZN3TCB9time_tickEv+0x48>
            Scheduler::put(t);
    80002404:	00090513          	mv	a0,s2
    80002408:	00001097          	auipc	ra,0x1
    8000240c:	a04080e7          	jalr	-1532(ra) # 80002e0c <_ZN9Scheduler3putEP3TCB>
    80002410:	f4dff06f          	j	8000235c <_ZN3TCB9time_tickEv+0x5c>
    80002414:	02813083          	ld	ra,40(sp)
    80002418:	02013403          	ld	s0,32(sp)
    8000241c:	01813483          	ld	s1,24(sp)
    80002420:	01013903          	ld	s2,16(sp)
    80002424:	00813983          	ld	s3,8(sp)
    80002428:	03010113          	addi	sp,sp,48
    8000242c:	00008067          	ret

0000000080002430 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80002430:	ff010113          	addi	sp,sp,-16
    80002434:	00113423          	sd	ra,8(sp)
    80002438:	00813023          	sd	s0,0(sp)
    8000243c:	01010413          	addi	s0,sp,16
    80002440:	000105b7          	lui	a1,0x10
    80002444:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002448:	00100513          	li	a0,1
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	a60080e7          	jalr	-1440(ra) # 80001eac <_Z41__static_initialization_and_destruction_0ii>
    80002454:	00813083          	ld	ra,8(sp)
    80002458:	00013403          	ld	s0,0(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00113423          	sd	ra,8(sp)
    8000246c:	00813023          	sd	s0,0(sp)
    80002470:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	cb0080e7          	jalr	-848(ra) # 80001124 <_Z9mem_allocm>
}
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_Znam>:

void *operator new[](size_t n)
{
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    8000249c:	fffff097          	auipc	ra,0xfffff
    800024a0:	c88080e7          	jalr	-888(ra) # 80001124 <_Z9mem_allocm>
}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	c90080e7          	jalr	-880(ra) # 80001154 <_Z8mem_freePv>
}
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800024ec:	fffff097          	auipc	ra,0xfffff
    800024f0:	c68080e7          	jalr	-920(ra) # 80001154 <_Z8mem_freePv>
    800024f4:	00813083          	ld	ra,8(sp)
    800024f8:	00013403          	ld	s0,0(sp)
    800024fc:	01010113          	addi	sp,sp,16
    80002500:	00008067          	ret

0000000080002504 <_Z41__static_initialization_and_destruction_0ii>:
void PeriodicThread::run() {
    while (!terminated) {
        periodicActivation();
        Thread::sleep(period);
    }
    80002504:	ff010113          	addi	sp,sp,-16
    80002508:	00813423          	sd	s0,8(sp)
    8000250c:	01010413          	addi	s0,sp,16
    80002510:	00100793          	li	a5,1
    80002514:	00f50863          	beq	a0,a5,80002524 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002518:	00813403          	ld	s0,8(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
    80002524:	000107b7          	lui	a5,0x10
    80002528:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000252c:	fef596e3          	bne	a1,a5,80002518 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80002530:	00005797          	auipc	a5,0x5
    80002534:	ea078793          	addi	a5,a5,-352 # 800073d0 <_ZN14PeriodicThread14createdThreadsE>
    80002538:	0007b023          	sd	zero,0(a5)
    8000253c:	0007b423          	sd	zero,8(a5)
    80002540:	0007b823          	sd	zero,16(a5)
    80002544:	fd5ff06f          	j	80002518 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002548 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002548:	ff010113          	addi	sp,sp,-16
    8000254c:	00113423          	sd	ra,8(sp)
    80002550:	00813023          	sd	s0,0(sp)
    80002554:	01010413          	addi	s0,sp,16
    80002558:	00005797          	auipc	a5,0x5
    8000255c:	d1078793          	addi	a5,a5,-752 # 80007268 <_ZTV9Semaphore+0x10>
    80002560:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80002564:	00853503          	ld	a0,8(a0)
    80002568:	fffff097          	auipc	ra,0xfffff
    8000256c:	cc4080e7          	jalr	-828(ra) # 8000122c <_Z9sem_closeP10KSemaphore>
}
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00013403          	ld	s0,0(sp)
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00008067          	ret

0000000080002580 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002580:	fe010113          	addi	sp,sp,-32
    80002584:	00113c23          	sd	ra,24(sp)
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	02010413          	addi	s0,sp,32
    80002594:	00050493          	mv	s1,a0
}
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	fb0080e7          	jalr	-80(ra) # 80002548 <_ZN9SemaphoreD1Ev>
    800025a0:	00048513          	mv	a0,s1
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	f10080e7          	jalr	-240(ra) # 800024b4 <_ZdlPv>
    800025ac:	01813083          	ld	ra,24(sp)
    800025b0:	01013403          	ld	s0,16(sp)
    800025b4:	00813483          	ld	s1,8(sp)
    800025b8:	02010113          	addi	sp,sp,32
    800025bc:	00008067          	ret

00000000800025c0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800025c0:	fe010113          	addi	sp,sp,-32
    800025c4:	00113c23          	sd	ra,24(sp)
    800025c8:	00813823          	sd	s0,16(sp)
    800025cc:	00913423          	sd	s1,8(sp)
    800025d0:	02010413          	addi	s0,sp,32
    800025d4:	00005797          	auipc	a5,0x5
    800025d8:	cb478793          	addi	a5,a5,-844 # 80007288 <_ZTV6Thread+0x10>
    800025dc:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    800025e0:	00853483          	ld	s1,8(a0)
    800025e4:	02048463          	beqz	s1,8000260c <_ZN6ThreadD1Ev+0x4c>
    ~TCB() { delete[] stack; }
    800025e8:	0084b503          	ld	a0,8(s1)
    800025ec:	00050663          	beqz	a0,800025f8 <_ZN6ThreadD1Ev+0x38>
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	eec080e7          	jalr	-276(ra) # 800024dc <_ZdaPv>
        MemoryAllocator::instance().kmem_free(ptr);
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	48c080e7          	jalr	1164(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002600:	00048593          	mv	a1,s1
    80002604:	00000097          	auipc	ra,0x0
    80002608:	694080e7          	jalr	1684(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
}
    8000260c:	01813083          	ld	ra,24(sp)
    80002610:	01013403          	ld	s0,16(sp)
    80002614:	00813483          	ld	s1,8(sp)
    80002618:	02010113          	addi	sp,sp,32
    8000261c:	00008067          	ret

0000000080002620 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002620:	fe010113          	addi	sp,sp,-32
    80002624:	00113c23          	sd	ra,24(sp)
    80002628:	00813823          	sd	s0,16(sp)
    8000262c:	00913423          	sd	s1,8(sp)
    80002630:	02010413          	addi	s0,sp,32
    80002634:	00050493          	mv	s1,a0
}
    80002638:	00000097          	auipc	ra,0x0
    8000263c:	f88080e7          	jalr	-120(ra) # 800025c0 <_ZN6ThreadD1Ev>
    80002640:	00048513          	mv	a0,s1
    80002644:	00000097          	auipc	ra,0x0
    80002648:	e70080e7          	jalr	-400(ra) # 800024b4 <_ZdlPv>
    8000264c:	01813083          	ld	ra,24(sp)
    80002650:	01013403          	ld	s0,16(sp)
    80002654:	00813483          	ld	s1,8(sp)
    80002658:	02010113          	addi	sp,sp,32
    8000265c:	00008067          	ret

0000000080002660 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void *thread) {
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00113423          	sd	ra,8(sp)
    80002668:	00813023          	sd	s0,0(sp)
    8000266c:	01010413          	addi	s0,sp,16
    ((Thread *) thread)->run();
    80002670:	00053783          	ld	a5,0(a0)
    80002674:	0107b783          	ld	a5,16(a5)
    80002678:	000780e7          	jalr	a5
    thread_exit();
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	b38080e7          	jalr	-1224(ra) # 800011b4 <_Z11thread_exitv>
}
    80002684:	00813083          	ld	ra,8(sp)
    80002688:	00013403          	ld	s0,0(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    800026a4:	00005797          	auipc	a5,0x5
    800026a8:	bc478793          	addi	a5,a5,-1084 # 80007268 <_ZTV9Semaphore+0x10>
    800026ac:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800026b0:	00850513          	addi	a0,a0,8
    800026b4:	fffff097          	auipc	ra,0xfffff
    800026b8:	b48080e7          	jalr	-1208(ra) # 800011fc <_Z8sem_openPP10KSemaphorej>
}
    800026bc:	00813083          	ld	ra,8(sp)
    800026c0:	00013403          	ld	s0,0(sp)
    800026c4:	01010113          	addi	sp,sp,16
    800026c8:	00008067          	ret

00000000800026cc <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800026cc:	ff010113          	addi	sp,sp,-16
    800026d0:	00113423          	sd	ra,8(sp)
    800026d4:	00813023          	sd	s0,0(sp)
    800026d8:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    800026dc:	00853503          	ld	a0,8(a0)
    800026e0:	fffff097          	auipc	ra,0xfffff
    800026e4:	b78080e7          	jalr	-1160(ra) # 80001258 <_Z8sem_waitP10KSemaphore>
}
    800026e8:	00813083          	ld	ra,8(sp)
    800026ec:	00013403          	ld	s0,0(sp)
    800026f0:	01010113          	addi	sp,sp,16
    800026f4:	00008067          	ret

00000000800026f8 <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    800026f8:	ff010113          	addi	sp,sp,-16
    800026fc:	00113423          	sd	ra,8(sp)
    80002700:	00813023          	sd	s0,0(sp)
    80002704:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    80002708:	00853503          	ld	a0,8(a0)
    8000270c:	fffff097          	auipc	ra,0xfffff
    80002710:	ba8080e7          	jalr	-1112(ra) # 800012b4 <_Z10sem_signalP10KSemaphore>
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002734:	fffff097          	auipc	ra,0xfffff
    80002738:	aa8080e7          	jalr	-1368(ra) # 800011dc <_Z15thread_dispatchv>
}
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813423          	sd	s0,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    80002758:	00005797          	auipc	a5,0x5
    8000275c:	b3078793          	addi	a5,a5,-1232 # 80007288 <_ZTV6Thread+0x10>
    80002760:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80002764:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    80002768:	00c53c23          	sd	a2,24(a0)
    myHandle = nullptr;
    8000276c:	00053423          	sd	zero,8(a0)
}
    80002770:	00813403          	ld	s0,8(sp)
    80002774:	01010113          	addi	sp,sp,16
    80002778:	00008067          	ret

000000008000277c <_ZN6Thread5startEv>:
int Thread::start() {
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00113423          	sd	ra,8(sp)
    80002784:	00813023          	sd	s0,0(sp)
    80002788:	01010413          	addi	s0,sp,16
    return thread_create(&this->myHandle, body, arg);
    8000278c:	01853603          	ld	a2,24(a0)
    80002790:	01053583          	ld	a1,16(a0)
    80002794:	00850513          	addi	a0,a0,8
    80002798:	fffff097          	auipc	ra,0xfffff
    8000279c:	9e8080e7          	jalr	-1560(ra) # 80001180 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800027a0:	00813083          	ld	ra,8(sp)
    800027a4:	00013403          	ld	s0,0(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00813423          	sd	s0,8(sp)
    800027b8:	01010413          	addi	s0,sp,16
    800027bc:	00005797          	auipc	a5,0x5
    800027c0:	acc78793          	addi	a5,a5,-1332 # 80007288 <_ZTV6Thread+0x10>
    800027c4:	00f53023          	sd	a5,0(a0)
    this->body = Thread::wrapper;
    800027c8:	00000797          	auipc	a5,0x0
    800027cc:	e9878793          	addi	a5,a5,-360 # 80002660 <_ZN6Thread7wrapperEPv>
    800027d0:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    800027d4:	00a53c23          	sd	a0,24(a0)
    myHandle = nullptr;
    800027d8:	00053423          	sd	zero,8(a0)
}
    800027dc:	00813403          	ld	s0,8(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	00813023          	sd	s0,0(sp)
    800027f4:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	b18080e7          	jalr	-1256(ra) # 80001310 <_Z10time_sleepm>
}
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN14PeriodicThread3runEv>:
void PeriodicThread::run() {
    80002810:	fe010113          	addi	sp,sp,-32
    80002814:	00113c23          	sd	ra,24(sp)
    80002818:	00813823          	sd	s0,16(sp)
    8000281c:	00913423          	sd	s1,8(sp)
    80002820:	02010413          	addi	s0,sp,32
    80002824:	00050493          	mv	s1,a0
    while (!terminated) {
    80002828:	0284c783          	lbu	a5,40(s1)
    8000282c:	02079263          	bnez	a5,80002850 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002830:	0004b783          	ld	a5,0(s1)
    80002834:	0187b783          	ld	a5,24(a5)
    80002838:	00048513          	mv	a0,s1
    8000283c:	000780e7          	jalr	a5
        Thread::sleep(period);
    80002840:	0204b503          	ld	a0,32(s1)
    80002844:	00000097          	auipc	ra,0x0
    80002848:	fa4080e7          	jalr	-92(ra) # 800027e8 <_ZN6Thread5sleepEm>
    while (!terminated) {
    8000284c:	fddff06f          	j	80002828 <_ZN14PeriodicThread3runEv+0x18>
    80002850:	01813083          	ld	ra,24(sp)
    80002854:	01013403          	ld	s0,16(sp)
    80002858:	00813483          	ld	s1,8(sp)
    8000285c:	02010113          	addi	sp,sp,32
    80002860:	00008067          	ret

0000000080002864 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	af0080e7          	jalr	-1296(ra) # 80001364 <_Z4putcc>
}
    8000287c:	00813083          	ld	ra,8(sp)
    80002880:	00013403          	ld	s0,0(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_ZN7Console4getcEv>:
char Console::getc() {
    8000288c:	ff010113          	addi	sp,sp,-16
    80002890:	00113423          	sd	ra,8(sp)
    80002894:	00813023          	sd	s0,0(sp)
    80002898:	01010413          	addi	s0,sp,16
    return ::getc();
    8000289c:	fffff097          	auipc	ra,0xfffff
    800028a0:	aa0080e7          	jalr	-1376(ra) # 8000133c <_Z4getcv>
}
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    800028b4:	fe010113          	addi	sp,sp,-32
    800028b8:	00113c23          	sd	ra,24(sp)
    800028bc:	00813823          	sd	s0,16(sp)
    800028c0:	00913423          	sd	s1,8(sp)
    800028c4:	01213023          	sd	s2,0(sp)
    800028c8:	02010413          	addi	s0,sp,32
    800028cc:	00050493          	mv	s1,a0
    800028d0:	00058913          	mv	s2,a1
    : Thread(), period(period), terminated(false)
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	edc080e7          	jalr	-292(ra) # 800027b0 <_ZN6ThreadC1Ev>
    800028dc:	00005797          	auipc	a5,0x5
    800028e0:	9d478793          	addi	a5,a5,-1580 # 800072b0 <_ZTV14PeriodicThread+0x10>
    800028e4:	00f4b023          	sd	a5,0(s1)
    800028e8:	0324b023          	sd	s2,32(s1)
    800028ec:	02048423          	sb	zero,40(s1)
            return MemoryAllocator::instance().kmem_alloc(size);
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	194080e7          	jalr	404(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800028f8:	01000593          	li	a1,16
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	214080e7          	jalr	532(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002904:	00953023          	sd	s1,0(a0)
    80002908:	00053423          	sd	zero,8(a0)
        if (tail)
    8000290c:	00005797          	auipc	a5,0x5
    80002910:	acc7b783          	ld	a5,-1332(a5) # 800073d8 <_ZN14PeriodicThread14createdThreadsE+0x8>
    80002914:	02078e63          	beqz	a5,80002950 <_ZN14PeriodicThreadC1Em+0x9c>
            tail->next = elem;
    80002918:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000291c:	00005797          	auipc	a5,0x5
    80002920:	aaa7be23          	sd	a0,-1348(a5) # 800073d8 <_ZN14PeriodicThread14createdThreadsE+0x8>
        size++;
    80002924:	00005717          	auipc	a4,0x5
    80002928:	aac70713          	addi	a4,a4,-1364 # 800073d0 <_ZN14PeriodicThread14createdThreadsE>
    8000292c:	01073783          	ld	a5,16(a4)
    80002930:	00178793          	addi	a5,a5,1
    80002934:	00f73823          	sd	a5,16(a4)
}
    80002938:	01813083          	ld	ra,24(sp)
    8000293c:	01013403          	ld	s0,16(sp)
    80002940:	00813483          	ld	s1,8(sp)
    80002944:	00013903          	ld	s2,0(sp)
    80002948:	02010113          	addi	sp,sp,32
    8000294c:	00008067          	ret
            head = tail = elem;
    80002950:	00005797          	auipc	a5,0x5
    80002954:	a8078793          	addi	a5,a5,-1408 # 800073d0 <_ZN14PeriodicThread14createdThreadsE>
    80002958:	00a7b423          	sd	a0,8(a5)
    8000295c:	00a7b023          	sd	a0,0(a5)
    80002960:	fc5ff06f          	j	80002924 <_ZN14PeriodicThreadC1Em+0x70>
    80002964:	00050913          	mv	s2,a0
    : Thread(), period(period), terminated(false)
    80002968:	00048513          	mv	a0,s1
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	c54080e7          	jalr	-940(ra) # 800025c0 <_ZN6ThreadD1Ev>
    80002974:	00090513          	mv	a0,s2
    80002978:	00006097          	auipc	ra,0x6
    8000297c:	b60080e7          	jalr	-1184(ra) # 800084d8 <_Unwind_Resume>

0000000080002980 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002980:	ff010113          	addi	sp,sp,-16
    80002984:	00813423          	sd	s0,8(sp)
    80002988:	01010413          	addi	s0,sp,16
    terminated = true;
    8000298c:	00100793          	li	a5,1
    80002990:	02f50423          	sb	a5,40(a0)
}
    80002994:	00813403          	ld	s0,8(sp)
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00008067          	ret

00000000800029a0 <_GLOBAL__sub_I__ZN9SemaphoreC2Ej>:
    800029a0:	ff010113          	addi	sp,sp,-16
    800029a4:	00113423          	sd	ra,8(sp)
    800029a8:	00813023          	sd	s0,0(sp)
    800029ac:	01010413          	addi	s0,sp,16
    800029b0:	000105b7          	lui	a1,0x10
    800029b4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800029b8:	00100513          	li	a0,1
    800029bc:	00000097          	auipc	ra,0x0
    800029c0:	b48080e7          	jalr	-1208(ra) # 80002504 <_Z41__static_initialization_and_destruction_0ii>
    800029c4:	00813083          	ld	ra,8(sp)
    800029c8:	00013403          	ld	s0,0(sp)
    800029cc:	01010113          	addi	sp,sp,16
    800029d0:	00008067          	ret

00000000800029d4 <_ZN6Thread3runEv>:
  virtual void run () {} 
    800029d4:	ff010113          	addi	sp,sp,-16
    800029d8:	00813423          	sd	s0,8(sp)
    800029dc:	01010413          	addi	s0,sp,16
    800029e0:	00813403          	ld	s0,8(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret

00000000800029ec <_ZN14PeriodicThread18periodicActivationEv>:
public: 
  void terminate ();
 
protected: 
  PeriodicThread (time_t period); 
  virtual void periodicActivation () {} 
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00813423          	sd	s0,8(sp)
    800029f4:	01010413          	addi	s0,sp,16
    800029f8:	00813403          	ld	s0,8(sp)
    800029fc:	01010113          	addi	sp,sp,16
    80002a00:	00008067          	ret

0000000080002a04 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread { 
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00113423          	sd	ra,8(sp)
    80002a0c:	00813023          	sd	s0,0(sp)
    80002a10:	01010413          	addi	s0,sp,16
    80002a14:	00005797          	auipc	a5,0x5
    80002a18:	89c78793          	addi	a5,a5,-1892 # 800072b0 <_ZTV14PeriodicThread+0x10>
    80002a1c:	00f53023          	sd	a5,0(a0)
    80002a20:	00000097          	auipc	ra,0x0
    80002a24:	ba0080e7          	jalr	-1120(ra) # 800025c0 <_ZN6ThreadD1Ev>
    80002a28:	00813083          	ld	ra,8(sp)
    80002a2c:	00013403          	ld	s0,0(sp)
    80002a30:	01010113          	addi	sp,sp,16
    80002a34:	00008067          	ret

0000000080002a38 <_ZN14PeriodicThreadD0Ev>:
    80002a38:	fe010113          	addi	sp,sp,-32
    80002a3c:	00113c23          	sd	ra,24(sp)
    80002a40:	00813823          	sd	s0,16(sp)
    80002a44:	00913423          	sd	s1,8(sp)
    80002a48:	02010413          	addi	s0,sp,32
    80002a4c:	00050493          	mv	s1,a0
    80002a50:	00005797          	auipc	a5,0x5
    80002a54:	86078793          	addi	a5,a5,-1952 # 800072b0 <_ZTV14PeriodicThread+0x10>
    80002a58:	00f53023          	sd	a5,0(a0)
    80002a5c:	00000097          	auipc	ra,0x0
    80002a60:	b64080e7          	jalr	-1180(ra) # 800025c0 <_ZN6ThreadD1Ev>
    80002a64:	00048513          	mv	a0,s1
    80002a68:	00000097          	auipc	ra,0x0
    80002a6c:	a4c080e7          	jalr	-1460(ra) # 800024b4 <_ZdlPv>
    80002a70:	01813083          	ld	ra,24(sp)
    80002a74:	01013403          	ld	s0,16(sp)
    80002a78:	00813483          	ld	s1,8(sp)
    80002a7c:	02010113          	addi	sp,sp,32
    80002a80:	00008067          	ret

0000000080002a84 <_ZN15MemoryAllocator8instanceEv>:
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"

MemoryAllocator& MemoryAllocator::instance() {
    80002a84:	ff010113          	addi	sp,sp,-16
    80002a88:	00813423          	sd	s0,8(sp)
    80002a8c:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    return inst;
}
    80002a90:	00005517          	auipc	a0,0x5
    80002a94:	95850513          	addi	a0,a0,-1704 # 800073e8 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80002a98:	00813403          	ld	s0,8(sp)
    80002a9c:	01010113          	addi	sp,sp,16
    80002aa0:	00008067          	ret

0000000080002aa4 <_ZN15MemoryAllocator9kmem_initEv>:

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    head = (ChunkHeader*) HEAP_START_ADDR;
    80002ab0:	00005797          	auipc	a5,0x5
    80002ab4:	8407b783          	ld	a5,-1984(a5) # 800072f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ab8:	0007b703          	ld	a4,0(a5)
    80002abc:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    80002ac0:	00073c23          	sd	zero,24(a4)
    head->prev = nullptr;
    80002ac4:	00053783          	ld	a5,0(a0)
    80002ac8:	0007b823          	sd	zero,16(a5)
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    80002acc:	00005797          	auipc	a5,0x5
    80002ad0:	85c7b783          	ld	a5,-1956(a5) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ad4:	0007b783          	ld	a5,0(a5)
    80002ad8:	40e787b3          	sub	a5,a5,a4
    80002adc:	00053703          	ld	a4,0(a0)
    80002ae0:	fd878793          	addi	a5,a5,-40
    80002ae4:	00f73423          	sd	a5,8(a4)
    head->free = true;
    80002ae8:	00053783          	ld	a5,0(a0)
    80002aec:	00100713          	li	a4,1
    80002af0:	02e78023          	sb	a4,32(a5)
    head->magic = MAGIC;
    80002af4:	00053703          	ld	a4,0(a0)
    80002af8:	abcdf7b7          	lui	a5,0xabcdf
    80002afc:	f017879b          	addiw	a5,a5,-255
    80002b00:	00f72023          	sw	a5,0(a4)
    return;
} 
    80002b04:	00813403          	ld	s0,8(sp)
    80002b08:	01010113          	addi	sp,sp,16
    80002b0c:	00008067          	ret

0000000080002b10 <_ZN15MemoryAllocator10kmem_allocEm>:
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;
    80002b10:	0c058863          	beqz	a1,80002be0 <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
void* MemoryAllocator::kmem_alloc(size_t size) {
    80002b14:	fe010113          	addi	sp,sp,-32
    80002b18:	00113c23          	sd	ra,24(sp)
    80002b1c:	00813823          	sd	s0,16(sp)
    80002b20:	00913423          	sd	s1,8(sp)
    80002b24:	01213023          	sd	s2,0(sp)
    80002b28:	02010413          	addi	s0,sp,32
    80002b2c:	00050913          	mv	s2,a0

    // aligned size in bytes
    size_t aligned = size * MEM_BLOCK_SIZE;
    80002b30:	00659493          	slli	s1,a1,0x6

    if (!head) kmem_init();
    80002b34:	00053783          	ld	a5,0(a0)
    80002b38:	00078663          	beqz	a5,80002b44 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    
    ChunkHeader* curr = head;
    80002b3c:	00093503          	ld	a0,0(s2)
    80002b40:	0340006f          	j	80002b74 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    if (!head) kmem_init();
    80002b44:	00000097          	auipc	ra,0x0
    80002b48:	f60080e7          	jalr	-160(ra) # 80002aa4 <_ZN15MemoryAllocator9kmem_initEv>
    80002b4c:	ff1ff06f          	j	80002b3c <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;
    80002b50:	02050023          	sb	zero,32(a0)

                return (void*)((char*)curr + sizeof(ChunkHeader));
    80002b54:	02850513          	addi	a0,a0,40

        curr = curr->next;
    }

    return nullptr;
}
    80002b58:	01813083          	ld	ra,24(sp)
    80002b5c:	01013403          	ld	s0,16(sp)
    80002b60:	00813483          	ld	s1,8(sp)
    80002b64:	00013903          	ld	s2,0(sp)
    80002b68:	02010113          	addi	sp,sp,32
    80002b6c:	00008067          	ret
        curr = curr->next;
    80002b70:	01853503          	ld	a0,24(a0)
    while (curr) {
    80002b74:	fe0502e3          	beqz	a0,80002b58 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
        if (curr->free){
    80002b78:	02054783          	lbu	a5,32(a0)
    80002b7c:	fe078ae3          	beqz	a5,80002b70 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
            if (curr->size == aligned){
    80002b80:	00853783          	ld	a5,8(a0)
    80002b84:	fc9786e3          	beq	a5,s1,80002b50 <_ZN15MemoryAllocator10kmem_allocEm+0x40>
            else if (curr->size > aligned + sizeof(ChunkHeader)){
    80002b88:	02848713          	addi	a4,s1,40
    80002b8c:	fef772e3          	bgeu	a4,a5,80002b70 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
                size_t remaining = curr->size - aligned;
    80002b90:	409787b3          	sub	a5,a5,s1
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
    80002b94:	00e50733          	add	a4,a0,a4
                newChunk->free = true;
    80002b98:	00100693          	li	a3,1
    80002b9c:	02d70023          	sb	a3,32(a4)
                newChunk->size = remaining - sizeof(ChunkHeader);
    80002ba0:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd6968>
    80002ba4:	00f73423          	sd	a5,8(a4)
                newChunk->next = curr->next;
    80002ba8:	01853783          	ld	a5,24(a0)
    80002bac:	00f73c23          	sd	a5,24(a4)
                newChunk->prev = curr;
    80002bb0:	00a73823          	sd	a0,16(a4)
                newChunk->magic = MAGIC;
    80002bb4:	abcdf7b7          	lui	a5,0xabcdf
    80002bb8:	f017879b          	addiw	a5,a5,-255
    80002bbc:	00f72023          	sw	a5,0(a4)
                if(curr->next) curr->next->prev = newChunk;
    80002bc0:	01853783          	ld	a5,24(a0)
    80002bc4:	00078463          	beqz	a5,80002bcc <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    80002bc8:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd69a0>
                curr->next = newChunk;
    80002bcc:	00e53c23          	sd	a4,24(a0)
                curr->size = aligned;
    80002bd0:	00953423          	sd	s1,8(a0)
                curr->free = false;
    80002bd4:	02050023          	sb	zero,32(a0)
                return (void*)((char*)curr + sizeof(ChunkHeader));
    80002bd8:	02850513          	addi	a0,a0,40
    80002bdc:	f7dff06f          	j	80002b58 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    if (size == 0) return nullptr;
    80002be0:	00000513          	li	a0,0
}
    80002be4:	00008067          	ret

0000000080002be8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00813423          	sd	s0,8(sp)
    80002bf0:	01010413          	addi	s0,sp,16
    if(!chunk->free) return;
    80002bf4:	0205c783          	lbu	a5,32(a1)
    80002bf8:	04078263          	beqz	a5,80002c3c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

    //join with next
    if(chunk->next){
    80002bfc:	0185b783          	ld	a5,24(a1)
    80002c00:	00078e63          	beqz	a5,80002c1c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
    80002c04:	0207c703          	lbu	a4,32(a5)
    80002c08:	00070a63          	beqz	a4,80002c1c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    80002c0c:	0085b683          	ld	a3,8(a1)
    80002c10:	02868713          	addi	a4,a3,40
    80002c14:	00e58733          	add	a4,a1,a4
    80002c18:	02e78863          	beq	a5,a4,80002c48 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
    80002c1c:	0105b783          	ld	a5,16(a1)
    80002c20:	00078e63          	beqz	a5,80002c3c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
    80002c24:	0207c703          	lbu	a4,32(a5)
    80002c28:	00070a63          	beqz	a4,80002c3c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    80002c2c:	0087b683          	ld	a3,8(a5)
    80002c30:	02868713          	addi	a4,a3,40
    80002c34:	00e78733          	add	a4,a5,a4
    80002c38:	02b70a63          	beq	a4,a1,80002c6c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
    80002c3c:	00813403          	ld	s0,8(sp)
    80002c40:	01010113          	addi	sp,sp,16
    80002c44:	00008067          	ret
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
    80002c48:	0087b703          	ld	a4,8(a5)
    80002c4c:	00e686b3          	add	a3,a3,a4
    80002c50:	02868693          	addi	a3,a3,40
    80002c54:	00d5b423          	sd	a3,8(a1)
            chunk->next = chunk->next->next;
    80002c58:	0187b783          	ld	a5,24(a5)
    80002c5c:	00f5bc23          	sd	a5,24(a1)
            if (chunk->next)
    80002c60:	fa078ee3          	beqz	a5,80002c1c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
                chunk->next->prev = chunk;
    80002c64:	00b7b823          	sd	a1,16(a5)
    80002c68:	fb5ff06f          	j	80002c1c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
    80002c6c:	0085b703          	ld	a4,8(a1)
    80002c70:	00e686b3          	add	a3,a3,a4
    80002c74:	02868693          	addi	a3,a3,40
    80002c78:	00d7b423          	sd	a3,8(a5)
            chunk->prev->next = chunk->next;
    80002c7c:	0105b703          	ld	a4,16(a1)
    80002c80:	0185b783          	ld	a5,24(a1)
    80002c84:	00f73c23          	sd	a5,24(a4)
            if (chunk->next)
    80002c88:	fa078ae3          	beqz	a5,80002c3c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
                chunk->next->prev = chunk->prev;
    80002c8c:	0105b703          	ld	a4,16(a1)
    80002c90:	00e7b823          	sd	a4,16(a5)
            chunk = chunk->prev;
    80002c94:	fa9ff06f          	j	80002c3c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080002c98 <_ZN15MemoryAllocator9kmem_freeEPv>:
    if (!ptr) return -1;
    80002c98:	06058c63          	beqz	a1,80002d10 <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    80002c9c:	00058793          	mv	a5,a1
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80002ca0:	00004717          	auipc	a4,0x4
    80002ca4:	65073703          	ld	a4,1616(a4) # 800072f0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ca8:	00073703          	ld	a4,0(a4)
    80002cac:	06e5e663          	bltu	a1,a4,80002d18 <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    80002cb0:	00004717          	auipc	a4,0x4
    80002cb4:	67873703          	ld	a4,1656(a4) # 80007328 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002cb8:	00073703          	ld	a4,0(a4)
    80002cbc:	06b76263          	bltu	a4,a1,80002d20 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    80002cc0:	fd858593          	addi	a1,a1,-40
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80002cc4:	fd87a683          	lw	a3,-40(a5)
    80002cc8:	abcdf737          	lui	a4,0xabcdf
    80002ccc:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd6891>
    80002cd0:	04e69c63          	bne	a3,a4,80002d28 <_ZN15MemoryAllocator9kmem_freeEPv+0x90>
    80002cd4:	ff87c703          	lbu	a4,-8(a5)
    80002cd8:	04071c63          	bnez	a4,80002d30 <_ZN15MemoryAllocator9kmem_freeEPv+0x98>
int MemoryAllocator::kmem_free(void* ptr) {
    80002cdc:	ff010113          	addi	sp,sp,-16
    80002ce0:	00113423          	sd	ra,8(sp)
    80002ce4:	00813023          	sd	s0,0(sp)
    80002ce8:	01010413          	addi	s0,sp,16
    chunkHeader->free = true;
    80002cec:	00100713          	li	a4,1
    80002cf0:	fee78c23          	sb	a4,-8(a5)
    try_join(chunkHeader);
    80002cf4:	00000097          	auipc	ra,0x0
    80002cf8:	ef4080e7          	jalr	-268(ra) # 80002be8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    return 0;
    80002cfc:	00000513          	li	a0,0
}
    80002d00:	00813083          	ld	ra,8(sp)
    80002d04:	00013403          	ld	s0,0(sp)
    80002d08:	01010113          	addi	sp,sp,16
    80002d0c:	00008067          	ret
    if (!ptr) return -1;
    80002d10:	fff00513          	li	a0,-1
    80002d14:	00008067          	ret
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80002d18:	ffe00513          	li	a0,-2
    80002d1c:	00008067          	ret
    80002d20:	ffe00513          	li	a0,-2
    80002d24:	00008067          	ret
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80002d28:	ffd00513          	li	a0,-3
    80002d2c:	00008067          	ret
    80002d30:	ffd00513          	li	a0,-3
}
    80002d34:	00008067          	ret

0000000080002d38 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002d38:	ff010113          	addi	sp,sp,-16
    80002d3c:	00813423          	sd	s0,8(sp)
    80002d40:	01010413          	addi	s0,sp,16
    80002d44:	00100793          	li	a5,1
    80002d48:	00f50863          	beq	a0,a5,80002d58 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002d4c:	00813403          	ld	s0,8(sp)
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00008067          	ret
    80002d58:	000107b7          	lui	a5,0x10
    80002d5c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002d60:	fef596e3          	bne	a1,a5,80002d4c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80002d64:	00004797          	auipc	a5,0x4
    80002d68:	68c78793          	addi	a5,a5,1676 # 800073f0 <_ZN9Scheduler16readyThreadQueueE>
    80002d6c:	0007b023          	sd	zero,0(a5)
    80002d70:	0007b423          	sd	zero,8(a5)
    80002d74:	0007b823          	sd	zero,16(a5)
    80002d78:	fd5ff06f          	j	80002d4c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002d7c <_ZN9Scheduler3getEv>:
{
    80002d7c:	fe010113          	addi	sp,sp,-32
    80002d80:	00113c23          	sd	ra,24(sp)
    80002d84:	00813823          	sd	s0,16(sp)
    80002d88:	00913423          	sd	s1,8(sp)
    80002d8c:	01213023          	sd	s2,0(sp)
    80002d90:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002d94:	00004497          	auipc	s1,0x4
    80002d98:	65c4b483          	ld	s1,1628(s1) # 800073f0 <_ZN9Scheduler16readyThreadQueueE>
    80002d9c:	06048463          	beqz	s1,80002e04 <_ZN9Scheduler3getEv+0x88>
        head = head->next;
    80002da0:	0084b783          	ld	a5,8(s1)
    80002da4:	00004717          	auipc	a4,0x4
    80002da8:	64f73623          	sd	a5,1612(a4) # 800073f0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002dac:	04078663          	beqz	a5,80002df8 <_ZN9Scheduler3getEv+0x7c>
        T *ret = elem->data;
    80002db0:	0004b903          	ld	s2,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    80002db4:	00000097          	auipc	ra,0x0
    80002db8:	cd0080e7          	jalr	-816(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002dbc:	00048593          	mv	a1,s1
    80002dc0:	00000097          	auipc	ra,0x0
    80002dc4:	ed8080e7          	jalr	-296(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    80002dc8:	00004717          	auipc	a4,0x4
    80002dcc:	62870713          	addi	a4,a4,1576 # 800073f0 <_ZN9Scheduler16readyThreadQueueE>
    80002dd0:	01073783          	ld	a5,16(a4)
    80002dd4:	fff78793          	addi	a5,a5,-1
    80002dd8:	00f73823          	sd	a5,16(a4)
}
    80002ddc:	00090513          	mv	a0,s2
    80002de0:	01813083          	ld	ra,24(sp)
    80002de4:	01013403          	ld	s0,16(sp)
    80002de8:	00813483          	ld	s1,8(sp)
    80002dec:	00013903          	ld	s2,0(sp)
    80002df0:	02010113          	addi	sp,sp,32
    80002df4:	00008067          	ret
        if (!head) { tail = 0; }
    80002df8:	00004797          	auipc	a5,0x4
    80002dfc:	6007b023          	sd	zero,1536(a5) # 800073f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002e00:	fb1ff06f          	j	80002db0 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    80002e04:	00048913          	mv	s2,s1
    return readyThreadQueue.removeFirst();
    80002e08:	fd5ff06f          	j	80002ddc <_ZN9Scheduler3getEv+0x60>

0000000080002e0c <_ZN9Scheduler3putEP3TCB>:
{
    80002e0c:	fe010113          	addi	sp,sp,-32
    80002e10:	00113c23          	sd	ra,24(sp)
    80002e14:	00813823          	sd	s0,16(sp)
    80002e18:	00913423          	sd	s1,8(sp)
    80002e1c:	02010413          	addi	s0,sp,32
    80002e20:	00050493          	mv	s1,a0
            return MemoryAllocator::instance().kmem_alloc(size);
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	c60080e7          	jalr	-928(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002e2c:	01000593          	li	a1,16
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	ce0080e7          	jalr	-800(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002e38:	00953023          	sd	s1,0(a0)
    80002e3c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002e40:	00004797          	auipc	a5,0x4
    80002e44:	5b87b783          	ld	a5,1464(a5) # 800073f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002e48:	02078c63          	beqz	a5,80002e80 <_ZN9Scheduler3putEP3TCB+0x74>
            tail->next = elem;
    80002e4c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002e50:	00004797          	auipc	a5,0x4
    80002e54:	5aa7b423          	sd	a0,1448(a5) # 800073f8 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002e58:	00004717          	auipc	a4,0x4
    80002e5c:	59870713          	addi	a4,a4,1432 # 800073f0 <_ZN9Scheduler16readyThreadQueueE>
    80002e60:	01073783          	ld	a5,16(a4)
    80002e64:	00178793          	addi	a5,a5,1
    80002e68:	00f73823          	sd	a5,16(a4)
    80002e6c:	01813083          	ld	ra,24(sp)
    80002e70:	01013403          	ld	s0,16(sp)
    80002e74:	00813483          	ld	s1,8(sp)
    80002e78:	02010113          	addi	sp,sp,32
    80002e7c:	00008067          	ret
            head = tail = elem;
    80002e80:	00004797          	auipc	a5,0x4
    80002e84:	57078793          	addi	a5,a5,1392 # 800073f0 <_ZN9Scheduler16readyThreadQueueE>
    80002e88:	00a7b423          	sd	a0,8(a5)
    80002e8c:	00a7b023          	sd	a0,0(a5)
    80002e90:	fc9ff06f          	j	80002e58 <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080002e94 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002e94:	ff010113          	addi	sp,sp,-16
    80002e98:	00113423          	sd	ra,8(sp)
    80002e9c:	00813023          	sd	s0,0(sp)
    80002ea0:	01010413          	addi	s0,sp,16
    80002ea4:	000105b7          	lui	a1,0x10
    80002ea8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002eac:	00100513          	li	a0,1
    80002eb0:	00000097          	auipc	ra,0x0
    80002eb4:	e88080e7          	jalr	-376(ra) # 80002d38 <_Z41__static_initialization_and_destruction_0ii>
    80002eb8:	00813083          	ld	ra,8(sp)
    80002ebc:	00013403          	ld	s0,0(sp)
    80002ec0:	01010113          	addi	sp,sp,16
    80002ec4:	00008067          	ret

0000000080002ec8 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int cap)
    80002ec8:	fe010113          	addi	sp,sp,-32
    80002ecc:	00113c23          	sd	ra,24(sp)
    80002ed0:	00813823          	sd	s0,16(sp)
    80002ed4:	00913423          	sd	s1,8(sp)
    80002ed8:	01213023          	sd	s2,0(sp)
    80002edc:	02010413          	addi	s0,sp,32
    80002ee0:	00050493          	mv	s1,a0
    80002ee4:	00058913          	mv	s2,a1
{
    this->cap = cap;
    80002ee8:	00b52023          	sw	a1,0(a0)
    head=tail=0;
    80002eec:	00052e23          	sw	zero,28(a0)
    80002ef0:	00052c23          	sw	zero,24(a0)
    cnt=0;
    80002ef4:	02052423          	sw	zero,40(a0)
    buff = (char*) MemoryAllocator::instance().kmem_alloc(cap*sizeof(char));
    80002ef8:	00000097          	auipc	ra,0x0
    80002efc:	b8c080e7          	jalr	-1140(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002f00:	00090593          	mv	a1,s2
    80002f04:	00000097          	auipc	ra,0x0
    80002f08:	c0c080e7          	jalr	-1012(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    80002f0c:	02a4b023          	sd	a0,32(s1)
        return MemoryAllocator::instance().kmem_alloc(size);
    80002f10:	00000097          	auipc	ra,0x0
    80002f14:	b74080e7          	jalr	-1164(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002f18:	02000593          	li	a1,32
    80002f1c:	00000097          	auipc	ra,0x0
    80002f20:	bf4080e7          	jalr	-1036(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    List() : head(0), tail(0), size(0) {}
    80002f24:	00053423          	sd	zero,8(a0)
    80002f28:	00053823          	sd	zero,16(a0)
    80002f2c:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80002f30:	00052223          	sw	zero,4(a0)
        this->closed = false;
    80002f34:	00050023          	sb	zero,0(a0)
    itemAvailable = new KSemaphore(0);
    80002f38:	00a4b423          	sd	a0,8(s1)
        return MemoryAllocator::instance().kmem_alloc(size);
    80002f3c:	00000097          	auipc	ra,0x0
    80002f40:	b48080e7          	jalr	-1208(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    80002f44:	02000593          	li	a1,32
    80002f48:	00000097          	auipc	ra,0x0
    80002f4c:	bc8080e7          	jalr	-1080(ra) # 80002b10 <_ZN15MemoryAllocator10kmem_allocEm>
    80002f50:	00053423          	sd	zero,8(a0)
    80002f54:	00053823          	sd	zero,16(a0)
    80002f58:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80002f5c:	01252223          	sw	s2,4(a0)
        this->closed = false;
    80002f60:	00050023          	sb	zero,0(a0)
    spaceAvailable = new KSemaphore(cap);
    80002f64:	00a4b823          	sd	a0,16(s1)
}
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	00013903          	ld	s2,0(sp)
    80002f78:	02010113          	addi	sp,sp,32
    80002f7c:	00008067          	ret

0000000080002f80 <_ZN6Buffer3putEc>:

void Buffer::put(char item)
{
    80002f80:	fe010113          	addi	sp,sp,-32
    80002f84:	00113c23          	sd	ra,24(sp)
    80002f88:	00813823          	sd	s0,16(sp)
    80002f8c:	00913423          	sd	s1,8(sp)
    80002f90:	01213023          	sd	s2,0(sp)
    80002f94:	02010413          	addi	s0,sp,32
    80002f98:	00050493          	mv	s1,a0
    80002f9c:	00058913          	mv	s2,a1
    spaceAvailable->kwait_n(1);
    80002fa0:	00100593          	li	a1,1
    80002fa4:	01053503          	ld	a0,16(a0)
    80002fa8:	fffff097          	auipc	ra,0xfffff
    80002fac:	908080e7          	jalr	-1784(ra) # 800018b0 <_ZN10KSemaphore7kwait_nEj>
    buff[head]=item;
    80002fb0:	0204b783          	ld	a5,32(s1)
    80002fb4:	0184a703          	lw	a4,24(s1)
    80002fb8:	00e787b3          	add	a5,a5,a4
    80002fbc:	01278023          	sb	s2,0(a5)
    head = (head+1)%cap;
    80002fc0:	0184a783          	lw	a5,24(s1)
    80002fc4:	0017879b          	addiw	a5,a5,1
    80002fc8:	0004a703          	lw	a4,0(s1)
    80002fcc:	02e7e7bb          	remw	a5,a5,a4
    80002fd0:	00f4ac23          	sw	a5,24(s1)
    cnt++;
    80002fd4:	0284a783          	lw	a5,40(s1)
    80002fd8:	0017879b          	addiw	a5,a5,1
    80002fdc:	02f4a423          	sw	a5,40(s1)
    itemAvailable->ksignal_n(1);
    80002fe0:	00100593          	li	a1,1
    80002fe4:	0084b503          	ld	a0,8(s1)
    80002fe8:	fffff097          	auipc	ra,0xfffff
    80002fec:	9d4080e7          	jalr	-1580(ra) # 800019bc <_ZN10KSemaphore9ksignal_nEj>
}
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	00013903          	ld	s2,0(sp)
    80003000:	02010113          	addi	sp,sp,32
    80003004:	00008067          	ret

0000000080003008 <_ZN6Buffer3getEv>:

char Buffer::get()
{
    80003008:	fe010113          	addi	sp,sp,-32
    8000300c:	00113c23          	sd	ra,24(sp)
    80003010:	00813823          	sd	s0,16(sp)
    80003014:	00913423          	sd	s1,8(sp)
    80003018:	01213023          	sd	s2,0(sp)
    8000301c:	02010413          	addi	s0,sp,32
    80003020:	00050493          	mv	s1,a0
    itemAvailable->kwait_n(1);
    80003024:	00100593          	li	a1,1
    80003028:	00853503          	ld	a0,8(a0)
    8000302c:	fffff097          	auipc	ra,0xfffff
    80003030:	884080e7          	jalr	-1916(ra) # 800018b0 <_ZN10KSemaphore7kwait_nEj>
    char ret = buff[tail];
    80003034:	0204b703          	ld	a4,32(s1)
    80003038:	01c4a783          	lw	a5,28(s1)
    8000303c:	00f70733          	add	a4,a4,a5
    80003040:	00074903          	lbu	s2,0(a4)
    tail = (tail+1)%cap;
    80003044:	0017879b          	addiw	a5,a5,1
    80003048:	0004a703          	lw	a4,0(s1)
    8000304c:	02e7e7bb          	remw	a5,a5,a4
    80003050:	00f4ae23          	sw	a5,28(s1)
    cnt--;
    80003054:	0284a783          	lw	a5,40(s1)
    80003058:	fff7879b          	addiw	a5,a5,-1
    8000305c:	02f4a423          	sw	a5,40(s1)
    spaceAvailable->ksignal_n(1);
    80003060:	00100593          	li	a1,1
    80003064:	0104b503          	ld	a0,16(s1)
    80003068:	fffff097          	auipc	ra,0xfffff
    8000306c:	954080e7          	jalr	-1708(ra) # 800019bc <_ZN10KSemaphore9ksignal_nEj>
    return ret;
}
    80003070:	00090513          	mv	a0,s2
    80003074:	01813083          	ld	ra,24(sp)
    80003078:	01013403          	ld	s0,16(sp)
    8000307c:	00813483          	ld	s1,8(sp)
    80003080:	00013903          	ld	s2,0(sp)
    80003084:	02010113          	addi	sp,sp,32
    80003088:	00008067          	ret

000000008000308c <_ZN6BufferD1Ev>:

Buffer::~Buffer()
    8000308c:	fe010113          	addi	sp,sp,-32
    80003090:	00113c23          	sd	ra,24(sp)
    80003094:	00813823          	sd	s0,16(sp)
    80003098:	00913423          	sd	s1,8(sp)
    8000309c:	01213023          	sd	s2,0(sp)
    800030a0:	02010413          	addi	s0,sp,32
    800030a4:	00050493          	mv	s1,a0
{
    MemoryAllocator::instance().kmem_free(buff);
    800030a8:	00000097          	auipc	ra,0x0
    800030ac:	9dc080e7          	jalr	-1572(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800030b0:	0204b583          	ld	a1,32(s1)
    800030b4:	00000097          	auipc	ra,0x0
    800030b8:	be4080e7          	jalr	-1052(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
    delete itemAvailable;
    800030bc:	0084b903          	ld	s2,8(s1)
    800030c0:	00090c63          	beqz	s2,800030d8 <_ZN6BufferD1Ev+0x4c>
        MemoryAllocator::instance().kmem_free(ptr);
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	9c0080e7          	jalr	-1600(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800030cc:	00090593          	mv	a1,s2
    800030d0:	00000097          	auipc	ra,0x0
    800030d4:	bc8080e7          	jalr	-1080(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
    delete spaceAvailable;
    800030d8:	0104b483          	ld	s1,16(s1)
    800030dc:	00048c63          	beqz	s1,800030f4 <_ZN6BufferD1Ev+0x68>
    800030e0:	00000097          	auipc	ra,0x0
    800030e4:	9a4080e7          	jalr	-1628(ra) # 80002a84 <_ZN15MemoryAllocator8instanceEv>
    800030e8:	00048593          	mv	a1,s1
    800030ec:	00000097          	auipc	ra,0x0
    800030f0:	bac080e7          	jalr	-1108(ra) # 80002c98 <_ZN15MemoryAllocator9kmem_freeEPv>
    800030f4:	01813083          	ld	ra,24(sp)
    800030f8:	01013403          	ld	s0,16(sp)
    800030fc:	00813483          	ld	s1,8(sp)
    80003100:	00013903          	ld	s2,0(sp)
    80003104:	02010113          	addi	sp,sp,32
    80003108:	00008067          	ret

000000008000310c <start>:
    8000310c:	ff010113          	addi	sp,sp,-16
    80003110:	00813423          	sd	s0,8(sp)
    80003114:	01010413          	addi	s0,sp,16
    80003118:	300027f3          	csrr	a5,mstatus
    8000311c:	ffffe737          	lui	a4,0xffffe
    80003120:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff618f>
    80003124:	00e7f7b3          	and	a5,a5,a4
    80003128:	00001737          	lui	a4,0x1
    8000312c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003130:	00e7e7b3          	or	a5,a5,a4
    80003134:	30079073          	csrw	mstatus,a5
    80003138:	00000797          	auipc	a5,0x0
    8000313c:	16078793          	addi	a5,a5,352 # 80003298 <system_main>
    80003140:	34179073          	csrw	mepc,a5
    80003144:	00000793          	li	a5,0
    80003148:	18079073          	csrw	satp,a5
    8000314c:	000107b7          	lui	a5,0x10
    80003150:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003154:	30279073          	csrw	medeleg,a5
    80003158:	30379073          	csrw	mideleg,a5
    8000315c:	104027f3          	csrr	a5,sie
    80003160:	2227e793          	ori	a5,a5,546
    80003164:	10479073          	csrw	sie,a5
    80003168:	fff00793          	li	a5,-1
    8000316c:	00a7d793          	srli	a5,a5,0xa
    80003170:	3b079073          	csrw	pmpaddr0,a5
    80003174:	00f00793          	li	a5,15
    80003178:	3a079073          	csrw	pmpcfg0,a5
    8000317c:	f14027f3          	csrr	a5,mhartid
    80003180:	0200c737          	lui	a4,0x200c
    80003184:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003188:	0007869b          	sext.w	a3,a5
    8000318c:	00269713          	slli	a4,a3,0x2
    80003190:	000f4637          	lui	a2,0xf4
    80003194:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003198:	00d70733          	add	a4,a4,a3
    8000319c:	0037979b          	slliw	a5,a5,0x3
    800031a0:	020046b7          	lui	a3,0x2004
    800031a4:	00d787b3          	add	a5,a5,a3
    800031a8:	00c585b3          	add	a1,a1,a2
    800031ac:	00371693          	slli	a3,a4,0x3
    800031b0:	00004717          	auipc	a4,0x4
    800031b4:	26070713          	addi	a4,a4,608 # 80007410 <timer_scratch>
    800031b8:	00b7b023          	sd	a1,0(a5)
    800031bc:	00d70733          	add	a4,a4,a3
    800031c0:	00f73c23          	sd	a5,24(a4)
    800031c4:	02c73023          	sd	a2,32(a4)
    800031c8:	34071073          	csrw	mscratch,a4
    800031cc:	00000797          	auipc	a5,0x0
    800031d0:	6e478793          	addi	a5,a5,1764 # 800038b0 <timervec>
    800031d4:	30579073          	csrw	mtvec,a5
    800031d8:	300027f3          	csrr	a5,mstatus
    800031dc:	0087e793          	ori	a5,a5,8
    800031e0:	30079073          	csrw	mstatus,a5
    800031e4:	304027f3          	csrr	a5,mie
    800031e8:	0807e793          	ori	a5,a5,128
    800031ec:	30479073          	csrw	mie,a5
    800031f0:	f14027f3          	csrr	a5,mhartid
    800031f4:	0007879b          	sext.w	a5,a5
    800031f8:	00078213          	mv	tp,a5
    800031fc:	30200073          	mret
    80003200:	00813403          	ld	s0,8(sp)
    80003204:	01010113          	addi	sp,sp,16
    80003208:	00008067          	ret

000000008000320c <timerinit>:
    8000320c:	ff010113          	addi	sp,sp,-16
    80003210:	00813423          	sd	s0,8(sp)
    80003214:	01010413          	addi	s0,sp,16
    80003218:	f14027f3          	csrr	a5,mhartid
    8000321c:	0200c737          	lui	a4,0x200c
    80003220:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003224:	0007869b          	sext.w	a3,a5
    80003228:	00269713          	slli	a4,a3,0x2
    8000322c:	000f4637          	lui	a2,0xf4
    80003230:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003234:	00d70733          	add	a4,a4,a3
    80003238:	0037979b          	slliw	a5,a5,0x3
    8000323c:	020046b7          	lui	a3,0x2004
    80003240:	00d787b3          	add	a5,a5,a3
    80003244:	00c585b3          	add	a1,a1,a2
    80003248:	00371693          	slli	a3,a4,0x3
    8000324c:	00004717          	auipc	a4,0x4
    80003250:	1c470713          	addi	a4,a4,452 # 80007410 <timer_scratch>
    80003254:	00b7b023          	sd	a1,0(a5)
    80003258:	00d70733          	add	a4,a4,a3
    8000325c:	00f73c23          	sd	a5,24(a4)
    80003260:	02c73023          	sd	a2,32(a4)
    80003264:	34071073          	csrw	mscratch,a4
    80003268:	00000797          	auipc	a5,0x0
    8000326c:	64878793          	addi	a5,a5,1608 # 800038b0 <timervec>
    80003270:	30579073          	csrw	mtvec,a5
    80003274:	300027f3          	csrr	a5,mstatus
    80003278:	0087e793          	ori	a5,a5,8
    8000327c:	30079073          	csrw	mstatus,a5
    80003280:	304027f3          	csrr	a5,mie
    80003284:	0807e793          	ori	a5,a5,128
    80003288:	30479073          	csrw	mie,a5
    8000328c:	00813403          	ld	s0,8(sp)
    80003290:	01010113          	addi	sp,sp,16
    80003294:	00008067          	ret

0000000080003298 <system_main>:
    80003298:	fe010113          	addi	sp,sp,-32
    8000329c:	00813823          	sd	s0,16(sp)
    800032a0:	00913423          	sd	s1,8(sp)
    800032a4:	00113c23          	sd	ra,24(sp)
    800032a8:	02010413          	addi	s0,sp,32
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	0c4080e7          	jalr	196(ra) # 80003370 <cpuid>
    800032b4:	00004497          	auipc	s1,0x4
    800032b8:	0ac48493          	addi	s1,s1,172 # 80007360 <started>
    800032bc:	02050263          	beqz	a0,800032e0 <system_main+0x48>
    800032c0:	0004a783          	lw	a5,0(s1)
    800032c4:	0007879b          	sext.w	a5,a5
    800032c8:	fe078ce3          	beqz	a5,800032c0 <system_main+0x28>
    800032cc:	0ff0000f          	fence
    800032d0:	00003517          	auipc	a0,0x3
    800032d4:	e9050513          	addi	a0,a0,-368 # 80006160 <CONSOLE_STATUS+0x150>
    800032d8:	00001097          	auipc	ra,0x1
    800032dc:	a74080e7          	jalr	-1420(ra) # 80003d4c <panic>
    800032e0:	00001097          	auipc	ra,0x1
    800032e4:	9c8080e7          	jalr	-1592(ra) # 80003ca8 <consoleinit>
    800032e8:	00001097          	auipc	ra,0x1
    800032ec:	154080e7          	jalr	340(ra) # 8000443c <printfinit>
    800032f0:	00003517          	auipc	a0,0x3
    800032f4:	f5050513          	addi	a0,a0,-176 # 80006240 <CONSOLE_STATUS+0x230>
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	ab0080e7          	jalr	-1360(ra) # 80003da8 <__printf>
    80003300:	00003517          	auipc	a0,0x3
    80003304:	e3050513          	addi	a0,a0,-464 # 80006130 <CONSOLE_STATUS+0x120>
    80003308:	00001097          	auipc	ra,0x1
    8000330c:	aa0080e7          	jalr	-1376(ra) # 80003da8 <__printf>
    80003310:	00003517          	auipc	a0,0x3
    80003314:	f3050513          	addi	a0,a0,-208 # 80006240 <CONSOLE_STATUS+0x230>
    80003318:	00001097          	auipc	ra,0x1
    8000331c:	a90080e7          	jalr	-1392(ra) # 80003da8 <__printf>
    80003320:	00001097          	auipc	ra,0x1
    80003324:	4a8080e7          	jalr	1192(ra) # 800047c8 <kinit>
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	148080e7          	jalr	328(ra) # 80003470 <trapinit>
    80003330:	00000097          	auipc	ra,0x0
    80003334:	16c080e7          	jalr	364(ra) # 8000349c <trapinithart>
    80003338:	00000097          	auipc	ra,0x0
    8000333c:	5b8080e7          	jalr	1464(ra) # 800038f0 <plicinit>
    80003340:	00000097          	auipc	ra,0x0
    80003344:	5d8080e7          	jalr	1496(ra) # 80003918 <plicinithart>
    80003348:	00000097          	auipc	ra,0x0
    8000334c:	078080e7          	jalr	120(ra) # 800033c0 <userinit>
    80003350:	0ff0000f          	fence
    80003354:	00100793          	li	a5,1
    80003358:	00003517          	auipc	a0,0x3
    8000335c:	df050513          	addi	a0,a0,-528 # 80006148 <CONSOLE_STATUS+0x138>
    80003360:	00f4a023          	sw	a5,0(s1)
    80003364:	00001097          	auipc	ra,0x1
    80003368:	a44080e7          	jalr	-1468(ra) # 80003da8 <__printf>
    8000336c:	0000006f          	j	8000336c <system_main+0xd4>

0000000080003370 <cpuid>:
    80003370:	ff010113          	addi	sp,sp,-16
    80003374:	00813423          	sd	s0,8(sp)
    80003378:	01010413          	addi	s0,sp,16
    8000337c:	00020513          	mv	a0,tp
    80003380:	00813403          	ld	s0,8(sp)
    80003384:	0005051b          	sext.w	a0,a0
    80003388:	01010113          	addi	sp,sp,16
    8000338c:	00008067          	ret

0000000080003390 <mycpu>:
    80003390:	ff010113          	addi	sp,sp,-16
    80003394:	00813423          	sd	s0,8(sp)
    80003398:	01010413          	addi	s0,sp,16
    8000339c:	00020793          	mv	a5,tp
    800033a0:	00813403          	ld	s0,8(sp)
    800033a4:	0007879b          	sext.w	a5,a5
    800033a8:	00779793          	slli	a5,a5,0x7
    800033ac:	00005517          	auipc	a0,0x5
    800033b0:	09450513          	addi	a0,a0,148 # 80008440 <cpus>
    800033b4:	00f50533          	add	a0,a0,a5
    800033b8:	01010113          	addi	sp,sp,16
    800033bc:	00008067          	ret

00000000800033c0 <userinit>:
    800033c0:	ff010113          	addi	sp,sp,-16
    800033c4:	00813423          	sd	s0,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	00813403          	ld	s0,8(sp)
    800033d0:	01010113          	addi	sp,sp,16
    800033d4:	fffff317          	auipc	t1,0xfffff
    800033d8:	a4430067          	jr	-1468(t1) # 80001e18 <main>

00000000800033dc <either_copyout>:
    800033dc:	ff010113          	addi	sp,sp,-16
    800033e0:	00813023          	sd	s0,0(sp)
    800033e4:	00113423          	sd	ra,8(sp)
    800033e8:	01010413          	addi	s0,sp,16
    800033ec:	02051663          	bnez	a0,80003418 <either_copyout+0x3c>
    800033f0:	00058513          	mv	a0,a1
    800033f4:	00060593          	mv	a1,a2
    800033f8:	0006861b          	sext.w	a2,a3
    800033fc:	00002097          	auipc	ra,0x2
    80003400:	c58080e7          	jalr	-936(ra) # 80005054 <__memmove>
    80003404:	00813083          	ld	ra,8(sp)
    80003408:	00013403          	ld	s0,0(sp)
    8000340c:	00000513          	li	a0,0
    80003410:	01010113          	addi	sp,sp,16
    80003414:	00008067          	ret
    80003418:	00003517          	auipc	a0,0x3
    8000341c:	d7050513          	addi	a0,a0,-656 # 80006188 <CONSOLE_STATUS+0x178>
    80003420:	00001097          	auipc	ra,0x1
    80003424:	92c080e7          	jalr	-1748(ra) # 80003d4c <panic>

0000000080003428 <either_copyin>:
    80003428:	ff010113          	addi	sp,sp,-16
    8000342c:	00813023          	sd	s0,0(sp)
    80003430:	00113423          	sd	ra,8(sp)
    80003434:	01010413          	addi	s0,sp,16
    80003438:	02059463          	bnez	a1,80003460 <either_copyin+0x38>
    8000343c:	00060593          	mv	a1,a2
    80003440:	0006861b          	sext.w	a2,a3
    80003444:	00002097          	auipc	ra,0x2
    80003448:	c10080e7          	jalr	-1008(ra) # 80005054 <__memmove>
    8000344c:	00813083          	ld	ra,8(sp)
    80003450:	00013403          	ld	s0,0(sp)
    80003454:	00000513          	li	a0,0
    80003458:	01010113          	addi	sp,sp,16
    8000345c:	00008067          	ret
    80003460:	00003517          	auipc	a0,0x3
    80003464:	d5050513          	addi	a0,a0,-688 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003468:	00001097          	auipc	ra,0x1
    8000346c:	8e4080e7          	jalr	-1820(ra) # 80003d4c <panic>

0000000080003470 <trapinit>:
    80003470:	ff010113          	addi	sp,sp,-16
    80003474:	00813423          	sd	s0,8(sp)
    80003478:	01010413          	addi	s0,sp,16
    8000347c:	00813403          	ld	s0,8(sp)
    80003480:	00003597          	auipc	a1,0x3
    80003484:	d5858593          	addi	a1,a1,-680 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003488:	00005517          	auipc	a0,0x5
    8000348c:	03850513          	addi	a0,a0,56 # 800084c0 <tickslock>
    80003490:	01010113          	addi	sp,sp,16
    80003494:	00001317          	auipc	t1,0x1
    80003498:	5c430067          	jr	1476(t1) # 80004a58 <initlock>

000000008000349c <trapinithart>:
    8000349c:	ff010113          	addi	sp,sp,-16
    800034a0:	00813423          	sd	s0,8(sp)
    800034a4:	01010413          	addi	s0,sp,16
    800034a8:	00000797          	auipc	a5,0x0
    800034ac:	2f878793          	addi	a5,a5,760 # 800037a0 <kernelvec>
    800034b0:	10579073          	csrw	stvec,a5
    800034b4:	00813403          	ld	s0,8(sp)
    800034b8:	01010113          	addi	sp,sp,16
    800034bc:	00008067          	ret

00000000800034c0 <usertrap>:
    800034c0:	ff010113          	addi	sp,sp,-16
    800034c4:	00813423          	sd	s0,8(sp)
    800034c8:	01010413          	addi	s0,sp,16
    800034cc:	00813403          	ld	s0,8(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret

00000000800034d8 <usertrapret>:
    800034d8:	ff010113          	addi	sp,sp,-16
    800034dc:	00813423          	sd	s0,8(sp)
    800034e0:	01010413          	addi	s0,sp,16
    800034e4:	00813403          	ld	s0,8(sp)
    800034e8:	01010113          	addi	sp,sp,16
    800034ec:	00008067          	ret

00000000800034f0 <kerneltrap>:
    800034f0:	fe010113          	addi	sp,sp,-32
    800034f4:	00813823          	sd	s0,16(sp)
    800034f8:	00113c23          	sd	ra,24(sp)
    800034fc:	00913423          	sd	s1,8(sp)
    80003500:	02010413          	addi	s0,sp,32
    80003504:	142025f3          	csrr	a1,scause
    80003508:	100027f3          	csrr	a5,sstatus
    8000350c:	0027f793          	andi	a5,a5,2
    80003510:	10079c63          	bnez	a5,80003628 <kerneltrap+0x138>
    80003514:	142027f3          	csrr	a5,scause
    80003518:	0207ce63          	bltz	a5,80003554 <kerneltrap+0x64>
    8000351c:	00003517          	auipc	a0,0x3
    80003520:	d0450513          	addi	a0,a0,-764 # 80006220 <CONSOLE_STATUS+0x210>
    80003524:	00001097          	auipc	ra,0x1
    80003528:	884080e7          	jalr	-1916(ra) # 80003da8 <__printf>
    8000352c:	141025f3          	csrr	a1,sepc
    80003530:	14302673          	csrr	a2,stval
    80003534:	00003517          	auipc	a0,0x3
    80003538:	cfc50513          	addi	a0,a0,-772 # 80006230 <CONSOLE_STATUS+0x220>
    8000353c:	00001097          	auipc	ra,0x1
    80003540:	86c080e7          	jalr	-1940(ra) # 80003da8 <__printf>
    80003544:	00003517          	auipc	a0,0x3
    80003548:	d0450513          	addi	a0,a0,-764 # 80006248 <CONSOLE_STATUS+0x238>
    8000354c:	00001097          	auipc	ra,0x1
    80003550:	800080e7          	jalr	-2048(ra) # 80003d4c <panic>
    80003554:	0ff7f713          	andi	a4,a5,255
    80003558:	00900693          	li	a3,9
    8000355c:	04d70063          	beq	a4,a3,8000359c <kerneltrap+0xac>
    80003560:	fff00713          	li	a4,-1
    80003564:	03f71713          	slli	a4,a4,0x3f
    80003568:	00170713          	addi	a4,a4,1
    8000356c:	fae798e3          	bne	a5,a4,8000351c <kerneltrap+0x2c>
    80003570:	00000097          	auipc	ra,0x0
    80003574:	e00080e7          	jalr	-512(ra) # 80003370 <cpuid>
    80003578:	06050663          	beqz	a0,800035e4 <kerneltrap+0xf4>
    8000357c:	144027f3          	csrr	a5,sip
    80003580:	ffd7f793          	andi	a5,a5,-3
    80003584:	14479073          	csrw	sip,a5
    80003588:	01813083          	ld	ra,24(sp)
    8000358c:	01013403          	ld	s0,16(sp)
    80003590:	00813483          	ld	s1,8(sp)
    80003594:	02010113          	addi	sp,sp,32
    80003598:	00008067          	ret
    8000359c:	00000097          	auipc	ra,0x0
    800035a0:	3c8080e7          	jalr	968(ra) # 80003964 <plic_claim>
    800035a4:	00a00793          	li	a5,10
    800035a8:	00050493          	mv	s1,a0
    800035ac:	06f50863          	beq	a0,a5,8000361c <kerneltrap+0x12c>
    800035b0:	fc050ce3          	beqz	a0,80003588 <kerneltrap+0x98>
    800035b4:	00050593          	mv	a1,a0
    800035b8:	00003517          	auipc	a0,0x3
    800035bc:	c4850513          	addi	a0,a0,-952 # 80006200 <CONSOLE_STATUS+0x1f0>
    800035c0:	00000097          	auipc	ra,0x0
    800035c4:	7e8080e7          	jalr	2024(ra) # 80003da8 <__printf>
    800035c8:	01013403          	ld	s0,16(sp)
    800035cc:	01813083          	ld	ra,24(sp)
    800035d0:	00048513          	mv	a0,s1
    800035d4:	00813483          	ld	s1,8(sp)
    800035d8:	02010113          	addi	sp,sp,32
    800035dc:	00000317          	auipc	t1,0x0
    800035e0:	3c030067          	jr	960(t1) # 8000399c <plic_complete>
    800035e4:	00005517          	auipc	a0,0x5
    800035e8:	edc50513          	addi	a0,a0,-292 # 800084c0 <tickslock>
    800035ec:	00001097          	auipc	ra,0x1
    800035f0:	490080e7          	jalr	1168(ra) # 80004a7c <acquire>
    800035f4:	00004717          	auipc	a4,0x4
    800035f8:	d7070713          	addi	a4,a4,-656 # 80007364 <ticks>
    800035fc:	00072783          	lw	a5,0(a4)
    80003600:	00005517          	auipc	a0,0x5
    80003604:	ec050513          	addi	a0,a0,-320 # 800084c0 <tickslock>
    80003608:	0017879b          	addiw	a5,a5,1
    8000360c:	00f72023          	sw	a5,0(a4)
    80003610:	00001097          	auipc	ra,0x1
    80003614:	538080e7          	jalr	1336(ra) # 80004b48 <release>
    80003618:	f65ff06f          	j	8000357c <kerneltrap+0x8c>
    8000361c:	00001097          	auipc	ra,0x1
    80003620:	094080e7          	jalr	148(ra) # 800046b0 <uartintr>
    80003624:	fa5ff06f          	j	800035c8 <kerneltrap+0xd8>
    80003628:	00003517          	auipc	a0,0x3
    8000362c:	bb850513          	addi	a0,a0,-1096 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80003630:	00000097          	auipc	ra,0x0
    80003634:	71c080e7          	jalr	1820(ra) # 80003d4c <panic>

0000000080003638 <clockintr>:
    80003638:	fe010113          	addi	sp,sp,-32
    8000363c:	00813823          	sd	s0,16(sp)
    80003640:	00913423          	sd	s1,8(sp)
    80003644:	00113c23          	sd	ra,24(sp)
    80003648:	02010413          	addi	s0,sp,32
    8000364c:	00005497          	auipc	s1,0x5
    80003650:	e7448493          	addi	s1,s1,-396 # 800084c0 <tickslock>
    80003654:	00048513          	mv	a0,s1
    80003658:	00001097          	auipc	ra,0x1
    8000365c:	424080e7          	jalr	1060(ra) # 80004a7c <acquire>
    80003660:	00004717          	auipc	a4,0x4
    80003664:	d0470713          	addi	a4,a4,-764 # 80007364 <ticks>
    80003668:	00072783          	lw	a5,0(a4)
    8000366c:	01013403          	ld	s0,16(sp)
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	00048513          	mv	a0,s1
    80003678:	0017879b          	addiw	a5,a5,1
    8000367c:	00813483          	ld	s1,8(sp)
    80003680:	00f72023          	sw	a5,0(a4)
    80003684:	02010113          	addi	sp,sp,32
    80003688:	00001317          	auipc	t1,0x1
    8000368c:	4c030067          	jr	1216(t1) # 80004b48 <release>

0000000080003690 <devintr>:
    80003690:	142027f3          	csrr	a5,scause
    80003694:	00000513          	li	a0,0
    80003698:	0007c463          	bltz	a5,800036a0 <devintr+0x10>
    8000369c:	00008067          	ret
    800036a0:	fe010113          	addi	sp,sp,-32
    800036a4:	00813823          	sd	s0,16(sp)
    800036a8:	00113c23          	sd	ra,24(sp)
    800036ac:	00913423          	sd	s1,8(sp)
    800036b0:	02010413          	addi	s0,sp,32
    800036b4:	0ff7f713          	andi	a4,a5,255
    800036b8:	00900693          	li	a3,9
    800036bc:	04d70c63          	beq	a4,a3,80003714 <devintr+0x84>
    800036c0:	fff00713          	li	a4,-1
    800036c4:	03f71713          	slli	a4,a4,0x3f
    800036c8:	00170713          	addi	a4,a4,1
    800036cc:	00e78c63          	beq	a5,a4,800036e4 <devintr+0x54>
    800036d0:	01813083          	ld	ra,24(sp)
    800036d4:	01013403          	ld	s0,16(sp)
    800036d8:	00813483          	ld	s1,8(sp)
    800036dc:	02010113          	addi	sp,sp,32
    800036e0:	00008067          	ret
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	c8c080e7          	jalr	-884(ra) # 80003370 <cpuid>
    800036ec:	06050663          	beqz	a0,80003758 <devintr+0xc8>
    800036f0:	144027f3          	csrr	a5,sip
    800036f4:	ffd7f793          	andi	a5,a5,-3
    800036f8:	14479073          	csrw	sip,a5
    800036fc:	01813083          	ld	ra,24(sp)
    80003700:	01013403          	ld	s0,16(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	00200513          	li	a0,2
    8000370c:	02010113          	addi	sp,sp,32
    80003710:	00008067          	ret
    80003714:	00000097          	auipc	ra,0x0
    80003718:	250080e7          	jalr	592(ra) # 80003964 <plic_claim>
    8000371c:	00a00793          	li	a5,10
    80003720:	00050493          	mv	s1,a0
    80003724:	06f50663          	beq	a0,a5,80003790 <devintr+0x100>
    80003728:	00100513          	li	a0,1
    8000372c:	fa0482e3          	beqz	s1,800036d0 <devintr+0x40>
    80003730:	00048593          	mv	a1,s1
    80003734:	00003517          	auipc	a0,0x3
    80003738:	acc50513          	addi	a0,a0,-1332 # 80006200 <CONSOLE_STATUS+0x1f0>
    8000373c:	00000097          	auipc	ra,0x0
    80003740:	66c080e7          	jalr	1644(ra) # 80003da8 <__printf>
    80003744:	00048513          	mv	a0,s1
    80003748:	00000097          	auipc	ra,0x0
    8000374c:	254080e7          	jalr	596(ra) # 8000399c <plic_complete>
    80003750:	00100513          	li	a0,1
    80003754:	f7dff06f          	j	800036d0 <devintr+0x40>
    80003758:	00005517          	auipc	a0,0x5
    8000375c:	d6850513          	addi	a0,a0,-664 # 800084c0 <tickslock>
    80003760:	00001097          	auipc	ra,0x1
    80003764:	31c080e7          	jalr	796(ra) # 80004a7c <acquire>
    80003768:	00004717          	auipc	a4,0x4
    8000376c:	bfc70713          	addi	a4,a4,-1028 # 80007364 <ticks>
    80003770:	00072783          	lw	a5,0(a4)
    80003774:	00005517          	auipc	a0,0x5
    80003778:	d4c50513          	addi	a0,a0,-692 # 800084c0 <tickslock>
    8000377c:	0017879b          	addiw	a5,a5,1
    80003780:	00f72023          	sw	a5,0(a4)
    80003784:	00001097          	auipc	ra,0x1
    80003788:	3c4080e7          	jalr	964(ra) # 80004b48 <release>
    8000378c:	f65ff06f          	j	800036f0 <devintr+0x60>
    80003790:	00001097          	auipc	ra,0x1
    80003794:	f20080e7          	jalr	-224(ra) # 800046b0 <uartintr>
    80003798:	fadff06f          	j	80003744 <devintr+0xb4>
    8000379c:	0000                	unimp
	...

00000000800037a0 <kernelvec>:
    800037a0:	f0010113          	addi	sp,sp,-256
    800037a4:	00113023          	sd	ra,0(sp)
    800037a8:	00213423          	sd	sp,8(sp)
    800037ac:	00313823          	sd	gp,16(sp)
    800037b0:	00413c23          	sd	tp,24(sp)
    800037b4:	02513023          	sd	t0,32(sp)
    800037b8:	02613423          	sd	t1,40(sp)
    800037bc:	02713823          	sd	t2,48(sp)
    800037c0:	02813c23          	sd	s0,56(sp)
    800037c4:	04913023          	sd	s1,64(sp)
    800037c8:	04a13423          	sd	a0,72(sp)
    800037cc:	04b13823          	sd	a1,80(sp)
    800037d0:	04c13c23          	sd	a2,88(sp)
    800037d4:	06d13023          	sd	a3,96(sp)
    800037d8:	06e13423          	sd	a4,104(sp)
    800037dc:	06f13823          	sd	a5,112(sp)
    800037e0:	07013c23          	sd	a6,120(sp)
    800037e4:	09113023          	sd	a7,128(sp)
    800037e8:	09213423          	sd	s2,136(sp)
    800037ec:	09313823          	sd	s3,144(sp)
    800037f0:	09413c23          	sd	s4,152(sp)
    800037f4:	0b513023          	sd	s5,160(sp)
    800037f8:	0b613423          	sd	s6,168(sp)
    800037fc:	0b713823          	sd	s7,176(sp)
    80003800:	0b813c23          	sd	s8,184(sp)
    80003804:	0d913023          	sd	s9,192(sp)
    80003808:	0da13423          	sd	s10,200(sp)
    8000380c:	0db13823          	sd	s11,208(sp)
    80003810:	0dc13c23          	sd	t3,216(sp)
    80003814:	0fd13023          	sd	t4,224(sp)
    80003818:	0fe13423          	sd	t5,232(sp)
    8000381c:	0ff13823          	sd	t6,240(sp)
    80003820:	cd1ff0ef          	jal	ra,800034f0 <kerneltrap>
    80003824:	00013083          	ld	ra,0(sp)
    80003828:	00813103          	ld	sp,8(sp)
    8000382c:	01013183          	ld	gp,16(sp)
    80003830:	02013283          	ld	t0,32(sp)
    80003834:	02813303          	ld	t1,40(sp)
    80003838:	03013383          	ld	t2,48(sp)
    8000383c:	03813403          	ld	s0,56(sp)
    80003840:	04013483          	ld	s1,64(sp)
    80003844:	04813503          	ld	a0,72(sp)
    80003848:	05013583          	ld	a1,80(sp)
    8000384c:	05813603          	ld	a2,88(sp)
    80003850:	06013683          	ld	a3,96(sp)
    80003854:	06813703          	ld	a4,104(sp)
    80003858:	07013783          	ld	a5,112(sp)
    8000385c:	07813803          	ld	a6,120(sp)
    80003860:	08013883          	ld	a7,128(sp)
    80003864:	08813903          	ld	s2,136(sp)
    80003868:	09013983          	ld	s3,144(sp)
    8000386c:	09813a03          	ld	s4,152(sp)
    80003870:	0a013a83          	ld	s5,160(sp)
    80003874:	0a813b03          	ld	s6,168(sp)
    80003878:	0b013b83          	ld	s7,176(sp)
    8000387c:	0b813c03          	ld	s8,184(sp)
    80003880:	0c013c83          	ld	s9,192(sp)
    80003884:	0c813d03          	ld	s10,200(sp)
    80003888:	0d013d83          	ld	s11,208(sp)
    8000388c:	0d813e03          	ld	t3,216(sp)
    80003890:	0e013e83          	ld	t4,224(sp)
    80003894:	0e813f03          	ld	t5,232(sp)
    80003898:	0f013f83          	ld	t6,240(sp)
    8000389c:	10010113          	addi	sp,sp,256
    800038a0:	10200073          	sret
    800038a4:	00000013          	nop
    800038a8:	00000013          	nop
    800038ac:	00000013          	nop

00000000800038b0 <timervec>:
    800038b0:	34051573          	csrrw	a0,mscratch,a0
    800038b4:	00b53023          	sd	a1,0(a0)
    800038b8:	00c53423          	sd	a2,8(a0)
    800038bc:	00d53823          	sd	a3,16(a0)
    800038c0:	01853583          	ld	a1,24(a0)
    800038c4:	02053603          	ld	a2,32(a0)
    800038c8:	0005b683          	ld	a3,0(a1)
    800038cc:	00c686b3          	add	a3,a3,a2
    800038d0:	00d5b023          	sd	a3,0(a1)
    800038d4:	00200593          	li	a1,2
    800038d8:	14459073          	csrw	sip,a1
    800038dc:	01053683          	ld	a3,16(a0)
    800038e0:	00853603          	ld	a2,8(a0)
    800038e4:	00053583          	ld	a1,0(a0)
    800038e8:	34051573          	csrrw	a0,mscratch,a0
    800038ec:	30200073          	mret

00000000800038f0 <plicinit>:
    800038f0:	ff010113          	addi	sp,sp,-16
    800038f4:	00813423          	sd	s0,8(sp)
    800038f8:	01010413          	addi	s0,sp,16
    800038fc:	00813403          	ld	s0,8(sp)
    80003900:	0c0007b7          	lui	a5,0xc000
    80003904:	00100713          	li	a4,1
    80003908:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000390c:	00e7a223          	sw	a4,4(a5)
    80003910:	01010113          	addi	sp,sp,16
    80003914:	00008067          	ret

0000000080003918 <plicinithart>:
    80003918:	ff010113          	addi	sp,sp,-16
    8000391c:	00813023          	sd	s0,0(sp)
    80003920:	00113423          	sd	ra,8(sp)
    80003924:	01010413          	addi	s0,sp,16
    80003928:	00000097          	auipc	ra,0x0
    8000392c:	a48080e7          	jalr	-1464(ra) # 80003370 <cpuid>
    80003930:	0085171b          	slliw	a4,a0,0x8
    80003934:	0c0027b7          	lui	a5,0xc002
    80003938:	00e787b3          	add	a5,a5,a4
    8000393c:	40200713          	li	a4,1026
    80003940:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003944:	00813083          	ld	ra,8(sp)
    80003948:	00013403          	ld	s0,0(sp)
    8000394c:	00d5151b          	slliw	a0,a0,0xd
    80003950:	0c2017b7          	lui	a5,0xc201
    80003954:	00a78533          	add	a0,a5,a0
    80003958:	00052023          	sw	zero,0(a0)
    8000395c:	01010113          	addi	sp,sp,16
    80003960:	00008067          	ret

0000000080003964 <plic_claim>:
    80003964:	ff010113          	addi	sp,sp,-16
    80003968:	00813023          	sd	s0,0(sp)
    8000396c:	00113423          	sd	ra,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	00000097          	auipc	ra,0x0
    80003978:	9fc080e7          	jalr	-1540(ra) # 80003370 <cpuid>
    8000397c:	00813083          	ld	ra,8(sp)
    80003980:	00013403          	ld	s0,0(sp)
    80003984:	00d5151b          	slliw	a0,a0,0xd
    80003988:	0c2017b7          	lui	a5,0xc201
    8000398c:	00a78533          	add	a0,a5,a0
    80003990:	00452503          	lw	a0,4(a0)
    80003994:	01010113          	addi	sp,sp,16
    80003998:	00008067          	ret

000000008000399c <plic_complete>:
    8000399c:	fe010113          	addi	sp,sp,-32
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	00113c23          	sd	ra,24(sp)
    800039ac:	02010413          	addi	s0,sp,32
    800039b0:	00050493          	mv	s1,a0
    800039b4:	00000097          	auipc	ra,0x0
    800039b8:	9bc080e7          	jalr	-1604(ra) # 80003370 <cpuid>
    800039bc:	01813083          	ld	ra,24(sp)
    800039c0:	01013403          	ld	s0,16(sp)
    800039c4:	00d5179b          	slliw	a5,a0,0xd
    800039c8:	0c201737          	lui	a4,0xc201
    800039cc:	00f707b3          	add	a5,a4,a5
    800039d0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800039d4:	00813483          	ld	s1,8(sp)
    800039d8:	02010113          	addi	sp,sp,32
    800039dc:	00008067          	ret

00000000800039e0 <consolewrite>:
    800039e0:	fb010113          	addi	sp,sp,-80
    800039e4:	04813023          	sd	s0,64(sp)
    800039e8:	04113423          	sd	ra,72(sp)
    800039ec:	02913c23          	sd	s1,56(sp)
    800039f0:	03213823          	sd	s2,48(sp)
    800039f4:	03313423          	sd	s3,40(sp)
    800039f8:	03413023          	sd	s4,32(sp)
    800039fc:	01513c23          	sd	s5,24(sp)
    80003a00:	05010413          	addi	s0,sp,80
    80003a04:	06c05c63          	blez	a2,80003a7c <consolewrite+0x9c>
    80003a08:	00060993          	mv	s3,a2
    80003a0c:	00050a13          	mv	s4,a0
    80003a10:	00058493          	mv	s1,a1
    80003a14:	00000913          	li	s2,0
    80003a18:	fff00a93          	li	s5,-1
    80003a1c:	01c0006f          	j	80003a38 <consolewrite+0x58>
    80003a20:	fbf44503          	lbu	a0,-65(s0)
    80003a24:	0019091b          	addiw	s2,s2,1
    80003a28:	00148493          	addi	s1,s1,1
    80003a2c:	00001097          	auipc	ra,0x1
    80003a30:	a9c080e7          	jalr	-1380(ra) # 800044c8 <uartputc>
    80003a34:	03298063          	beq	s3,s2,80003a54 <consolewrite+0x74>
    80003a38:	00048613          	mv	a2,s1
    80003a3c:	00100693          	li	a3,1
    80003a40:	000a0593          	mv	a1,s4
    80003a44:	fbf40513          	addi	a0,s0,-65
    80003a48:	00000097          	auipc	ra,0x0
    80003a4c:	9e0080e7          	jalr	-1568(ra) # 80003428 <either_copyin>
    80003a50:	fd5518e3          	bne	a0,s5,80003a20 <consolewrite+0x40>
    80003a54:	04813083          	ld	ra,72(sp)
    80003a58:	04013403          	ld	s0,64(sp)
    80003a5c:	03813483          	ld	s1,56(sp)
    80003a60:	02813983          	ld	s3,40(sp)
    80003a64:	02013a03          	ld	s4,32(sp)
    80003a68:	01813a83          	ld	s5,24(sp)
    80003a6c:	00090513          	mv	a0,s2
    80003a70:	03013903          	ld	s2,48(sp)
    80003a74:	05010113          	addi	sp,sp,80
    80003a78:	00008067          	ret
    80003a7c:	00000913          	li	s2,0
    80003a80:	fd5ff06f          	j	80003a54 <consolewrite+0x74>

0000000080003a84 <consoleread>:
    80003a84:	f9010113          	addi	sp,sp,-112
    80003a88:	06813023          	sd	s0,96(sp)
    80003a8c:	04913c23          	sd	s1,88(sp)
    80003a90:	05213823          	sd	s2,80(sp)
    80003a94:	05313423          	sd	s3,72(sp)
    80003a98:	05413023          	sd	s4,64(sp)
    80003a9c:	03513c23          	sd	s5,56(sp)
    80003aa0:	03613823          	sd	s6,48(sp)
    80003aa4:	03713423          	sd	s7,40(sp)
    80003aa8:	03813023          	sd	s8,32(sp)
    80003aac:	06113423          	sd	ra,104(sp)
    80003ab0:	01913c23          	sd	s9,24(sp)
    80003ab4:	07010413          	addi	s0,sp,112
    80003ab8:	00060b93          	mv	s7,a2
    80003abc:	00050913          	mv	s2,a0
    80003ac0:	00058c13          	mv	s8,a1
    80003ac4:	00060b1b          	sext.w	s6,a2
    80003ac8:	00005497          	auipc	s1,0x5
    80003acc:	a2048493          	addi	s1,s1,-1504 # 800084e8 <cons>
    80003ad0:	00400993          	li	s3,4
    80003ad4:	fff00a13          	li	s4,-1
    80003ad8:	00a00a93          	li	s5,10
    80003adc:	05705e63          	blez	s7,80003b38 <consoleread+0xb4>
    80003ae0:	09c4a703          	lw	a4,156(s1)
    80003ae4:	0984a783          	lw	a5,152(s1)
    80003ae8:	0007071b          	sext.w	a4,a4
    80003aec:	08e78463          	beq	a5,a4,80003b74 <consoleread+0xf0>
    80003af0:	07f7f713          	andi	a4,a5,127
    80003af4:	00e48733          	add	a4,s1,a4
    80003af8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003afc:	0017869b          	addiw	a3,a5,1
    80003b00:	08d4ac23          	sw	a3,152(s1)
    80003b04:	00070c9b          	sext.w	s9,a4
    80003b08:	0b370663          	beq	a4,s3,80003bb4 <consoleread+0x130>
    80003b0c:	00100693          	li	a3,1
    80003b10:	f9f40613          	addi	a2,s0,-97
    80003b14:	000c0593          	mv	a1,s8
    80003b18:	00090513          	mv	a0,s2
    80003b1c:	f8e40fa3          	sb	a4,-97(s0)
    80003b20:	00000097          	auipc	ra,0x0
    80003b24:	8bc080e7          	jalr	-1860(ra) # 800033dc <either_copyout>
    80003b28:	01450863          	beq	a0,s4,80003b38 <consoleread+0xb4>
    80003b2c:	001c0c13          	addi	s8,s8,1
    80003b30:	fffb8b9b          	addiw	s7,s7,-1
    80003b34:	fb5c94e3          	bne	s9,s5,80003adc <consoleread+0x58>
    80003b38:	000b851b          	sext.w	a0,s7
    80003b3c:	06813083          	ld	ra,104(sp)
    80003b40:	06013403          	ld	s0,96(sp)
    80003b44:	05813483          	ld	s1,88(sp)
    80003b48:	05013903          	ld	s2,80(sp)
    80003b4c:	04813983          	ld	s3,72(sp)
    80003b50:	04013a03          	ld	s4,64(sp)
    80003b54:	03813a83          	ld	s5,56(sp)
    80003b58:	02813b83          	ld	s7,40(sp)
    80003b5c:	02013c03          	ld	s8,32(sp)
    80003b60:	01813c83          	ld	s9,24(sp)
    80003b64:	40ab053b          	subw	a0,s6,a0
    80003b68:	03013b03          	ld	s6,48(sp)
    80003b6c:	07010113          	addi	sp,sp,112
    80003b70:	00008067          	ret
    80003b74:	00001097          	auipc	ra,0x1
    80003b78:	1d8080e7          	jalr	472(ra) # 80004d4c <push_on>
    80003b7c:	0984a703          	lw	a4,152(s1)
    80003b80:	09c4a783          	lw	a5,156(s1)
    80003b84:	0007879b          	sext.w	a5,a5
    80003b88:	fef70ce3          	beq	a4,a5,80003b80 <consoleread+0xfc>
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	234080e7          	jalr	564(ra) # 80004dc0 <pop_on>
    80003b94:	0984a783          	lw	a5,152(s1)
    80003b98:	07f7f713          	andi	a4,a5,127
    80003b9c:	00e48733          	add	a4,s1,a4
    80003ba0:	01874703          	lbu	a4,24(a4)
    80003ba4:	0017869b          	addiw	a3,a5,1
    80003ba8:	08d4ac23          	sw	a3,152(s1)
    80003bac:	00070c9b          	sext.w	s9,a4
    80003bb0:	f5371ee3          	bne	a4,s3,80003b0c <consoleread+0x88>
    80003bb4:	000b851b          	sext.w	a0,s7
    80003bb8:	f96bf2e3          	bgeu	s7,s6,80003b3c <consoleread+0xb8>
    80003bbc:	08f4ac23          	sw	a5,152(s1)
    80003bc0:	f7dff06f          	j	80003b3c <consoleread+0xb8>

0000000080003bc4 <consputc>:
    80003bc4:	10000793          	li	a5,256
    80003bc8:	00f50663          	beq	a0,a5,80003bd4 <consputc+0x10>
    80003bcc:	00001317          	auipc	t1,0x1
    80003bd0:	9f430067          	jr	-1548(t1) # 800045c0 <uartputc_sync>
    80003bd4:	ff010113          	addi	sp,sp,-16
    80003bd8:	00113423          	sd	ra,8(sp)
    80003bdc:	00813023          	sd	s0,0(sp)
    80003be0:	01010413          	addi	s0,sp,16
    80003be4:	00800513          	li	a0,8
    80003be8:	00001097          	auipc	ra,0x1
    80003bec:	9d8080e7          	jalr	-1576(ra) # 800045c0 <uartputc_sync>
    80003bf0:	02000513          	li	a0,32
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	9cc080e7          	jalr	-1588(ra) # 800045c0 <uartputc_sync>
    80003bfc:	00013403          	ld	s0,0(sp)
    80003c00:	00813083          	ld	ra,8(sp)
    80003c04:	00800513          	li	a0,8
    80003c08:	01010113          	addi	sp,sp,16
    80003c0c:	00001317          	auipc	t1,0x1
    80003c10:	9b430067          	jr	-1612(t1) # 800045c0 <uartputc_sync>

0000000080003c14 <consoleintr>:
    80003c14:	fe010113          	addi	sp,sp,-32
    80003c18:	00813823          	sd	s0,16(sp)
    80003c1c:	00913423          	sd	s1,8(sp)
    80003c20:	01213023          	sd	s2,0(sp)
    80003c24:	00113c23          	sd	ra,24(sp)
    80003c28:	02010413          	addi	s0,sp,32
    80003c2c:	00005917          	auipc	s2,0x5
    80003c30:	8bc90913          	addi	s2,s2,-1860 # 800084e8 <cons>
    80003c34:	00050493          	mv	s1,a0
    80003c38:	00090513          	mv	a0,s2
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	e40080e7          	jalr	-448(ra) # 80004a7c <acquire>
    80003c44:	02048c63          	beqz	s1,80003c7c <consoleintr+0x68>
    80003c48:	0a092783          	lw	a5,160(s2)
    80003c4c:	09892703          	lw	a4,152(s2)
    80003c50:	07f00693          	li	a3,127
    80003c54:	40e7873b          	subw	a4,a5,a4
    80003c58:	02e6e263          	bltu	a3,a4,80003c7c <consoleintr+0x68>
    80003c5c:	00d00713          	li	a4,13
    80003c60:	04e48063          	beq	s1,a4,80003ca0 <consoleintr+0x8c>
    80003c64:	07f7f713          	andi	a4,a5,127
    80003c68:	00e90733          	add	a4,s2,a4
    80003c6c:	0017879b          	addiw	a5,a5,1
    80003c70:	0af92023          	sw	a5,160(s2)
    80003c74:	00970c23          	sb	s1,24(a4)
    80003c78:	08f92e23          	sw	a5,156(s2)
    80003c7c:	01013403          	ld	s0,16(sp)
    80003c80:	01813083          	ld	ra,24(sp)
    80003c84:	00813483          	ld	s1,8(sp)
    80003c88:	00013903          	ld	s2,0(sp)
    80003c8c:	00005517          	auipc	a0,0x5
    80003c90:	85c50513          	addi	a0,a0,-1956 # 800084e8 <cons>
    80003c94:	02010113          	addi	sp,sp,32
    80003c98:	00001317          	auipc	t1,0x1
    80003c9c:	eb030067          	jr	-336(t1) # 80004b48 <release>
    80003ca0:	00a00493          	li	s1,10
    80003ca4:	fc1ff06f          	j	80003c64 <consoleintr+0x50>

0000000080003ca8 <consoleinit>:
    80003ca8:	fe010113          	addi	sp,sp,-32
    80003cac:	00113c23          	sd	ra,24(sp)
    80003cb0:	00813823          	sd	s0,16(sp)
    80003cb4:	00913423          	sd	s1,8(sp)
    80003cb8:	02010413          	addi	s0,sp,32
    80003cbc:	00005497          	auipc	s1,0x5
    80003cc0:	82c48493          	addi	s1,s1,-2004 # 800084e8 <cons>
    80003cc4:	00048513          	mv	a0,s1
    80003cc8:	00002597          	auipc	a1,0x2
    80003ccc:	59058593          	addi	a1,a1,1424 # 80006258 <CONSOLE_STATUS+0x248>
    80003cd0:	00001097          	auipc	ra,0x1
    80003cd4:	d88080e7          	jalr	-632(ra) # 80004a58 <initlock>
    80003cd8:	00000097          	auipc	ra,0x0
    80003cdc:	7ac080e7          	jalr	1964(ra) # 80004484 <uartinit>
    80003ce0:	01813083          	ld	ra,24(sp)
    80003ce4:	01013403          	ld	s0,16(sp)
    80003ce8:	00000797          	auipc	a5,0x0
    80003cec:	d9c78793          	addi	a5,a5,-612 # 80003a84 <consoleread>
    80003cf0:	0af4bc23          	sd	a5,184(s1)
    80003cf4:	00000797          	auipc	a5,0x0
    80003cf8:	cec78793          	addi	a5,a5,-788 # 800039e0 <consolewrite>
    80003cfc:	0cf4b023          	sd	a5,192(s1)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	02010113          	addi	sp,sp,32
    80003d08:	00008067          	ret

0000000080003d0c <console_read>:
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00813423          	sd	s0,8(sp)
    80003d14:	01010413          	addi	s0,sp,16
    80003d18:	00813403          	ld	s0,8(sp)
    80003d1c:	00005317          	auipc	t1,0x5
    80003d20:	88433303          	ld	t1,-1916(t1) # 800085a0 <devsw+0x10>
    80003d24:	01010113          	addi	sp,sp,16
    80003d28:	00030067          	jr	t1

0000000080003d2c <console_write>:
    80003d2c:	ff010113          	addi	sp,sp,-16
    80003d30:	00813423          	sd	s0,8(sp)
    80003d34:	01010413          	addi	s0,sp,16
    80003d38:	00813403          	ld	s0,8(sp)
    80003d3c:	00005317          	auipc	t1,0x5
    80003d40:	86c33303          	ld	t1,-1940(t1) # 800085a8 <devsw+0x18>
    80003d44:	01010113          	addi	sp,sp,16
    80003d48:	00030067          	jr	t1

0000000080003d4c <panic>:
    80003d4c:	fe010113          	addi	sp,sp,-32
    80003d50:	00113c23          	sd	ra,24(sp)
    80003d54:	00813823          	sd	s0,16(sp)
    80003d58:	00913423          	sd	s1,8(sp)
    80003d5c:	02010413          	addi	s0,sp,32
    80003d60:	00050493          	mv	s1,a0
    80003d64:	00002517          	auipc	a0,0x2
    80003d68:	4fc50513          	addi	a0,a0,1276 # 80006260 <CONSOLE_STATUS+0x250>
    80003d6c:	00005797          	auipc	a5,0x5
    80003d70:	8c07ae23          	sw	zero,-1828(a5) # 80008648 <pr+0x18>
    80003d74:	00000097          	auipc	ra,0x0
    80003d78:	034080e7          	jalr	52(ra) # 80003da8 <__printf>
    80003d7c:	00048513          	mv	a0,s1
    80003d80:	00000097          	auipc	ra,0x0
    80003d84:	028080e7          	jalr	40(ra) # 80003da8 <__printf>
    80003d88:	00002517          	auipc	a0,0x2
    80003d8c:	4b850513          	addi	a0,a0,1208 # 80006240 <CONSOLE_STATUS+0x230>
    80003d90:	00000097          	auipc	ra,0x0
    80003d94:	018080e7          	jalr	24(ra) # 80003da8 <__printf>
    80003d98:	00100793          	li	a5,1
    80003d9c:	00003717          	auipc	a4,0x3
    80003da0:	5cf72623          	sw	a5,1484(a4) # 80007368 <panicked>
    80003da4:	0000006f          	j	80003da4 <panic+0x58>

0000000080003da8 <__printf>:
    80003da8:	f3010113          	addi	sp,sp,-208
    80003dac:	08813023          	sd	s0,128(sp)
    80003db0:	07313423          	sd	s3,104(sp)
    80003db4:	09010413          	addi	s0,sp,144
    80003db8:	05813023          	sd	s8,64(sp)
    80003dbc:	08113423          	sd	ra,136(sp)
    80003dc0:	06913c23          	sd	s1,120(sp)
    80003dc4:	07213823          	sd	s2,112(sp)
    80003dc8:	07413023          	sd	s4,96(sp)
    80003dcc:	05513c23          	sd	s5,88(sp)
    80003dd0:	05613823          	sd	s6,80(sp)
    80003dd4:	05713423          	sd	s7,72(sp)
    80003dd8:	03913c23          	sd	s9,56(sp)
    80003ddc:	03a13823          	sd	s10,48(sp)
    80003de0:	03b13423          	sd	s11,40(sp)
    80003de4:	00005317          	auipc	t1,0x5
    80003de8:	84c30313          	addi	t1,t1,-1972 # 80008630 <pr>
    80003dec:	01832c03          	lw	s8,24(t1)
    80003df0:	00b43423          	sd	a1,8(s0)
    80003df4:	00c43823          	sd	a2,16(s0)
    80003df8:	00d43c23          	sd	a3,24(s0)
    80003dfc:	02e43023          	sd	a4,32(s0)
    80003e00:	02f43423          	sd	a5,40(s0)
    80003e04:	03043823          	sd	a6,48(s0)
    80003e08:	03143c23          	sd	a7,56(s0)
    80003e0c:	00050993          	mv	s3,a0
    80003e10:	4a0c1663          	bnez	s8,800042bc <__printf+0x514>
    80003e14:	60098c63          	beqz	s3,8000442c <__printf+0x684>
    80003e18:	0009c503          	lbu	a0,0(s3)
    80003e1c:	00840793          	addi	a5,s0,8
    80003e20:	f6f43c23          	sd	a5,-136(s0)
    80003e24:	00000493          	li	s1,0
    80003e28:	22050063          	beqz	a0,80004048 <__printf+0x2a0>
    80003e2c:	00002a37          	lui	s4,0x2
    80003e30:	00018ab7          	lui	s5,0x18
    80003e34:	000f4b37          	lui	s6,0xf4
    80003e38:	00989bb7          	lui	s7,0x989
    80003e3c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003e40:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003e44:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003e48:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003e4c:	00148c9b          	addiw	s9,s1,1
    80003e50:	02500793          	li	a5,37
    80003e54:	01998933          	add	s2,s3,s9
    80003e58:	38f51263          	bne	a0,a5,800041dc <__printf+0x434>
    80003e5c:	00094783          	lbu	a5,0(s2)
    80003e60:	00078c9b          	sext.w	s9,a5
    80003e64:	1e078263          	beqz	a5,80004048 <__printf+0x2a0>
    80003e68:	0024849b          	addiw	s1,s1,2
    80003e6c:	07000713          	li	a4,112
    80003e70:	00998933          	add	s2,s3,s1
    80003e74:	38e78a63          	beq	a5,a4,80004208 <__printf+0x460>
    80003e78:	20f76863          	bltu	a4,a5,80004088 <__printf+0x2e0>
    80003e7c:	42a78863          	beq	a5,a0,800042ac <__printf+0x504>
    80003e80:	06400713          	li	a4,100
    80003e84:	40e79663          	bne	a5,a4,80004290 <__printf+0x4e8>
    80003e88:	f7843783          	ld	a5,-136(s0)
    80003e8c:	0007a603          	lw	a2,0(a5)
    80003e90:	00878793          	addi	a5,a5,8
    80003e94:	f6f43c23          	sd	a5,-136(s0)
    80003e98:	42064a63          	bltz	a2,800042cc <__printf+0x524>
    80003e9c:	00a00713          	li	a4,10
    80003ea0:	02e677bb          	remuw	a5,a2,a4
    80003ea4:	00002d97          	auipc	s11,0x2
    80003ea8:	3e4d8d93          	addi	s11,s11,996 # 80006288 <digits>
    80003eac:	00900593          	li	a1,9
    80003eb0:	0006051b          	sext.w	a0,a2
    80003eb4:	00000c93          	li	s9,0
    80003eb8:	02079793          	slli	a5,a5,0x20
    80003ebc:	0207d793          	srli	a5,a5,0x20
    80003ec0:	00fd87b3          	add	a5,s11,a5
    80003ec4:	0007c783          	lbu	a5,0(a5)
    80003ec8:	02e656bb          	divuw	a3,a2,a4
    80003ecc:	f8f40023          	sb	a5,-128(s0)
    80003ed0:	14c5d863          	bge	a1,a2,80004020 <__printf+0x278>
    80003ed4:	06300593          	li	a1,99
    80003ed8:	00100c93          	li	s9,1
    80003edc:	02e6f7bb          	remuw	a5,a3,a4
    80003ee0:	02079793          	slli	a5,a5,0x20
    80003ee4:	0207d793          	srli	a5,a5,0x20
    80003ee8:	00fd87b3          	add	a5,s11,a5
    80003eec:	0007c783          	lbu	a5,0(a5)
    80003ef0:	02e6d73b          	divuw	a4,a3,a4
    80003ef4:	f8f400a3          	sb	a5,-127(s0)
    80003ef8:	12a5f463          	bgeu	a1,a0,80004020 <__printf+0x278>
    80003efc:	00a00693          	li	a3,10
    80003f00:	00900593          	li	a1,9
    80003f04:	02d777bb          	remuw	a5,a4,a3
    80003f08:	02079793          	slli	a5,a5,0x20
    80003f0c:	0207d793          	srli	a5,a5,0x20
    80003f10:	00fd87b3          	add	a5,s11,a5
    80003f14:	0007c503          	lbu	a0,0(a5)
    80003f18:	02d757bb          	divuw	a5,a4,a3
    80003f1c:	f8a40123          	sb	a0,-126(s0)
    80003f20:	48e5f263          	bgeu	a1,a4,800043a4 <__printf+0x5fc>
    80003f24:	06300513          	li	a0,99
    80003f28:	02d7f5bb          	remuw	a1,a5,a3
    80003f2c:	02059593          	slli	a1,a1,0x20
    80003f30:	0205d593          	srli	a1,a1,0x20
    80003f34:	00bd85b3          	add	a1,s11,a1
    80003f38:	0005c583          	lbu	a1,0(a1)
    80003f3c:	02d7d7bb          	divuw	a5,a5,a3
    80003f40:	f8b401a3          	sb	a1,-125(s0)
    80003f44:	48e57263          	bgeu	a0,a4,800043c8 <__printf+0x620>
    80003f48:	3e700513          	li	a0,999
    80003f4c:	02d7f5bb          	remuw	a1,a5,a3
    80003f50:	02059593          	slli	a1,a1,0x20
    80003f54:	0205d593          	srli	a1,a1,0x20
    80003f58:	00bd85b3          	add	a1,s11,a1
    80003f5c:	0005c583          	lbu	a1,0(a1)
    80003f60:	02d7d7bb          	divuw	a5,a5,a3
    80003f64:	f8b40223          	sb	a1,-124(s0)
    80003f68:	46e57663          	bgeu	a0,a4,800043d4 <__printf+0x62c>
    80003f6c:	02d7f5bb          	remuw	a1,a5,a3
    80003f70:	02059593          	slli	a1,a1,0x20
    80003f74:	0205d593          	srli	a1,a1,0x20
    80003f78:	00bd85b3          	add	a1,s11,a1
    80003f7c:	0005c583          	lbu	a1,0(a1)
    80003f80:	02d7d7bb          	divuw	a5,a5,a3
    80003f84:	f8b402a3          	sb	a1,-123(s0)
    80003f88:	46ea7863          	bgeu	s4,a4,800043f8 <__printf+0x650>
    80003f8c:	02d7f5bb          	remuw	a1,a5,a3
    80003f90:	02059593          	slli	a1,a1,0x20
    80003f94:	0205d593          	srli	a1,a1,0x20
    80003f98:	00bd85b3          	add	a1,s11,a1
    80003f9c:	0005c583          	lbu	a1,0(a1)
    80003fa0:	02d7d7bb          	divuw	a5,a5,a3
    80003fa4:	f8b40323          	sb	a1,-122(s0)
    80003fa8:	3eeaf863          	bgeu	s5,a4,80004398 <__printf+0x5f0>
    80003fac:	02d7f5bb          	remuw	a1,a5,a3
    80003fb0:	02059593          	slli	a1,a1,0x20
    80003fb4:	0205d593          	srli	a1,a1,0x20
    80003fb8:	00bd85b3          	add	a1,s11,a1
    80003fbc:	0005c583          	lbu	a1,0(a1)
    80003fc0:	02d7d7bb          	divuw	a5,a5,a3
    80003fc4:	f8b403a3          	sb	a1,-121(s0)
    80003fc8:	42eb7e63          	bgeu	s6,a4,80004404 <__printf+0x65c>
    80003fcc:	02d7f5bb          	remuw	a1,a5,a3
    80003fd0:	02059593          	slli	a1,a1,0x20
    80003fd4:	0205d593          	srli	a1,a1,0x20
    80003fd8:	00bd85b3          	add	a1,s11,a1
    80003fdc:	0005c583          	lbu	a1,0(a1)
    80003fe0:	02d7d7bb          	divuw	a5,a5,a3
    80003fe4:	f8b40423          	sb	a1,-120(s0)
    80003fe8:	42ebfc63          	bgeu	s7,a4,80004420 <__printf+0x678>
    80003fec:	02079793          	slli	a5,a5,0x20
    80003ff0:	0207d793          	srli	a5,a5,0x20
    80003ff4:	00fd8db3          	add	s11,s11,a5
    80003ff8:	000dc703          	lbu	a4,0(s11)
    80003ffc:	00a00793          	li	a5,10
    80004000:	00900c93          	li	s9,9
    80004004:	f8e404a3          	sb	a4,-119(s0)
    80004008:	00065c63          	bgez	a2,80004020 <__printf+0x278>
    8000400c:	f9040713          	addi	a4,s0,-112
    80004010:	00f70733          	add	a4,a4,a5
    80004014:	02d00693          	li	a3,45
    80004018:	fed70823          	sb	a3,-16(a4)
    8000401c:	00078c93          	mv	s9,a5
    80004020:	f8040793          	addi	a5,s0,-128
    80004024:	01978cb3          	add	s9,a5,s9
    80004028:	f7f40d13          	addi	s10,s0,-129
    8000402c:	000cc503          	lbu	a0,0(s9)
    80004030:	fffc8c93          	addi	s9,s9,-1
    80004034:	00000097          	auipc	ra,0x0
    80004038:	b90080e7          	jalr	-1136(ra) # 80003bc4 <consputc>
    8000403c:	ffac98e3          	bne	s9,s10,8000402c <__printf+0x284>
    80004040:	00094503          	lbu	a0,0(s2)
    80004044:	e00514e3          	bnez	a0,80003e4c <__printf+0xa4>
    80004048:	1a0c1663          	bnez	s8,800041f4 <__printf+0x44c>
    8000404c:	08813083          	ld	ra,136(sp)
    80004050:	08013403          	ld	s0,128(sp)
    80004054:	07813483          	ld	s1,120(sp)
    80004058:	07013903          	ld	s2,112(sp)
    8000405c:	06813983          	ld	s3,104(sp)
    80004060:	06013a03          	ld	s4,96(sp)
    80004064:	05813a83          	ld	s5,88(sp)
    80004068:	05013b03          	ld	s6,80(sp)
    8000406c:	04813b83          	ld	s7,72(sp)
    80004070:	04013c03          	ld	s8,64(sp)
    80004074:	03813c83          	ld	s9,56(sp)
    80004078:	03013d03          	ld	s10,48(sp)
    8000407c:	02813d83          	ld	s11,40(sp)
    80004080:	0d010113          	addi	sp,sp,208
    80004084:	00008067          	ret
    80004088:	07300713          	li	a4,115
    8000408c:	1ce78a63          	beq	a5,a4,80004260 <__printf+0x4b8>
    80004090:	07800713          	li	a4,120
    80004094:	1ee79e63          	bne	a5,a4,80004290 <__printf+0x4e8>
    80004098:	f7843783          	ld	a5,-136(s0)
    8000409c:	0007a703          	lw	a4,0(a5)
    800040a0:	00878793          	addi	a5,a5,8
    800040a4:	f6f43c23          	sd	a5,-136(s0)
    800040a8:	28074263          	bltz	a4,8000432c <__printf+0x584>
    800040ac:	00002d97          	auipc	s11,0x2
    800040b0:	1dcd8d93          	addi	s11,s11,476 # 80006288 <digits>
    800040b4:	00f77793          	andi	a5,a4,15
    800040b8:	00fd87b3          	add	a5,s11,a5
    800040bc:	0007c683          	lbu	a3,0(a5)
    800040c0:	00f00613          	li	a2,15
    800040c4:	0007079b          	sext.w	a5,a4
    800040c8:	f8d40023          	sb	a3,-128(s0)
    800040cc:	0047559b          	srliw	a1,a4,0x4
    800040d0:	0047569b          	srliw	a3,a4,0x4
    800040d4:	00000c93          	li	s9,0
    800040d8:	0ee65063          	bge	a2,a4,800041b8 <__printf+0x410>
    800040dc:	00f6f693          	andi	a3,a3,15
    800040e0:	00dd86b3          	add	a3,s11,a3
    800040e4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800040e8:	0087d79b          	srliw	a5,a5,0x8
    800040ec:	00100c93          	li	s9,1
    800040f0:	f8d400a3          	sb	a3,-127(s0)
    800040f4:	0cb67263          	bgeu	a2,a1,800041b8 <__printf+0x410>
    800040f8:	00f7f693          	andi	a3,a5,15
    800040fc:	00dd86b3          	add	a3,s11,a3
    80004100:	0006c583          	lbu	a1,0(a3)
    80004104:	00f00613          	li	a2,15
    80004108:	0047d69b          	srliw	a3,a5,0x4
    8000410c:	f8b40123          	sb	a1,-126(s0)
    80004110:	0047d593          	srli	a1,a5,0x4
    80004114:	28f67e63          	bgeu	a2,a5,800043b0 <__printf+0x608>
    80004118:	00f6f693          	andi	a3,a3,15
    8000411c:	00dd86b3          	add	a3,s11,a3
    80004120:	0006c503          	lbu	a0,0(a3)
    80004124:	0087d813          	srli	a6,a5,0x8
    80004128:	0087d69b          	srliw	a3,a5,0x8
    8000412c:	f8a401a3          	sb	a0,-125(s0)
    80004130:	28b67663          	bgeu	a2,a1,800043bc <__printf+0x614>
    80004134:	00f6f693          	andi	a3,a3,15
    80004138:	00dd86b3          	add	a3,s11,a3
    8000413c:	0006c583          	lbu	a1,0(a3)
    80004140:	00c7d513          	srli	a0,a5,0xc
    80004144:	00c7d69b          	srliw	a3,a5,0xc
    80004148:	f8b40223          	sb	a1,-124(s0)
    8000414c:	29067a63          	bgeu	a2,a6,800043e0 <__printf+0x638>
    80004150:	00f6f693          	andi	a3,a3,15
    80004154:	00dd86b3          	add	a3,s11,a3
    80004158:	0006c583          	lbu	a1,0(a3)
    8000415c:	0107d813          	srli	a6,a5,0x10
    80004160:	0107d69b          	srliw	a3,a5,0x10
    80004164:	f8b402a3          	sb	a1,-123(s0)
    80004168:	28a67263          	bgeu	a2,a0,800043ec <__printf+0x644>
    8000416c:	00f6f693          	andi	a3,a3,15
    80004170:	00dd86b3          	add	a3,s11,a3
    80004174:	0006c683          	lbu	a3,0(a3)
    80004178:	0147d79b          	srliw	a5,a5,0x14
    8000417c:	f8d40323          	sb	a3,-122(s0)
    80004180:	21067663          	bgeu	a2,a6,8000438c <__printf+0x5e4>
    80004184:	02079793          	slli	a5,a5,0x20
    80004188:	0207d793          	srli	a5,a5,0x20
    8000418c:	00fd8db3          	add	s11,s11,a5
    80004190:	000dc683          	lbu	a3,0(s11)
    80004194:	00800793          	li	a5,8
    80004198:	00700c93          	li	s9,7
    8000419c:	f8d403a3          	sb	a3,-121(s0)
    800041a0:	00075c63          	bgez	a4,800041b8 <__printf+0x410>
    800041a4:	f9040713          	addi	a4,s0,-112
    800041a8:	00f70733          	add	a4,a4,a5
    800041ac:	02d00693          	li	a3,45
    800041b0:	fed70823          	sb	a3,-16(a4)
    800041b4:	00078c93          	mv	s9,a5
    800041b8:	f8040793          	addi	a5,s0,-128
    800041bc:	01978cb3          	add	s9,a5,s9
    800041c0:	f7f40d13          	addi	s10,s0,-129
    800041c4:	000cc503          	lbu	a0,0(s9)
    800041c8:	fffc8c93          	addi	s9,s9,-1
    800041cc:	00000097          	auipc	ra,0x0
    800041d0:	9f8080e7          	jalr	-1544(ra) # 80003bc4 <consputc>
    800041d4:	ff9d18e3          	bne	s10,s9,800041c4 <__printf+0x41c>
    800041d8:	0100006f          	j	800041e8 <__printf+0x440>
    800041dc:	00000097          	auipc	ra,0x0
    800041e0:	9e8080e7          	jalr	-1560(ra) # 80003bc4 <consputc>
    800041e4:	000c8493          	mv	s1,s9
    800041e8:	00094503          	lbu	a0,0(s2)
    800041ec:	c60510e3          	bnez	a0,80003e4c <__printf+0xa4>
    800041f0:	e40c0ee3          	beqz	s8,8000404c <__printf+0x2a4>
    800041f4:	00004517          	auipc	a0,0x4
    800041f8:	43c50513          	addi	a0,a0,1084 # 80008630 <pr>
    800041fc:	00001097          	auipc	ra,0x1
    80004200:	94c080e7          	jalr	-1716(ra) # 80004b48 <release>
    80004204:	e49ff06f          	j	8000404c <__printf+0x2a4>
    80004208:	f7843783          	ld	a5,-136(s0)
    8000420c:	03000513          	li	a0,48
    80004210:	01000d13          	li	s10,16
    80004214:	00878713          	addi	a4,a5,8
    80004218:	0007bc83          	ld	s9,0(a5)
    8000421c:	f6e43c23          	sd	a4,-136(s0)
    80004220:	00000097          	auipc	ra,0x0
    80004224:	9a4080e7          	jalr	-1628(ra) # 80003bc4 <consputc>
    80004228:	07800513          	li	a0,120
    8000422c:	00000097          	auipc	ra,0x0
    80004230:	998080e7          	jalr	-1640(ra) # 80003bc4 <consputc>
    80004234:	00002d97          	auipc	s11,0x2
    80004238:	054d8d93          	addi	s11,s11,84 # 80006288 <digits>
    8000423c:	03ccd793          	srli	a5,s9,0x3c
    80004240:	00fd87b3          	add	a5,s11,a5
    80004244:	0007c503          	lbu	a0,0(a5)
    80004248:	fffd0d1b          	addiw	s10,s10,-1
    8000424c:	004c9c93          	slli	s9,s9,0x4
    80004250:	00000097          	auipc	ra,0x0
    80004254:	974080e7          	jalr	-1676(ra) # 80003bc4 <consputc>
    80004258:	fe0d12e3          	bnez	s10,8000423c <__printf+0x494>
    8000425c:	f8dff06f          	j	800041e8 <__printf+0x440>
    80004260:	f7843783          	ld	a5,-136(s0)
    80004264:	0007bc83          	ld	s9,0(a5)
    80004268:	00878793          	addi	a5,a5,8
    8000426c:	f6f43c23          	sd	a5,-136(s0)
    80004270:	000c9a63          	bnez	s9,80004284 <__printf+0x4dc>
    80004274:	1080006f          	j	8000437c <__printf+0x5d4>
    80004278:	001c8c93          	addi	s9,s9,1
    8000427c:	00000097          	auipc	ra,0x0
    80004280:	948080e7          	jalr	-1720(ra) # 80003bc4 <consputc>
    80004284:	000cc503          	lbu	a0,0(s9)
    80004288:	fe0518e3          	bnez	a0,80004278 <__printf+0x4d0>
    8000428c:	f5dff06f          	j	800041e8 <__printf+0x440>
    80004290:	02500513          	li	a0,37
    80004294:	00000097          	auipc	ra,0x0
    80004298:	930080e7          	jalr	-1744(ra) # 80003bc4 <consputc>
    8000429c:	000c8513          	mv	a0,s9
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	924080e7          	jalr	-1756(ra) # 80003bc4 <consputc>
    800042a8:	f41ff06f          	j	800041e8 <__printf+0x440>
    800042ac:	02500513          	li	a0,37
    800042b0:	00000097          	auipc	ra,0x0
    800042b4:	914080e7          	jalr	-1772(ra) # 80003bc4 <consputc>
    800042b8:	f31ff06f          	j	800041e8 <__printf+0x440>
    800042bc:	00030513          	mv	a0,t1
    800042c0:	00000097          	auipc	ra,0x0
    800042c4:	7bc080e7          	jalr	1980(ra) # 80004a7c <acquire>
    800042c8:	b4dff06f          	j	80003e14 <__printf+0x6c>
    800042cc:	40c0053b          	negw	a0,a2
    800042d0:	00a00713          	li	a4,10
    800042d4:	02e576bb          	remuw	a3,a0,a4
    800042d8:	00002d97          	auipc	s11,0x2
    800042dc:	fb0d8d93          	addi	s11,s11,-80 # 80006288 <digits>
    800042e0:	ff700593          	li	a1,-9
    800042e4:	02069693          	slli	a3,a3,0x20
    800042e8:	0206d693          	srli	a3,a3,0x20
    800042ec:	00dd86b3          	add	a3,s11,a3
    800042f0:	0006c683          	lbu	a3,0(a3)
    800042f4:	02e557bb          	divuw	a5,a0,a4
    800042f8:	f8d40023          	sb	a3,-128(s0)
    800042fc:	10b65e63          	bge	a2,a1,80004418 <__printf+0x670>
    80004300:	06300593          	li	a1,99
    80004304:	02e7f6bb          	remuw	a3,a5,a4
    80004308:	02069693          	slli	a3,a3,0x20
    8000430c:	0206d693          	srli	a3,a3,0x20
    80004310:	00dd86b3          	add	a3,s11,a3
    80004314:	0006c683          	lbu	a3,0(a3)
    80004318:	02e7d73b          	divuw	a4,a5,a4
    8000431c:	00200793          	li	a5,2
    80004320:	f8d400a3          	sb	a3,-127(s0)
    80004324:	bca5ece3          	bltu	a1,a0,80003efc <__printf+0x154>
    80004328:	ce5ff06f          	j	8000400c <__printf+0x264>
    8000432c:	40e007bb          	negw	a5,a4
    80004330:	00002d97          	auipc	s11,0x2
    80004334:	f58d8d93          	addi	s11,s11,-168 # 80006288 <digits>
    80004338:	00f7f693          	andi	a3,a5,15
    8000433c:	00dd86b3          	add	a3,s11,a3
    80004340:	0006c583          	lbu	a1,0(a3)
    80004344:	ff100613          	li	a2,-15
    80004348:	0047d69b          	srliw	a3,a5,0x4
    8000434c:	f8b40023          	sb	a1,-128(s0)
    80004350:	0047d59b          	srliw	a1,a5,0x4
    80004354:	0ac75e63          	bge	a4,a2,80004410 <__printf+0x668>
    80004358:	00f6f693          	andi	a3,a3,15
    8000435c:	00dd86b3          	add	a3,s11,a3
    80004360:	0006c603          	lbu	a2,0(a3)
    80004364:	00f00693          	li	a3,15
    80004368:	0087d79b          	srliw	a5,a5,0x8
    8000436c:	f8c400a3          	sb	a2,-127(s0)
    80004370:	d8b6e4e3          	bltu	a3,a1,800040f8 <__printf+0x350>
    80004374:	00200793          	li	a5,2
    80004378:	e2dff06f          	j	800041a4 <__printf+0x3fc>
    8000437c:	00002c97          	auipc	s9,0x2
    80004380:	eecc8c93          	addi	s9,s9,-276 # 80006268 <CONSOLE_STATUS+0x258>
    80004384:	02800513          	li	a0,40
    80004388:	ef1ff06f          	j	80004278 <__printf+0x4d0>
    8000438c:	00700793          	li	a5,7
    80004390:	00600c93          	li	s9,6
    80004394:	e0dff06f          	j	800041a0 <__printf+0x3f8>
    80004398:	00700793          	li	a5,7
    8000439c:	00600c93          	li	s9,6
    800043a0:	c69ff06f          	j	80004008 <__printf+0x260>
    800043a4:	00300793          	li	a5,3
    800043a8:	00200c93          	li	s9,2
    800043ac:	c5dff06f          	j	80004008 <__printf+0x260>
    800043b0:	00300793          	li	a5,3
    800043b4:	00200c93          	li	s9,2
    800043b8:	de9ff06f          	j	800041a0 <__printf+0x3f8>
    800043bc:	00400793          	li	a5,4
    800043c0:	00300c93          	li	s9,3
    800043c4:	dddff06f          	j	800041a0 <__printf+0x3f8>
    800043c8:	00400793          	li	a5,4
    800043cc:	00300c93          	li	s9,3
    800043d0:	c39ff06f          	j	80004008 <__printf+0x260>
    800043d4:	00500793          	li	a5,5
    800043d8:	00400c93          	li	s9,4
    800043dc:	c2dff06f          	j	80004008 <__printf+0x260>
    800043e0:	00500793          	li	a5,5
    800043e4:	00400c93          	li	s9,4
    800043e8:	db9ff06f          	j	800041a0 <__printf+0x3f8>
    800043ec:	00600793          	li	a5,6
    800043f0:	00500c93          	li	s9,5
    800043f4:	dadff06f          	j	800041a0 <__printf+0x3f8>
    800043f8:	00600793          	li	a5,6
    800043fc:	00500c93          	li	s9,5
    80004400:	c09ff06f          	j	80004008 <__printf+0x260>
    80004404:	00800793          	li	a5,8
    80004408:	00700c93          	li	s9,7
    8000440c:	bfdff06f          	j	80004008 <__printf+0x260>
    80004410:	00100793          	li	a5,1
    80004414:	d91ff06f          	j	800041a4 <__printf+0x3fc>
    80004418:	00100793          	li	a5,1
    8000441c:	bf1ff06f          	j	8000400c <__printf+0x264>
    80004420:	00900793          	li	a5,9
    80004424:	00800c93          	li	s9,8
    80004428:	be1ff06f          	j	80004008 <__printf+0x260>
    8000442c:	00002517          	auipc	a0,0x2
    80004430:	e4450513          	addi	a0,a0,-444 # 80006270 <CONSOLE_STATUS+0x260>
    80004434:	00000097          	auipc	ra,0x0
    80004438:	918080e7          	jalr	-1768(ra) # 80003d4c <panic>

000000008000443c <printfinit>:
    8000443c:	fe010113          	addi	sp,sp,-32
    80004440:	00813823          	sd	s0,16(sp)
    80004444:	00913423          	sd	s1,8(sp)
    80004448:	00113c23          	sd	ra,24(sp)
    8000444c:	02010413          	addi	s0,sp,32
    80004450:	00004497          	auipc	s1,0x4
    80004454:	1e048493          	addi	s1,s1,480 # 80008630 <pr>
    80004458:	00048513          	mv	a0,s1
    8000445c:	00002597          	auipc	a1,0x2
    80004460:	e2458593          	addi	a1,a1,-476 # 80006280 <CONSOLE_STATUS+0x270>
    80004464:	00000097          	auipc	ra,0x0
    80004468:	5f4080e7          	jalr	1524(ra) # 80004a58 <initlock>
    8000446c:	01813083          	ld	ra,24(sp)
    80004470:	01013403          	ld	s0,16(sp)
    80004474:	0004ac23          	sw	zero,24(s1)
    80004478:	00813483          	ld	s1,8(sp)
    8000447c:	02010113          	addi	sp,sp,32
    80004480:	00008067          	ret

0000000080004484 <uartinit>:
    80004484:	ff010113          	addi	sp,sp,-16
    80004488:	00813423          	sd	s0,8(sp)
    8000448c:	01010413          	addi	s0,sp,16
    80004490:	100007b7          	lui	a5,0x10000
    80004494:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004498:	f8000713          	li	a4,-128
    8000449c:	00e781a3          	sb	a4,3(a5)
    800044a0:	00300713          	li	a4,3
    800044a4:	00e78023          	sb	a4,0(a5)
    800044a8:	000780a3          	sb	zero,1(a5)
    800044ac:	00e781a3          	sb	a4,3(a5)
    800044b0:	00700693          	li	a3,7
    800044b4:	00d78123          	sb	a3,2(a5)
    800044b8:	00e780a3          	sb	a4,1(a5)
    800044bc:	00813403          	ld	s0,8(sp)
    800044c0:	01010113          	addi	sp,sp,16
    800044c4:	00008067          	ret

00000000800044c8 <uartputc>:
    800044c8:	00003797          	auipc	a5,0x3
    800044cc:	ea07a783          	lw	a5,-352(a5) # 80007368 <panicked>
    800044d0:	00078463          	beqz	a5,800044d8 <uartputc+0x10>
    800044d4:	0000006f          	j	800044d4 <uartputc+0xc>
    800044d8:	fd010113          	addi	sp,sp,-48
    800044dc:	02813023          	sd	s0,32(sp)
    800044e0:	00913c23          	sd	s1,24(sp)
    800044e4:	01213823          	sd	s2,16(sp)
    800044e8:	01313423          	sd	s3,8(sp)
    800044ec:	02113423          	sd	ra,40(sp)
    800044f0:	03010413          	addi	s0,sp,48
    800044f4:	00003917          	auipc	s2,0x3
    800044f8:	e7c90913          	addi	s2,s2,-388 # 80007370 <uart_tx_r>
    800044fc:	00093783          	ld	a5,0(s2)
    80004500:	00003497          	auipc	s1,0x3
    80004504:	e7848493          	addi	s1,s1,-392 # 80007378 <uart_tx_w>
    80004508:	0004b703          	ld	a4,0(s1)
    8000450c:	02078693          	addi	a3,a5,32
    80004510:	00050993          	mv	s3,a0
    80004514:	02e69c63          	bne	a3,a4,8000454c <uartputc+0x84>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	834080e7          	jalr	-1996(ra) # 80004d4c <push_on>
    80004520:	00093783          	ld	a5,0(s2)
    80004524:	0004b703          	ld	a4,0(s1)
    80004528:	02078793          	addi	a5,a5,32
    8000452c:	00e79463          	bne	a5,a4,80004534 <uartputc+0x6c>
    80004530:	0000006f          	j	80004530 <uartputc+0x68>
    80004534:	00001097          	auipc	ra,0x1
    80004538:	88c080e7          	jalr	-1908(ra) # 80004dc0 <pop_on>
    8000453c:	00093783          	ld	a5,0(s2)
    80004540:	0004b703          	ld	a4,0(s1)
    80004544:	02078693          	addi	a3,a5,32
    80004548:	fce688e3          	beq	a3,a4,80004518 <uartputc+0x50>
    8000454c:	01f77693          	andi	a3,a4,31
    80004550:	00004597          	auipc	a1,0x4
    80004554:	10058593          	addi	a1,a1,256 # 80008650 <uart_tx_buf>
    80004558:	00d586b3          	add	a3,a1,a3
    8000455c:	00170713          	addi	a4,a4,1
    80004560:	01368023          	sb	s3,0(a3)
    80004564:	00e4b023          	sd	a4,0(s1)
    80004568:	10000637          	lui	a2,0x10000
    8000456c:	02f71063          	bne	a4,a5,8000458c <uartputc+0xc4>
    80004570:	0340006f          	j	800045a4 <uartputc+0xdc>
    80004574:	00074703          	lbu	a4,0(a4)
    80004578:	00f93023          	sd	a5,0(s2)
    8000457c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004580:	00093783          	ld	a5,0(s2)
    80004584:	0004b703          	ld	a4,0(s1)
    80004588:	00f70e63          	beq	a4,a5,800045a4 <uartputc+0xdc>
    8000458c:	00564683          	lbu	a3,5(a2)
    80004590:	01f7f713          	andi	a4,a5,31
    80004594:	00e58733          	add	a4,a1,a4
    80004598:	0206f693          	andi	a3,a3,32
    8000459c:	00178793          	addi	a5,a5,1
    800045a0:	fc069ae3          	bnez	a3,80004574 <uartputc+0xac>
    800045a4:	02813083          	ld	ra,40(sp)
    800045a8:	02013403          	ld	s0,32(sp)
    800045ac:	01813483          	ld	s1,24(sp)
    800045b0:	01013903          	ld	s2,16(sp)
    800045b4:	00813983          	ld	s3,8(sp)
    800045b8:	03010113          	addi	sp,sp,48
    800045bc:	00008067          	ret

00000000800045c0 <uartputc_sync>:
    800045c0:	ff010113          	addi	sp,sp,-16
    800045c4:	00813423          	sd	s0,8(sp)
    800045c8:	01010413          	addi	s0,sp,16
    800045cc:	00003717          	auipc	a4,0x3
    800045d0:	d9c72703          	lw	a4,-612(a4) # 80007368 <panicked>
    800045d4:	02071663          	bnez	a4,80004600 <uartputc_sync+0x40>
    800045d8:	00050793          	mv	a5,a0
    800045dc:	100006b7          	lui	a3,0x10000
    800045e0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800045e4:	02077713          	andi	a4,a4,32
    800045e8:	fe070ce3          	beqz	a4,800045e0 <uartputc_sync+0x20>
    800045ec:	0ff7f793          	andi	a5,a5,255
    800045f0:	00f68023          	sb	a5,0(a3)
    800045f4:	00813403          	ld	s0,8(sp)
    800045f8:	01010113          	addi	sp,sp,16
    800045fc:	00008067          	ret
    80004600:	0000006f          	j	80004600 <uartputc_sync+0x40>

0000000080004604 <uartstart>:
    80004604:	ff010113          	addi	sp,sp,-16
    80004608:	00813423          	sd	s0,8(sp)
    8000460c:	01010413          	addi	s0,sp,16
    80004610:	00003617          	auipc	a2,0x3
    80004614:	d6060613          	addi	a2,a2,-672 # 80007370 <uart_tx_r>
    80004618:	00003517          	auipc	a0,0x3
    8000461c:	d6050513          	addi	a0,a0,-672 # 80007378 <uart_tx_w>
    80004620:	00063783          	ld	a5,0(a2)
    80004624:	00053703          	ld	a4,0(a0)
    80004628:	04f70263          	beq	a4,a5,8000466c <uartstart+0x68>
    8000462c:	100005b7          	lui	a1,0x10000
    80004630:	00004817          	auipc	a6,0x4
    80004634:	02080813          	addi	a6,a6,32 # 80008650 <uart_tx_buf>
    80004638:	01c0006f          	j	80004654 <uartstart+0x50>
    8000463c:	0006c703          	lbu	a4,0(a3)
    80004640:	00f63023          	sd	a5,0(a2)
    80004644:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004648:	00063783          	ld	a5,0(a2)
    8000464c:	00053703          	ld	a4,0(a0)
    80004650:	00f70e63          	beq	a4,a5,8000466c <uartstart+0x68>
    80004654:	01f7f713          	andi	a4,a5,31
    80004658:	00e806b3          	add	a3,a6,a4
    8000465c:	0055c703          	lbu	a4,5(a1)
    80004660:	00178793          	addi	a5,a5,1
    80004664:	02077713          	andi	a4,a4,32
    80004668:	fc071ae3          	bnez	a4,8000463c <uartstart+0x38>
    8000466c:	00813403          	ld	s0,8(sp)
    80004670:	01010113          	addi	sp,sp,16
    80004674:	00008067          	ret

0000000080004678 <uartgetc>:
    80004678:	ff010113          	addi	sp,sp,-16
    8000467c:	00813423          	sd	s0,8(sp)
    80004680:	01010413          	addi	s0,sp,16
    80004684:	10000737          	lui	a4,0x10000
    80004688:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000468c:	0017f793          	andi	a5,a5,1
    80004690:	00078c63          	beqz	a5,800046a8 <uartgetc+0x30>
    80004694:	00074503          	lbu	a0,0(a4)
    80004698:	0ff57513          	andi	a0,a0,255
    8000469c:	00813403          	ld	s0,8(sp)
    800046a0:	01010113          	addi	sp,sp,16
    800046a4:	00008067          	ret
    800046a8:	fff00513          	li	a0,-1
    800046ac:	ff1ff06f          	j	8000469c <uartgetc+0x24>

00000000800046b0 <uartintr>:
    800046b0:	100007b7          	lui	a5,0x10000
    800046b4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800046b8:	0017f793          	andi	a5,a5,1
    800046bc:	0a078463          	beqz	a5,80004764 <uartintr+0xb4>
    800046c0:	fe010113          	addi	sp,sp,-32
    800046c4:	00813823          	sd	s0,16(sp)
    800046c8:	00913423          	sd	s1,8(sp)
    800046cc:	00113c23          	sd	ra,24(sp)
    800046d0:	02010413          	addi	s0,sp,32
    800046d4:	100004b7          	lui	s1,0x10000
    800046d8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800046dc:	0ff57513          	andi	a0,a0,255
    800046e0:	fffff097          	auipc	ra,0xfffff
    800046e4:	534080e7          	jalr	1332(ra) # 80003c14 <consoleintr>
    800046e8:	0054c783          	lbu	a5,5(s1)
    800046ec:	0017f793          	andi	a5,a5,1
    800046f0:	fe0794e3          	bnez	a5,800046d8 <uartintr+0x28>
    800046f4:	00003617          	auipc	a2,0x3
    800046f8:	c7c60613          	addi	a2,a2,-900 # 80007370 <uart_tx_r>
    800046fc:	00003517          	auipc	a0,0x3
    80004700:	c7c50513          	addi	a0,a0,-900 # 80007378 <uart_tx_w>
    80004704:	00063783          	ld	a5,0(a2)
    80004708:	00053703          	ld	a4,0(a0)
    8000470c:	04f70263          	beq	a4,a5,80004750 <uartintr+0xa0>
    80004710:	100005b7          	lui	a1,0x10000
    80004714:	00004817          	auipc	a6,0x4
    80004718:	f3c80813          	addi	a6,a6,-196 # 80008650 <uart_tx_buf>
    8000471c:	01c0006f          	j	80004738 <uartintr+0x88>
    80004720:	0006c703          	lbu	a4,0(a3)
    80004724:	00f63023          	sd	a5,0(a2)
    80004728:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000472c:	00063783          	ld	a5,0(a2)
    80004730:	00053703          	ld	a4,0(a0)
    80004734:	00f70e63          	beq	a4,a5,80004750 <uartintr+0xa0>
    80004738:	01f7f713          	andi	a4,a5,31
    8000473c:	00e806b3          	add	a3,a6,a4
    80004740:	0055c703          	lbu	a4,5(a1)
    80004744:	00178793          	addi	a5,a5,1
    80004748:	02077713          	andi	a4,a4,32
    8000474c:	fc071ae3          	bnez	a4,80004720 <uartintr+0x70>
    80004750:	01813083          	ld	ra,24(sp)
    80004754:	01013403          	ld	s0,16(sp)
    80004758:	00813483          	ld	s1,8(sp)
    8000475c:	02010113          	addi	sp,sp,32
    80004760:	00008067          	ret
    80004764:	00003617          	auipc	a2,0x3
    80004768:	c0c60613          	addi	a2,a2,-1012 # 80007370 <uart_tx_r>
    8000476c:	00003517          	auipc	a0,0x3
    80004770:	c0c50513          	addi	a0,a0,-1012 # 80007378 <uart_tx_w>
    80004774:	00063783          	ld	a5,0(a2)
    80004778:	00053703          	ld	a4,0(a0)
    8000477c:	04f70263          	beq	a4,a5,800047c0 <uartintr+0x110>
    80004780:	100005b7          	lui	a1,0x10000
    80004784:	00004817          	auipc	a6,0x4
    80004788:	ecc80813          	addi	a6,a6,-308 # 80008650 <uart_tx_buf>
    8000478c:	01c0006f          	j	800047a8 <uartintr+0xf8>
    80004790:	0006c703          	lbu	a4,0(a3)
    80004794:	00f63023          	sd	a5,0(a2)
    80004798:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000479c:	00063783          	ld	a5,0(a2)
    800047a0:	00053703          	ld	a4,0(a0)
    800047a4:	02f70063          	beq	a4,a5,800047c4 <uartintr+0x114>
    800047a8:	01f7f713          	andi	a4,a5,31
    800047ac:	00e806b3          	add	a3,a6,a4
    800047b0:	0055c703          	lbu	a4,5(a1)
    800047b4:	00178793          	addi	a5,a5,1
    800047b8:	02077713          	andi	a4,a4,32
    800047bc:	fc071ae3          	bnez	a4,80004790 <uartintr+0xe0>
    800047c0:	00008067          	ret
    800047c4:	00008067          	ret

00000000800047c8 <kinit>:
    800047c8:	fc010113          	addi	sp,sp,-64
    800047cc:	02913423          	sd	s1,40(sp)
    800047d0:	fffff7b7          	lui	a5,0xfffff
    800047d4:	00005497          	auipc	s1,0x5
    800047d8:	e9b48493          	addi	s1,s1,-357 # 8000966f <end+0xfff>
    800047dc:	02813823          	sd	s0,48(sp)
    800047e0:	01313c23          	sd	s3,24(sp)
    800047e4:	00f4f4b3          	and	s1,s1,a5
    800047e8:	02113c23          	sd	ra,56(sp)
    800047ec:	03213023          	sd	s2,32(sp)
    800047f0:	01413823          	sd	s4,16(sp)
    800047f4:	01513423          	sd	s5,8(sp)
    800047f8:	04010413          	addi	s0,sp,64
    800047fc:	000017b7          	lui	a5,0x1
    80004800:	01100993          	li	s3,17
    80004804:	00f487b3          	add	a5,s1,a5
    80004808:	01b99993          	slli	s3,s3,0x1b
    8000480c:	06f9e063          	bltu	s3,a5,8000486c <kinit+0xa4>
    80004810:	00004a97          	auipc	s5,0x4
    80004814:	e60a8a93          	addi	s5,s5,-416 # 80008670 <end>
    80004818:	0754ec63          	bltu	s1,s5,80004890 <kinit+0xc8>
    8000481c:	0734fa63          	bgeu	s1,s3,80004890 <kinit+0xc8>
    80004820:	00088a37          	lui	s4,0x88
    80004824:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004828:	00003917          	auipc	s2,0x3
    8000482c:	b5890913          	addi	s2,s2,-1192 # 80007380 <kmem>
    80004830:	00ca1a13          	slli	s4,s4,0xc
    80004834:	0140006f          	j	80004848 <kinit+0x80>
    80004838:	000017b7          	lui	a5,0x1
    8000483c:	00f484b3          	add	s1,s1,a5
    80004840:	0554e863          	bltu	s1,s5,80004890 <kinit+0xc8>
    80004844:	0534f663          	bgeu	s1,s3,80004890 <kinit+0xc8>
    80004848:	00001637          	lui	a2,0x1
    8000484c:	00100593          	li	a1,1
    80004850:	00048513          	mv	a0,s1
    80004854:	00000097          	auipc	ra,0x0
    80004858:	5e4080e7          	jalr	1508(ra) # 80004e38 <__memset>
    8000485c:	00093783          	ld	a5,0(s2)
    80004860:	00f4b023          	sd	a5,0(s1)
    80004864:	00993023          	sd	s1,0(s2)
    80004868:	fd4498e3          	bne	s1,s4,80004838 <kinit+0x70>
    8000486c:	03813083          	ld	ra,56(sp)
    80004870:	03013403          	ld	s0,48(sp)
    80004874:	02813483          	ld	s1,40(sp)
    80004878:	02013903          	ld	s2,32(sp)
    8000487c:	01813983          	ld	s3,24(sp)
    80004880:	01013a03          	ld	s4,16(sp)
    80004884:	00813a83          	ld	s5,8(sp)
    80004888:	04010113          	addi	sp,sp,64
    8000488c:	00008067          	ret
    80004890:	00002517          	auipc	a0,0x2
    80004894:	a1050513          	addi	a0,a0,-1520 # 800062a0 <digits+0x18>
    80004898:	fffff097          	auipc	ra,0xfffff
    8000489c:	4b4080e7          	jalr	1204(ra) # 80003d4c <panic>

00000000800048a0 <freerange>:
    800048a0:	fc010113          	addi	sp,sp,-64
    800048a4:	000017b7          	lui	a5,0x1
    800048a8:	02913423          	sd	s1,40(sp)
    800048ac:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800048b0:	009504b3          	add	s1,a0,s1
    800048b4:	fffff537          	lui	a0,0xfffff
    800048b8:	02813823          	sd	s0,48(sp)
    800048bc:	02113c23          	sd	ra,56(sp)
    800048c0:	03213023          	sd	s2,32(sp)
    800048c4:	01313c23          	sd	s3,24(sp)
    800048c8:	01413823          	sd	s4,16(sp)
    800048cc:	01513423          	sd	s5,8(sp)
    800048d0:	01613023          	sd	s6,0(sp)
    800048d4:	04010413          	addi	s0,sp,64
    800048d8:	00a4f4b3          	and	s1,s1,a0
    800048dc:	00f487b3          	add	a5,s1,a5
    800048e0:	06f5e463          	bltu	a1,a5,80004948 <freerange+0xa8>
    800048e4:	00004a97          	auipc	s5,0x4
    800048e8:	d8ca8a93          	addi	s5,s5,-628 # 80008670 <end>
    800048ec:	0954e263          	bltu	s1,s5,80004970 <freerange+0xd0>
    800048f0:	01100993          	li	s3,17
    800048f4:	01b99993          	slli	s3,s3,0x1b
    800048f8:	0734fc63          	bgeu	s1,s3,80004970 <freerange+0xd0>
    800048fc:	00058a13          	mv	s4,a1
    80004900:	00003917          	auipc	s2,0x3
    80004904:	a8090913          	addi	s2,s2,-1408 # 80007380 <kmem>
    80004908:	00002b37          	lui	s6,0x2
    8000490c:	0140006f          	j	80004920 <freerange+0x80>
    80004910:	000017b7          	lui	a5,0x1
    80004914:	00f484b3          	add	s1,s1,a5
    80004918:	0554ec63          	bltu	s1,s5,80004970 <freerange+0xd0>
    8000491c:	0534fa63          	bgeu	s1,s3,80004970 <freerange+0xd0>
    80004920:	00001637          	lui	a2,0x1
    80004924:	00100593          	li	a1,1
    80004928:	00048513          	mv	a0,s1
    8000492c:	00000097          	auipc	ra,0x0
    80004930:	50c080e7          	jalr	1292(ra) # 80004e38 <__memset>
    80004934:	00093703          	ld	a4,0(s2)
    80004938:	016487b3          	add	a5,s1,s6
    8000493c:	00e4b023          	sd	a4,0(s1)
    80004940:	00993023          	sd	s1,0(s2)
    80004944:	fcfa76e3          	bgeu	s4,a5,80004910 <freerange+0x70>
    80004948:	03813083          	ld	ra,56(sp)
    8000494c:	03013403          	ld	s0,48(sp)
    80004950:	02813483          	ld	s1,40(sp)
    80004954:	02013903          	ld	s2,32(sp)
    80004958:	01813983          	ld	s3,24(sp)
    8000495c:	01013a03          	ld	s4,16(sp)
    80004960:	00813a83          	ld	s5,8(sp)
    80004964:	00013b03          	ld	s6,0(sp)
    80004968:	04010113          	addi	sp,sp,64
    8000496c:	00008067          	ret
    80004970:	00002517          	auipc	a0,0x2
    80004974:	93050513          	addi	a0,a0,-1744 # 800062a0 <digits+0x18>
    80004978:	fffff097          	auipc	ra,0xfffff
    8000497c:	3d4080e7          	jalr	980(ra) # 80003d4c <panic>

0000000080004980 <kfree>:
    80004980:	fe010113          	addi	sp,sp,-32
    80004984:	00813823          	sd	s0,16(sp)
    80004988:	00113c23          	sd	ra,24(sp)
    8000498c:	00913423          	sd	s1,8(sp)
    80004990:	02010413          	addi	s0,sp,32
    80004994:	03451793          	slli	a5,a0,0x34
    80004998:	04079c63          	bnez	a5,800049f0 <kfree+0x70>
    8000499c:	00004797          	auipc	a5,0x4
    800049a0:	cd478793          	addi	a5,a5,-812 # 80008670 <end>
    800049a4:	00050493          	mv	s1,a0
    800049a8:	04f56463          	bltu	a0,a5,800049f0 <kfree+0x70>
    800049ac:	01100793          	li	a5,17
    800049b0:	01b79793          	slli	a5,a5,0x1b
    800049b4:	02f57e63          	bgeu	a0,a5,800049f0 <kfree+0x70>
    800049b8:	00001637          	lui	a2,0x1
    800049bc:	00100593          	li	a1,1
    800049c0:	00000097          	auipc	ra,0x0
    800049c4:	478080e7          	jalr	1144(ra) # 80004e38 <__memset>
    800049c8:	00003797          	auipc	a5,0x3
    800049cc:	9b878793          	addi	a5,a5,-1608 # 80007380 <kmem>
    800049d0:	0007b703          	ld	a4,0(a5)
    800049d4:	01813083          	ld	ra,24(sp)
    800049d8:	01013403          	ld	s0,16(sp)
    800049dc:	00e4b023          	sd	a4,0(s1)
    800049e0:	0097b023          	sd	s1,0(a5)
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	02010113          	addi	sp,sp,32
    800049ec:	00008067          	ret
    800049f0:	00002517          	auipc	a0,0x2
    800049f4:	8b050513          	addi	a0,a0,-1872 # 800062a0 <digits+0x18>
    800049f8:	fffff097          	auipc	ra,0xfffff
    800049fc:	354080e7          	jalr	852(ra) # 80003d4c <panic>

0000000080004a00 <kalloc>:
    80004a00:	fe010113          	addi	sp,sp,-32
    80004a04:	00813823          	sd	s0,16(sp)
    80004a08:	00913423          	sd	s1,8(sp)
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	02010413          	addi	s0,sp,32
    80004a14:	00003797          	auipc	a5,0x3
    80004a18:	96c78793          	addi	a5,a5,-1684 # 80007380 <kmem>
    80004a1c:	0007b483          	ld	s1,0(a5)
    80004a20:	02048063          	beqz	s1,80004a40 <kalloc+0x40>
    80004a24:	0004b703          	ld	a4,0(s1)
    80004a28:	00001637          	lui	a2,0x1
    80004a2c:	00500593          	li	a1,5
    80004a30:	00048513          	mv	a0,s1
    80004a34:	00e7b023          	sd	a4,0(a5)
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	400080e7          	jalr	1024(ra) # 80004e38 <__memset>
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00048513          	mv	a0,s1
    80004a4c:	00813483          	ld	s1,8(sp)
    80004a50:	02010113          	addi	sp,sp,32
    80004a54:	00008067          	ret

0000000080004a58 <initlock>:
    80004a58:	ff010113          	addi	sp,sp,-16
    80004a5c:	00813423          	sd	s0,8(sp)
    80004a60:	01010413          	addi	s0,sp,16
    80004a64:	00813403          	ld	s0,8(sp)
    80004a68:	00b53423          	sd	a1,8(a0)
    80004a6c:	00052023          	sw	zero,0(a0)
    80004a70:	00053823          	sd	zero,16(a0)
    80004a74:	01010113          	addi	sp,sp,16
    80004a78:	00008067          	ret

0000000080004a7c <acquire>:
    80004a7c:	fe010113          	addi	sp,sp,-32
    80004a80:	00813823          	sd	s0,16(sp)
    80004a84:	00913423          	sd	s1,8(sp)
    80004a88:	00113c23          	sd	ra,24(sp)
    80004a8c:	01213023          	sd	s2,0(sp)
    80004a90:	02010413          	addi	s0,sp,32
    80004a94:	00050493          	mv	s1,a0
    80004a98:	10002973          	csrr	s2,sstatus
    80004a9c:	100027f3          	csrr	a5,sstatus
    80004aa0:	ffd7f793          	andi	a5,a5,-3
    80004aa4:	10079073          	csrw	sstatus,a5
    80004aa8:	fffff097          	auipc	ra,0xfffff
    80004aac:	8e8080e7          	jalr	-1816(ra) # 80003390 <mycpu>
    80004ab0:	07852783          	lw	a5,120(a0)
    80004ab4:	06078e63          	beqz	a5,80004b30 <acquire+0xb4>
    80004ab8:	fffff097          	auipc	ra,0xfffff
    80004abc:	8d8080e7          	jalr	-1832(ra) # 80003390 <mycpu>
    80004ac0:	07852783          	lw	a5,120(a0)
    80004ac4:	0004a703          	lw	a4,0(s1)
    80004ac8:	0017879b          	addiw	a5,a5,1
    80004acc:	06f52c23          	sw	a5,120(a0)
    80004ad0:	04071063          	bnez	a4,80004b10 <acquire+0x94>
    80004ad4:	00100713          	li	a4,1
    80004ad8:	00070793          	mv	a5,a4
    80004adc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004ae0:	0007879b          	sext.w	a5,a5
    80004ae4:	fe079ae3          	bnez	a5,80004ad8 <acquire+0x5c>
    80004ae8:	0ff0000f          	fence
    80004aec:	fffff097          	auipc	ra,0xfffff
    80004af0:	8a4080e7          	jalr	-1884(ra) # 80003390 <mycpu>
    80004af4:	01813083          	ld	ra,24(sp)
    80004af8:	01013403          	ld	s0,16(sp)
    80004afc:	00a4b823          	sd	a0,16(s1)
    80004b00:	00013903          	ld	s2,0(sp)
    80004b04:	00813483          	ld	s1,8(sp)
    80004b08:	02010113          	addi	sp,sp,32
    80004b0c:	00008067          	ret
    80004b10:	0104b903          	ld	s2,16(s1)
    80004b14:	fffff097          	auipc	ra,0xfffff
    80004b18:	87c080e7          	jalr	-1924(ra) # 80003390 <mycpu>
    80004b1c:	faa91ce3          	bne	s2,a0,80004ad4 <acquire+0x58>
    80004b20:	00001517          	auipc	a0,0x1
    80004b24:	78850513          	addi	a0,a0,1928 # 800062a8 <digits+0x20>
    80004b28:	fffff097          	auipc	ra,0xfffff
    80004b2c:	224080e7          	jalr	548(ra) # 80003d4c <panic>
    80004b30:	00195913          	srli	s2,s2,0x1
    80004b34:	fffff097          	auipc	ra,0xfffff
    80004b38:	85c080e7          	jalr	-1956(ra) # 80003390 <mycpu>
    80004b3c:	00197913          	andi	s2,s2,1
    80004b40:	07252e23          	sw	s2,124(a0)
    80004b44:	f75ff06f          	j	80004ab8 <acquire+0x3c>

0000000080004b48 <release>:
    80004b48:	fe010113          	addi	sp,sp,-32
    80004b4c:	00813823          	sd	s0,16(sp)
    80004b50:	00113c23          	sd	ra,24(sp)
    80004b54:	00913423          	sd	s1,8(sp)
    80004b58:	01213023          	sd	s2,0(sp)
    80004b5c:	02010413          	addi	s0,sp,32
    80004b60:	00052783          	lw	a5,0(a0)
    80004b64:	00079a63          	bnez	a5,80004b78 <release+0x30>
    80004b68:	00001517          	auipc	a0,0x1
    80004b6c:	74850513          	addi	a0,a0,1864 # 800062b0 <digits+0x28>
    80004b70:	fffff097          	auipc	ra,0xfffff
    80004b74:	1dc080e7          	jalr	476(ra) # 80003d4c <panic>
    80004b78:	01053903          	ld	s2,16(a0)
    80004b7c:	00050493          	mv	s1,a0
    80004b80:	fffff097          	auipc	ra,0xfffff
    80004b84:	810080e7          	jalr	-2032(ra) # 80003390 <mycpu>
    80004b88:	fea910e3          	bne	s2,a0,80004b68 <release+0x20>
    80004b8c:	0004b823          	sd	zero,16(s1)
    80004b90:	0ff0000f          	fence
    80004b94:	0f50000f          	fence	iorw,ow
    80004b98:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004b9c:	ffffe097          	auipc	ra,0xffffe
    80004ba0:	7f4080e7          	jalr	2036(ra) # 80003390 <mycpu>
    80004ba4:	100027f3          	csrr	a5,sstatus
    80004ba8:	0027f793          	andi	a5,a5,2
    80004bac:	04079a63          	bnez	a5,80004c00 <release+0xb8>
    80004bb0:	07852783          	lw	a5,120(a0)
    80004bb4:	02f05e63          	blez	a5,80004bf0 <release+0xa8>
    80004bb8:	fff7871b          	addiw	a4,a5,-1
    80004bbc:	06e52c23          	sw	a4,120(a0)
    80004bc0:	00071c63          	bnez	a4,80004bd8 <release+0x90>
    80004bc4:	07c52783          	lw	a5,124(a0)
    80004bc8:	00078863          	beqz	a5,80004bd8 <release+0x90>
    80004bcc:	100027f3          	csrr	a5,sstatus
    80004bd0:	0027e793          	ori	a5,a5,2
    80004bd4:	10079073          	csrw	sstatus,a5
    80004bd8:	01813083          	ld	ra,24(sp)
    80004bdc:	01013403          	ld	s0,16(sp)
    80004be0:	00813483          	ld	s1,8(sp)
    80004be4:	00013903          	ld	s2,0(sp)
    80004be8:	02010113          	addi	sp,sp,32
    80004bec:	00008067          	ret
    80004bf0:	00001517          	auipc	a0,0x1
    80004bf4:	6e050513          	addi	a0,a0,1760 # 800062d0 <digits+0x48>
    80004bf8:	fffff097          	auipc	ra,0xfffff
    80004bfc:	154080e7          	jalr	340(ra) # 80003d4c <panic>
    80004c00:	00001517          	auipc	a0,0x1
    80004c04:	6b850513          	addi	a0,a0,1720 # 800062b8 <digits+0x30>
    80004c08:	fffff097          	auipc	ra,0xfffff
    80004c0c:	144080e7          	jalr	324(ra) # 80003d4c <panic>

0000000080004c10 <holding>:
    80004c10:	00052783          	lw	a5,0(a0)
    80004c14:	00079663          	bnez	a5,80004c20 <holding+0x10>
    80004c18:	00000513          	li	a0,0
    80004c1c:	00008067          	ret
    80004c20:	fe010113          	addi	sp,sp,-32
    80004c24:	00813823          	sd	s0,16(sp)
    80004c28:	00913423          	sd	s1,8(sp)
    80004c2c:	00113c23          	sd	ra,24(sp)
    80004c30:	02010413          	addi	s0,sp,32
    80004c34:	01053483          	ld	s1,16(a0)
    80004c38:	ffffe097          	auipc	ra,0xffffe
    80004c3c:	758080e7          	jalr	1880(ra) # 80003390 <mycpu>
    80004c40:	01813083          	ld	ra,24(sp)
    80004c44:	01013403          	ld	s0,16(sp)
    80004c48:	40a48533          	sub	a0,s1,a0
    80004c4c:	00153513          	seqz	a0,a0
    80004c50:	00813483          	ld	s1,8(sp)
    80004c54:	02010113          	addi	sp,sp,32
    80004c58:	00008067          	ret

0000000080004c5c <push_off>:
    80004c5c:	fe010113          	addi	sp,sp,-32
    80004c60:	00813823          	sd	s0,16(sp)
    80004c64:	00113c23          	sd	ra,24(sp)
    80004c68:	00913423          	sd	s1,8(sp)
    80004c6c:	02010413          	addi	s0,sp,32
    80004c70:	100024f3          	csrr	s1,sstatus
    80004c74:	100027f3          	csrr	a5,sstatus
    80004c78:	ffd7f793          	andi	a5,a5,-3
    80004c7c:	10079073          	csrw	sstatus,a5
    80004c80:	ffffe097          	auipc	ra,0xffffe
    80004c84:	710080e7          	jalr	1808(ra) # 80003390 <mycpu>
    80004c88:	07852783          	lw	a5,120(a0)
    80004c8c:	02078663          	beqz	a5,80004cb8 <push_off+0x5c>
    80004c90:	ffffe097          	auipc	ra,0xffffe
    80004c94:	700080e7          	jalr	1792(ra) # 80003390 <mycpu>
    80004c98:	07852783          	lw	a5,120(a0)
    80004c9c:	01813083          	ld	ra,24(sp)
    80004ca0:	01013403          	ld	s0,16(sp)
    80004ca4:	0017879b          	addiw	a5,a5,1
    80004ca8:	06f52c23          	sw	a5,120(a0)
    80004cac:	00813483          	ld	s1,8(sp)
    80004cb0:	02010113          	addi	sp,sp,32
    80004cb4:	00008067          	ret
    80004cb8:	0014d493          	srli	s1,s1,0x1
    80004cbc:	ffffe097          	auipc	ra,0xffffe
    80004cc0:	6d4080e7          	jalr	1748(ra) # 80003390 <mycpu>
    80004cc4:	0014f493          	andi	s1,s1,1
    80004cc8:	06952e23          	sw	s1,124(a0)
    80004ccc:	fc5ff06f          	j	80004c90 <push_off+0x34>

0000000080004cd0 <pop_off>:
    80004cd0:	ff010113          	addi	sp,sp,-16
    80004cd4:	00813023          	sd	s0,0(sp)
    80004cd8:	00113423          	sd	ra,8(sp)
    80004cdc:	01010413          	addi	s0,sp,16
    80004ce0:	ffffe097          	auipc	ra,0xffffe
    80004ce4:	6b0080e7          	jalr	1712(ra) # 80003390 <mycpu>
    80004ce8:	100027f3          	csrr	a5,sstatus
    80004cec:	0027f793          	andi	a5,a5,2
    80004cf0:	04079663          	bnez	a5,80004d3c <pop_off+0x6c>
    80004cf4:	07852783          	lw	a5,120(a0)
    80004cf8:	02f05a63          	blez	a5,80004d2c <pop_off+0x5c>
    80004cfc:	fff7871b          	addiw	a4,a5,-1
    80004d00:	06e52c23          	sw	a4,120(a0)
    80004d04:	00071c63          	bnez	a4,80004d1c <pop_off+0x4c>
    80004d08:	07c52783          	lw	a5,124(a0)
    80004d0c:	00078863          	beqz	a5,80004d1c <pop_off+0x4c>
    80004d10:	100027f3          	csrr	a5,sstatus
    80004d14:	0027e793          	ori	a5,a5,2
    80004d18:	10079073          	csrw	sstatus,a5
    80004d1c:	00813083          	ld	ra,8(sp)
    80004d20:	00013403          	ld	s0,0(sp)
    80004d24:	01010113          	addi	sp,sp,16
    80004d28:	00008067          	ret
    80004d2c:	00001517          	auipc	a0,0x1
    80004d30:	5a450513          	addi	a0,a0,1444 # 800062d0 <digits+0x48>
    80004d34:	fffff097          	auipc	ra,0xfffff
    80004d38:	018080e7          	jalr	24(ra) # 80003d4c <panic>
    80004d3c:	00001517          	auipc	a0,0x1
    80004d40:	57c50513          	addi	a0,a0,1404 # 800062b8 <digits+0x30>
    80004d44:	fffff097          	auipc	ra,0xfffff
    80004d48:	008080e7          	jalr	8(ra) # 80003d4c <panic>

0000000080004d4c <push_on>:
    80004d4c:	fe010113          	addi	sp,sp,-32
    80004d50:	00813823          	sd	s0,16(sp)
    80004d54:	00113c23          	sd	ra,24(sp)
    80004d58:	00913423          	sd	s1,8(sp)
    80004d5c:	02010413          	addi	s0,sp,32
    80004d60:	100024f3          	csrr	s1,sstatus
    80004d64:	100027f3          	csrr	a5,sstatus
    80004d68:	0027e793          	ori	a5,a5,2
    80004d6c:	10079073          	csrw	sstatus,a5
    80004d70:	ffffe097          	auipc	ra,0xffffe
    80004d74:	620080e7          	jalr	1568(ra) # 80003390 <mycpu>
    80004d78:	07852783          	lw	a5,120(a0)
    80004d7c:	02078663          	beqz	a5,80004da8 <push_on+0x5c>
    80004d80:	ffffe097          	auipc	ra,0xffffe
    80004d84:	610080e7          	jalr	1552(ra) # 80003390 <mycpu>
    80004d88:	07852783          	lw	a5,120(a0)
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	0017879b          	addiw	a5,a5,1
    80004d98:	06f52c23          	sw	a5,120(a0)
    80004d9c:	00813483          	ld	s1,8(sp)
    80004da0:	02010113          	addi	sp,sp,32
    80004da4:	00008067          	ret
    80004da8:	0014d493          	srli	s1,s1,0x1
    80004dac:	ffffe097          	auipc	ra,0xffffe
    80004db0:	5e4080e7          	jalr	1508(ra) # 80003390 <mycpu>
    80004db4:	0014f493          	andi	s1,s1,1
    80004db8:	06952e23          	sw	s1,124(a0)
    80004dbc:	fc5ff06f          	j	80004d80 <push_on+0x34>

0000000080004dc0 <pop_on>:
    80004dc0:	ff010113          	addi	sp,sp,-16
    80004dc4:	00813023          	sd	s0,0(sp)
    80004dc8:	00113423          	sd	ra,8(sp)
    80004dcc:	01010413          	addi	s0,sp,16
    80004dd0:	ffffe097          	auipc	ra,0xffffe
    80004dd4:	5c0080e7          	jalr	1472(ra) # 80003390 <mycpu>
    80004dd8:	100027f3          	csrr	a5,sstatus
    80004ddc:	0027f793          	andi	a5,a5,2
    80004de0:	04078463          	beqz	a5,80004e28 <pop_on+0x68>
    80004de4:	07852783          	lw	a5,120(a0)
    80004de8:	02f05863          	blez	a5,80004e18 <pop_on+0x58>
    80004dec:	fff7879b          	addiw	a5,a5,-1
    80004df0:	06f52c23          	sw	a5,120(a0)
    80004df4:	07853783          	ld	a5,120(a0)
    80004df8:	00079863          	bnez	a5,80004e08 <pop_on+0x48>
    80004dfc:	100027f3          	csrr	a5,sstatus
    80004e00:	ffd7f793          	andi	a5,a5,-3
    80004e04:	10079073          	csrw	sstatus,a5
    80004e08:	00813083          	ld	ra,8(sp)
    80004e0c:	00013403          	ld	s0,0(sp)
    80004e10:	01010113          	addi	sp,sp,16
    80004e14:	00008067          	ret
    80004e18:	00001517          	auipc	a0,0x1
    80004e1c:	4e050513          	addi	a0,a0,1248 # 800062f8 <digits+0x70>
    80004e20:	fffff097          	auipc	ra,0xfffff
    80004e24:	f2c080e7          	jalr	-212(ra) # 80003d4c <panic>
    80004e28:	00001517          	auipc	a0,0x1
    80004e2c:	4b050513          	addi	a0,a0,1200 # 800062d8 <digits+0x50>
    80004e30:	fffff097          	auipc	ra,0xfffff
    80004e34:	f1c080e7          	jalr	-228(ra) # 80003d4c <panic>

0000000080004e38 <__memset>:
    80004e38:	ff010113          	addi	sp,sp,-16
    80004e3c:	00813423          	sd	s0,8(sp)
    80004e40:	01010413          	addi	s0,sp,16
    80004e44:	1a060e63          	beqz	a2,80005000 <__memset+0x1c8>
    80004e48:	40a007b3          	neg	a5,a0
    80004e4c:	0077f793          	andi	a5,a5,7
    80004e50:	00778693          	addi	a3,a5,7
    80004e54:	00b00813          	li	a6,11
    80004e58:	0ff5f593          	andi	a1,a1,255
    80004e5c:	fff6071b          	addiw	a4,a2,-1
    80004e60:	1b06e663          	bltu	a3,a6,8000500c <__memset+0x1d4>
    80004e64:	1cd76463          	bltu	a4,a3,8000502c <__memset+0x1f4>
    80004e68:	1a078e63          	beqz	a5,80005024 <__memset+0x1ec>
    80004e6c:	00b50023          	sb	a1,0(a0)
    80004e70:	00100713          	li	a4,1
    80004e74:	1ae78463          	beq	a5,a4,8000501c <__memset+0x1e4>
    80004e78:	00b500a3          	sb	a1,1(a0)
    80004e7c:	00200713          	li	a4,2
    80004e80:	1ae78a63          	beq	a5,a4,80005034 <__memset+0x1fc>
    80004e84:	00b50123          	sb	a1,2(a0)
    80004e88:	00300713          	li	a4,3
    80004e8c:	18e78463          	beq	a5,a4,80005014 <__memset+0x1dc>
    80004e90:	00b501a3          	sb	a1,3(a0)
    80004e94:	00400713          	li	a4,4
    80004e98:	1ae78263          	beq	a5,a4,8000503c <__memset+0x204>
    80004e9c:	00b50223          	sb	a1,4(a0)
    80004ea0:	00500713          	li	a4,5
    80004ea4:	1ae78063          	beq	a5,a4,80005044 <__memset+0x20c>
    80004ea8:	00b502a3          	sb	a1,5(a0)
    80004eac:	00700713          	li	a4,7
    80004eb0:	18e79e63          	bne	a5,a4,8000504c <__memset+0x214>
    80004eb4:	00b50323          	sb	a1,6(a0)
    80004eb8:	00700e93          	li	t4,7
    80004ebc:	00859713          	slli	a4,a1,0x8
    80004ec0:	00e5e733          	or	a4,a1,a4
    80004ec4:	01059e13          	slli	t3,a1,0x10
    80004ec8:	01c76e33          	or	t3,a4,t3
    80004ecc:	01859313          	slli	t1,a1,0x18
    80004ed0:	006e6333          	or	t1,t3,t1
    80004ed4:	02059893          	slli	a7,a1,0x20
    80004ed8:	40f60e3b          	subw	t3,a2,a5
    80004edc:	011368b3          	or	a7,t1,a7
    80004ee0:	02859813          	slli	a6,a1,0x28
    80004ee4:	0108e833          	or	a6,a7,a6
    80004ee8:	03059693          	slli	a3,a1,0x30
    80004eec:	003e589b          	srliw	a7,t3,0x3
    80004ef0:	00d866b3          	or	a3,a6,a3
    80004ef4:	03859713          	slli	a4,a1,0x38
    80004ef8:	00389813          	slli	a6,a7,0x3
    80004efc:	00f507b3          	add	a5,a0,a5
    80004f00:	00e6e733          	or	a4,a3,a4
    80004f04:	000e089b          	sext.w	a7,t3
    80004f08:	00f806b3          	add	a3,a6,a5
    80004f0c:	00e7b023          	sd	a4,0(a5)
    80004f10:	00878793          	addi	a5,a5,8
    80004f14:	fed79ce3          	bne	a5,a3,80004f0c <__memset+0xd4>
    80004f18:	ff8e7793          	andi	a5,t3,-8
    80004f1c:	0007871b          	sext.w	a4,a5
    80004f20:	01d787bb          	addw	a5,a5,t4
    80004f24:	0ce88e63          	beq	a7,a4,80005000 <__memset+0x1c8>
    80004f28:	00f50733          	add	a4,a0,a5
    80004f2c:	00b70023          	sb	a1,0(a4)
    80004f30:	0017871b          	addiw	a4,a5,1
    80004f34:	0cc77663          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f38:	00e50733          	add	a4,a0,a4
    80004f3c:	00b70023          	sb	a1,0(a4)
    80004f40:	0027871b          	addiw	a4,a5,2
    80004f44:	0ac77e63          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f48:	00e50733          	add	a4,a0,a4
    80004f4c:	00b70023          	sb	a1,0(a4)
    80004f50:	0037871b          	addiw	a4,a5,3
    80004f54:	0ac77663          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f58:	00e50733          	add	a4,a0,a4
    80004f5c:	00b70023          	sb	a1,0(a4)
    80004f60:	0047871b          	addiw	a4,a5,4
    80004f64:	08c77e63          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f68:	00e50733          	add	a4,a0,a4
    80004f6c:	00b70023          	sb	a1,0(a4)
    80004f70:	0057871b          	addiw	a4,a5,5
    80004f74:	08c77663          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f78:	00e50733          	add	a4,a0,a4
    80004f7c:	00b70023          	sb	a1,0(a4)
    80004f80:	0067871b          	addiw	a4,a5,6
    80004f84:	06c77e63          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f88:	00e50733          	add	a4,a0,a4
    80004f8c:	00b70023          	sb	a1,0(a4)
    80004f90:	0077871b          	addiw	a4,a5,7
    80004f94:	06c77663          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004f98:	00e50733          	add	a4,a0,a4
    80004f9c:	00b70023          	sb	a1,0(a4)
    80004fa0:	0087871b          	addiw	a4,a5,8
    80004fa4:	04c77e63          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004fa8:	00e50733          	add	a4,a0,a4
    80004fac:	00b70023          	sb	a1,0(a4)
    80004fb0:	0097871b          	addiw	a4,a5,9
    80004fb4:	04c77663          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004fb8:	00e50733          	add	a4,a0,a4
    80004fbc:	00b70023          	sb	a1,0(a4)
    80004fc0:	00a7871b          	addiw	a4,a5,10
    80004fc4:	02c77e63          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004fc8:	00e50733          	add	a4,a0,a4
    80004fcc:	00b70023          	sb	a1,0(a4)
    80004fd0:	00b7871b          	addiw	a4,a5,11
    80004fd4:	02c77663          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004fd8:	00e50733          	add	a4,a0,a4
    80004fdc:	00b70023          	sb	a1,0(a4)
    80004fe0:	00c7871b          	addiw	a4,a5,12
    80004fe4:	00c77e63          	bgeu	a4,a2,80005000 <__memset+0x1c8>
    80004fe8:	00e50733          	add	a4,a0,a4
    80004fec:	00b70023          	sb	a1,0(a4)
    80004ff0:	00d7879b          	addiw	a5,a5,13
    80004ff4:	00c7f663          	bgeu	a5,a2,80005000 <__memset+0x1c8>
    80004ff8:	00f507b3          	add	a5,a0,a5
    80004ffc:	00b78023          	sb	a1,0(a5)
    80005000:	00813403          	ld	s0,8(sp)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret
    8000500c:	00b00693          	li	a3,11
    80005010:	e55ff06f          	j	80004e64 <__memset+0x2c>
    80005014:	00300e93          	li	t4,3
    80005018:	ea5ff06f          	j	80004ebc <__memset+0x84>
    8000501c:	00100e93          	li	t4,1
    80005020:	e9dff06f          	j	80004ebc <__memset+0x84>
    80005024:	00000e93          	li	t4,0
    80005028:	e95ff06f          	j	80004ebc <__memset+0x84>
    8000502c:	00000793          	li	a5,0
    80005030:	ef9ff06f          	j	80004f28 <__memset+0xf0>
    80005034:	00200e93          	li	t4,2
    80005038:	e85ff06f          	j	80004ebc <__memset+0x84>
    8000503c:	00400e93          	li	t4,4
    80005040:	e7dff06f          	j	80004ebc <__memset+0x84>
    80005044:	00500e93          	li	t4,5
    80005048:	e75ff06f          	j	80004ebc <__memset+0x84>
    8000504c:	00600e93          	li	t4,6
    80005050:	e6dff06f          	j	80004ebc <__memset+0x84>

0000000080005054 <__memmove>:
    80005054:	ff010113          	addi	sp,sp,-16
    80005058:	00813423          	sd	s0,8(sp)
    8000505c:	01010413          	addi	s0,sp,16
    80005060:	0e060863          	beqz	a2,80005150 <__memmove+0xfc>
    80005064:	fff6069b          	addiw	a3,a2,-1
    80005068:	0006881b          	sext.w	a6,a3
    8000506c:	0ea5e863          	bltu	a1,a0,8000515c <__memmove+0x108>
    80005070:	00758713          	addi	a4,a1,7
    80005074:	00a5e7b3          	or	a5,a1,a0
    80005078:	40a70733          	sub	a4,a4,a0
    8000507c:	0077f793          	andi	a5,a5,7
    80005080:	00f73713          	sltiu	a4,a4,15
    80005084:	00174713          	xori	a4,a4,1
    80005088:	0017b793          	seqz	a5,a5
    8000508c:	00e7f7b3          	and	a5,a5,a4
    80005090:	10078863          	beqz	a5,800051a0 <__memmove+0x14c>
    80005094:	00900793          	li	a5,9
    80005098:	1107f463          	bgeu	a5,a6,800051a0 <__memmove+0x14c>
    8000509c:	0036581b          	srliw	a6,a2,0x3
    800050a0:	fff8081b          	addiw	a6,a6,-1
    800050a4:	02081813          	slli	a6,a6,0x20
    800050a8:	01d85893          	srli	a7,a6,0x1d
    800050ac:	00858813          	addi	a6,a1,8
    800050b0:	00058793          	mv	a5,a1
    800050b4:	00050713          	mv	a4,a0
    800050b8:	01088833          	add	a6,a7,a6
    800050bc:	0007b883          	ld	a7,0(a5)
    800050c0:	00878793          	addi	a5,a5,8
    800050c4:	00870713          	addi	a4,a4,8
    800050c8:	ff173c23          	sd	a7,-8(a4)
    800050cc:	ff0798e3          	bne	a5,a6,800050bc <__memmove+0x68>
    800050d0:	ff867713          	andi	a4,a2,-8
    800050d4:	02071793          	slli	a5,a4,0x20
    800050d8:	0207d793          	srli	a5,a5,0x20
    800050dc:	00f585b3          	add	a1,a1,a5
    800050e0:	40e686bb          	subw	a3,a3,a4
    800050e4:	00f507b3          	add	a5,a0,a5
    800050e8:	06e60463          	beq	a2,a4,80005150 <__memmove+0xfc>
    800050ec:	0005c703          	lbu	a4,0(a1)
    800050f0:	00e78023          	sb	a4,0(a5)
    800050f4:	04068e63          	beqz	a3,80005150 <__memmove+0xfc>
    800050f8:	0015c603          	lbu	a2,1(a1)
    800050fc:	00100713          	li	a4,1
    80005100:	00c780a3          	sb	a2,1(a5)
    80005104:	04e68663          	beq	a3,a4,80005150 <__memmove+0xfc>
    80005108:	0025c603          	lbu	a2,2(a1)
    8000510c:	00200713          	li	a4,2
    80005110:	00c78123          	sb	a2,2(a5)
    80005114:	02e68e63          	beq	a3,a4,80005150 <__memmove+0xfc>
    80005118:	0035c603          	lbu	a2,3(a1)
    8000511c:	00300713          	li	a4,3
    80005120:	00c781a3          	sb	a2,3(a5)
    80005124:	02e68663          	beq	a3,a4,80005150 <__memmove+0xfc>
    80005128:	0045c603          	lbu	a2,4(a1)
    8000512c:	00400713          	li	a4,4
    80005130:	00c78223          	sb	a2,4(a5)
    80005134:	00e68e63          	beq	a3,a4,80005150 <__memmove+0xfc>
    80005138:	0055c603          	lbu	a2,5(a1)
    8000513c:	00500713          	li	a4,5
    80005140:	00c782a3          	sb	a2,5(a5)
    80005144:	00e68663          	beq	a3,a4,80005150 <__memmove+0xfc>
    80005148:	0065c703          	lbu	a4,6(a1)
    8000514c:	00e78323          	sb	a4,6(a5)
    80005150:	00813403          	ld	s0,8(sp)
    80005154:	01010113          	addi	sp,sp,16
    80005158:	00008067          	ret
    8000515c:	02061713          	slli	a4,a2,0x20
    80005160:	02075713          	srli	a4,a4,0x20
    80005164:	00e587b3          	add	a5,a1,a4
    80005168:	f0f574e3          	bgeu	a0,a5,80005070 <__memmove+0x1c>
    8000516c:	02069613          	slli	a2,a3,0x20
    80005170:	02065613          	srli	a2,a2,0x20
    80005174:	fff64613          	not	a2,a2
    80005178:	00e50733          	add	a4,a0,a4
    8000517c:	00c78633          	add	a2,a5,a2
    80005180:	fff7c683          	lbu	a3,-1(a5)
    80005184:	fff78793          	addi	a5,a5,-1
    80005188:	fff70713          	addi	a4,a4,-1
    8000518c:	00d70023          	sb	a3,0(a4)
    80005190:	fec798e3          	bne	a5,a2,80005180 <__memmove+0x12c>
    80005194:	00813403          	ld	s0,8(sp)
    80005198:	01010113          	addi	sp,sp,16
    8000519c:	00008067          	ret
    800051a0:	02069713          	slli	a4,a3,0x20
    800051a4:	02075713          	srli	a4,a4,0x20
    800051a8:	00170713          	addi	a4,a4,1
    800051ac:	00e50733          	add	a4,a0,a4
    800051b0:	00050793          	mv	a5,a0
    800051b4:	0005c683          	lbu	a3,0(a1)
    800051b8:	00178793          	addi	a5,a5,1
    800051bc:	00158593          	addi	a1,a1,1
    800051c0:	fed78fa3          	sb	a3,-1(a5)
    800051c4:	fee798e3          	bne	a5,a4,800051b4 <__memmove+0x160>
    800051c8:	f89ff06f          	j	80005150 <__memmove+0xfc>
	...
