
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00006117          	auipc	sp,0x6
    80000004:	d5013103          	ld	sp,-688(sp) # 80005d50 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1b1020ef          	jal	ra,800029cc <start>

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

00000000800011fc <_Z8sem_openPP9Semaphorej>:
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

000000008000122c <_Z9sem_closeP9Semaphore>:
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

0000000080001258 <_Z8sem_waitP9Semaphore>:
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

0000000080001284 <_Z10sem_wait_nP9Semaphorej>:
 * C API function to wait on a semaphore for n resources
 * @param id semaphore handle
 * @param n number of resources to wait for
 * @return negative error code or 0 for success
 */
int sem_wait_n(sem_t id, unsigned n) {
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00813423          	sd	s0,8(sp)
    8000128c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    80001290:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r" (n));
    80001294:	00058613          	mv	a2,a1
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

00000000800012b4 <_Z10sem_signalP9Semaphore>:
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

00000000800012e0 <_Z12sem_signal_nP9Semaphorej>:
 * C API function to signal a semaphore for n resources
 * @param id semaphore handle
 * @param n number of resources to signal
 * @return negative error code or 0 for success
 */
int sem_signal_n(sem_t id, unsigned n) {
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00813423          	sd	s0,8(sp)
    800012e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012ec:	00050593          	mv	a1,a0
    __asm__ volatile ("mv a2, %0" : : "r" (n));
    800012f0:	00058613          	mv	a2,a1
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
    __asm__ volatile("mv a1, %0" : : "r" (c)); //mora pre "li a0" - c je parametar, tj. pocetno je u a0, pa bi ga "li a0" pregazio da je redosled obrnut
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
    800013a4:	00005797          	auipc	a5,0x5
    800013a8:	98c7b783          	ld	a5,-1652(a5) # 80005d30 <_GLOBAL_OFFSET_TABLE_+0x18>
    800013ac:	0007b783          	ld	a5,0(a5)
    800013b0:	0007c783          	lbu	a5,0(a5)
    800013b4:	0ff7f793          	andi	a5,a5,255
    800013b8:	0207f793          	andi	a5,a5,32
    800013bc:	fe0780e3          	beqz	a5,8000139c <_ZN6Kernel16outputThreadBodyEPv+0x14>
            char c = buffOUT->get(); //blokira (preko semafora) dok ima nesto za slanje - bezbedno ovde, ovo je obicna nit, ne prekidna rutina
    800013c0:	00005517          	auipc	a0,0x5
    800013c4:	a0053503          	ld	a0,-1536(a0) # 80005dc0 <_ZN6Kernel7buffOUTE>
    800013c8:	00001097          	auipc	ra,0x1
    800013cc:	500080e7          	jalr	1280(ra) # 800028c8 <_ZN6Buffer3getEv>
            (*(char *) CONSOLE_TX_DATA) = c;
    800013d0:	00005797          	auipc	a5,0x5
    800013d4:	9707b783          	ld	a5,-1680(a5) # 80005d40 <_GLOBAL_OFFSET_TABLE_+0x28>
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
    80001428:	f20080e7          	jalr	-224(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    8000142c:	03000593          	li	a1,48
    80001430:	00001097          	auipc	ra,0x1
    80001434:	fa0080e7          	jalr	-96(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    80001438:	00050493          	mv	s1,a0
    buffIN = new Buffer(512);
    8000143c:	20000593          	li	a1,512
    80001440:	00001097          	auipc	ra,0x1
    80001444:	348080e7          	jalr	840(ra) # 80002788 <_ZN6BufferC1Ei>
    80001448:	00005797          	auipc	a5,0x5
    8000144c:	9897b023          	sd	s1,-1664(a5) # 80005dc8 <_ZN6Kernel6buffINE>
    80001450:	00001097          	auipc	ra,0x1
    80001454:	ef4080e7          	jalr	-268(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001458:	03000593          	li	a1,48
    8000145c:	00001097          	auipc	ra,0x1
    80001460:	f74080e7          	jalr	-140(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    80001464:	00050493          	mv	s1,a0
    buffOUT = new Buffer(512);
    80001468:	20000593          	li	a1,512
    8000146c:	00001097          	auipc	ra,0x1
    80001470:	31c080e7          	jalr	796(ra) # 80002788 <_ZN6BufferC1Ei>
    80001474:	00005797          	auipc	a5,0x5
    80001478:	9497b623          	sd	s1,-1716(a5) # 80005dc0 <_ZN6Kernel7buffOUTE>
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
    8000149c:	eac080e7          	jalr	-340(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800014a0:	00048593          	mv	a1,s1
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	0b4080e7          	jalr	180(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
            return;
    800014ac:	00090513          	mv	a0,s2
    800014b0:	00006097          	auipc	ra,0x6
    800014b4:	a38080e7          	jalr	-1480(ra) # 80006ee8 <_Unwind_Resume>
    800014b8:	00050913          	mv	s2,a0
            MemoryAllocator::instance().kmem_free(ptr);
    800014bc:	00001097          	auipc	ra,0x1
    800014c0:	e88080e7          	jalr	-376(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800014c4:	00048593          	mv	a1,s1
    800014c8:	00001097          	auipc	ra,0x1
    800014cc:	090080e7          	jalr	144(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
            return;
    800014d0:	00090513          	mv	a0,s2
    800014d4:	00006097          	auipc	ra,0x6
    800014d8:	a14080e7          	jalr	-1516(ra) # 80006ee8 <_Unwind_Resume>

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
    800014f4:	00005797          	auipc	a5,0x5
    800014f8:	8647b783          	ld	a5,-1948(a5) # 80005d58 <_GLOBAL_OFFSET_TABLE_+0x40>
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
    80001510:	824080e7          	jalr	-2012(ra) # 80001d30 <_ZN3TCB12createThreadEPFvPvES0_>
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
    800015a0:	ba4080e7          	jalr	-1116(ra) # 80002140 <_ZN3TCB9time_tickEv>
    800015a4:	fd5ff06f          	j	80001578 <_ZN6Kernel21supervisorTrapHandlerEv+0x54>
        int irq = plic_claim();
    800015a8:	00002097          	auipc	ra,0x2
    800015ac:	c7c080e7          	jalr	-900(ra) # 80003224 <plic_claim>
    800015b0:	00050493          	mv	s1,a0
        if (irq == 10) // Keyboard interrupt
    800015b4:	00a00793          	li	a5,10
    800015b8:	00f50a63          	beq	a0,a5,800015cc <_ZN6Kernel21supervisorTrapHandlerEv+0xa8>
        plic_complete(irq);
    800015bc:	00048513          	mv	a0,s1
    800015c0:	00002097          	auipc	ra,0x2
    800015c4:	c9c080e7          	jalr	-868(ra) # 8000325c <plic_complete>
    800015c8:	fb1ff06f          	j	80001578 <_ZN6Kernel21supervisorTrapHandlerEv+0x54>
            volatile char status = *((char *) CONSOLE_STATUS);
    800015cc:	00004797          	auipc	a5,0x4
    800015d0:	7647b783          	ld	a5,1892(a5) # 80005d30 <_GLOBAL_OFFSET_TABLE_+0x18>
    800015d4:	0007b903          	ld	s2,0(a5)
    800015d8:	00094783          	lbu	a5,0(s2)
    800015dc:	f8f40ba3          	sb	a5,-105(s0)
    800015e0:	0280006f          	j	80001608 <_ZN6Kernel21supervisorTrapHandlerEv+0xe4>
                if (!buffIN->full()) buffIN->put(c);
    800015e4:	00098593          	mv	a1,s3
    800015e8:	00001097          	auipc	ra,0x1
    800015ec:	258080e7          	jalr	600(ra) # 80002840 <_ZN6Buffer3putEc>
    800015f0:	0480006f          	j	80001638 <_ZN6Kernel21supervisorTrapHandlerEv+0x114>
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
    800015f4:	00098593          	mv	a1,s3
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	248080e7          	jalr	584(ra) # 80002840 <_ZN6Buffer3putEc>
                status = *((char *) CONSOLE_STATUS);
    80001600:	00094783          	lbu	a5,0(s2)
    80001604:	f8f40ba3          	sb	a5,-105(s0)
            while (status & CONSOLE_RX_STATUS_BIT) { //receive data dok god ima novopristiglih znakova
    80001608:	f9744783          	lbu	a5,-105(s0)
    8000160c:	0017f793          	andi	a5,a5,1
    80001610:	fa0786e3          	beqz	a5,800015bc <_ZN6Kernel21supervisorTrapHandlerEv+0x98>
                char c = (*(char *) CONSOLE_RX_DATA);
    80001614:	00004797          	auipc	a5,0x4
    80001618:	7147b783          	ld	a5,1812(a5) # 80005d28 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000161c:	0007b783          	ld	a5,0(a5)
    80001620:	0007c983          	lbu	s3,0(a5)
                if (!buffIN->full()) buffIN->put(c);
    80001624:	00004517          	auipc	a0,0x4
    80001628:	7a453503          	ld	a0,1956(a0) # 80005dc8 <_ZN6Kernel6buffINE>
        }
        bool full() { return cnt==cap;}
    8000162c:	02852703          	lw	a4,40(a0)
    80001630:	00052783          	lw	a5,0(a0)
    80001634:	faf718e3          	bne	a4,a5,800015e4 <_ZN6Kernel21supervisorTrapHandlerEv+0xc0>
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
    80001638:	00004517          	auipc	a0,0x4
    8000163c:	78853503          	ld	a0,1928(a0) # 80005dc0 <_ZN6Kernel7buffOUTE>
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
    80001694:	00004717          	auipc	a4,0x4
    80001698:	98c70713          	addi	a4,a4,-1652 # 80005020 <CONSOLE_STATUS+0x10>
    8000169c:	00e787b3          	add	a5,a5,a4
    800016a0:	0007a783          	lw	a5,0(a5)
    800016a4:	00e787b3          	add	a5,a5,a4
    800016a8:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r" (size));
    800016ac:	00058493          	mv	s1,a1
                pointer = MemoryAllocator::instance().kmem_alloc(size);
    800016b0:	00001097          	auipc	ra,0x1
    800016b4:	c94080e7          	jalr	-876(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800016b8:	00048593          	mv	a1,s1
    800016bc:	00001097          	auipc	ra,0x1
    800016c0:	d14080e7          	jalr	-748(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
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
    800016e8:	c60080e7          	jalr	-928(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800016ec:	00048593          	mv	a1,s1
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	e68080e7          	jalr	-408(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001714:	620080e7          	jalr	1568(ra) # 80001d30 <_ZN3TCB12createThreadEPFvPvES0_>
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
    80001738:	00004797          	auipc	a5,0x4
    8000173c:	6287b783          	ld	a5,1576(a5) # 80005d60 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001740:	0007b783          	ld	a5,0(a5)
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    80001744:	00100713          	li	a4,1
    80001748:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	6fc080e7          	jalr	1788(ra) # 80001e48 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80001754:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001758:	04542823          	sw	t0,80(s0)
                break;
    8000175c:	f71ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                TCB::dispatch();
    80001760:	00000097          	auipc	ra,0x0
    80001764:	6e8080e7          	jalr	1768(ra) # 80001e48 <_ZN3TCB8dispatchEv>
                break;
    80001768:	f65ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a2" : "=r" (init)); //initial value of semaphore
    8000176c:	00060513          	mv	a0,a2
    80001770:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80001774:	00058493          	mv	s1,a1
                *semHandle = Semaphore::createSemaphore(init);
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	354080e7          	jalr	852(ra) # 80001acc <_ZN9Semaphore15createSemaphoreEj>
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
    800017ac:	378080e7          	jalr	888(ra) # 80001b20 <_ZN9Semaphore5closeEv>
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
    800017d4:	0e0080e7          	jalr	224(ra) # 800018b0 <_ZN9Semaphore7kwait_nEj>
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
    800017fc:	1c4080e7          	jalr	452(ra) # 800019bc <_ZN9Semaphore9ksignal_nEj>
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
    80001828:	08c080e7          	jalr	140(ra) # 800018b0 <_ZN9Semaphore7kwait_nEj>
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
    80001854:	16c080e7          	jalr	364(ra) # 800019bc <_ZN9Semaphore9ksignal_nEj>
    80001858:	e75ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                __asm__ volatile ("mv %0, a1" : "=r" (value)); //time value
    8000185c:	00058513          	mv	a0,a1
                returnValue = TCB::time_sleep(value);
    80001860:	0005051b          	sext.w	a0,a0
    80001864:	00001097          	auipc	ra,0x1
    80001868:	814080e7          	jalr	-2028(ra) # 80002078 <_ZN3TCB10time_sleepEm>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000186c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001870:	04542823          	sw	t0,80(s0)
                break;
    80001874:	e59ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>
                returnValue = buffIN->get();
    80001878:	00004517          	auipc	a0,0x4
    8000187c:	55053503          	ld	a0,1360(a0) # 80005dc8 <_ZN6Kernel6buffINE>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	048080e7          	jalr	72(ra) # 800028c8 <_ZN6Buffer3getEv>
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
    8000189c:	00004517          	auipc	a0,0x4
    800018a0:	52453503          	ld	a0,1316(a0) # 80005dc0 <_ZN6Kernel7buffOUTE>
    800018a4:	00001097          	auipc	ra,0x1
    800018a8:	f9c080e7          	jalr	-100(ra) # 80002840 <_ZN6Buffer3putEc>
                break;
    800018ac:	e21ff06f          	j	800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x1a8>

00000000800018b0 <_ZN9Semaphore7kwait_nEj>:
#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"

int Semaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
    if (closed) {
    800018b0:	00054783          	lbu	a5,0(a0)
    800018b4:	0e079c63          	bnez	a5,800019ac <_ZN9Semaphore7kwait_nEj+0xfc>
int Semaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
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
    800018e4:	0325e863          	bltu	a1,s2,80001914 <_ZN9Semaphore7kwait_nEj+0x64>
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
    80001920:	988080e7          	jalr	-1656(ra) # 800022a4 <_Znwm>
    80001924:	00050993          	mv	s3,a0
    80001928:	00004797          	auipc	a5,0x4
    8000192c:	4387b783          	ld	a5,1080(a5) # 80005d60 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80001940:	a08080e7          	jalr	-1528(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001944:	01000593          	li	a1,16
    80001948:	00001097          	auipc	ra,0x1
    8000194c:	a88080e7          	jalr	-1400(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001950:	01353023          	sd	s3,0(a0)
    80001954:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80001958:	008a3783          	ld	a5,8(s4)
    8000195c:	04078263          	beqz	a5,800019a0 <_ZN9Semaphore7kwait_nEj+0xf0>
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
    80001974:	00004797          	auipc	a5,0x4
    80001978:	3ec7b783          	ld	a5,1004(a5) # 80005d60 <_GLOBAL_OFFSET_TABLE_+0x48>
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
    80001994:	02079063          	bnez	a5,800019b4 <_ZN9Semaphore7kwait_nEj+0x104>
    return 0;
    80001998:	00000513          	li	a0,0
    8000199c:	f59ff06f          	j	800018f4 <_ZN9Semaphore7kwait_nEj+0x44>
            head = tail = elem;
    800019a0:	00aa3423          	sd	a0,8(s4)
    800019a4:	00a4b423          	sd	a0,8(s1)
    800019a8:	fc1ff06f          	j	80001968 <_ZN9Semaphore7kwait_nEj+0xb8>
        return -1;
    800019ac:	fff00513          	li	a0,-1
}
    800019b0:	00008067          	ret
        return -1;
    800019b4:	fff00513          	li	a0,-1
    800019b8:	f3dff06f          	j	800018f4 <_ZN9Semaphore7kwait_nEj+0x44>

00000000800019bc <_ZN9Semaphore9ksignal_nEj>:

int Semaphore::ksignal_n(unsigned n) {
    if(this->closed) {
    800019bc:	00054783          	lbu	a5,0(a0)
    800019c0:	0c079863          	bnez	a5,80001a90 <_ZN9Semaphore9ksignal_nEj+0xd4>
int Semaphore::ksignal_n(unsigned n) {
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
    800019f4:	0440006f          	j	80001a38 <_ZN9Semaphore9ksignal_nEj+0x7c>
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
    80001a04:	944080e7          	jalr	-1724(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001a08:	00090593          	mv	a1,s2
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	b4c080e7          	jalr	-1204(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001a30:	ca0080e7          	jalr	-864(ra) # 800026cc <_ZN9Scheduler3putEP3TCB>
            delete bti;
    80001a34:	04099663          	bnez	s3,80001a80 <_ZN9Semaphore9ksignal_nEj+0xc4>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001a38:	0084b783          	ld	a5,8(s1)
    80001a3c:	04078e63          	beqz	a5,80001a98 <_ZN9Semaphore9ksignal_nEj+0xdc>
        return head->data;
    80001a40:	0007b783          	ld	a5,0(a5)
    while (this->blocked.peekFirst()) {
    80001a44:	06078c63          	beqz	a5,80001abc <_ZN9Semaphore9ksignal_nEj+0x100>
        if (bti->requested <= this->value) {
    80001a48:	0087a703          	lw	a4,8(a5)
    80001a4c:	0044a783          	lw	a5,4(s1)
    80001a50:	06e7ea63          	bltu	a5,a4,80001ac4 <_ZN9Semaphore9ksignal_nEj+0x108>
            this->value -= bti->requested;
    80001a54:	40e787bb          	subw	a5,a5,a4
    80001a58:	00f4a223          	sw	a5,4(s1)
            bti = this->blocked.removeFirst();
    80001a5c:	00848a13          	addi	s4,s1,8
        if (!head) { return 0; }
    80001a60:	0084b903          	ld	s2,8(s1)
    80001a64:	00090a63          	beqz	s2,80001a78 <_ZN9Semaphore9ksignal_nEj+0xbc>
        head = head->next;
    80001a68:	00893783          	ld	a5,8(s2)
    80001a6c:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001a70:	f80796e3          	bnez	a5,800019fc <_ZN9Semaphore9ksignal_nEj+0x40>
    80001a74:	f85ff06f          	j	800019f8 <_ZN9Semaphore9ksignal_nEj+0x3c>
        if (!head) { return 0; }
    80001a78:	00090993          	mv	s3,s2
    80001a7c:	fa5ff06f          	j	80001a20 <_ZN9Semaphore9ksignal_nEj+0x64>
            delete bti;
    80001a80:	00098513          	mv	a0,s3
    80001a84:	00001097          	auipc	ra,0x1
    80001a88:	870080e7          	jalr	-1936(ra) # 800022f4 <_ZdlPv>
    80001a8c:	fadff06f          	j	80001a38 <_ZN9Semaphore9ksignal_nEj+0x7c>
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
    80001ac0:	fddff06f          	j	80001a9c <_ZN9Semaphore9ksignal_nEj+0xe0>
    80001ac4:	00000513          	li	a0,0
    80001ac8:	fd5ff06f          	j	80001a9c <_ZN9Semaphore9ksignal_nEj+0xe0>

0000000080001acc <_ZN9Semaphore15createSemaphoreEj>:

Semaphore *Semaphore::createSemaphore(unsigned int init) {
    80001acc:	fe010113          	addi	sp,sp,-32
    80001ad0:	00113c23          	sd	ra,24(sp)
    80001ad4:	00813823          	sd	s0,16(sp)
    80001ad8:	00913423          	sd	s1,8(sp)
    80001adc:	02010413          	addi	s0,sp,32
    80001ae0:	00050493          	mv	s1,a0
        return MemoryAllocator::instance().kmem_alloc(size);
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	860080e7          	jalr	-1952(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001aec:	02000593          	li	a1,32
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	8e0080e7          	jalr	-1824(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    List() : head(0), tail(0), size(0) {}
    80001af8:	00053423          	sd	zero,8(a0)
    80001afc:	00053823          	sd	zero,16(a0)
    80001b00:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80001b04:	00952223          	sw	s1,4(a0)
        this->closed = false;
    80001b08:	00050023          	sb	zero,0(a0)
    return new Semaphore(init);
}
    80001b0c:	01813083          	ld	ra,24(sp)
    80001b10:	01013403          	ld	s0,16(sp)
    80001b14:	00813483          	ld	s1,8(sp)
    80001b18:	02010113          	addi	sp,sp,32
    80001b1c:	00008067          	ret

0000000080001b20 <_ZN9Semaphore5closeEv>:

int Semaphore::close() {
    if (closed) {
    80001b20:	00054783          	lbu	a5,0(a0)
    80001b24:	0a079263          	bnez	a5,80001bc8 <_ZN9Semaphore5closeEv+0xa8>
int Semaphore::close() {
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
    80001b54:	0400006f          	j	80001b94 <_ZN9Semaphore5closeEv+0x74>
        if (!head) { tail = 0; }
    80001b58:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    80001b5c:	00093a03          	ld	s4,0(s2)
            MemoryAllocator::instance().kmem_free(ptr);
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	7e4080e7          	jalr	2020(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001b68:	00090593          	mv	a1,s2
    80001b6c:	00001097          	auipc	ra,0x1
    80001b70:	9ec080e7          	jalr	-1556(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
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
    80001b90:	b40080e7          	jalr	-1216(ra) # 800026cc <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001b94:	0084b783          	ld	a5,8(s1)
    80001b98:	02078c63          	beqz	a5,80001bd0 <_ZN9Semaphore5closeEv+0xb0>
        return head->data;
    80001b9c:	0007b783          	ld	a5,0(a5)
    while (this->blocked.peekFirst()) {
    80001ba0:	04078a63          	beqz	a5,80001bf4 <_ZN9Semaphore5closeEv+0xd4>
        BlockedThreadInfo* bti = this->blocked.removeFirst();
    80001ba4:	00848993          	addi	s3,s1,8
        if (!head) { return 0; }
    80001ba8:	0084b903          	ld	s2,8(s1)
    80001bac:	00090a63          	beqz	s2,80001bc0 <_ZN9Semaphore5closeEv+0xa0>
        head = head->next;
    80001bb0:	00893783          	ld	a5,8(s2)
    80001bb4:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001bb8:	fa0792e3          	bnez	a5,80001b5c <_ZN9Semaphore5closeEv+0x3c>
    80001bbc:	f9dff06f          	j	80001b58 <_ZN9Semaphore5closeEv+0x38>
        if (!head) { return 0; }
    80001bc0:	00090a13          	mv	s4,s2
    80001bc4:	fbdff06f          	j	80001b80 <_ZN9Semaphore5closeEv+0x60>
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
    80001bf8:	fddff06f          	j	80001bd4 <_ZN9Semaphore5closeEv+0xb4>

0000000080001bfc <_Z8userMainv>:
#include "../lib/console.h"
#include "../h/syscall_c.hpp"

void userMain()
{
    80001bfc:	ff010113          	addi	sp,sp,-16
    80001c00:	00113423          	sd	ra,8(sp)
    80001c04:	00813023          	sd	s0,0(sp)
    80001c08:	01010413          	addi	s0,sp,16
    putc('H');
    80001c0c:	04800513          	li	a0,72
    80001c10:	fffff097          	auipc	ra,0xfffff
    80001c14:	754080e7          	jalr	1876(ra) # 80001364 <_Z4putcc>
    putc('e');
    80001c18:	06500513          	li	a0,101
    80001c1c:	fffff097          	auipc	ra,0xfffff
    80001c20:	748080e7          	jalr	1864(ra) # 80001364 <_Z4putcc>
    putc('l');
    80001c24:	06c00513          	li	a0,108
    80001c28:	fffff097          	auipc	ra,0xfffff
    80001c2c:	73c080e7          	jalr	1852(ra) # 80001364 <_Z4putcc>
    putc('l');
    80001c30:	06c00513          	li	a0,108
    80001c34:	fffff097          	auipc	ra,0xfffff
    80001c38:	730080e7          	jalr	1840(ra) # 80001364 <_Z4putcc>
    putc('o'); 
    80001c3c:	06f00513          	li	a0,111
    80001c40:	fffff097          	auipc	ra,0xfffff
    80001c44:	724080e7          	jalr	1828(ra) # 80001364 <_Z4putcc>
}
    80001c48:	00813083          	ld	ra,8(sp)
    80001c4c:	00013403          	ld	s0,0(sp)
    80001c50:	01010113          	addi	sp,sp,16
    80001c54:	00008067          	ret

0000000080001c58 <main>:
#include "../h/memory_allocator.hpp"

extern void userMain();

void main()
{
    80001c58:	fc010113          	addi	sp,sp,-64
    80001c5c:	02113c23          	sd	ra,56(sp)
    80001c60:	02813823          	sd	s0,48(sp)
    80001c64:	04010413          	addi	s0,sp,64

    Kernel::init();
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	874080e7          	jalr	-1932(ra) # 800014dc <_ZN6Kernel4initEv>
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    80001c70:	00200793          	li	a5,2
    80001c74:	1007a073          	csrs	sstatus,a5
    Kernel::ms_sstatus(Kernel::SSTATUS_SIE);

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr);
    80001c78:	00000593          	li	a1,0
    80001c7c:	00000513          	li	a0,0
    80001c80:	00000097          	auipc	ra,0x0
    80001c84:	0b0080e7          	jalr	176(ra) # 80001d30 <_ZN3TCB12createThreadEPFvPvES0_>
    80001c88:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    80001c8c:	00004797          	auipc	a5,0x4
    80001c90:	0d47b783          	ld	a5,212(a5) # 80005d60 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001c94:	00a7b023          	sd	a0,0(a5)

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80001c98:	00000613          	li	a2,0
    80001c9c:	00004597          	auipc	a1,0x4
    80001ca0:	0845b583          	ld	a1,132(a1) # 80005d20 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001ca4:	fd040513          	addi	a0,s0,-48
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	4d8080e7          	jalr	1240(ra) # 80001180 <_Z13thread_createPP3TCBPFvPvES2_>
    80001cb0:	00c0006f          	j	80001cbc <main+0x64>

    while(!threads[1]->isFinished() || Kernel::outputPending()) {
        thread_dispatch();
    80001cb4:	fffff097          	auipc	ra,0xfffff
    80001cb8:	528080e7          	jalr	1320(ra) # 800011dc <_Z15thread_dispatchv>
    while(!threads[1]->isFinished() || Kernel::outputPending()) {
    80001cbc:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    80001cc0:	0207c783          	lbu	a5,32(a5)
    80001cc4:	fe0788e3          	beqz	a5,80001cb4 <main+0x5c>
    static bool outputPending() { return !buffOUT->empty(); }
    80001cc8:	00004797          	auipc	a5,0x4
    80001ccc:	0807b783          	ld	a5,128(a5) # 80005d48 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001cd0:	0007b783          	ld	a5,0(a5)
        bool empty() { return cnt==0;}
    80001cd4:	0287a783          	lw	a5,40(a5)
    80001cd8:	fc079ee3          	bnez	a5,80001cb4 <main+0x5c>
    }

    return;
    80001cdc:	03813083          	ld	ra,56(sp)
    80001ce0:	03013403          	ld	s0,48(sp)
    80001ce4:	04010113          	addi	sp,sp,64
    80001ce8:	00008067          	ret

0000000080001cec <_Z41__static_initialization_and_destruction_0ii>:
            SleepingThreads.addLast(t);
        } else {
            Scheduler::put(t);
        }
    }
    80001cec:	ff010113          	addi	sp,sp,-16
    80001cf0:	00813423          	sd	s0,8(sp)
    80001cf4:	01010413          	addi	s0,sp,16
    80001cf8:	00100793          	li	a5,1
    80001cfc:	00f50863          	beq	a0,a5,80001d0c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001d00:	00813403          	ld	s0,8(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret
    80001d0c:	000107b7          	lui	a5,0x10
    80001d10:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001d14:	fef596e3          	bne	a1,a5,80001d00 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80001d18:	00004797          	auipc	a5,0x4
    80001d1c:	0b878793          	addi	a5,a5,184 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    80001d20:	0007b023          	sd	zero,0(a5)
    80001d24:	0007b423          	sd	zero,8(a5)
    80001d28:	0007b823          	sd	zero,16(a5)
    80001d2c:	fd5ff06f          	j	80001d00 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001d30 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80001d30:	fd010113          	addi	sp,sp,-48
    80001d34:	02113423          	sd	ra,40(sp)
    80001d38:	02813023          	sd	s0,32(sp)
    80001d3c:	00913c23          	sd	s1,24(sp)
    80001d40:	01213823          	sd	s2,16(sp)
    80001d44:	01313423          	sd	s3,8(sp)
    80001d48:	03010413          	addi	s0,sp,48
    80001d4c:	00050913          	mv	s2,a0
    80001d50:	00058993          	mv	s3,a1
    static TCB *running;

    static List<TCB> SleepingThreads;

    void* operator new(size_t size) {
        return MemoryAllocator::instance().kmem_alloc(size);
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	5f0080e7          	jalr	1520(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001d5c:	05000593          	li	a1,80
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	670080e7          	jalr	1648(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    80001d68:	00050493          	mv	s1,a0
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            sleepTime(0),
            arg(arg)
    80001d6c:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001d70:	00090a63          	beqz	s2,80001d84 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80001d74:	00002537          	lui	a0,0x2
    80001d78:	00000097          	auipc	ra,0x0
    80001d7c:	554080e7          	jalr	1364(ra) # 800022cc <_Znam>
    80001d80:	0080006f          	j	80001d88 <_ZN3TCB12createThreadEPFvPvES0_+0x58>
    80001d84:	00000513          	li	a0,0
            arg(arg)
    80001d88:	00a4b423          	sd	a0,8(s1)
    80001d8c:	00000797          	auipc	a5,0x0
    80001d90:	1e878793          	addi	a5,a5,488 # 80001f74 <_ZN3TCB13threadWrapperEv>
    80001d94:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001d98:	04050063          	beqz	a0,80001dd8 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
    80001d9c:	000027b7          	lui	a5,0x2
    80001da0:	00f507b3          	add	a5,a0,a5
            arg(arg)
    80001da4:	00f4bc23          	sd	a5,24(s1)
    80001da8:	02048023          	sb	zero,32(s1)
    80001dac:	020480a3          	sb	zero,33(s1)
    80001db0:	0204b423          	sd	zero,40(s1)
    80001db4:	0334b823          	sd	s3,48(s1)
    80001db8:	0204bc23          	sd	zero,56(s1)
    80001dbc:	0404b023          	sd	zero,64(s1)
    80001dc0:	0404b423          	sd	zero,72(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001dc4:	04090063          	beqz	s2,80001e04 <_ZN3TCB12createThreadEPFvPvES0_+0xd4>
    80001dc8:	00048513          	mv	a0,s1
    80001dcc:	00001097          	auipc	ra,0x1
    80001dd0:	900080e7          	jalr	-1792(ra) # 800026cc <_ZN9Scheduler3putEP3TCB>
    80001dd4:	0300006f          	j	80001e04 <_ZN3TCB12createThreadEPFvPvES0_+0xd4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001dd8:	00000793          	li	a5,0
    80001ddc:	fc9ff06f          	j	80001da4 <_ZN3TCB12createThreadEPFvPvES0_+0x74>
    80001de0:	00050913          	mv	s2,a0
        MemoryAllocator::instance().kmem_free(ptr);
    80001de4:	00000097          	auipc	ra,0x0
    80001de8:	560080e7          	jalr	1376(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001dec:	00048593          	mv	a1,s1
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	768080e7          	jalr	1896(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
    80001df8:	00090513          	mv	a0,s2
    80001dfc:	00005097          	auipc	ra,0x5
    80001e00:	0ec080e7          	jalr	236(ra) # 80006ee8 <_Unwind_Resume>
}
    80001e04:	00048513          	mv	a0,s1
    80001e08:	02813083          	ld	ra,40(sp)
    80001e0c:	02013403          	ld	s0,32(sp)
    80001e10:	01813483          	ld	s1,24(sp)
    80001e14:	01013903          	ld	s2,16(sp)
    80001e18:	00813983          	ld	s3,8(sp)
    80001e1c:	03010113          	addi	sp,sp,48
    80001e20:	00008067          	ret

0000000080001e24 <_ZN3TCB5yieldEv>:
{
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00813423          	sd	s0,8(sp)
    80001e2c:	01010413          	addi	s0,sp,16
        __asm__ volatile("mv a0, %0" : : "r"(x));
    80001e30:	01300793          	li	a5,19
    80001e34:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80001e38:	00000073          	ecall
}
    80001e3c:	00813403          	ld	s0,8(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN3TCB8dispatchEv>:
{
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80001e5c:	00004497          	auipc	s1,0x4
    80001e60:	f8c4b483          	ld	s1,-116(s1) # 80005de8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001e64:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked() && !old->isSleeping()) {
    80001e68:	00079a63          	bnez	a5,80001e7c <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked() const { return this->blocked; }
    80001e6c:	0214c783          	lbu	a5,33(s1)
    80001e70:	00079663          	bnez	a5,80001e7c <_ZN3TCB8dispatchEv+0x34>
    bool isSleeping() { return this->sleepTime > 0; }
    80001e74:	0284b783          	ld	a5,40(s1)
    80001e78:	02078c63          	beqz	a5,80001eb0 <_ZN3TCB8dispatchEv+0x68>
    running = Scheduler::get();
    80001e7c:	00000097          	auipc	ra,0x0
    80001e80:	7c0080e7          	jalr	1984(ra) # 8000263c <_ZN9Scheduler3getEv>
    80001e84:	00004797          	auipc	a5,0x4
    80001e88:	f6a7b223          	sd	a0,-156(a5) # 80005de8 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80001e8c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001e90:	01048513          	addi	a0,s1,16
    80001e94:	fffff097          	auipc	ra,0xfffff
    80001e98:	27c080e7          	jalr	636(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001e9c:	01813083          	ld	ra,24(sp)
    80001ea0:	01013403          	ld	s0,16(sp)
    80001ea4:	00813483          	ld	s1,8(sp)
    80001ea8:	02010113          	addi	sp,sp,32
    80001eac:	00008067          	ret
        Scheduler::put(old);
    80001eb0:	00048513          	mv	a0,s1
    80001eb4:	00001097          	auipc	ra,0x1
    80001eb8:	818080e7          	jalr	-2024(ra) # 800026cc <_ZN9Scheduler3putEP3TCB>
    80001ebc:	fc1ff06f          	j	80001e7c <_ZN3TCB8dispatchEv+0x34>

0000000080001ec0 <_ZN3TCB10releaseAllEv>:
void TCB::releaseAll() {
    80001ec0:	fd010113          	addi	sp,sp,-48
    80001ec4:	02113423          	sd	ra,40(sp)
    80001ec8:	02813023          	sd	s0,32(sp)
    80001ecc:	00913c23          	sd	s1,24(sp)
    80001ed0:	01213823          	sd	s2,16(sp)
    80001ed4:	01313423          	sd	s3,8(sp)
    80001ed8:	01413023          	sd	s4,0(sp)
    80001edc:	03010413          	addi	s0,sp,48
    80001ee0:	00050913          	mv	s2,a0
    80001ee4:	03c0006f          	j	80001f20 <_ZN3TCB10releaseAllEv+0x60>
        if (!head) { tail = 0; }
    80001ee8:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    80001eec:	0004ba03          	ld	s4,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	454080e7          	jalr	1108(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80001ef8:	00048593          	mv	a1,s1
    80001efc:	00000097          	auipc	ra,0x0
    80001f00:	65c080e7          	jalr	1628(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    80001f04:	0109b783          	ld	a5,16(s3)
    80001f08:	fff78793          	addi	a5,a5,-1
    80001f0c:	00f9b823          	sd	a5,16(s3)
    void setBlocked(bool value) { this->blocked = value; }
    80001f10:	020a00a3          	sb	zero,33(s4)
        Scheduler::put(tcb);
    80001f14:	000a0513          	mv	a0,s4
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	7b4080e7          	jalr	1972(ra) # 800026cc <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001f20:	03893783          	ld	a5,56(s2)
    80001f24:	02078863          	beqz	a5,80001f54 <_ZN3TCB10releaseAllEv+0x94>
        return head->data;
    80001f28:	0007b783          	ld	a5,0(a5)
    while (this->joined.peekFirst()) {
    80001f2c:	02078463          	beqz	a5,80001f54 <_ZN3TCB10releaseAllEv+0x94>
        TCB* tcb = this->joined.removeFirst();
    80001f30:	03890993          	addi	s3,s2,56
        if (!head) { return 0; }
    80001f34:	03893483          	ld	s1,56(s2)
    80001f38:	00048a63          	beqz	s1,80001f4c <_ZN3TCB10releaseAllEv+0x8c>
        head = head->next;
    80001f3c:	0084b783          	ld	a5,8(s1)
    80001f40:	02f93c23          	sd	a5,56(s2)
        if (!head) { tail = 0; }
    80001f44:	fa0794e3          	bnez	a5,80001eec <_ZN3TCB10releaseAllEv+0x2c>
    80001f48:	fa1ff06f          	j	80001ee8 <_ZN3TCB10releaseAllEv+0x28>
        if (!head) { return 0; }
    80001f4c:	00048a13          	mv	s4,s1
    80001f50:	fc1ff06f          	j	80001f10 <_ZN3TCB10releaseAllEv+0x50>
}
    80001f54:	02813083          	ld	ra,40(sp)
    80001f58:	02013403          	ld	s0,32(sp)
    80001f5c:	01813483          	ld	s1,24(sp)
    80001f60:	01013903          	ld	s2,16(sp)
    80001f64:	00813983          	ld	s3,8(sp)
    80001f68:	00013a03          	ld	s4,0(sp)
    80001f6c:	03010113          	addi	sp,sp,48
    80001f70:	00008067          	ret

0000000080001f74 <_ZN3TCB13threadWrapperEv>:
{
    80001f74:	fe010113          	addi	sp,sp,-32
    80001f78:	00113c23          	sd	ra,24(sp)
    80001f7c:	00813823          	sd	s0,16(sp)
    80001f80:	00913423          	sd	s1,8(sp)
    80001f84:	02010413          	addi	s0,sp,32
    Kernel::popSppSpie();
    80001f88:	fffff097          	auipc	ra,0xfffff
    80001f8c:	45c080e7          	jalr	1116(ra) # 800013e4 <_ZN6Kernel10popSppSpieEv>
    running->body(running->arg);
    80001f90:	00004497          	auipc	s1,0x4
    80001f94:	e4048493          	addi	s1,s1,-448 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    80001f98:	0184b783          	ld	a5,24(s1)
    80001f9c:	0007b703          	ld	a4,0(a5)
    80001fa0:	0307b503          	ld	a0,48(a5)
    80001fa4:	000700e7          	jalr	a4
    running->setFinished(true);
    80001fa8:	0184b503          	ld	a0,24(s1)
    void setFinished(bool value) { finished = value; }
    80001fac:	00100793          	li	a5,1
    80001fb0:	02f50023          	sb	a5,32(a0)
    running->releaseAll(); //release all joined threads that are waiting for this thread to finish
    80001fb4:	00000097          	auipc	ra,0x0
    80001fb8:	f0c080e7          	jalr	-244(ra) # 80001ec0 <_ZN3TCB10releaseAllEv>
    thread_dispatch();
    80001fbc:	fffff097          	auipc	ra,0xfffff
    80001fc0:	220080e7          	jalr	544(ra) # 800011dc <_Z15thread_dispatchv>
}
    80001fc4:	01813083          	ld	ra,24(sp)
    80001fc8:	01013403          	ld	s0,16(sp)
    80001fcc:	00813483          	ld	s1,8(sp)
    80001fd0:	02010113          	addi	sp,sp,32
    80001fd4:	00008067          	ret

0000000080001fd8 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished; }
    80001fd8:	02054783          	lbu	a5,32(a0)
    if(!handle->isFinished()) {
    80001fdc:	00078463          	beqz	a5,80001fe4 <_ZN3TCB4joinEPS_+0xc>
    80001fe0:	00008067          	ret
void TCB::join(TCB* handle) {
    80001fe4:	fd010113          	addi	sp,sp,-48
    80001fe8:	02113423          	sd	ra,40(sp)
    80001fec:	02813023          	sd	s0,32(sp)
    80001ff0:	00913c23          	sd	s1,24(sp)
    80001ff4:	01213823          	sd	s2,16(sp)
    80001ff8:	01313423          	sd	s3,8(sp)
    80001ffc:	03010413          	addi	s0,sp,48
    80002000:	00050493          	mv	s1,a0
        running->setBlocked(true);
    80002004:	00004997          	auipc	s3,0x4
    80002008:	de49b983          	ld	s3,-540(s3) # 80005de8 <_ZN3TCB7runningE>
    void setBlocked(bool value) { this->blocked = value; }
    8000200c:	00100793          	li	a5,1
    80002010:	02f980a3          	sb	a5,33(s3)
        handle->joined.addLast(running); //join this thread to the handle's joined list so it waits for the handle to finish
    80002014:	03850913          	addi	s2,a0,56
            return MemoryAllocator::instance().kmem_alloc(size);
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	32c080e7          	jalr	812(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80002020:	01000593          	li	a1,16
    80002024:	00000097          	auipc	ra,0x0
    80002028:	3ac080e7          	jalr	940(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000202c:	01353023          	sd	s3,0(a0)
    80002030:	00053423          	sd	zero,8(a0)
        if (tail)
    80002034:	00893783          	ld	a5,8(s2)
    80002038:	02078a63          	beqz	a5,8000206c <_ZN3TCB4joinEPS_+0x94>
            tail->next = elem;
    8000203c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002040:	00a93423          	sd	a0,8(s2)
        size++;
    80002044:	01093783          	ld	a5,16(s2)
    80002048:	00178793          	addi	a5,a5,1
    8000204c:	00f93823          	sd	a5,16(s2)
}
    80002050:	02813083          	ld	ra,40(sp)
    80002054:	02013403          	ld	s0,32(sp)
    80002058:	01813483          	ld	s1,24(sp)
    8000205c:	01013903          	ld	s2,16(sp)
    80002060:	00813983          	ld	s3,8(sp)
    80002064:	03010113          	addi	sp,sp,48
    80002068:	00008067          	ret
            head = tail = elem;
    8000206c:	00a93423          	sd	a0,8(s2)
    80002070:	02a4bc23          	sd	a0,56(s1)
    80002074:	fd1ff06f          	j	80002044 <_ZN3TCB4joinEPS_+0x6c>

0000000080002078 <_ZN3TCB10time_sleepEm>:
    if (timeout == 0) {
    80002078:	0a050863          	beqz	a0,80002128 <_ZN3TCB10time_sleepEm+0xb0>
int TCB::time_sleep(time_t timeout) {
    8000207c:	fe010113          	addi	sp,sp,-32
    80002080:	00113c23          	sd	ra,24(sp)
    80002084:	00813823          	sd	s0,16(sp)
    80002088:	00913423          	sd	s1,8(sp)
    8000208c:	02010413          	addi	s0,sp,32
    if (running->isBlocked() || running->isFinished()) {
    80002090:	00004497          	auipc	s1,0x4
    80002094:	d584b483          	ld	s1,-680(s1) # 80005de8 <_ZN3TCB7runningE>
    bool isBlocked() const { return this->blocked; }
    80002098:	0214c783          	lbu	a5,33(s1)
    8000209c:	08079a63          	bnez	a5,80002130 <_ZN3TCB10time_sleepEm+0xb8>
    bool isFinished() const { return finished; }
    800020a0:	0204c783          	lbu	a5,32(s1)
    800020a4:	08079a63          	bnez	a5,80002138 <_ZN3TCB10time_sleepEm+0xc0>
    void setSleeping(time_t value) { this->sleepTime = value; }
    800020a8:	02a4b423          	sd	a0,40(s1)
            return MemoryAllocator::instance().kmem_alloc(size);
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	298080e7          	jalr	664(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800020b4:	01000593          	li	a1,16
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	318080e7          	jalr	792(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800020c0:	00953023          	sd	s1,0(a0)
    800020c4:	00053423          	sd	zero,8(a0)
        if (tail)
    800020c8:	00004797          	auipc	a5,0x4
    800020cc:	d107b783          	ld	a5,-752(a5) # 80005dd8 <_ZN3TCB15SleepingThreadsE+0x8>
    800020d0:	04078263          	beqz	a5,80002114 <_ZN3TCB10time_sleepEm+0x9c>
            tail->next = elem;
    800020d4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800020d8:	00004797          	auipc	a5,0x4
    800020dc:	d0a7b023          	sd	a0,-768(a5) # 80005dd8 <_ZN3TCB15SleepingThreadsE+0x8>
        size++;
    800020e0:	00004717          	auipc	a4,0x4
    800020e4:	cf070713          	addi	a4,a4,-784 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    800020e8:	01073783          	ld	a5,16(a4)
    800020ec:	00178793          	addi	a5,a5,1
    800020f0:	00f73823          	sd	a5,16(a4)
    TCB::dispatch(); //this won't put the sleeping thread back into the ready queue.
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	d54080e7          	jalr	-684(ra) # 80001e48 <_ZN3TCB8dispatchEv>
    return 0;
    800020fc:	00000513          	li	a0,0
}
    80002100:	01813083          	ld	ra,24(sp)
    80002104:	01013403          	ld	s0,16(sp)
    80002108:	00813483          	ld	s1,8(sp)
    8000210c:	02010113          	addi	sp,sp,32
    80002110:	00008067          	ret
            head = tail = elem;
    80002114:	00004797          	auipc	a5,0x4
    80002118:	cbc78793          	addi	a5,a5,-836 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    8000211c:	00a7b423          	sd	a0,8(a5)
    80002120:	00a7b023          	sd	a0,0(a5)
    80002124:	fbdff06f          	j	800020e0 <_ZN3TCB10time_sleepEm+0x68>
        return 0;
    80002128:	00000513          	li	a0,0
}
    8000212c:	00008067          	ret
        return -1;
    80002130:	fff00513          	li	a0,-1
    80002134:	fcdff06f          	j	80002100 <_ZN3TCB10time_sleepEm+0x88>
    80002138:	fff00513          	li	a0,-1
    8000213c:	fc5ff06f          	j	80002100 <_ZN3TCB10time_sleepEm+0x88>

0000000080002140 <_ZN3TCB9time_tickEv>:
void TCB::time_tick(){
    80002140:	fd010113          	addi	sp,sp,-48
    80002144:	02113423          	sd	ra,40(sp)
    80002148:	02813023          	sd	s0,32(sp)
    8000214c:	00913c23          	sd	s1,24(sp)
    80002150:	01213823          	sd	s2,16(sp)
    80002154:	01313423          	sd	s3,8(sp)
    80002158:	03010413          	addi	s0,sp,48
    for(size_t i = 0; i < SleepingThreads.getSize(); i++) {
    8000215c:	00000993          	li	s3,0
    80002160:	0400006f          	j	800021a0 <_ZN3TCB9time_tickEv+0x60>
        if (!head) { tail = 0; }
    80002164:	00004797          	auipc	a5,0x4
    80002168:	c607ba23          	sd	zero,-908(a5) # 80005dd8 <_ZN3TCB15SleepingThreadsE+0x8>
    8000216c:	05c0006f          	j	800021c8 <_ZN3TCB9time_tickEv+0x88>
        if (!head) { return 0; }
    80002170:	00048913          	mv	s2,s1
    80002174:	0800006f          	j	800021f4 <_ZN3TCB9time_tickEv+0xb4>
            head = tail = elem;
    80002178:	00004797          	auipc	a5,0x4
    8000217c:	c5878793          	addi	a5,a5,-936 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    80002180:	00a7b423          	sd	a0,8(a5)
    80002184:	00a7b023          	sd	a0,0(a5)
        size++;
    80002188:	00004717          	auipc	a4,0x4
    8000218c:	c4870713          	addi	a4,a4,-952 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    80002190:	01073783          	ld	a5,16(a4)
    80002194:	00178793          	addi	a5,a5,1
    80002198:	00f73823          	sd	a5,16(a4)
    8000219c:	00198993          	addi	s3,s3,1
        if (!tail) { return 0; }
        return tail->data;
    }

    size_t getSize() {
        return size;
    800021a0:	00004797          	auipc	a5,0x4
    800021a4:	c407b783          	ld	a5,-960(a5) # 80005de0 <_ZN3TCB15SleepingThreadsE+0x10>
    800021a8:	0af9f663          	bgeu	s3,a5,80002254 <_ZN3TCB9time_tickEv+0x114>
        if (!head) { return 0; }
    800021ac:	00004497          	auipc	s1,0x4
    800021b0:	c244b483          	ld	s1,-988(s1) # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    800021b4:	fa048ee3          	beqz	s1,80002170 <_ZN3TCB9time_tickEv+0x30>
        head = head->next;
    800021b8:	0084b783          	ld	a5,8(s1)
    800021bc:	00004717          	auipc	a4,0x4
    800021c0:	c0f73a23          	sd	a5,-1004(a4) # 80005dd0 <_ZN3TCB15SleepingThreadsE>
        if (!head) { tail = 0; }
    800021c4:	fa0780e3          	beqz	a5,80002164 <_ZN3TCB9time_tickEv+0x24>
        T *ret = elem->data;
    800021c8:	0004b903          	ld	s2,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	178080e7          	jalr	376(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800021d4:	00048593          	mv	a1,s1
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	380080e7          	jalr	896(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    800021e0:	00004717          	auipc	a4,0x4
    800021e4:	bf070713          	addi	a4,a4,-1040 # 80005dd0 <_ZN3TCB15SleepingThreadsE>
    800021e8:	01073783          	ld	a5,16(a4)
    800021ec:	fff78793          	addi	a5,a5,-1
    800021f0:	00f73823          	sd	a5,16(a4)
    void decSleep() { if (this->sleepTime > 0) this->sleepTime--; }
    800021f4:	02893783          	ld	a5,40(s2)
    800021f8:	00078663          	beqz	a5,80002204 <_ZN3TCB9time_tickEv+0xc4>
    800021fc:	fff78793          	addi	a5,a5,-1
    80002200:	02f93423          	sd	a5,40(s2)
    bool isSleeping() { return this->sleepTime > 0; }
    80002204:	02893783          	ld	a5,40(s2)
        if (t->isSleeping()) {
    80002208:	02078e63          	beqz	a5,80002244 <_ZN3TCB9time_tickEv+0x104>
            return MemoryAllocator::instance().kmem_alloc(size);
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	138080e7          	jalr	312(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80002214:	01000593          	li	a1,16
    80002218:	00000097          	auipc	ra,0x0
    8000221c:	1b8080e7          	jalr	440(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002220:	01253023          	sd	s2,0(a0)
    80002224:	00053423          	sd	zero,8(a0)
        if (tail)
    80002228:	00004797          	auipc	a5,0x4
    8000222c:	bb07b783          	ld	a5,-1104(a5) # 80005dd8 <_ZN3TCB15SleepingThreadsE+0x8>
    80002230:	f40784e3          	beqz	a5,80002178 <_ZN3TCB9time_tickEv+0x38>
            tail->next = elem;
    80002234:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002238:	00004797          	auipc	a5,0x4
    8000223c:	baa7b023          	sd	a0,-1120(a5) # 80005dd8 <_ZN3TCB15SleepingThreadsE+0x8>
    80002240:	f49ff06f          	j	80002188 <_ZN3TCB9time_tickEv+0x48>
            Scheduler::put(t);
    80002244:	00090513          	mv	a0,s2
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	484080e7          	jalr	1156(ra) # 800026cc <_ZN9Scheduler3putEP3TCB>
    80002250:	f4dff06f          	j	8000219c <_ZN3TCB9time_tickEv+0x5c>
    80002254:	02813083          	ld	ra,40(sp)
    80002258:	02013403          	ld	s0,32(sp)
    8000225c:	01813483          	ld	s1,24(sp)
    80002260:	01013903          	ld	s2,16(sp)
    80002264:	00813983          	ld	s3,8(sp)
    80002268:	03010113          	addi	sp,sp,48
    8000226c:	00008067          	ret

0000000080002270 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80002270:	ff010113          	addi	sp,sp,-16
    80002274:	00113423          	sd	ra,8(sp)
    80002278:	00813023          	sd	s0,0(sp)
    8000227c:	01010413          	addi	s0,sp,16
    80002280:	000105b7          	lui	a1,0x10
    80002284:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002288:	00100513          	li	a0,1
    8000228c:	00000097          	auipc	ra,0x0
    80002290:	a60080e7          	jalr	-1440(ra) # 80001cec <_Z41__static_initialization_and_destruction_0ii>
    80002294:	00813083          	ld	ra,8(sp)
    80002298:	00013403          	ld	s0,0(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret

00000000800022a4 <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    800022a4:	ff010113          	addi	sp,sp,-16
    800022a8:	00113423          	sd	ra,8(sp)
    800022ac:	00813023          	sd	s0,0(sp)
    800022b0:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800022b4:	fffff097          	auipc	ra,0xfffff
    800022b8:	e70080e7          	jalr	-400(ra) # 80001124 <_Z9mem_allocm>
}
    800022bc:	00813083          	ld	ra,8(sp)
    800022c0:	00013403          	ld	s0,0(sp)
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00008067          	ret

00000000800022cc <_Znam>:

void *operator new[](size_t n)
{
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	e48080e7          	jalr	-440(ra) # 80001124 <_Z9mem_allocm>
}
    800022e4:	00813083          	ld	ra,8(sp)
    800022e8:	00013403          	ld	s0,0(sp)
    800022ec:	01010113          	addi	sp,sp,16
    800022f0:	00008067          	ret

00000000800022f4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800022f4:	ff010113          	addi	sp,sp,-16
    800022f8:	00113423          	sd	ra,8(sp)
    800022fc:	00813023          	sd	s0,0(sp)
    80002300:	01010413          	addi	s0,sp,16
    mem_free(p);
    80002304:	fffff097          	auipc	ra,0xfffff
    80002308:	e50080e7          	jalr	-432(ra) # 80001154 <_Z8mem_freePv>
}
    8000230c:	00813083          	ld	ra,8(sp)
    80002310:	00013403          	ld	s0,0(sp)
    80002314:	01010113          	addi	sp,sp,16
    80002318:	00008067          	ret

000000008000231c <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	01010413          	addi	s0,sp,16
    mem_free(p);
    8000232c:	fffff097          	auipc	ra,0xfffff
    80002330:	e28080e7          	jalr	-472(ra) # 80001154 <_Z8mem_freePv>
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZN15MemoryAllocator8instanceEv>:
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"

MemoryAllocator& MemoryAllocator::instance() {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00813423          	sd	s0,8(sp)
    8000234c:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    return inst;
}
    80002350:	00004517          	auipc	a0,0x4
    80002354:	aa850513          	addi	a0,a0,-1368 # 80005df8 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80002358:	00813403          	ld	s0,8(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN15MemoryAllocator9kmem_initEv>:

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    80002364:	ff010113          	addi	sp,sp,-16
    80002368:	00813423          	sd	s0,8(sp)
    8000236c:	01010413          	addi	s0,sp,16
    head = (ChunkHeader*) HEAP_START_ADDR;
    80002370:	00004797          	auipc	a5,0x4
    80002374:	9c87b783          	ld	a5,-1592(a5) # 80005d38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002378:	0007b703          	ld	a4,0(a5)
    8000237c:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    80002380:	00073c23          	sd	zero,24(a4)
    head->prev = nullptr;
    80002384:	00053783          	ld	a5,0(a0)
    80002388:	0007b823          	sd	zero,16(a5)
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    8000238c:	00004797          	auipc	a5,0x4
    80002390:	9dc7b783          	ld	a5,-1572(a5) # 80005d68 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002394:	0007b783          	ld	a5,0(a5)
    80002398:	40e787b3          	sub	a5,a5,a4
    8000239c:	00053703          	ld	a4,0(a0)
    800023a0:	fd878793          	addi	a5,a5,-40
    800023a4:	00f73423          	sd	a5,8(a4)
    head->free = true;
    800023a8:	00053783          	ld	a5,0(a0)
    800023ac:	00100713          	li	a4,1
    800023b0:	02e78023          	sb	a4,32(a5)
    head->magic = MAGIC;
    800023b4:	00053703          	ld	a4,0(a0)
    800023b8:	abcdf7b7          	lui	a5,0xabcdf
    800023bc:	f017879b          	addiw	a5,a5,-255
    800023c0:	00f72023          	sw	a5,0(a4)
    return;
} 
    800023c4:	00813403          	ld	s0,8(sp)
    800023c8:	01010113          	addi	sp,sp,16
    800023cc:	00008067          	ret

00000000800023d0 <_ZN15MemoryAllocator10kmem_allocEm>:
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;
    800023d0:	0c058863          	beqz	a1,800024a0 <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
void* MemoryAllocator::kmem_alloc(size_t size) {
    800023d4:	fe010113          	addi	sp,sp,-32
    800023d8:	00113c23          	sd	ra,24(sp)
    800023dc:	00813823          	sd	s0,16(sp)
    800023e0:	00913423          	sd	s1,8(sp)
    800023e4:	01213023          	sd	s2,0(sp)
    800023e8:	02010413          	addi	s0,sp,32
    800023ec:	00050913          	mv	s2,a0

    // aligned size in bytes
    size_t aligned = size * MEM_BLOCK_SIZE;
    800023f0:	00659493          	slli	s1,a1,0x6

    if (!head) kmem_init();
    800023f4:	00053783          	ld	a5,0(a0)
    800023f8:	00078663          	beqz	a5,80002404 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    
    ChunkHeader* curr = head;
    800023fc:	00093503          	ld	a0,0(s2)
    80002400:	0340006f          	j	80002434 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    if (!head) kmem_init();
    80002404:	00000097          	auipc	ra,0x0
    80002408:	f60080e7          	jalr	-160(ra) # 80002364 <_ZN15MemoryAllocator9kmem_initEv>
    8000240c:	ff1ff06f          	j	800023fc <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;
    80002410:	02050023          	sb	zero,32(a0)

                return (void*)((char*)curr + sizeof(ChunkHeader));
    80002414:	02850513          	addi	a0,a0,40

        curr = curr->next;
    }

    return nullptr;
}
    80002418:	01813083          	ld	ra,24(sp)
    8000241c:	01013403          	ld	s0,16(sp)
    80002420:	00813483          	ld	s1,8(sp)
    80002424:	00013903          	ld	s2,0(sp)
    80002428:	02010113          	addi	sp,sp,32
    8000242c:	00008067          	ret
        curr = curr->next;
    80002430:	01853503          	ld	a0,24(a0)
    while (curr) {
    80002434:	fe0502e3          	beqz	a0,80002418 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
        if (curr->free){
    80002438:	02054783          	lbu	a5,32(a0)
    8000243c:	fe078ae3          	beqz	a5,80002430 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
            if (curr->size == aligned){
    80002440:	00853783          	ld	a5,8(a0)
    80002444:	fc9786e3          	beq	a5,s1,80002410 <_ZN15MemoryAllocator10kmem_allocEm+0x40>
            else if (curr->size > aligned + sizeof(ChunkHeader)){
    80002448:	02848713          	addi	a4,s1,40
    8000244c:	fef772e3          	bgeu	a4,a5,80002430 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
                size_t remaining = curr->size - aligned;
    80002450:	409787b3          	sub	a5,a5,s1
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
    80002454:	00e50733          	add	a4,a0,a4
                newChunk->free = true;
    80002458:	00100693          	li	a3,1
    8000245c:	02d70023          	sb	a3,32(a4)
                newChunk->size = remaining - sizeof(ChunkHeader);
    80002460:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd7f58>
    80002464:	00f73423          	sd	a5,8(a4)
                newChunk->next = curr->next;
    80002468:	01853783          	ld	a5,24(a0)
    8000246c:	00f73c23          	sd	a5,24(a4)
                newChunk->prev = curr;
    80002470:	00a73823          	sd	a0,16(a4)
                newChunk->magic = MAGIC;
    80002474:	abcdf7b7          	lui	a5,0xabcdf
    80002478:	f017879b          	addiw	a5,a5,-255
    8000247c:	00f72023          	sw	a5,0(a4)
                if(curr->next) curr->next->prev = newChunk;
    80002480:	01853783          	ld	a5,24(a0)
    80002484:	00078463          	beqz	a5,8000248c <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    80002488:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd7f90>
                curr->next = newChunk;
    8000248c:	00e53c23          	sd	a4,24(a0)
                curr->size = aligned;
    80002490:	00953423          	sd	s1,8(a0)
                curr->free = false;
    80002494:	02050023          	sb	zero,32(a0)
                return (void*)((char*)curr + sizeof(ChunkHeader));
    80002498:	02850513          	addi	a0,a0,40
    8000249c:	f7dff06f          	j	80002418 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    if (size == 0) return nullptr;
    800024a0:	00000513          	li	a0,0
}
    800024a4:	00008067          	ret

00000000800024a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    800024a8:	ff010113          	addi	sp,sp,-16
    800024ac:	00813423          	sd	s0,8(sp)
    800024b0:	01010413          	addi	s0,sp,16
    if(!chunk->free) return;
    800024b4:	0205c783          	lbu	a5,32(a1)
    800024b8:	04078263          	beqz	a5,800024fc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

    //join with next
    if(chunk->next){
    800024bc:	0185b783          	ld	a5,24(a1)
    800024c0:	00078e63          	beqz	a5,800024dc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
    800024c4:	0207c703          	lbu	a4,32(a5)
    800024c8:	00070a63          	beqz	a4,800024dc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    800024cc:	0085b683          	ld	a3,8(a1)
    800024d0:	02868713          	addi	a4,a3,40
    800024d4:	00e58733          	add	a4,a1,a4
    800024d8:	02e78863          	beq	a5,a4,80002508 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
    800024dc:	0105b783          	ld	a5,16(a1)
    800024e0:	00078e63          	beqz	a5,800024fc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
    800024e4:	0207c703          	lbu	a4,32(a5)
    800024e8:	00070a63          	beqz	a4,800024fc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    800024ec:	0087b683          	ld	a3,8(a5)
    800024f0:	02868713          	addi	a4,a3,40
    800024f4:	00e78733          	add	a4,a5,a4
    800024f8:	02b70a63          	beq	a4,a1,8000252c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
    80002508:	0087b703          	ld	a4,8(a5)
    8000250c:	00e686b3          	add	a3,a3,a4
    80002510:	02868693          	addi	a3,a3,40
    80002514:	00d5b423          	sd	a3,8(a1)
            chunk->next = chunk->next->next;
    80002518:	0187b783          	ld	a5,24(a5)
    8000251c:	00f5bc23          	sd	a5,24(a1)
            if (chunk->next)
    80002520:	fa078ee3          	beqz	a5,800024dc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
                chunk->next->prev = chunk;
    80002524:	00b7b823          	sd	a1,16(a5)
    80002528:	fb5ff06f          	j	800024dc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
    8000252c:	0085b703          	ld	a4,8(a1)
    80002530:	00e686b3          	add	a3,a3,a4
    80002534:	02868693          	addi	a3,a3,40
    80002538:	00d7b423          	sd	a3,8(a5)
            chunk->prev->next = chunk->next;
    8000253c:	0105b703          	ld	a4,16(a1)
    80002540:	0185b783          	ld	a5,24(a1)
    80002544:	00f73c23          	sd	a5,24(a4)
            if (chunk->next)
    80002548:	fa078ae3          	beqz	a5,800024fc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
                chunk->next->prev = chunk->prev;
    8000254c:	0105b703          	ld	a4,16(a1)
    80002550:	00e7b823          	sd	a4,16(a5)
            chunk = chunk->prev;
    80002554:	fa9ff06f          	j	800024fc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080002558 <_ZN15MemoryAllocator9kmem_freeEPv>:
    if (!ptr) return -1;
    80002558:	06058c63          	beqz	a1,800025d0 <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    8000255c:	00058793          	mv	a5,a1
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80002560:	00003717          	auipc	a4,0x3
    80002564:	7d873703          	ld	a4,2008(a4) # 80005d38 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002568:	00073703          	ld	a4,0(a4)
    8000256c:	06e5e663          	bltu	a1,a4,800025d8 <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    80002570:	00003717          	auipc	a4,0x3
    80002574:	7f873703          	ld	a4,2040(a4) # 80005d68 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002578:	00073703          	ld	a4,0(a4)
    8000257c:	06b76263          	bltu	a4,a1,800025e0 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    80002580:	fd858593          	addi	a1,a1,-40
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80002584:	fd87a683          	lw	a3,-40(a5)
    80002588:	abcdf737          	lui	a4,0xabcdf
    8000258c:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd7e81>
    80002590:	04e69c63          	bne	a3,a4,800025e8 <_ZN15MemoryAllocator9kmem_freeEPv+0x90>
    80002594:	ff87c703          	lbu	a4,-8(a5)
    80002598:	04071c63          	bnez	a4,800025f0 <_ZN15MemoryAllocator9kmem_freeEPv+0x98>
int MemoryAllocator::kmem_free(void* ptr) {
    8000259c:	ff010113          	addi	sp,sp,-16
    800025a0:	00113423          	sd	ra,8(sp)
    800025a4:	00813023          	sd	s0,0(sp)
    800025a8:	01010413          	addi	s0,sp,16
    chunkHeader->free = true;
    800025ac:	00100713          	li	a4,1
    800025b0:	fee78c23          	sb	a4,-8(a5)
    try_join(chunkHeader);
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	ef4080e7          	jalr	-268(ra) # 800024a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    return 0;
    800025bc:	00000513          	li	a0,0
}
    800025c0:	00813083          	ld	ra,8(sp)
    800025c4:	00013403          	ld	s0,0(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret
    if (!ptr) return -1;
    800025d0:	fff00513          	li	a0,-1
    800025d4:	00008067          	ret
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    800025d8:	ffe00513          	li	a0,-2
    800025dc:	00008067          	ret
    800025e0:	ffe00513          	li	a0,-2
    800025e4:	00008067          	ret
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    800025e8:	ffd00513          	li	a0,-3
    800025ec:	00008067          	ret
    800025f0:	ffd00513          	li	a0,-3
}
    800025f4:	00008067          	ret

00000000800025f8 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    800025f8:	ff010113          	addi	sp,sp,-16
    800025fc:	00813423          	sd	s0,8(sp)
    80002600:	01010413          	addi	s0,sp,16
    80002604:	00100793          	li	a5,1
    80002608:	00f50863          	beq	a0,a5,80002618 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000260c:	00813403          	ld	s0,8(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret
    80002618:	000107b7          	lui	a5,0x10
    8000261c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002620:	fef596e3          	bne	a1,a5,8000260c <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80002624:	00003797          	auipc	a5,0x3
    80002628:	7dc78793          	addi	a5,a5,2012 # 80005e00 <_ZN9Scheduler16readyThreadQueueE>
    8000262c:	0007b023          	sd	zero,0(a5)
    80002630:	0007b423          	sd	zero,8(a5)
    80002634:	0007b823          	sd	zero,16(a5)
    80002638:	fd5ff06f          	j	8000260c <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000263c <_ZN9Scheduler3getEv>:
{
    8000263c:	fe010113          	addi	sp,sp,-32
    80002640:	00113c23          	sd	ra,24(sp)
    80002644:	00813823          	sd	s0,16(sp)
    80002648:	00913423          	sd	s1,8(sp)
    8000264c:	01213023          	sd	s2,0(sp)
    80002650:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002654:	00003497          	auipc	s1,0x3
    80002658:	7ac4b483          	ld	s1,1964(s1) # 80005e00 <_ZN9Scheduler16readyThreadQueueE>
    8000265c:	06048463          	beqz	s1,800026c4 <_ZN9Scheduler3getEv+0x88>
        head = head->next;
    80002660:	0084b783          	ld	a5,8(s1)
    80002664:	00003717          	auipc	a4,0x3
    80002668:	78f73e23          	sd	a5,1948(a4) # 80005e00 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    8000266c:	04078663          	beqz	a5,800026b8 <_ZN9Scheduler3getEv+0x7c>
        T *ret = elem->data;
    80002670:	0004b903          	ld	s2,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    80002674:	00000097          	auipc	ra,0x0
    80002678:	cd0080e7          	jalr	-816(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    8000267c:	00048593          	mv	a1,s1
    80002680:	00000097          	auipc	ra,0x0
    80002684:	ed8080e7          	jalr	-296(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    80002688:	00003717          	auipc	a4,0x3
    8000268c:	77870713          	addi	a4,a4,1912 # 80005e00 <_ZN9Scheduler16readyThreadQueueE>
    80002690:	01073783          	ld	a5,16(a4)
    80002694:	fff78793          	addi	a5,a5,-1
    80002698:	00f73823          	sd	a5,16(a4)
}
    8000269c:	00090513          	mv	a0,s2
    800026a0:	01813083          	ld	ra,24(sp)
    800026a4:	01013403          	ld	s0,16(sp)
    800026a8:	00813483          	ld	s1,8(sp)
    800026ac:	00013903          	ld	s2,0(sp)
    800026b0:	02010113          	addi	sp,sp,32
    800026b4:	00008067          	ret
        if (!head) { tail = 0; }
    800026b8:	00003797          	auipc	a5,0x3
    800026bc:	7407b823          	sd	zero,1872(a5) # 80005e08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800026c0:	fb1ff06f          	j	80002670 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    800026c4:	00048913          	mv	s2,s1
    return readyThreadQueue.removeFirst();
    800026c8:	fd5ff06f          	j	8000269c <_ZN9Scheduler3getEv+0x60>

00000000800026cc <_ZN9Scheduler3putEP3TCB>:
{
    800026cc:	fe010113          	addi	sp,sp,-32
    800026d0:	00113c23          	sd	ra,24(sp)
    800026d4:	00813823          	sd	s0,16(sp)
    800026d8:	00913423          	sd	s1,8(sp)
    800026dc:	02010413          	addi	s0,sp,32
    800026e0:	00050493          	mv	s1,a0
            return MemoryAllocator::instance().kmem_alloc(size);
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	c60080e7          	jalr	-928(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800026ec:	01000593          	li	a1,16
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	ce0080e7          	jalr	-800(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800026f8:	00953023          	sd	s1,0(a0)
    800026fc:	00053423          	sd	zero,8(a0)
        if (tail)
    80002700:	00003797          	auipc	a5,0x3
    80002704:	7087b783          	ld	a5,1800(a5) # 80005e08 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002708:	02078c63          	beqz	a5,80002740 <_ZN9Scheduler3putEP3TCB+0x74>
            tail->next = elem;
    8000270c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002710:	00003797          	auipc	a5,0x3
    80002714:	6ea7bc23          	sd	a0,1784(a5) # 80005e08 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    80002718:	00003717          	auipc	a4,0x3
    8000271c:	6e870713          	addi	a4,a4,1768 # 80005e00 <_ZN9Scheduler16readyThreadQueueE>
    80002720:	01073783          	ld	a5,16(a4)
    80002724:	00178793          	addi	a5,a5,1
    80002728:	00f73823          	sd	a5,16(a4)
    8000272c:	01813083          	ld	ra,24(sp)
    80002730:	01013403          	ld	s0,16(sp)
    80002734:	00813483          	ld	s1,8(sp)
    80002738:	02010113          	addi	sp,sp,32
    8000273c:	00008067          	ret
            head = tail = elem;
    80002740:	00003797          	auipc	a5,0x3
    80002744:	6c078793          	addi	a5,a5,1728 # 80005e00 <_ZN9Scheduler16readyThreadQueueE>
    80002748:	00a7b423          	sd	a0,8(a5)
    8000274c:	00a7b023          	sd	a0,0(a5)
    80002750:	fc9ff06f          	j	80002718 <_ZN9Scheduler3putEP3TCB+0x4c>

0000000080002754 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002754:	ff010113          	addi	sp,sp,-16
    80002758:	00113423          	sd	ra,8(sp)
    8000275c:	00813023          	sd	s0,0(sp)
    80002760:	01010413          	addi	s0,sp,16
    80002764:	000105b7          	lui	a1,0x10
    80002768:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    8000276c:	00100513          	li	a0,1
    80002770:	00000097          	auipc	ra,0x0
    80002774:	e88080e7          	jalr	-376(ra) # 800025f8 <_Z41__static_initialization_and_destruction_0ii>
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN6BufferC1Ei>:
#include "../h/buffer.hpp"

Buffer::Buffer(int cap)
    80002788:	fe010113          	addi	sp,sp,-32
    8000278c:	00113c23          	sd	ra,24(sp)
    80002790:	00813823          	sd	s0,16(sp)
    80002794:	00913423          	sd	s1,8(sp)
    80002798:	01213023          	sd	s2,0(sp)
    8000279c:	02010413          	addi	s0,sp,32
    800027a0:	00050493          	mv	s1,a0
    800027a4:	00058913          	mv	s2,a1
{
    this->cap = cap;
    800027a8:	00b52023          	sw	a1,0(a0)
    head=tail=0;
    800027ac:	00052e23          	sw	zero,28(a0)
    800027b0:	00052c23          	sw	zero,24(a0)
    cnt=0;
    800027b4:	02052423          	sw	zero,40(a0)
    buff = (char*) MemoryAllocator::instance().kmem_alloc(cap*sizeof(char));
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	b8c080e7          	jalr	-1140(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800027c0:	00090593          	mv	a1,s2
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	c0c080e7          	jalr	-1012(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    800027cc:	02a4b023          	sd	a0,32(s1)
        return MemoryAllocator::instance().kmem_alloc(size);
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	b74080e7          	jalr	-1164(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800027d8:	02000593          	li	a1,32
    800027dc:	00000097          	auipc	ra,0x0
    800027e0:	bf4080e7          	jalr	-1036(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    List() : head(0), tail(0), size(0) {}
    800027e4:	00053423          	sd	zero,8(a0)
    800027e8:	00053823          	sd	zero,16(a0)
    800027ec:	00053c23          	sd	zero,24(a0)
        this->value = init;
    800027f0:	00052223          	sw	zero,4(a0)
        this->closed = false;
    800027f4:	00050023          	sb	zero,0(a0)
    itemAvailable = new Semaphore(0);
    800027f8:	00a4b423          	sd	a0,8(s1)
        return MemoryAllocator::instance().kmem_alloc(size);
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	b48080e7          	jalr	-1208(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80002804:	02000593          	li	a1,32
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	bc8080e7          	jalr	-1080(ra) # 800023d0 <_ZN15MemoryAllocator10kmem_allocEm>
    80002810:	00053423          	sd	zero,8(a0)
    80002814:	00053823          	sd	zero,16(a0)
    80002818:	00053c23          	sd	zero,24(a0)
        this->value = init;
    8000281c:	01252223          	sw	s2,4(a0)
        this->closed = false;
    80002820:	00050023          	sb	zero,0(a0)
    spaceAvailable = new Semaphore(cap);
    80002824:	00a4b823          	sd	a0,16(s1)
}
    80002828:	01813083          	ld	ra,24(sp)
    8000282c:	01013403          	ld	s0,16(sp)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	00013903          	ld	s2,0(sp)
    80002838:	02010113          	addi	sp,sp,32
    8000283c:	00008067          	ret

0000000080002840 <_ZN6Buffer3putEc>:

void Buffer::put(char item)
{
    80002840:	fe010113          	addi	sp,sp,-32
    80002844:	00113c23          	sd	ra,24(sp)
    80002848:	00813823          	sd	s0,16(sp)
    8000284c:	00913423          	sd	s1,8(sp)
    80002850:	01213023          	sd	s2,0(sp)
    80002854:	02010413          	addi	s0,sp,32
    80002858:	00050493          	mv	s1,a0
    8000285c:	00058913          	mv	s2,a1
    spaceAvailable->kwait_n(1);
    80002860:	00100593          	li	a1,1
    80002864:	01053503          	ld	a0,16(a0)
    80002868:	fffff097          	auipc	ra,0xfffff
    8000286c:	048080e7          	jalr	72(ra) # 800018b0 <_ZN9Semaphore7kwait_nEj>
    buff[head]=item;
    80002870:	0204b783          	ld	a5,32(s1)
    80002874:	0184a703          	lw	a4,24(s1)
    80002878:	00e787b3          	add	a5,a5,a4
    8000287c:	01278023          	sb	s2,0(a5)
    head = (head+1)%cap;
    80002880:	0184a783          	lw	a5,24(s1)
    80002884:	0017879b          	addiw	a5,a5,1
    80002888:	0004a703          	lw	a4,0(s1)
    8000288c:	02e7e7bb          	remw	a5,a5,a4
    80002890:	00f4ac23          	sw	a5,24(s1)
    cnt++;
    80002894:	0284a783          	lw	a5,40(s1)
    80002898:	0017879b          	addiw	a5,a5,1
    8000289c:	02f4a423          	sw	a5,40(s1)
    itemAvailable->ksignal_n(1);
    800028a0:	00100593          	li	a1,1
    800028a4:	0084b503          	ld	a0,8(s1)
    800028a8:	fffff097          	auipc	ra,0xfffff
    800028ac:	114080e7          	jalr	276(ra) # 800019bc <_ZN9Semaphore9ksignal_nEj>
}
    800028b0:	01813083          	ld	ra,24(sp)
    800028b4:	01013403          	ld	s0,16(sp)
    800028b8:	00813483          	ld	s1,8(sp)
    800028bc:	00013903          	ld	s2,0(sp)
    800028c0:	02010113          	addi	sp,sp,32
    800028c4:	00008067          	ret

00000000800028c8 <_ZN6Buffer3getEv>:

char Buffer::get()
{
    800028c8:	fe010113          	addi	sp,sp,-32
    800028cc:	00113c23          	sd	ra,24(sp)
    800028d0:	00813823          	sd	s0,16(sp)
    800028d4:	00913423          	sd	s1,8(sp)
    800028d8:	01213023          	sd	s2,0(sp)
    800028dc:	02010413          	addi	s0,sp,32
    800028e0:	00050493          	mv	s1,a0
    itemAvailable->kwait_n(1);
    800028e4:	00100593          	li	a1,1
    800028e8:	00853503          	ld	a0,8(a0)
    800028ec:	fffff097          	auipc	ra,0xfffff
    800028f0:	fc4080e7          	jalr	-60(ra) # 800018b0 <_ZN9Semaphore7kwait_nEj>
    char ret = buff[tail];
    800028f4:	0204b703          	ld	a4,32(s1)
    800028f8:	01c4a783          	lw	a5,28(s1)
    800028fc:	00f70733          	add	a4,a4,a5
    80002900:	00074903          	lbu	s2,0(a4)
    tail = (tail+1)%cap;
    80002904:	0017879b          	addiw	a5,a5,1
    80002908:	0004a703          	lw	a4,0(s1)
    8000290c:	02e7e7bb          	remw	a5,a5,a4
    80002910:	00f4ae23          	sw	a5,28(s1)
    cnt--;
    80002914:	0284a783          	lw	a5,40(s1)
    80002918:	fff7879b          	addiw	a5,a5,-1
    8000291c:	02f4a423          	sw	a5,40(s1)
    spaceAvailable->ksignal_n(1);
    80002920:	00100593          	li	a1,1
    80002924:	0104b503          	ld	a0,16(s1)
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	094080e7          	jalr	148(ra) # 800019bc <_ZN9Semaphore9ksignal_nEj>
    return ret;
}
    80002930:	00090513          	mv	a0,s2
    80002934:	01813083          	ld	ra,24(sp)
    80002938:	01013403          	ld	s0,16(sp)
    8000293c:	00813483          	ld	s1,8(sp)
    80002940:	00013903          	ld	s2,0(sp)
    80002944:	02010113          	addi	sp,sp,32
    80002948:	00008067          	ret

000000008000294c <_ZN6BufferD1Ev>:

Buffer::~Buffer()
    8000294c:	fe010113          	addi	sp,sp,-32
    80002950:	00113c23          	sd	ra,24(sp)
    80002954:	00813823          	sd	s0,16(sp)
    80002958:	00913423          	sd	s1,8(sp)
    8000295c:	01213023          	sd	s2,0(sp)
    80002960:	02010413          	addi	s0,sp,32
    80002964:	00050493          	mv	s1,a0
{
    MemoryAllocator::instance().kmem_free(buff);
    80002968:	00000097          	auipc	ra,0x0
    8000296c:	9dc080e7          	jalr	-1572(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    80002970:	0204b583          	ld	a1,32(s1)
    80002974:	00000097          	auipc	ra,0x0
    80002978:	be4080e7          	jalr	-1052(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
    delete itemAvailable;
    8000297c:	0084b903          	ld	s2,8(s1)
    80002980:	00090c63          	beqz	s2,80002998 <_ZN6BufferD1Ev+0x4c>
        MemoryAllocator::instance().kmem_free(ptr);
    80002984:	00000097          	auipc	ra,0x0
    80002988:	9c0080e7          	jalr	-1600(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    8000298c:	00090593          	mv	a1,s2
    80002990:	00000097          	auipc	ra,0x0
    80002994:	bc8080e7          	jalr	-1080(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
    delete spaceAvailable;
    80002998:	0104b483          	ld	s1,16(s1)
    8000299c:	00048c63          	beqz	s1,800029b4 <_ZN6BufferD1Ev+0x68>
    800029a0:	00000097          	auipc	ra,0x0
    800029a4:	9a4080e7          	jalr	-1628(ra) # 80002344 <_ZN15MemoryAllocator8instanceEv>
    800029a8:	00048593          	mv	a1,s1
    800029ac:	00000097          	auipc	ra,0x0
    800029b0:	bac080e7          	jalr	-1108(ra) # 80002558 <_ZN15MemoryAllocator9kmem_freeEPv>
    800029b4:	01813083          	ld	ra,24(sp)
    800029b8:	01013403          	ld	s0,16(sp)
    800029bc:	00813483          	ld	s1,8(sp)
    800029c0:	00013903          	ld	s2,0(sp)
    800029c4:	02010113          	addi	sp,sp,32
    800029c8:	00008067          	ret

00000000800029cc <start>:
    800029cc:	ff010113          	addi	sp,sp,-16
    800029d0:	00813423          	sd	s0,8(sp)
    800029d4:	01010413          	addi	s0,sp,16
    800029d8:	300027f3          	csrr	a5,mstatus
    800029dc:	ffffe737          	lui	a4,0xffffe
    800029e0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff777f>
    800029e4:	00e7f7b3          	and	a5,a5,a4
    800029e8:	00001737          	lui	a4,0x1
    800029ec:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800029f0:	00e7e7b3          	or	a5,a5,a4
    800029f4:	30079073          	csrw	mstatus,a5
    800029f8:	00000797          	auipc	a5,0x0
    800029fc:	16078793          	addi	a5,a5,352 # 80002b58 <system_main>
    80002a00:	34179073          	csrw	mepc,a5
    80002a04:	00000793          	li	a5,0
    80002a08:	18079073          	csrw	satp,a5
    80002a0c:	000107b7          	lui	a5,0x10
    80002a10:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a14:	30279073          	csrw	medeleg,a5
    80002a18:	30379073          	csrw	mideleg,a5
    80002a1c:	104027f3          	csrr	a5,sie
    80002a20:	2227e793          	ori	a5,a5,546
    80002a24:	10479073          	csrw	sie,a5
    80002a28:	fff00793          	li	a5,-1
    80002a2c:	00a7d793          	srli	a5,a5,0xa
    80002a30:	3b079073          	csrw	pmpaddr0,a5
    80002a34:	00f00793          	li	a5,15
    80002a38:	3a079073          	csrw	pmpcfg0,a5
    80002a3c:	f14027f3          	csrr	a5,mhartid
    80002a40:	0200c737          	lui	a4,0x200c
    80002a44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002a48:	0007869b          	sext.w	a3,a5
    80002a4c:	00269713          	slli	a4,a3,0x2
    80002a50:	000f4637          	lui	a2,0xf4
    80002a54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002a58:	00d70733          	add	a4,a4,a3
    80002a5c:	0037979b          	slliw	a5,a5,0x3
    80002a60:	020046b7          	lui	a3,0x2004
    80002a64:	00d787b3          	add	a5,a5,a3
    80002a68:	00c585b3          	add	a1,a1,a2
    80002a6c:	00371693          	slli	a3,a4,0x3
    80002a70:	00003717          	auipc	a4,0x3
    80002a74:	3b070713          	addi	a4,a4,944 # 80005e20 <timer_scratch>
    80002a78:	00b7b023          	sd	a1,0(a5)
    80002a7c:	00d70733          	add	a4,a4,a3
    80002a80:	00f73c23          	sd	a5,24(a4)
    80002a84:	02c73023          	sd	a2,32(a4)
    80002a88:	34071073          	csrw	mscratch,a4
    80002a8c:	00000797          	auipc	a5,0x0
    80002a90:	6e478793          	addi	a5,a5,1764 # 80003170 <timervec>
    80002a94:	30579073          	csrw	mtvec,a5
    80002a98:	300027f3          	csrr	a5,mstatus
    80002a9c:	0087e793          	ori	a5,a5,8
    80002aa0:	30079073          	csrw	mstatus,a5
    80002aa4:	304027f3          	csrr	a5,mie
    80002aa8:	0807e793          	ori	a5,a5,128
    80002aac:	30479073          	csrw	mie,a5
    80002ab0:	f14027f3          	csrr	a5,mhartid
    80002ab4:	0007879b          	sext.w	a5,a5
    80002ab8:	00078213          	mv	tp,a5
    80002abc:	30200073          	mret
    80002ac0:	00813403          	ld	s0,8(sp)
    80002ac4:	01010113          	addi	sp,sp,16
    80002ac8:	00008067          	ret

0000000080002acc <timerinit>:
    80002acc:	ff010113          	addi	sp,sp,-16
    80002ad0:	00813423          	sd	s0,8(sp)
    80002ad4:	01010413          	addi	s0,sp,16
    80002ad8:	f14027f3          	csrr	a5,mhartid
    80002adc:	0200c737          	lui	a4,0x200c
    80002ae0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80002ae4:	0007869b          	sext.w	a3,a5
    80002ae8:	00269713          	slli	a4,a3,0x2
    80002aec:	000f4637          	lui	a2,0xf4
    80002af0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80002af4:	00d70733          	add	a4,a4,a3
    80002af8:	0037979b          	slliw	a5,a5,0x3
    80002afc:	020046b7          	lui	a3,0x2004
    80002b00:	00d787b3          	add	a5,a5,a3
    80002b04:	00c585b3          	add	a1,a1,a2
    80002b08:	00371693          	slli	a3,a4,0x3
    80002b0c:	00003717          	auipc	a4,0x3
    80002b10:	31470713          	addi	a4,a4,788 # 80005e20 <timer_scratch>
    80002b14:	00b7b023          	sd	a1,0(a5)
    80002b18:	00d70733          	add	a4,a4,a3
    80002b1c:	00f73c23          	sd	a5,24(a4)
    80002b20:	02c73023          	sd	a2,32(a4)
    80002b24:	34071073          	csrw	mscratch,a4
    80002b28:	00000797          	auipc	a5,0x0
    80002b2c:	64878793          	addi	a5,a5,1608 # 80003170 <timervec>
    80002b30:	30579073          	csrw	mtvec,a5
    80002b34:	300027f3          	csrr	a5,mstatus
    80002b38:	0087e793          	ori	a5,a5,8
    80002b3c:	30079073          	csrw	mstatus,a5
    80002b40:	304027f3          	csrr	a5,mie
    80002b44:	0807e793          	ori	a5,a5,128
    80002b48:	30479073          	csrw	mie,a5
    80002b4c:	00813403          	ld	s0,8(sp)
    80002b50:	01010113          	addi	sp,sp,16
    80002b54:	00008067          	ret

0000000080002b58 <system_main>:
    80002b58:	fe010113          	addi	sp,sp,-32
    80002b5c:	00813823          	sd	s0,16(sp)
    80002b60:	00913423          	sd	s1,8(sp)
    80002b64:	00113c23          	sd	ra,24(sp)
    80002b68:	02010413          	addi	s0,sp,32
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	0c4080e7          	jalr	196(ra) # 80002c30 <cpuid>
    80002b74:	00003497          	auipc	s1,0x3
    80002b78:	21c48493          	addi	s1,s1,540 # 80005d90 <started>
    80002b7c:	02050263          	beqz	a0,80002ba0 <system_main+0x48>
    80002b80:	0004a783          	lw	a5,0(s1)
    80002b84:	0007879b          	sext.w	a5,a5
    80002b88:	fe078ce3          	beqz	a5,80002b80 <system_main+0x28>
    80002b8c:	0ff0000f          	fence
    80002b90:	00002517          	auipc	a0,0x2
    80002b94:	5d050513          	addi	a0,a0,1488 # 80005160 <CONSOLE_STATUS+0x150>
    80002b98:	00001097          	auipc	ra,0x1
    80002b9c:	a74080e7          	jalr	-1420(ra) # 8000360c <panic>
    80002ba0:	00001097          	auipc	ra,0x1
    80002ba4:	9c8080e7          	jalr	-1592(ra) # 80003568 <consoleinit>
    80002ba8:	00001097          	auipc	ra,0x1
    80002bac:	154080e7          	jalr	340(ra) # 80003cfc <printfinit>
    80002bb0:	00002517          	auipc	a0,0x2
    80002bb4:	69050513          	addi	a0,a0,1680 # 80005240 <CONSOLE_STATUS+0x230>
    80002bb8:	00001097          	auipc	ra,0x1
    80002bbc:	ab0080e7          	jalr	-1360(ra) # 80003668 <__printf>
    80002bc0:	00002517          	auipc	a0,0x2
    80002bc4:	57050513          	addi	a0,a0,1392 # 80005130 <CONSOLE_STATUS+0x120>
    80002bc8:	00001097          	auipc	ra,0x1
    80002bcc:	aa0080e7          	jalr	-1376(ra) # 80003668 <__printf>
    80002bd0:	00002517          	auipc	a0,0x2
    80002bd4:	67050513          	addi	a0,a0,1648 # 80005240 <CONSOLE_STATUS+0x230>
    80002bd8:	00001097          	auipc	ra,0x1
    80002bdc:	a90080e7          	jalr	-1392(ra) # 80003668 <__printf>
    80002be0:	00001097          	auipc	ra,0x1
    80002be4:	4a8080e7          	jalr	1192(ra) # 80004088 <kinit>
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	148080e7          	jalr	328(ra) # 80002d30 <trapinit>
    80002bf0:	00000097          	auipc	ra,0x0
    80002bf4:	16c080e7          	jalr	364(ra) # 80002d5c <trapinithart>
    80002bf8:	00000097          	auipc	ra,0x0
    80002bfc:	5b8080e7          	jalr	1464(ra) # 800031b0 <plicinit>
    80002c00:	00000097          	auipc	ra,0x0
    80002c04:	5d8080e7          	jalr	1496(ra) # 800031d8 <plicinithart>
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	078080e7          	jalr	120(ra) # 80002c80 <userinit>
    80002c10:	0ff0000f          	fence
    80002c14:	00100793          	li	a5,1
    80002c18:	00002517          	auipc	a0,0x2
    80002c1c:	53050513          	addi	a0,a0,1328 # 80005148 <CONSOLE_STATUS+0x138>
    80002c20:	00f4a023          	sw	a5,0(s1)
    80002c24:	00001097          	auipc	ra,0x1
    80002c28:	a44080e7          	jalr	-1468(ra) # 80003668 <__printf>
    80002c2c:	0000006f          	j	80002c2c <system_main+0xd4>

0000000080002c30 <cpuid>:
    80002c30:	ff010113          	addi	sp,sp,-16
    80002c34:	00813423          	sd	s0,8(sp)
    80002c38:	01010413          	addi	s0,sp,16
    80002c3c:	00020513          	mv	a0,tp
    80002c40:	00813403          	ld	s0,8(sp)
    80002c44:	0005051b          	sext.w	a0,a0
    80002c48:	01010113          	addi	sp,sp,16
    80002c4c:	00008067          	ret

0000000080002c50 <mycpu>:
    80002c50:	ff010113          	addi	sp,sp,-16
    80002c54:	00813423          	sd	s0,8(sp)
    80002c58:	01010413          	addi	s0,sp,16
    80002c5c:	00020793          	mv	a5,tp
    80002c60:	00813403          	ld	s0,8(sp)
    80002c64:	0007879b          	sext.w	a5,a5
    80002c68:	00779793          	slli	a5,a5,0x7
    80002c6c:	00004517          	auipc	a0,0x4
    80002c70:	1e450513          	addi	a0,a0,484 # 80006e50 <cpus>
    80002c74:	00f50533          	add	a0,a0,a5
    80002c78:	01010113          	addi	sp,sp,16
    80002c7c:	00008067          	ret

0000000080002c80 <userinit>:
    80002c80:	ff010113          	addi	sp,sp,-16
    80002c84:	00813423          	sd	s0,8(sp)
    80002c88:	01010413          	addi	s0,sp,16
    80002c8c:	00813403          	ld	s0,8(sp)
    80002c90:	01010113          	addi	sp,sp,16
    80002c94:	fffff317          	auipc	t1,0xfffff
    80002c98:	fc430067          	jr	-60(t1) # 80001c58 <main>

0000000080002c9c <either_copyout>:
    80002c9c:	ff010113          	addi	sp,sp,-16
    80002ca0:	00813023          	sd	s0,0(sp)
    80002ca4:	00113423          	sd	ra,8(sp)
    80002ca8:	01010413          	addi	s0,sp,16
    80002cac:	02051663          	bnez	a0,80002cd8 <either_copyout+0x3c>
    80002cb0:	00058513          	mv	a0,a1
    80002cb4:	00060593          	mv	a1,a2
    80002cb8:	0006861b          	sext.w	a2,a3
    80002cbc:	00002097          	auipc	ra,0x2
    80002cc0:	c58080e7          	jalr	-936(ra) # 80004914 <__memmove>
    80002cc4:	00813083          	ld	ra,8(sp)
    80002cc8:	00013403          	ld	s0,0(sp)
    80002ccc:	00000513          	li	a0,0
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret
    80002cd8:	00002517          	auipc	a0,0x2
    80002cdc:	4b050513          	addi	a0,a0,1200 # 80005188 <CONSOLE_STATUS+0x178>
    80002ce0:	00001097          	auipc	ra,0x1
    80002ce4:	92c080e7          	jalr	-1748(ra) # 8000360c <panic>

0000000080002ce8 <either_copyin>:
    80002ce8:	ff010113          	addi	sp,sp,-16
    80002cec:	00813023          	sd	s0,0(sp)
    80002cf0:	00113423          	sd	ra,8(sp)
    80002cf4:	01010413          	addi	s0,sp,16
    80002cf8:	02059463          	bnez	a1,80002d20 <either_copyin+0x38>
    80002cfc:	00060593          	mv	a1,a2
    80002d00:	0006861b          	sext.w	a2,a3
    80002d04:	00002097          	auipc	ra,0x2
    80002d08:	c10080e7          	jalr	-1008(ra) # 80004914 <__memmove>
    80002d0c:	00813083          	ld	ra,8(sp)
    80002d10:	00013403          	ld	s0,0(sp)
    80002d14:	00000513          	li	a0,0
    80002d18:	01010113          	addi	sp,sp,16
    80002d1c:	00008067          	ret
    80002d20:	00002517          	auipc	a0,0x2
    80002d24:	49050513          	addi	a0,a0,1168 # 800051b0 <CONSOLE_STATUS+0x1a0>
    80002d28:	00001097          	auipc	ra,0x1
    80002d2c:	8e4080e7          	jalr	-1820(ra) # 8000360c <panic>

0000000080002d30 <trapinit>:
    80002d30:	ff010113          	addi	sp,sp,-16
    80002d34:	00813423          	sd	s0,8(sp)
    80002d38:	01010413          	addi	s0,sp,16
    80002d3c:	00813403          	ld	s0,8(sp)
    80002d40:	00002597          	auipc	a1,0x2
    80002d44:	49858593          	addi	a1,a1,1176 # 800051d8 <CONSOLE_STATUS+0x1c8>
    80002d48:	00004517          	auipc	a0,0x4
    80002d4c:	18850513          	addi	a0,a0,392 # 80006ed0 <tickslock>
    80002d50:	01010113          	addi	sp,sp,16
    80002d54:	00001317          	auipc	t1,0x1
    80002d58:	5c430067          	jr	1476(t1) # 80004318 <initlock>

0000000080002d5c <trapinithart>:
    80002d5c:	ff010113          	addi	sp,sp,-16
    80002d60:	00813423          	sd	s0,8(sp)
    80002d64:	01010413          	addi	s0,sp,16
    80002d68:	00000797          	auipc	a5,0x0
    80002d6c:	2f878793          	addi	a5,a5,760 # 80003060 <kernelvec>
    80002d70:	10579073          	csrw	stvec,a5
    80002d74:	00813403          	ld	s0,8(sp)
    80002d78:	01010113          	addi	sp,sp,16
    80002d7c:	00008067          	ret

0000000080002d80 <usertrap>:
    80002d80:	ff010113          	addi	sp,sp,-16
    80002d84:	00813423          	sd	s0,8(sp)
    80002d88:	01010413          	addi	s0,sp,16
    80002d8c:	00813403          	ld	s0,8(sp)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret

0000000080002d98 <usertrapret>:
    80002d98:	ff010113          	addi	sp,sp,-16
    80002d9c:	00813423          	sd	s0,8(sp)
    80002da0:	01010413          	addi	s0,sp,16
    80002da4:	00813403          	ld	s0,8(sp)
    80002da8:	01010113          	addi	sp,sp,16
    80002dac:	00008067          	ret

0000000080002db0 <kerneltrap>:
    80002db0:	fe010113          	addi	sp,sp,-32
    80002db4:	00813823          	sd	s0,16(sp)
    80002db8:	00113c23          	sd	ra,24(sp)
    80002dbc:	00913423          	sd	s1,8(sp)
    80002dc0:	02010413          	addi	s0,sp,32
    80002dc4:	142025f3          	csrr	a1,scause
    80002dc8:	100027f3          	csrr	a5,sstatus
    80002dcc:	0027f793          	andi	a5,a5,2
    80002dd0:	10079c63          	bnez	a5,80002ee8 <kerneltrap+0x138>
    80002dd4:	142027f3          	csrr	a5,scause
    80002dd8:	0207ce63          	bltz	a5,80002e14 <kerneltrap+0x64>
    80002ddc:	00002517          	auipc	a0,0x2
    80002de0:	44450513          	addi	a0,a0,1092 # 80005220 <CONSOLE_STATUS+0x210>
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	884080e7          	jalr	-1916(ra) # 80003668 <__printf>
    80002dec:	141025f3          	csrr	a1,sepc
    80002df0:	14302673          	csrr	a2,stval
    80002df4:	00002517          	auipc	a0,0x2
    80002df8:	43c50513          	addi	a0,a0,1084 # 80005230 <CONSOLE_STATUS+0x220>
    80002dfc:	00001097          	auipc	ra,0x1
    80002e00:	86c080e7          	jalr	-1940(ra) # 80003668 <__printf>
    80002e04:	00002517          	auipc	a0,0x2
    80002e08:	44450513          	addi	a0,a0,1092 # 80005248 <CONSOLE_STATUS+0x238>
    80002e0c:	00001097          	auipc	ra,0x1
    80002e10:	800080e7          	jalr	-2048(ra) # 8000360c <panic>
    80002e14:	0ff7f713          	andi	a4,a5,255
    80002e18:	00900693          	li	a3,9
    80002e1c:	04d70063          	beq	a4,a3,80002e5c <kerneltrap+0xac>
    80002e20:	fff00713          	li	a4,-1
    80002e24:	03f71713          	slli	a4,a4,0x3f
    80002e28:	00170713          	addi	a4,a4,1
    80002e2c:	fae798e3          	bne	a5,a4,80002ddc <kerneltrap+0x2c>
    80002e30:	00000097          	auipc	ra,0x0
    80002e34:	e00080e7          	jalr	-512(ra) # 80002c30 <cpuid>
    80002e38:	06050663          	beqz	a0,80002ea4 <kerneltrap+0xf4>
    80002e3c:	144027f3          	csrr	a5,sip
    80002e40:	ffd7f793          	andi	a5,a5,-3
    80002e44:	14479073          	csrw	sip,a5
    80002e48:	01813083          	ld	ra,24(sp)
    80002e4c:	01013403          	ld	s0,16(sp)
    80002e50:	00813483          	ld	s1,8(sp)
    80002e54:	02010113          	addi	sp,sp,32
    80002e58:	00008067          	ret
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	3c8080e7          	jalr	968(ra) # 80003224 <plic_claim>
    80002e64:	00a00793          	li	a5,10
    80002e68:	00050493          	mv	s1,a0
    80002e6c:	06f50863          	beq	a0,a5,80002edc <kerneltrap+0x12c>
    80002e70:	fc050ce3          	beqz	a0,80002e48 <kerneltrap+0x98>
    80002e74:	00050593          	mv	a1,a0
    80002e78:	00002517          	auipc	a0,0x2
    80002e7c:	38850513          	addi	a0,a0,904 # 80005200 <CONSOLE_STATUS+0x1f0>
    80002e80:	00000097          	auipc	ra,0x0
    80002e84:	7e8080e7          	jalr	2024(ra) # 80003668 <__printf>
    80002e88:	01013403          	ld	s0,16(sp)
    80002e8c:	01813083          	ld	ra,24(sp)
    80002e90:	00048513          	mv	a0,s1
    80002e94:	00813483          	ld	s1,8(sp)
    80002e98:	02010113          	addi	sp,sp,32
    80002e9c:	00000317          	auipc	t1,0x0
    80002ea0:	3c030067          	jr	960(t1) # 8000325c <plic_complete>
    80002ea4:	00004517          	auipc	a0,0x4
    80002ea8:	02c50513          	addi	a0,a0,44 # 80006ed0 <tickslock>
    80002eac:	00001097          	auipc	ra,0x1
    80002eb0:	490080e7          	jalr	1168(ra) # 8000433c <acquire>
    80002eb4:	00003717          	auipc	a4,0x3
    80002eb8:	ee070713          	addi	a4,a4,-288 # 80005d94 <ticks>
    80002ebc:	00072783          	lw	a5,0(a4)
    80002ec0:	00004517          	auipc	a0,0x4
    80002ec4:	01050513          	addi	a0,a0,16 # 80006ed0 <tickslock>
    80002ec8:	0017879b          	addiw	a5,a5,1
    80002ecc:	00f72023          	sw	a5,0(a4)
    80002ed0:	00001097          	auipc	ra,0x1
    80002ed4:	538080e7          	jalr	1336(ra) # 80004408 <release>
    80002ed8:	f65ff06f          	j	80002e3c <kerneltrap+0x8c>
    80002edc:	00001097          	auipc	ra,0x1
    80002ee0:	094080e7          	jalr	148(ra) # 80003f70 <uartintr>
    80002ee4:	fa5ff06f          	j	80002e88 <kerneltrap+0xd8>
    80002ee8:	00002517          	auipc	a0,0x2
    80002eec:	2f850513          	addi	a0,a0,760 # 800051e0 <CONSOLE_STATUS+0x1d0>
    80002ef0:	00000097          	auipc	ra,0x0
    80002ef4:	71c080e7          	jalr	1820(ra) # 8000360c <panic>

0000000080002ef8 <clockintr>:
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00813823          	sd	s0,16(sp)
    80002f00:	00913423          	sd	s1,8(sp)
    80002f04:	00113c23          	sd	ra,24(sp)
    80002f08:	02010413          	addi	s0,sp,32
    80002f0c:	00004497          	auipc	s1,0x4
    80002f10:	fc448493          	addi	s1,s1,-60 # 80006ed0 <tickslock>
    80002f14:	00048513          	mv	a0,s1
    80002f18:	00001097          	auipc	ra,0x1
    80002f1c:	424080e7          	jalr	1060(ra) # 8000433c <acquire>
    80002f20:	00003717          	auipc	a4,0x3
    80002f24:	e7470713          	addi	a4,a4,-396 # 80005d94 <ticks>
    80002f28:	00072783          	lw	a5,0(a4)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	01813083          	ld	ra,24(sp)
    80002f34:	00048513          	mv	a0,s1
    80002f38:	0017879b          	addiw	a5,a5,1
    80002f3c:	00813483          	ld	s1,8(sp)
    80002f40:	00f72023          	sw	a5,0(a4)
    80002f44:	02010113          	addi	sp,sp,32
    80002f48:	00001317          	auipc	t1,0x1
    80002f4c:	4c030067          	jr	1216(t1) # 80004408 <release>

0000000080002f50 <devintr>:
    80002f50:	142027f3          	csrr	a5,scause
    80002f54:	00000513          	li	a0,0
    80002f58:	0007c463          	bltz	a5,80002f60 <devintr+0x10>
    80002f5c:	00008067          	ret
    80002f60:	fe010113          	addi	sp,sp,-32
    80002f64:	00813823          	sd	s0,16(sp)
    80002f68:	00113c23          	sd	ra,24(sp)
    80002f6c:	00913423          	sd	s1,8(sp)
    80002f70:	02010413          	addi	s0,sp,32
    80002f74:	0ff7f713          	andi	a4,a5,255
    80002f78:	00900693          	li	a3,9
    80002f7c:	04d70c63          	beq	a4,a3,80002fd4 <devintr+0x84>
    80002f80:	fff00713          	li	a4,-1
    80002f84:	03f71713          	slli	a4,a4,0x3f
    80002f88:	00170713          	addi	a4,a4,1
    80002f8c:	00e78c63          	beq	a5,a4,80002fa4 <devintr+0x54>
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	00813483          	ld	s1,8(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret
    80002fa4:	00000097          	auipc	ra,0x0
    80002fa8:	c8c080e7          	jalr	-884(ra) # 80002c30 <cpuid>
    80002fac:	06050663          	beqz	a0,80003018 <devintr+0xc8>
    80002fb0:	144027f3          	csrr	a5,sip
    80002fb4:	ffd7f793          	andi	a5,a5,-3
    80002fb8:	14479073          	csrw	sip,a5
    80002fbc:	01813083          	ld	ra,24(sp)
    80002fc0:	01013403          	ld	s0,16(sp)
    80002fc4:	00813483          	ld	s1,8(sp)
    80002fc8:	00200513          	li	a0,2
    80002fcc:	02010113          	addi	sp,sp,32
    80002fd0:	00008067          	ret
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	250080e7          	jalr	592(ra) # 80003224 <plic_claim>
    80002fdc:	00a00793          	li	a5,10
    80002fe0:	00050493          	mv	s1,a0
    80002fe4:	06f50663          	beq	a0,a5,80003050 <devintr+0x100>
    80002fe8:	00100513          	li	a0,1
    80002fec:	fa0482e3          	beqz	s1,80002f90 <devintr+0x40>
    80002ff0:	00048593          	mv	a1,s1
    80002ff4:	00002517          	auipc	a0,0x2
    80002ff8:	20c50513          	addi	a0,a0,524 # 80005200 <CONSOLE_STATUS+0x1f0>
    80002ffc:	00000097          	auipc	ra,0x0
    80003000:	66c080e7          	jalr	1644(ra) # 80003668 <__printf>
    80003004:	00048513          	mv	a0,s1
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	254080e7          	jalr	596(ra) # 8000325c <plic_complete>
    80003010:	00100513          	li	a0,1
    80003014:	f7dff06f          	j	80002f90 <devintr+0x40>
    80003018:	00004517          	auipc	a0,0x4
    8000301c:	eb850513          	addi	a0,a0,-328 # 80006ed0 <tickslock>
    80003020:	00001097          	auipc	ra,0x1
    80003024:	31c080e7          	jalr	796(ra) # 8000433c <acquire>
    80003028:	00003717          	auipc	a4,0x3
    8000302c:	d6c70713          	addi	a4,a4,-660 # 80005d94 <ticks>
    80003030:	00072783          	lw	a5,0(a4)
    80003034:	00004517          	auipc	a0,0x4
    80003038:	e9c50513          	addi	a0,a0,-356 # 80006ed0 <tickslock>
    8000303c:	0017879b          	addiw	a5,a5,1
    80003040:	00f72023          	sw	a5,0(a4)
    80003044:	00001097          	auipc	ra,0x1
    80003048:	3c4080e7          	jalr	964(ra) # 80004408 <release>
    8000304c:	f65ff06f          	j	80002fb0 <devintr+0x60>
    80003050:	00001097          	auipc	ra,0x1
    80003054:	f20080e7          	jalr	-224(ra) # 80003f70 <uartintr>
    80003058:	fadff06f          	j	80003004 <devintr+0xb4>
    8000305c:	0000                	unimp
	...

0000000080003060 <kernelvec>:
    80003060:	f0010113          	addi	sp,sp,-256
    80003064:	00113023          	sd	ra,0(sp)
    80003068:	00213423          	sd	sp,8(sp)
    8000306c:	00313823          	sd	gp,16(sp)
    80003070:	00413c23          	sd	tp,24(sp)
    80003074:	02513023          	sd	t0,32(sp)
    80003078:	02613423          	sd	t1,40(sp)
    8000307c:	02713823          	sd	t2,48(sp)
    80003080:	02813c23          	sd	s0,56(sp)
    80003084:	04913023          	sd	s1,64(sp)
    80003088:	04a13423          	sd	a0,72(sp)
    8000308c:	04b13823          	sd	a1,80(sp)
    80003090:	04c13c23          	sd	a2,88(sp)
    80003094:	06d13023          	sd	a3,96(sp)
    80003098:	06e13423          	sd	a4,104(sp)
    8000309c:	06f13823          	sd	a5,112(sp)
    800030a0:	07013c23          	sd	a6,120(sp)
    800030a4:	09113023          	sd	a7,128(sp)
    800030a8:	09213423          	sd	s2,136(sp)
    800030ac:	09313823          	sd	s3,144(sp)
    800030b0:	09413c23          	sd	s4,152(sp)
    800030b4:	0b513023          	sd	s5,160(sp)
    800030b8:	0b613423          	sd	s6,168(sp)
    800030bc:	0b713823          	sd	s7,176(sp)
    800030c0:	0b813c23          	sd	s8,184(sp)
    800030c4:	0d913023          	sd	s9,192(sp)
    800030c8:	0da13423          	sd	s10,200(sp)
    800030cc:	0db13823          	sd	s11,208(sp)
    800030d0:	0dc13c23          	sd	t3,216(sp)
    800030d4:	0fd13023          	sd	t4,224(sp)
    800030d8:	0fe13423          	sd	t5,232(sp)
    800030dc:	0ff13823          	sd	t6,240(sp)
    800030e0:	cd1ff0ef          	jal	ra,80002db0 <kerneltrap>
    800030e4:	00013083          	ld	ra,0(sp)
    800030e8:	00813103          	ld	sp,8(sp)
    800030ec:	01013183          	ld	gp,16(sp)
    800030f0:	02013283          	ld	t0,32(sp)
    800030f4:	02813303          	ld	t1,40(sp)
    800030f8:	03013383          	ld	t2,48(sp)
    800030fc:	03813403          	ld	s0,56(sp)
    80003100:	04013483          	ld	s1,64(sp)
    80003104:	04813503          	ld	a0,72(sp)
    80003108:	05013583          	ld	a1,80(sp)
    8000310c:	05813603          	ld	a2,88(sp)
    80003110:	06013683          	ld	a3,96(sp)
    80003114:	06813703          	ld	a4,104(sp)
    80003118:	07013783          	ld	a5,112(sp)
    8000311c:	07813803          	ld	a6,120(sp)
    80003120:	08013883          	ld	a7,128(sp)
    80003124:	08813903          	ld	s2,136(sp)
    80003128:	09013983          	ld	s3,144(sp)
    8000312c:	09813a03          	ld	s4,152(sp)
    80003130:	0a013a83          	ld	s5,160(sp)
    80003134:	0a813b03          	ld	s6,168(sp)
    80003138:	0b013b83          	ld	s7,176(sp)
    8000313c:	0b813c03          	ld	s8,184(sp)
    80003140:	0c013c83          	ld	s9,192(sp)
    80003144:	0c813d03          	ld	s10,200(sp)
    80003148:	0d013d83          	ld	s11,208(sp)
    8000314c:	0d813e03          	ld	t3,216(sp)
    80003150:	0e013e83          	ld	t4,224(sp)
    80003154:	0e813f03          	ld	t5,232(sp)
    80003158:	0f013f83          	ld	t6,240(sp)
    8000315c:	10010113          	addi	sp,sp,256
    80003160:	10200073          	sret
    80003164:	00000013          	nop
    80003168:	00000013          	nop
    8000316c:	00000013          	nop

0000000080003170 <timervec>:
    80003170:	34051573          	csrrw	a0,mscratch,a0
    80003174:	00b53023          	sd	a1,0(a0)
    80003178:	00c53423          	sd	a2,8(a0)
    8000317c:	00d53823          	sd	a3,16(a0)
    80003180:	01853583          	ld	a1,24(a0)
    80003184:	02053603          	ld	a2,32(a0)
    80003188:	0005b683          	ld	a3,0(a1)
    8000318c:	00c686b3          	add	a3,a3,a2
    80003190:	00d5b023          	sd	a3,0(a1)
    80003194:	00200593          	li	a1,2
    80003198:	14459073          	csrw	sip,a1
    8000319c:	01053683          	ld	a3,16(a0)
    800031a0:	00853603          	ld	a2,8(a0)
    800031a4:	00053583          	ld	a1,0(a0)
    800031a8:	34051573          	csrrw	a0,mscratch,a0
    800031ac:	30200073          	mret

00000000800031b0 <plicinit>:
    800031b0:	ff010113          	addi	sp,sp,-16
    800031b4:	00813423          	sd	s0,8(sp)
    800031b8:	01010413          	addi	s0,sp,16
    800031bc:	00813403          	ld	s0,8(sp)
    800031c0:	0c0007b7          	lui	a5,0xc000
    800031c4:	00100713          	li	a4,1
    800031c8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800031cc:	00e7a223          	sw	a4,4(a5)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret

00000000800031d8 <plicinithart>:
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00813023          	sd	s0,0(sp)
    800031e0:	00113423          	sd	ra,8(sp)
    800031e4:	01010413          	addi	s0,sp,16
    800031e8:	00000097          	auipc	ra,0x0
    800031ec:	a48080e7          	jalr	-1464(ra) # 80002c30 <cpuid>
    800031f0:	0085171b          	slliw	a4,a0,0x8
    800031f4:	0c0027b7          	lui	a5,0xc002
    800031f8:	00e787b3          	add	a5,a5,a4
    800031fc:	40200713          	li	a4,1026
    80003200:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003204:	00813083          	ld	ra,8(sp)
    80003208:	00013403          	ld	s0,0(sp)
    8000320c:	00d5151b          	slliw	a0,a0,0xd
    80003210:	0c2017b7          	lui	a5,0xc201
    80003214:	00a78533          	add	a0,a5,a0
    80003218:	00052023          	sw	zero,0(a0)
    8000321c:	01010113          	addi	sp,sp,16
    80003220:	00008067          	ret

0000000080003224 <plic_claim>:
    80003224:	ff010113          	addi	sp,sp,-16
    80003228:	00813023          	sd	s0,0(sp)
    8000322c:	00113423          	sd	ra,8(sp)
    80003230:	01010413          	addi	s0,sp,16
    80003234:	00000097          	auipc	ra,0x0
    80003238:	9fc080e7          	jalr	-1540(ra) # 80002c30 <cpuid>
    8000323c:	00813083          	ld	ra,8(sp)
    80003240:	00013403          	ld	s0,0(sp)
    80003244:	00d5151b          	slliw	a0,a0,0xd
    80003248:	0c2017b7          	lui	a5,0xc201
    8000324c:	00a78533          	add	a0,a5,a0
    80003250:	00452503          	lw	a0,4(a0)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret

000000008000325c <plic_complete>:
    8000325c:	fe010113          	addi	sp,sp,-32
    80003260:	00813823          	sd	s0,16(sp)
    80003264:	00913423          	sd	s1,8(sp)
    80003268:	00113c23          	sd	ra,24(sp)
    8000326c:	02010413          	addi	s0,sp,32
    80003270:	00050493          	mv	s1,a0
    80003274:	00000097          	auipc	ra,0x0
    80003278:	9bc080e7          	jalr	-1604(ra) # 80002c30 <cpuid>
    8000327c:	01813083          	ld	ra,24(sp)
    80003280:	01013403          	ld	s0,16(sp)
    80003284:	00d5179b          	slliw	a5,a0,0xd
    80003288:	0c201737          	lui	a4,0xc201
    8000328c:	00f707b3          	add	a5,a4,a5
    80003290:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003294:	00813483          	ld	s1,8(sp)
    80003298:	02010113          	addi	sp,sp,32
    8000329c:	00008067          	ret

00000000800032a0 <consolewrite>:
    800032a0:	fb010113          	addi	sp,sp,-80
    800032a4:	04813023          	sd	s0,64(sp)
    800032a8:	04113423          	sd	ra,72(sp)
    800032ac:	02913c23          	sd	s1,56(sp)
    800032b0:	03213823          	sd	s2,48(sp)
    800032b4:	03313423          	sd	s3,40(sp)
    800032b8:	03413023          	sd	s4,32(sp)
    800032bc:	01513c23          	sd	s5,24(sp)
    800032c0:	05010413          	addi	s0,sp,80
    800032c4:	06c05c63          	blez	a2,8000333c <consolewrite+0x9c>
    800032c8:	00060993          	mv	s3,a2
    800032cc:	00050a13          	mv	s4,a0
    800032d0:	00058493          	mv	s1,a1
    800032d4:	00000913          	li	s2,0
    800032d8:	fff00a93          	li	s5,-1
    800032dc:	01c0006f          	j	800032f8 <consolewrite+0x58>
    800032e0:	fbf44503          	lbu	a0,-65(s0)
    800032e4:	0019091b          	addiw	s2,s2,1
    800032e8:	00148493          	addi	s1,s1,1
    800032ec:	00001097          	auipc	ra,0x1
    800032f0:	a9c080e7          	jalr	-1380(ra) # 80003d88 <uartputc>
    800032f4:	03298063          	beq	s3,s2,80003314 <consolewrite+0x74>
    800032f8:	00048613          	mv	a2,s1
    800032fc:	00100693          	li	a3,1
    80003300:	000a0593          	mv	a1,s4
    80003304:	fbf40513          	addi	a0,s0,-65
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	9e0080e7          	jalr	-1568(ra) # 80002ce8 <either_copyin>
    80003310:	fd5518e3          	bne	a0,s5,800032e0 <consolewrite+0x40>
    80003314:	04813083          	ld	ra,72(sp)
    80003318:	04013403          	ld	s0,64(sp)
    8000331c:	03813483          	ld	s1,56(sp)
    80003320:	02813983          	ld	s3,40(sp)
    80003324:	02013a03          	ld	s4,32(sp)
    80003328:	01813a83          	ld	s5,24(sp)
    8000332c:	00090513          	mv	a0,s2
    80003330:	03013903          	ld	s2,48(sp)
    80003334:	05010113          	addi	sp,sp,80
    80003338:	00008067          	ret
    8000333c:	00000913          	li	s2,0
    80003340:	fd5ff06f          	j	80003314 <consolewrite+0x74>

0000000080003344 <consoleread>:
    80003344:	f9010113          	addi	sp,sp,-112
    80003348:	06813023          	sd	s0,96(sp)
    8000334c:	04913c23          	sd	s1,88(sp)
    80003350:	05213823          	sd	s2,80(sp)
    80003354:	05313423          	sd	s3,72(sp)
    80003358:	05413023          	sd	s4,64(sp)
    8000335c:	03513c23          	sd	s5,56(sp)
    80003360:	03613823          	sd	s6,48(sp)
    80003364:	03713423          	sd	s7,40(sp)
    80003368:	03813023          	sd	s8,32(sp)
    8000336c:	06113423          	sd	ra,104(sp)
    80003370:	01913c23          	sd	s9,24(sp)
    80003374:	07010413          	addi	s0,sp,112
    80003378:	00060b93          	mv	s7,a2
    8000337c:	00050913          	mv	s2,a0
    80003380:	00058c13          	mv	s8,a1
    80003384:	00060b1b          	sext.w	s6,a2
    80003388:	00004497          	auipc	s1,0x4
    8000338c:	b7048493          	addi	s1,s1,-1168 # 80006ef8 <cons>
    80003390:	00400993          	li	s3,4
    80003394:	fff00a13          	li	s4,-1
    80003398:	00a00a93          	li	s5,10
    8000339c:	05705e63          	blez	s7,800033f8 <consoleread+0xb4>
    800033a0:	09c4a703          	lw	a4,156(s1)
    800033a4:	0984a783          	lw	a5,152(s1)
    800033a8:	0007071b          	sext.w	a4,a4
    800033ac:	08e78463          	beq	a5,a4,80003434 <consoleread+0xf0>
    800033b0:	07f7f713          	andi	a4,a5,127
    800033b4:	00e48733          	add	a4,s1,a4
    800033b8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800033bc:	0017869b          	addiw	a3,a5,1
    800033c0:	08d4ac23          	sw	a3,152(s1)
    800033c4:	00070c9b          	sext.w	s9,a4
    800033c8:	0b370663          	beq	a4,s3,80003474 <consoleread+0x130>
    800033cc:	00100693          	li	a3,1
    800033d0:	f9f40613          	addi	a2,s0,-97
    800033d4:	000c0593          	mv	a1,s8
    800033d8:	00090513          	mv	a0,s2
    800033dc:	f8e40fa3          	sb	a4,-97(s0)
    800033e0:	00000097          	auipc	ra,0x0
    800033e4:	8bc080e7          	jalr	-1860(ra) # 80002c9c <either_copyout>
    800033e8:	01450863          	beq	a0,s4,800033f8 <consoleread+0xb4>
    800033ec:	001c0c13          	addi	s8,s8,1
    800033f0:	fffb8b9b          	addiw	s7,s7,-1
    800033f4:	fb5c94e3          	bne	s9,s5,8000339c <consoleread+0x58>
    800033f8:	000b851b          	sext.w	a0,s7
    800033fc:	06813083          	ld	ra,104(sp)
    80003400:	06013403          	ld	s0,96(sp)
    80003404:	05813483          	ld	s1,88(sp)
    80003408:	05013903          	ld	s2,80(sp)
    8000340c:	04813983          	ld	s3,72(sp)
    80003410:	04013a03          	ld	s4,64(sp)
    80003414:	03813a83          	ld	s5,56(sp)
    80003418:	02813b83          	ld	s7,40(sp)
    8000341c:	02013c03          	ld	s8,32(sp)
    80003420:	01813c83          	ld	s9,24(sp)
    80003424:	40ab053b          	subw	a0,s6,a0
    80003428:	03013b03          	ld	s6,48(sp)
    8000342c:	07010113          	addi	sp,sp,112
    80003430:	00008067          	ret
    80003434:	00001097          	auipc	ra,0x1
    80003438:	1d8080e7          	jalr	472(ra) # 8000460c <push_on>
    8000343c:	0984a703          	lw	a4,152(s1)
    80003440:	09c4a783          	lw	a5,156(s1)
    80003444:	0007879b          	sext.w	a5,a5
    80003448:	fef70ce3          	beq	a4,a5,80003440 <consoleread+0xfc>
    8000344c:	00001097          	auipc	ra,0x1
    80003450:	234080e7          	jalr	564(ra) # 80004680 <pop_on>
    80003454:	0984a783          	lw	a5,152(s1)
    80003458:	07f7f713          	andi	a4,a5,127
    8000345c:	00e48733          	add	a4,s1,a4
    80003460:	01874703          	lbu	a4,24(a4)
    80003464:	0017869b          	addiw	a3,a5,1
    80003468:	08d4ac23          	sw	a3,152(s1)
    8000346c:	00070c9b          	sext.w	s9,a4
    80003470:	f5371ee3          	bne	a4,s3,800033cc <consoleread+0x88>
    80003474:	000b851b          	sext.w	a0,s7
    80003478:	f96bf2e3          	bgeu	s7,s6,800033fc <consoleread+0xb8>
    8000347c:	08f4ac23          	sw	a5,152(s1)
    80003480:	f7dff06f          	j	800033fc <consoleread+0xb8>

0000000080003484 <consputc>:
    80003484:	10000793          	li	a5,256
    80003488:	00f50663          	beq	a0,a5,80003494 <consputc+0x10>
    8000348c:	00001317          	auipc	t1,0x1
    80003490:	9f430067          	jr	-1548(t1) # 80003e80 <uartputc_sync>
    80003494:	ff010113          	addi	sp,sp,-16
    80003498:	00113423          	sd	ra,8(sp)
    8000349c:	00813023          	sd	s0,0(sp)
    800034a0:	01010413          	addi	s0,sp,16
    800034a4:	00800513          	li	a0,8
    800034a8:	00001097          	auipc	ra,0x1
    800034ac:	9d8080e7          	jalr	-1576(ra) # 80003e80 <uartputc_sync>
    800034b0:	02000513          	li	a0,32
    800034b4:	00001097          	auipc	ra,0x1
    800034b8:	9cc080e7          	jalr	-1588(ra) # 80003e80 <uartputc_sync>
    800034bc:	00013403          	ld	s0,0(sp)
    800034c0:	00813083          	ld	ra,8(sp)
    800034c4:	00800513          	li	a0,8
    800034c8:	01010113          	addi	sp,sp,16
    800034cc:	00001317          	auipc	t1,0x1
    800034d0:	9b430067          	jr	-1612(t1) # 80003e80 <uartputc_sync>

00000000800034d4 <consoleintr>:
    800034d4:	fe010113          	addi	sp,sp,-32
    800034d8:	00813823          	sd	s0,16(sp)
    800034dc:	00913423          	sd	s1,8(sp)
    800034e0:	01213023          	sd	s2,0(sp)
    800034e4:	00113c23          	sd	ra,24(sp)
    800034e8:	02010413          	addi	s0,sp,32
    800034ec:	00004917          	auipc	s2,0x4
    800034f0:	a0c90913          	addi	s2,s2,-1524 # 80006ef8 <cons>
    800034f4:	00050493          	mv	s1,a0
    800034f8:	00090513          	mv	a0,s2
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	e40080e7          	jalr	-448(ra) # 8000433c <acquire>
    80003504:	02048c63          	beqz	s1,8000353c <consoleintr+0x68>
    80003508:	0a092783          	lw	a5,160(s2)
    8000350c:	09892703          	lw	a4,152(s2)
    80003510:	07f00693          	li	a3,127
    80003514:	40e7873b          	subw	a4,a5,a4
    80003518:	02e6e263          	bltu	a3,a4,8000353c <consoleintr+0x68>
    8000351c:	00d00713          	li	a4,13
    80003520:	04e48063          	beq	s1,a4,80003560 <consoleintr+0x8c>
    80003524:	07f7f713          	andi	a4,a5,127
    80003528:	00e90733          	add	a4,s2,a4
    8000352c:	0017879b          	addiw	a5,a5,1
    80003530:	0af92023          	sw	a5,160(s2)
    80003534:	00970c23          	sb	s1,24(a4)
    80003538:	08f92e23          	sw	a5,156(s2)
    8000353c:	01013403          	ld	s0,16(sp)
    80003540:	01813083          	ld	ra,24(sp)
    80003544:	00813483          	ld	s1,8(sp)
    80003548:	00013903          	ld	s2,0(sp)
    8000354c:	00004517          	auipc	a0,0x4
    80003550:	9ac50513          	addi	a0,a0,-1620 # 80006ef8 <cons>
    80003554:	02010113          	addi	sp,sp,32
    80003558:	00001317          	auipc	t1,0x1
    8000355c:	eb030067          	jr	-336(t1) # 80004408 <release>
    80003560:	00a00493          	li	s1,10
    80003564:	fc1ff06f          	j	80003524 <consoleintr+0x50>

0000000080003568 <consoleinit>:
    80003568:	fe010113          	addi	sp,sp,-32
    8000356c:	00113c23          	sd	ra,24(sp)
    80003570:	00813823          	sd	s0,16(sp)
    80003574:	00913423          	sd	s1,8(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00004497          	auipc	s1,0x4
    80003580:	97c48493          	addi	s1,s1,-1668 # 80006ef8 <cons>
    80003584:	00048513          	mv	a0,s1
    80003588:	00002597          	auipc	a1,0x2
    8000358c:	cd058593          	addi	a1,a1,-816 # 80005258 <CONSOLE_STATUS+0x248>
    80003590:	00001097          	auipc	ra,0x1
    80003594:	d88080e7          	jalr	-632(ra) # 80004318 <initlock>
    80003598:	00000097          	auipc	ra,0x0
    8000359c:	7ac080e7          	jalr	1964(ra) # 80003d44 <uartinit>
    800035a0:	01813083          	ld	ra,24(sp)
    800035a4:	01013403          	ld	s0,16(sp)
    800035a8:	00000797          	auipc	a5,0x0
    800035ac:	d9c78793          	addi	a5,a5,-612 # 80003344 <consoleread>
    800035b0:	0af4bc23          	sd	a5,184(s1)
    800035b4:	00000797          	auipc	a5,0x0
    800035b8:	cec78793          	addi	a5,a5,-788 # 800032a0 <consolewrite>
    800035bc:	0cf4b023          	sd	a5,192(s1)
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	00008067          	ret

00000000800035cc <console_read>:
    800035cc:	ff010113          	addi	sp,sp,-16
    800035d0:	00813423          	sd	s0,8(sp)
    800035d4:	01010413          	addi	s0,sp,16
    800035d8:	00813403          	ld	s0,8(sp)
    800035dc:	00004317          	auipc	t1,0x4
    800035e0:	9d433303          	ld	t1,-1580(t1) # 80006fb0 <devsw+0x10>
    800035e4:	01010113          	addi	sp,sp,16
    800035e8:	00030067          	jr	t1

00000000800035ec <console_write>:
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    800035f8:	00813403          	ld	s0,8(sp)
    800035fc:	00004317          	auipc	t1,0x4
    80003600:	9bc33303          	ld	t1,-1604(t1) # 80006fb8 <devsw+0x18>
    80003604:	01010113          	addi	sp,sp,16
    80003608:	00030067          	jr	t1

000000008000360c <panic>:
    8000360c:	fe010113          	addi	sp,sp,-32
    80003610:	00113c23          	sd	ra,24(sp)
    80003614:	00813823          	sd	s0,16(sp)
    80003618:	00913423          	sd	s1,8(sp)
    8000361c:	02010413          	addi	s0,sp,32
    80003620:	00050493          	mv	s1,a0
    80003624:	00002517          	auipc	a0,0x2
    80003628:	c3c50513          	addi	a0,a0,-964 # 80005260 <CONSOLE_STATUS+0x250>
    8000362c:	00004797          	auipc	a5,0x4
    80003630:	a207a623          	sw	zero,-1492(a5) # 80007058 <pr+0x18>
    80003634:	00000097          	auipc	ra,0x0
    80003638:	034080e7          	jalr	52(ra) # 80003668 <__printf>
    8000363c:	00048513          	mv	a0,s1
    80003640:	00000097          	auipc	ra,0x0
    80003644:	028080e7          	jalr	40(ra) # 80003668 <__printf>
    80003648:	00002517          	auipc	a0,0x2
    8000364c:	bf850513          	addi	a0,a0,-1032 # 80005240 <CONSOLE_STATUS+0x230>
    80003650:	00000097          	auipc	ra,0x0
    80003654:	018080e7          	jalr	24(ra) # 80003668 <__printf>
    80003658:	00100793          	li	a5,1
    8000365c:	00002717          	auipc	a4,0x2
    80003660:	72f72e23          	sw	a5,1852(a4) # 80005d98 <panicked>
    80003664:	0000006f          	j	80003664 <panic+0x58>

0000000080003668 <__printf>:
    80003668:	f3010113          	addi	sp,sp,-208
    8000366c:	08813023          	sd	s0,128(sp)
    80003670:	07313423          	sd	s3,104(sp)
    80003674:	09010413          	addi	s0,sp,144
    80003678:	05813023          	sd	s8,64(sp)
    8000367c:	08113423          	sd	ra,136(sp)
    80003680:	06913c23          	sd	s1,120(sp)
    80003684:	07213823          	sd	s2,112(sp)
    80003688:	07413023          	sd	s4,96(sp)
    8000368c:	05513c23          	sd	s5,88(sp)
    80003690:	05613823          	sd	s6,80(sp)
    80003694:	05713423          	sd	s7,72(sp)
    80003698:	03913c23          	sd	s9,56(sp)
    8000369c:	03a13823          	sd	s10,48(sp)
    800036a0:	03b13423          	sd	s11,40(sp)
    800036a4:	00004317          	auipc	t1,0x4
    800036a8:	99c30313          	addi	t1,t1,-1636 # 80007040 <pr>
    800036ac:	01832c03          	lw	s8,24(t1)
    800036b0:	00b43423          	sd	a1,8(s0)
    800036b4:	00c43823          	sd	a2,16(s0)
    800036b8:	00d43c23          	sd	a3,24(s0)
    800036bc:	02e43023          	sd	a4,32(s0)
    800036c0:	02f43423          	sd	a5,40(s0)
    800036c4:	03043823          	sd	a6,48(s0)
    800036c8:	03143c23          	sd	a7,56(s0)
    800036cc:	00050993          	mv	s3,a0
    800036d0:	4a0c1663          	bnez	s8,80003b7c <__printf+0x514>
    800036d4:	60098c63          	beqz	s3,80003cec <__printf+0x684>
    800036d8:	0009c503          	lbu	a0,0(s3)
    800036dc:	00840793          	addi	a5,s0,8
    800036e0:	f6f43c23          	sd	a5,-136(s0)
    800036e4:	00000493          	li	s1,0
    800036e8:	22050063          	beqz	a0,80003908 <__printf+0x2a0>
    800036ec:	00002a37          	lui	s4,0x2
    800036f0:	00018ab7          	lui	s5,0x18
    800036f4:	000f4b37          	lui	s6,0xf4
    800036f8:	00989bb7          	lui	s7,0x989
    800036fc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003700:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003704:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003708:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000370c:	00148c9b          	addiw	s9,s1,1
    80003710:	02500793          	li	a5,37
    80003714:	01998933          	add	s2,s3,s9
    80003718:	38f51263          	bne	a0,a5,80003a9c <__printf+0x434>
    8000371c:	00094783          	lbu	a5,0(s2)
    80003720:	00078c9b          	sext.w	s9,a5
    80003724:	1e078263          	beqz	a5,80003908 <__printf+0x2a0>
    80003728:	0024849b          	addiw	s1,s1,2
    8000372c:	07000713          	li	a4,112
    80003730:	00998933          	add	s2,s3,s1
    80003734:	38e78a63          	beq	a5,a4,80003ac8 <__printf+0x460>
    80003738:	20f76863          	bltu	a4,a5,80003948 <__printf+0x2e0>
    8000373c:	42a78863          	beq	a5,a0,80003b6c <__printf+0x504>
    80003740:	06400713          	li	a4,100
    80003744:	40e79663          	bne	a5,a4,80003b50 <__printf+0x4e8>
    80003748:	f7843783          	ld	a5,-136(s0)
    8000374c:	0007a603          	lw	a2,0(a5)
    80003750:	00878793          	addi	a5,a5,8
    80003754:	f6f43c23          	sd	a5,-136(s0)
    80003758:	42064a63          	bltz	a2,80003b8c <__printf+0x524>
    8000375c:	00a00713          	li	a4,10
    80003760:	02e677bb          	remuw	a5,a2,a4
    80003764:	00002d97          	auipc	s11,0x2
    80003768:	b24d8d93          	addi	s11,s11,-1244 # 80005288 <digits>
    8000376c:	00900593          	li	a1,9
    80003770:	0006051b          	sext.w	a0,a2
    80003774:	00000c93          	li	s9,0
    80003778:	02079793          	slli	a5,a5,0x20
    8000377c:	0207d793          	srli	a5,a5,0x20
    80003780:	00fd87b3          	add	a5,s11,a5
    80003784:	0007c783          	lbu	a5,0(a5)
    80003788:	02e656bb          	divuw	a3,a2,a4
    8000378c:	f8f40023          	sb	a5,-128(s0)
    80003790:	14c5d863          	bge	a1,a2,800038e0 <__printf+0x278>
    80003794:	06300593          	li	a1,99
    80003798:	00100c93          	li	s9,1
    8000379c:	02e6f7bb          	remuw	a5,a3,a4
    800037a0:	02079793          	slli	a5,a5,0x20
    800037a4:	0207d793          	srli	a5,a5,0x20
    800037a8:	00fd87b3          	add	a5,s11,a5
    800037ac:	0007c783          	lbu	a5,0(a5)
    800037b0:	02e6d73b          	divuw	a4,a3,a4
    800037b4:	f8f400a3          	sb	a5,-127(s0)
    800037b8:	12a5f463          	bgeu	a1,a0,800038e0 <__printf+0x278>
    800037bc:	00a00693          	li	a3,10
    800037c0:	00900593          	li	a1,9
    800037c4:	02d777bb          	remuw	a5,a4,a3
    800037c8:	02079793          	slli	a5,a5,0x20
    800037cc:	0207d793          	srli	a5,a5,0x20
    800037d0:	00fd87b3          	add	a5,s11,a5
    800037d4:	0007c503          	lbu	a0,0(a5)
    800037d8:	02d757bb          	divuw	a5,a4,a3
    800037dc:	f8a40123          	sb	a0,-126(s0)
    800037e0:	48e5f263          	bgeu	a1,a4,80003c64 <__printf+0x5fc>
    800037e4:	06300513          	li	a0,99
    800037e8:	02d7f5bb          	remuw	a1,a5,a3
    800037ec:	02059593          	slli	a1,a1,0x20
    800037f0:	0205d593          	srli	a1,a1,0x20
    800037f4:	00bd85b3          	add	a1,s11,a1
    800037f8:	0005c583          	lbu	a1,0(a1)
    800037fc:	02d7d7bb          	divuw	a5,a5,a3
    80003800:	f8b401a3          	sb	a1,-125(s0)
    80003804:	48e57263          	bgeu	a0,a4,80003c88 <__printf+0x620>
    80003808:	3e700513          	li	a0,999
    8000380c:	02d7f5bb          	remuw	a1,a5,a3
    80003810:	02059593          	slli	a1,a1,0x20
    80003814:	0205d593          	srli	a1,a1,0x20
    80003818:	00bd85b3          	add	a1,s11,a1
    8000381c:	0005c583          	lbu	a1,0(a1)
    80003820:	02d7d7bb          	divuw	a5,a5,a3
    80003824:	f8b40223          	sb	a1,-124(s0)
    80003828:	46e57663          	bgeu	a0,a4,80003c94 <__printf+0x62c>
    8000382c:	02d7f5bb          	remuw	a1,a5,a3
    80003830:	02059593          	slli	a1,a1,0x20
    80003834:	0205d593          	srli	a1,a1,0x20
    80003838:	00bd85b3          	add	a1,s11,a1
    8000383c:	0005c583          	lbu	a1,0(a1)
    80003840:	02d7d7bb          	divuw	a5,a5,a3
    80003844:	f8b402a3          	sb	a1,-123(s0)
    80003848:	46ea7863          	bgeu	s4,a4,80003cb8 <__printf+0x650>
    8000384c:	02d7f5bb          	remuw	a1,a5,a3
    80003850:	02059593          	slli	a1,a1,0x20
    80003854:	0205d593          	srli	a1,a1,0x20
    80003858:	00bd85b3          	add	a1,s11,a1
    8000385c:	0005c583          	lbu	a1,0(a1)
    80003860:	02d7d7bb          	divuw	a5,a5,a3
    80003864:	f8b40323          	sb	a1,-122(s0)
    80003868:	3eeaf863          	bgeu	s5,a4,80003c58 <__printf+0x5f0>
    8000386c:	02d7f5bb          	remuw	a1,a5,a3
    80003870:	02059593          	slli	a1,a1,0x20
    80003874:	0205d593          	srli	a1,a1,0x20
    80003878:	00bd85b3          	add	a1,s11,a1
    8000387c:	0005c583          	lbu	a1,0(a1)
    80003880:	02d7d7bb          	divuw	a5,a5,a3
    80003884:	f8b403a3          	sb	a1,-121(s0)
    80003888:	42eb7e63          	bgeu	s6,a4,80003cc4 <__printf+0x65c>
    8000388c:	02d7f5bb          	remuw	a1,a5,a3
    80003890:	02059593          	slli	a1,a1,0x20
    80003894:	0205d593          	srli	a1,a1,0x20
    80003898:	00bd85b3          	add	a1,s11,a1
    8000389c:	0005c583          	lbu	a1,0(a1)
    800038a0:	02d7d7bb          	divuw	a5,a5,a3
    800038a4:	f8b40423          	sb	a1,-120(s0)
    800038a8:	42ebfc63          	bgeu	s7,a4,80003ce0 <__printf+0x678>
    800038ac:	02079793          	slli	a5,a5,0x20
    800038b0:	0207d793          	srli	a5,a5,0x20
    800038b4:	00fd8db3          	add	s11,s11,a5
    800038b8:	000dc703          	lbu	a4,0(s11)
    800038bc:	00a00793          	li	a5,10
    800038c0:	00900c93          	li	s9,9
    800038c4:	f8e404a3          	sb	a4,-119(s0)
    800038c8:	00065c63          	bgez	a2,800038e0 <__printf+0x278>
    800038cc:	f9040713          	addi	a4,s0,-112
    800038d0:	00f70733          	add	a4,a4,a5
    800038d4:	02d00693          	li	a3,45
    800038d8:	fed70823          	sb	a3,-16(a4)
    800038dc:	00078c93          	mv	s9,a5
    800038e0:	f8040793          	addi	a5,s0,-128
    800038e4:	01978cb3          	add	s9,a5,s9
    800038e8:	f7f40d13          	addi	s10,s0,-129
    800038ec:	000cc503          	lbu	a0,0(s9)
    800038f0:	fffc8c93          	addi	s9,s9,-1
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	b90080e7          	jalr	-1136(ra) # 80003484 <consputc>
    800038fc:	ffac98e3          	bne	s9,s10,800038ec <__printf+0x284>
    80003900:	00094503          	lbu	a0,0(s2)
    80003904:	e00514e3          	bnez	a0,8000370c <__printf+0xa4>
    80003908:	1a0c1663          	bnez	s8,80003ab4 <__printf+0x44c>
    8000390c:	08813083          	ld	ra,136(sp)
    80003910:	08013403          	ld	s0,128(sp)
    80003914:	07813483          	ld	s1,120(sp)
    80003918:	07013903          	ld	s2,112(sp)
    8000391c:	06813983          	ld	s3,104(sp)
    80003920:	06013a03          	ld	s4,96(sp)
    80003924:	05813a83          	ld	s5,88(sp)
    80003928:	05013b03          	ld	s6,80(sp)
    8000392c:	04813b83          	ld	s7,72(sp)
    80003930:	04013c03          	ld	s8,64(sp)
    80003934:	03813c83          	ld	s9,56(sp)
    80003938:	03013d03          	ld	s10,48(sp)
    8000393c:	02813d83          	ld	s11,40(sp)
    80003940:	0d010113          	addi	sp,sp,208
    80003944:	00008067          	ret
    80003948:	07300713          	li	a4,115
    8000394c:	1ce78a63          	beq	a5,a4,80003b20 <__printf+0x4b8>
    80003950:	07800713          	li	a4,120
    80003954:	1ee79e63          	bne	a5,a4,80003b50 <__printf+0x4e8>
    80003958:	f7843783          	ld	a5,-136(s0)
    8000395c:	0007a703          	lw	a4,0(a5)
    80003960:	00878793          	addi	a5,a5,8
    80003964:	f6f43c23          	sd	a5,-136(s0)
    80003968:	28074263          	bltz	a4,80003bec <__printf+0x584>
    8000396c:	00002d97          	auipc	s11,0x2
    80003970:	91cd8d93          	addi	s11,s11,-1764 # 80005288 <digits>
    80003974:	00f77793          	andi	a5,a4,15
    80003978:	00fd87b3          	add	a5,s11,a5
    8000397c:	0007c683          	lbu	a3,0(a5)
    80003980:	00f00613          	li	a2,15
    80003984:	0007079b          	sext.w	a5,a4
    80003988:	f8d40023          	sb	a3,-128(s0)
    8000398c:	0047559b          	srliw	a1,a4,0x4
    80003990:	0047569b          	srliw	a3,a4,0x4
    80003994:	00000c93          	li	s9,0
    80003998:	0ee65063          	bge	a2,a4,80003a78 <__printf+0x410>
    8000399c:	00f6f693          	andi	a3,a3,15
    800039a0:	00dd86b3          	add	a3,s11,a3
    800039a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800039a8:	0087d79b          	srliw	a5,a5,0x8
    800039ac:	00100c93          	li	s9,1
    800039b0:	f8d400a3          	sb	a3,-127(s0)
    800039b4:	0cb67263          	bgeu	a2,a1,80003a78 <__printf+0x410>
    800039b8:	00f7f693          	andi	a3,a5,15
    800039bc:	00dd86b3          	add	a3,s11,a3
    800039c0:	0006c583          	lbu	a1,0(a3)
    800039c4:	00f00613          	li	a2,15
    800039c8:	0047d69b          	srliw	a3,a5,0x4
    800039cc:	f8b40123          	sb	a1,-126(s0)
    800039d0:	0047d593          	srli	a1,a5,0x4
    800039d4:	28f67e63          	bgeu	a2,a5,80003c70 <__printf+0x608>
    800039d8:	00f6f693          	andi	a3,a3,15
    800039dc:	00dd86b3          	add	a3,s11,a3
    800039e0:	0006c503          	lbu	a0,0(a3)
    800039e4:	0087d813          	srli	a6,a5,0x8
    800039e8:	0087d69b          	srliw	a3,a5,0x8
    800039ec:	f8a401a3          	sb	a0,-125(s0)
    800039f0:	28b67663          	bgeu	a2,a1,80003c7c <__printf+0x614>
    800039f4:	00f6f693          	andi	a3,a3,15
    800039f8:	00dd86b3          	add	a3,s11,a3
    800039fc:	0006c583          	lbu	a1,0(a3)
    80003a00:	00c7d513          	srli	a0,a5,0xc
    80003a04:	00c7d69b          	srliw	a3,a5,0xc
    80003a08:	f8b40223          	sb	a1,-124(s0)
    80003a0c:	29067a63          	bgeu	a2,a6,80003ca0 <__printf+0x638>
    80003a10:	00f6f693          	andi	a3,a3,15
    80003a14:	00dd86b3          	add	a3,s11,a3
    80003a18:	0006c583          	lbu	a1,0(a3)
    80003a1c:	0107d813          	srli	a6,a5,0x10
    80003a20:	0107d69b          	srliw	a3,a5,0x10
    80003a24:	f8b402a3          	sb	a1,-123(s0)
    80003a28:	28a67263          	bgeu	a2,a0,80003cac <__printf+0x644>
    80003a2c:	00f6f693          	andi	a3,a3,15
    80003a30:	00dd86b3          	add	a3,s11,a3
    80003a34:	0006c683          	lbu	a3,0(a3)
    80003a38:	0147d79b          	srliw	a5,a5,0x14
    80003a3c:	f8d40323          	sb	a3,-122(s0)
    80003a40:	21067663          	bgeu	a2,a6,80003c4c <__printf+0x5e4>
    80003a44:	02079793          	slli	a5,a5,0x20
    80003a48:	0207d793          	srli	a5,a5,0x20
    80003a4c:	00fd8db3          	add	s11,s11,a5
    80003a50:	000dc683          	lbu	a3,0(s11)
    80003a54:	00800793          	li	a5,8
    80003a58:	00700c93          	li	s9,7
    80003a5c:	f8d403a3          	sb	a3,-121(s0)
    80003a60:	00075c63          	bgez	a4,80003a78 <__printf+0x410>
    80003a64:	f9040713          	addi	a4,s0,-112
    80003a68:	00f70733          	add	a4,a4,a5
    80003a6c:	02d00693          	li	a3,45
    80003a70:	fed70823          	sb	a3,-16(a4)
    80003a74:	00078c93          	mv	s9,a5
    80003a78:	f8040793          	addi	a5,s0,-128
    80003a7c:	01978cb3          	add	s9,a5,s9
    80003a80:	f7f40d13          	addi	s10,s0,-129
    80003a84:	000cc503          	lbu	a0,0(s9)
    80003a88:	fffc8c93          	addi	s9,s9,-1
    80003a8c:	00000097          	auipc	ra,0x0
    80003a90:	9f8080e7          	jalr	-1544(ra) # 80003484 <consputc>
    80003a94:	ff9d18e3          	bne	s10,s9,80003a84 <__printf+0x41c>
    80003a98:	0100006f          	j	80003aa8 <__printf+0x440>
    80003a9c:	00000097          	auipc	ra,0x0
    80003aa0:	9e8080e7          	jalr	-1560(ra) # 80003484 <consputc>
    80003aa4:	000c8493          	mv	s1,s9
    80003aa8:	00094503          	lbu	a0,0(s2)
    80003aac:	c60510e3          	bnez	a0,8000370c <__printf+0xa4>
    80003ab0:	e40c0ee3          	beqz	s8,8000390c <__printf+0x2a4>
    80003ab4:	00003517          	auipc	a0,0x3
    80003ab8:	58c50513          	addi	a0,a0,1420 # 80007040 <pr>
    80003abc:	00001097          	auipc	ra,0x1
    80003ac0:	94c080e7          	jalr	-1716(ra) # 80004408 <release>
    80003ac4:	e49ff06f          	j	8000390c <__printf+0x2a4>
    80003ac8:	f7843783          	ld	a5,-136(s0)
    80003acc:	03000513          	li	a0,48
    80003ad0:	01000d13          	li	s10,16
    80003ad4:	00878713          	addi	a4,a5,8
    80003ad8:	0007bc83          	ld	s9,0(a5)
    80003adc:	f6e43c23          	sd	a4,-136(s0)
    80003ae0:	00000097          	auipc	ra,0x0
    80003ae4:	9a4080e7          	jalr	-1628(ra) # 80003484 <consputc>
    80003ae8:	07800513          	li	a0,120
    80003aec:	00000097          	auipc	ra,0x0
    80003af0:	998080e7          	jalr	-1640(ra) # 80003484 <consputc>
    80003af4:	00001d97          	auipc	s11,0x1
    80003af8:	794d8d93          	addi	s11,s11,1940 # 80005288 <digits>
    80003afc:	03ccd793          	srli	a5,s9,0x3c
    80003b00:	00fd87b3          	add	a5,s11,a5
    80003b04:	0007c503          	lbu	a0,0(a5)
    80003b08:	fffd0d1b          	addiw	s10,s10,-1
    80003b0c:	004c9c93          	slli	s9,s9,0x4
    80003b10:	00000097          	auipc	ra,0x0
    80003b14:	974080e7          	jalr	-1676(ra) # 80003484 <consputc>
    80003b18:	fe0d12e3          	bnez	s10,80003afc <__printf+0x494>
    80003b1c:	f8dff06f          	j	80003aa8 <__printf+0x440>
    80003b20:	f7843783          	ld	a5,-136(s0)
    80003b24:	0007bc83          	ld	s9,0(a5)
    80003b28:	00878793          	addi	a5,a5,8
    80003b2c:	f6f43c23          	sd	a5,-136(s0)
    80003b30:	000c9a63          	bnez	s9,80003b44 <__printf+0x4dc>
    80003b34:	1080006f          	j	80003c3c <__printf+0x5d4>
    80003b38:	001c8c93          	addi	s9,s9,1
    80003b3c:	00000097          	auipc	ra,0x0
    80003b40:	948080e7          	jalr	-1720(ra) # 80003484 <consputc>
    80003b44:	000cc503          	lbu	a0,0(s9)
    80003b48:	fe0518e3          	bnez	a0,80003b38 <__printf+0x4d0>
    80003b4c:	f5dff06f          	j	80003aa8 <__printf+0x440>
    80003b50:	02500513          	li	a0,37
    80003b54:	00000097          	auipc	ra,0x0
    80003b58:	930080e7          	jalr	-1744(ra) # 80003484 <consputc>
    80003b5c:	000c8513          	mv	a0,s9
    80003b60:	00000097          	auipc	ra,0x0
    80003b64:	924080e7          	jalr	-1756(ra) # 80003484 <consputc>
    80003b68:	f41ff06f          	j	80003aa8 <__printf+0x440>
    80003b6c:	02500513          	li	a0,37
    80003b70:	00000097          	auipc	ra,0x0
    80003b74:	914080e7          	jalr	-1772(ra) # 80003484 <consputc>
    80003b78:	f31ff06f          	j	80003aa8 <__printf+0x440>
    80003b7c:	00030513          	mv	a0,t1
    80003b80:	00000097          	auipc	ra,0x0
    80003b84:	7bc080e7          	jalr	1980(ra) # 8000433c <acquire>
    80003b88:	b4dff06f          	j	800036d4 <__printf+0x6c>
    80003b8c:	40c0053b          	negw	a0,a2
    80003b90:	00a00713          	li	a4,10
    80003b94:	02e576bb          	remuw	a3,a0,a4
    80003b98:	00001d97          	auipc	s11,0x1
    80003b9c:	6f0d8d93          	addi	s11,s11,1776 # 80005288 <digits>
    80003ba0:	ff700593          	li	a1,-9
    80003ba4:	02069693          	slli	a3,a3,0x20
    80003ba8:	0206d693          	srli	a3,a3,0x20
    80003bac:	00dd86b3          	add	a3,s11,a3
    80003bb0:	0006c683          	lbu	a3,0(a3)
    80003bb4:	02e557bb          	divuw	a5,a0,a4
    80003bb8:	f8d40023          	sb	a3,-128(s0)
    80003bbc:	10b65e63          	bge	a2,a1,80003cd8 <__printf+0x670>
    80003bc0:	06300593          	li	a1,99
    80003bc4:	02e7f6bb          	remuw	a3,a5,a4
    80003bc8:	02069693          	slli	a3,a3,0x20
    80003bcc:	0206d693          	srli	a3,a3,0x20
    80003bd0:	00dd86b3          	add	a3,s11,a3
    80003bd4:	0006c683          	lbu	a3,0(a3)
    80003bd8:	02e7d73b          	divuw	a4,a5,a4
    80003bdc:	00200793          	li	a5,2
    80003be0:	f8d400a3          	sb	a3,-127(s0)
    80003be4:	bca5ece3          	bltu	a1,a0,800037bc <__printf+0x154>
    80003be8:	ce5ff06f          	j	800038cc <__printf+0x264>
    80003bec:	40e007bb          	negw	a5,a4
    80003bf0:	00001d97          	auipc	s11,0x1
    80003bf4:	698d8d93          	addi	s11,s11,1688 # 80005288 <digits>
    80003bf8:	00f7f693          	andi	a3,a5,15
    80003bfc:	00dd86b3          	add	a3,s11,a3
    80003c00:	0006c583          	lbu	a1,0(a3)
    80003c04:	ff100613          	li	a2,-15
    80003c08:	0047d69b          	srliw	a3,a5,0x4
    80003c0c:	f8b40023          	sb	a1,-128(s0)
    80003c10:	0047d59b          	srliw	a1,a5,0x4
    80003c14:	0ac75e63          	bge	a4,a2,80003cd0 <__printf+0x668>
    80003c18:	00f6f693          	andi	a3,a3,15
    80003c1c:	00dd86b3          	add	a3,s11,a3
    80003c20:	0006c603          	lbu	a2,0(a3)
    80003c24:	00f00693          	li	a3,15
    80003c28:	0087d79b          	srliw	a5,a5,0x8
    80003c2c:	f8c400a3          	sb	a2,-127(s0)
    80003c30:	d8b6e4e3          	bltu	a3,a1,800039b8 <__printf+0x350>
    80003c34:	00200793          	li	a5,2
    80003c38:	e2dff06f          	j	80003a64 <__printf+0x3fc>
    80003c3c:	00001c97          	auipc	s9,0x1
    80003c40:	62cc8c93          	addi	s9,s9,1580 # 80005268 <CONSOLE_STATUS+0x258>
    80003c44:	02800513          	li	a0,40
    80003c48:	ef1ff06f          	j	80003b38 <__printf+0x4d0>
    80003c4c:	00700793          	li	a5,7
    80003c50:	00600c93          	li	s9,6
    80003c54:	e0dff06f          	j	80003a60 <__printf+0x3f8>
    80003c58:	00700793          	li	a5,7
    80003c5c:	00600c93          	li	s9,6
    80003c60:	c69ff06f          	j	800038c8 <__printf+0x260>
    80003c64:	00300793          	li	a5,3
    80003c68:	00200c93          	li	s9,2
    80003c6c:	c5dff06f          	j	800038c8 <__printf+0x260>
    80003c70:	00300793          	li	a5,3
    80003c74:	00200c93          	li	s9,2
    80003c78:	de9ff06f          	j	80003a60 <__printf+0x3f8>
    80003c7c:	00400793          	li	a5,4
    80003c80:	00300c93          	li	s9,3
    80003c84:	dddff06f          	j	80003a60 <__printf+0x3f8>
    80003c88:	00400793          	li	a5,4
    80003c8c:	00300c93          	li	s9,3
    80003c90:	c39ff06f          	j	800038c8 <__printf+0x260>
    80003c94:	00500793          	li	a5,5
    80003c98:	00400c93          	li	s9,4
    80003c9c:	c2dff06f          	j	800038c8 <__printf+0x260>
    80003ca0:	00500793          	li	a5,5
    80003ca4:	00400c93          	li	s9,4
    80003ca8:	db9ff06f          	j	80003a60 <__printf+0x3f8>
    80003cac:	00600793          	li	a5,6
    80003cb0:	00500c93          	li	s9,5
    80003cb4:	dadff06f          	j	80003a60 <__printf+0x3f8>
    80003cb8:	00600793          	li	a5,6
    80003cbc:	00500c93          	li	s9,5
    80003cc0:	c09ff06f          	j	800038c8 <__printf+0x260>
    80003cc4:	00800793          	li	a5,8
    80003cc8:	00700c93          	li	s9,7
    80003ccc:	bfdff06f          	j	800038c8 <__printf+0x260>
    80003cd0:	00100793          	li	a5,1
    80003cd4:	d91ff06f          	j	80003a64 <__printf+0x3fc>
    80003cd8:	00100793          	li	a5,1
    80003cdc:	bf1ff06f          	j	800038cc <__printf+0x264>
    80003ce0:	00900793          	li	a5,9
    80003ce4:	00800c93          	li	s9,8
    80003ce8:	be1ff06f          	j	800038c8 <__printf+0x260>
    80003cec:	00001517          	auipc	a0,0x1
    80003cf0:	58450513          	addi	a0,a0,1412 # 80005270 <CONSOLE_STATUS+0x260>
    80003cf4:	00000097          	auipc	ra,0x0
    80003cf8:	918080e7          	jalr	-1768(ra) # 8000360c <panic>

0000000080003cfc <printfinit>:
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00813823          	sd	s0,16(sp)
    80003d04:	00913423          	sd	s1,8(sp)
    80003d08:	00113c23          	sd	ra,24(sp)
    80003d0c:	02010413          	addi	s0,sp,32
    80003d10:	00003497          	auipc	s1,0x3
    80003d14:	33048493          	addi	s1,s1,816 # 80007040 <pr>
    80003d18:	00048513          	mv	a0,s1
    80003d1c:	00001597          	auipc	a1,0x1
    80003d20:	56458593          	addi	a1,a1,1380 # 80005280 <CONSOLE_STATUS+0x270>
    80003d24:	00000097          	auipc	ra,0x0
    80003d28:	5f4080e7          	jalr	1524(ra) # 80004318 <initlock>
    80003d2c:	01813083          	ld	ra,24(sp)
    80003d30:	01013403          	ld	s0,16(sp)
    80003d34:	0004ac23          	sw	zero,24(s1)
    80003d38:	00813483          	ld	s1,8(sp)
    80003d3c:	02010113          	addi	sp,sp,32
    80003d40:	00008067          	ret

0000000080003d44 <uartinit>:
    80003d44:	ff010113          	addi	sp,sp,-16
    80003d48:	00813423          	sd	s0,8(sp)
    80003d4c:	01010413          	addi	s0,sp,16
    80003d50:	100007b7          	lui	a5,0x10000
    80003d54:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80003d58:	f8000713          	li	a4,-128
    80003d5c:	00e781a3          	sb	a4,3(a5)
    80003d60:	00300713          	li	a4,3
    80003d64:	00e78023          	sb	a4,0(a5)
    80003d68:	000780a3          	sb	zero,1(a5)
    80003d6c:	00e781a3          	sb	a4,3(a5)
    80003d70:	00700693          	li	a3,7
    80003d74:	00d78123          	sb	a3,2(a5)
    80003d78:	00e780a3          	sb	a4,1(a5)
    80003d7c:	00813403          	ld	s0,8(sp)
    80003d80:	01010113          	addi	sp,sp,16
    80003d84:	00008067          	ret

0000000080003d88 <uartputc>:
    80003d88:	00002797          	auipc	a5,0x2
    80003d8c:	0107a783          	lw	a5,16(a5) # 80005d98 <panicked>
    80003d90:	00078463          	beqz	a5,80003d98 <uartputc+0x10>
    80003d94:	0000006f          	j	80003d94 <uartputc+0xc>
    80003d98:	fd010113          	addi	sp,sp,-48
    80003d9c:	02813023          	sd	s0,32(sp)
    80003da0:	00913c23          	sd	s1,24(sp)
    80003da4:	01213823          	sd	s2,16(sp)
    80003da8:	01313423          	sd	s3,8(sp)
    80003dac:	02113423          	sd	ra,40(sp)
    80003db0:	03010413          	addi	s0,sp,48
    80003db4:	00002917          	auipc	s2,0x2
    80003db8:	fec90913          	addi	s2,s2,-20 # 80005da0 <uart_tx_r>
    80003dbc:	00093783          	ld	a5,0(s2)
    80003dc0:	00002497          	auipc	s1,0x2
    80003dc4:	fe848493          	addi	s1,s1,-24 # 80005da8 <uart_tx_w>
    80003dc8:	0004b703          	ld	a4,0(s1)
    80003dcc:	02078693          	addi	a3,a5,32
    80003dd0:	00050993          	mv	s3,a0
    80003dd4:	02e69c63          	bne	a3,a4,80003e0c <uartputc+0x84>
    80003dd8:	00001097          	auipc	ra,0x1
    80003ddc:	834080e7          	jalr	-1996(ra) # 8000460c <push_on>
    80003de0:	00093783          	ld	a5,0(s2)
    80003de4:	0004b703          	ld	a4,0(s1)
    80003de8:	02078793          	addi	a5,a5,32
    80003dec:	00e79463          	bne	a5,a4,80003df4 <uartputc+0x6c>
    80003df0:	0000006f          	j	80003df0 <uartputc+0x68>
    80003df4:	00001097          	auipc	ra,0x1
    80003df8:	88c080e7          	jalr	-1908(ra) # 80004680 <pop_on>
    80003dfc:	00093783          	ld	a5,0(s2)
    80003e00:	0004b703          	ld	a4,0(s1)
    80003e04:	02078693          	addi	a3,a5,32
    80003e08:	fce688e3          	beq	a3,a4,80003dd8 <uartputc+0x50>
    80003e0c:	01f77693          	andi	a3,a4,31
    80003e10:	00003597          	auipc	a1,0x3
    80003e14:	25058593          	addi	a1,a1,592 # 80007060 <uart_tx_buf>
    80003e18:	00d586b3          	add	a3,a1,a3
    80003e1c:	00170713          	addi	a4,a4,1
    80003e20:	01368023          	sb	s3,0(a3)
    80003e24:	00e4b023          	sd	a4,0(s1)
    80003e28:	10000637          	lui	a2,0x10000
    80003e2c:	02f71063          	bne	a4,a5,80003e4c <uartputc+0xc4>
    80003e30:	0340006f          	j	80003e64 <uartputc+0xdc>
    80003e34:	00074703          	lbu	a4,0(a4)
    80003e38:	00f93023          	sd	a5,0(s2)
    80003e3c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80003e40:	00093783          	ld	a5,0(s2)
    80003e44:	0004b703          	ld	a4,0(s1)
    80003e48:	00f70e63          	beq	a4,a5,80003e64 <uartputc+0xdc>
    80003e4c:	00564683          	lbu	a3,5(a2)
    80003e50:	01f7f713          	andi	a4,a5,31
    80003e54:	00e58733          	add	a4,a1,a4
    80003e58:	0206f693          	andi	a3,a3,32
    80003e5c:	00178793          	addi	a5,a5,1
    80003e60:	fc069ae3          	bnez	a3,80003e34 <uartputc+0xac>
    80003e64:	02813083          	ld	ra,40(sp)
    80003e68:	02013403          	ld	s0,32(sp)
    80003e6c:	01813483          	ld	s1,24(sp)
    80003e70:	01013903          	ld	s2,16(sp)
    80003e74:	00813983          	ld	s3,8(sp)
    80003e78:	03010113          	addi	sp,sp,48
    80003e7c:	00008067          	ret

0000000080003e80 <uartputc_sync>:
    80003e80:	ff010113          	addi	sp,sp,-16
    80003e84:	00813423          	sd	s0,8(sp)
    80003e88:	01010413          	addi	s0,sp,16
    80003e8c:	00002717          	auipc	a4,0x2
    80003e90:	f0c72703          	lw	a4,-244(a4) # 80005d98 <panicked>
    80003e94:	02071663          	bnez	a4,80003ec0 <uartputc_sync+0x40>
    80003e98:	00050793          	mv	a5,a0
    80003e9c:	100006b7          	lui	a3,0x10000
    80003ea0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003ea4:	02077713          	andi	a4,a4,32
    80003ea8:	fe070ce3          	beqz	a4,80003ea0 <uartputc_sync+0x20>
    80003eac:	0ff7f793          	andi	a5,a5,255
    80003eb0:	00f68023          	sb	a5,0(a3)
    80003eb4:	00813403          	ld	s0,8(sp)
    80003eb8:	01010113          	addi	sp,sp,16
    80003ebc:	00008067          	ret
    80003ec0:	0000006f          	j	80003ec0 <uartputc_sync+0x40>

0000000080003ec4 <uartstart>:
    80003ec4:	ff010113          	addi	sp,sp,-16
    80003ec8:	00813423          	sd	s0,8(sp)
    80003ecc:	01010413          	addi	s0,sp,16
    80003ed0:	00002617          	auipc	a2,0x2
    80003ed4:	ed060613          	addi	a2,a2,-304 # 80005da0 <uart_tx_r>
    80003ed8:	00002517          	auipc	a0,0x2
    80003edc:	ed050513          	addi	a0,a0,-304 # 80005da8 <uart_tx_w>
    80003ee0:	00063783          	ld	a5,0(a2)
    80003ee4:	00053703          	ld	a4,0(a0)
    80003ee8:	04f70263          	beq	a4,a5,80003f2c <uartstart+0x68>
    80003eec:	100005b7          	lui	a1,0x10000
    80003ef0:	00003817          	auipc	a6,0x3
    80003ef4:	17080813          	addi	a6,a6,368 # 80007060 <uart_tx_buf>
    80003ef8:	01c0006f          	j	80003f14 <uartstart+0x50>
    80003efc:	0006c703          	lbu	a4,0(a3)
    80003f00:	00f63023          	sd	a5,0(a2)
    80003f04:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003f08:	00063783          	ld	a5,0(a2)
    80003f0c:	00053703          	ld	a4,0(a0)
    80003f10:	00f70e63          	beq	a4,a5,80003f2c <uartstart+0x68>
    80003f14:	01f7f713          	andi	a4,a5,31
    80003f18:	00e806b3          	add	a3,a6,a4
    80003f1c:	0055c703          	lbu	a4,5(a1)
    80003f20:	00178793          	addi	a5,a5,1
    80003f24:	02077713          	andi	a4,a4,32
    80003f28:	fc071ae3          	bnez	a4,80003efc <uartstart+0x38>
    80003f2c:	00813403          	ld	s0,8(sp)
    80003f30:	01010113          	addi	sp,sp,16
    80003f34:	00008067          	ret

0000000080003f38 <uartgetc>:
    80003f38:	ff010113          	addi	sp,sp,-16
    80003f3c:	00813423          	sd	s0,8(sp)
    80003f40:	01010413          	addi	s0,sp,16
    80003f44:	10000737          	lui	a4,0x10000
    80003f48:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80003f4c:	0017f793          	andi	a5,a5,1
    80003f50:	00078c63          	beqz	a5,80003f68 <uartgetc+0x30>
    80003f54:	00074503          	lbu	a0,0(a4)
    80003f58:	0ff57513          	andi	a0,a0,255
    80003f5c:	00813403          	ld	s0,8(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret
    80003f68:	fff00513          	li	a0,-1
    80003f6c:	ff1ff06f          	j	80003f5c <uartgetc+0x24>

0000000080003f70 <uartintr>:
    80003f70:	100007b7          	lui	a5,0x10000
    80003f74:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003f78:	0017f793          	andi	a5,a5,1
    80003f7c:	0a078463          	beqz	a5,80004024 <uartintr+0xb4>
    80003f80:	fe010113          	addi	sp,sp,-32
    80003f84:	00813823          	sd	s0,16(sp)
    80003f88:	00913423          	sd	s1,8(sp)
    80003f8c:	00113c23          	sd	ra,24(sp)
    80003f90:	02010413          	addi	s0,sp,32
    80003f94:	100004b7          	lui	s1,0x10000
    80003f98:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80003f9c:	0ff57513          	andi	a0,a0,255
    80003fa0:	fffff097          	auipc	ra,0xfffff
    80003fa4:	534080e7          	jalr	1332(ra) # 800034d4 <consoleintr>
    80003fa8:	0054c783          	lbu	a5,5(s1)
    80003fac:	0017f793          	andi	a5,a5,1
    80003fb0:	fe0794e3          	bnez	a5,80003f98 <uartintr+0x28>
    80003fb4:	00002617          	auipc	a2,0x2
    80003fb8:	dec60613          	addi	a2,a2,-532 # 80005da0 <uart_tx_r>
    80003fbc:	00002517          	auipc	a0,0x2
    80003fc0:	dec50513          	addi	a0,a0,-532 # 80005da8 <uart_tx_w>
    80003fc4:	00063783          	ld	a5,0(a2)
    80003fc8:	00053703          	ld	a4,0(a0)
    80003fcc:	04f70263          	beq	a4,a5,80004010 <uartintr+0xa0>
    80003fd0:	100005b7          	lui	a1,0x10000
    80003fd4:	00003817          	auipc	a6,0x3
    80003fd8:	08c80813          	addi	a6,a6,140 # 80007060 <uart_tx_buf>
    80003fdc:	01c0006f          	j	80003ff8 <uartintr+0x88>
    80003fe0:	0006c703          	lbu	a4,0(a3)
    80003fe4:	00f63023          	sd	a5,0(a2)
    80003fe8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003fec:	00063783          	ld	a5,0(a2)
    80003ff0:	00053703          	ld	a4,0(a0)
    80003ff4:	00f70e63          	beq	a4,a5,80004010 <uartintr+0xa0>
    80003ff8:	01f7f713          	andi	a4,a5,31
    80003ffc:	00e806b3          	add	a3,a6,a4
    80004000:	0055c703          	lbu	a4,5(a1)
    80004004:	00178793          	addi	a5,a5,1
    80004008:	02077713          	andi	a4,a4,32
    8000400c:	fc071ae3          	bnez	a4,80003fe0 <uartintr+0x70>
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	01013403          	ld	s0,16(sp)
    80004018:	00813483          	ld	s1,8(sp)
    8000401c:	02010113          	addi	sp,sp,32
    80004020:	00008067          	ret
    80004024:	00002617          	auipc	a2,0x2
    80004028:	d7c60613          	addi	a2,a2,-644 # 80005da0 <uart_tx_r>
    8000402c:	00002517          	auipc	a0,0x2
    80004030:	d7c50513          	addi	a0,a0,-644 # 80005da8 <uart_tx_w>
    80004034:	00063783          	ld	a5,0(a2)
    80004038:	00053703          	ld	a4,0(a0)
    8000403c:	04f70263          	beq	a4,a5,80004080 <uartintr+0x110>
    80004040:	100005b7          	lui	a1,0x10000
    80004044:	00003817          	auipc	a6,0x3
    80004048:	01c80813          	addi	a6,a6,28 # 80007060 <uart_tx_buf>
    8000404c:	01c0006f          	j	80004068 <uartintr+0xf8>
    80004050:	0006c703          	lbu	a4,0(a3)
    80004054:	00f63023          	sd	a5,0(a2)
    80004058:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000405c:	00063783          	ld	a5,0(a2)
    80004060:	00053703          	ld	a4,0(a0)
    80004064:	02f70063          	beq	a4,a5,80004084 <uartintr+0x114>
    80004068:	01f7f713          	andi	a4,a5,31
    8000406c:	00e806b3          	add	a3,a6,a4
    80004070:	0055c703          	lbu	a4,5(a1)
    80004074:	00178793          	addi	a5,a5,1
    80004078:	02077713          	andi	a4,a4,32
    8000407c:	fc071ae3          	bnez	a4,80004050 <uartintr+0xe0>
    80004080:	00008067          	ret
    80004084:	00008067          	ret

0000000080004088 <kinit>:
    80004088:	fc010113          	addi	sp,sp,-64
    8000408c:	02913423          	sd	s1,40(sp)
    80004090:	fffff7b7          	lui	a5,0xfffff
    80004094:	00004497          	auipc	s1,0x4
    80004098:	feb48493          	addi	s1,s1,-21 # 8000807f <end+0xfff>
    8000409c:	02813823          	sd	s0,48(sp)
    800040a0:	01313c23          	sd	s3,24(sp)
    800040a4:	00f4f4b3          	and	s1,s1,a5
    800040a8:	02113c23          	sd	ra,56(sp)
    800040ac:	03213023          	sd	s2,32(sp)
    800040b0:	01413823          	sd	s4,16(sp)
    800040b4:	01513423          	sd	s5,8(sp)
    800040b8:	04010413          	addi	s0,sp,64
    800040bc:	000017b7          	lui	a5,0x1
    800040c0:	01100993          	li	s3,17
    800040c4:	00f487b3          	add	a5,s1,a5
    800040c8:	01b99993          	slli	s3,s3,0x1b
    800040cc:	06f9e063          	bltu	s3,a5,8000412c <kinit+0xa4>
    800040d0:	00003a97          	auipc	s5,0x3
    800040d4:	fb0a8a93          	addi	s5,s5,-80 # 80007080 <end>
    800040d8:	0754ec63          	bltu	s1,s5,80004150 <kinit+0xc8>
    800040dc:	0734fa63          	bgeu	s1,s3,80004150 <kinit+0xc8>
    800040e0:	00088a37          	lui	s4,0x88
    800040e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800040e8:	00002917          	auipc	s2,0x2
    800040ec:	cc890913          	addi	s2,s2,-824 # 80005db0 <kmem>
    800040f0:	00ca1a13          	slli	s4,s4,0xc
    800040f4:	0140006f          	j	80004108 <kinit+0x80>
    800040f8:	000017b7          	lui	a5,0x1
    800040fc:	00f484b3          	add	s1,s1,a5
    80004100:	0554e863          	bltu	s1,s5,80004150 <kinit+0xc8>
    80004104:	0534f663          	bgeu	s1,s3,80004150 <kinit+0xc8>
    80004108:	00001637          	lui	a2,0x1
    8000410c:	00100593          	li	a1,1
    80004110:	00048513          	mv	a0,s1
    80004114:	00000097          	auipc	ra,0x0
    80004118:	5e4080e7          	jalr	1508(ra) # 800046f8 <__memset>
    8000411c:	00093783          	ld	a5,0(s2)
    80004120:	00f4b023          	sd	a5,0(s1)
    80004124:	00993023          	sd	s1,0(s2)
    80004128:	fd4498e3          	bne	s1,s4,800040f8 <kinit+0x70>
    8000412c:	03813083          	ld	ra,56(sp)
    80004130:	03013403          	ld	s0,48(sp)
    80004134:	02813483          	ld	s1,40(sp)
    80004138:	02013903          	ld	s2,32(sp)
    8000413c:	01813983          	ld	s3,24(sp)
    80004140:	01013a03          	ld	s4,16(sp)
    80004144:	00813a83          	ld	s5,8(sp)
    80004148:	04010113          	addi	sp,sp,64
    8000414c:	00008067          	ret
    80004150:	00001517          	auipc	a0,0x1
    80004154:	15050513          	addi	a0,a0,336 # 800052a0 <digits+0x18>
    80004158:	fffff097          	auipc	ra,0xfffff
    8000415c:	4b4080e7          	jalr	1204(ra) # 8000360c <panic>

0000000080004160 <freerange>:
    80004160:	fc010113          	addi	sp,sp,-64
    80004164:	000017b7          	lui	a5,0x1
    80004168:	02913423          	sd	s1,40(sp)
    8000416c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004170:	009504b3          	add	s1,a0,s1
    80004174:	fffff537          	lui	a0,0xfffff
    80004178:	02813823          	sd	s0,48(sp)
    8000417c:	02113c23          	sd	ra,56(sp)
    80004180:	03213023          	sd	s2,32(sp)
    80004184:	01313c23          	sd	s3,24(sp)
    80004188:	01413823          	sd	s4,16(sp)
    8000418c:	01513423          	sd	s5,8(sp)
    80004190:	01613023          	sd	s6,0(sp)
    80004194:	04010413          	addi	s0,sp,64
    80004198:	00a4f4b3          	and	s1,s1,a0
    8000419c:	00f487b3          	add	a5,s1,a5
    800041a0:	06f5e463          	bltu	a1,a5,80004208 <freerange+0xa8>
    800041a4:	00003a97          	auipc	s5,0x3
    800041a8:	edca8a93          	addi	s5,s5,-292 # 80007080 <end>
    800041ac:	0954e263          	bltu	s1,s5,80004230 <freerange+0xd0>
    800041b0:	01100993          	li	s3,17
    800041b4:	01b99993          	slli	s3,s3,0x1b
    800041b8:	0734fc63          	bgeu	s1,s3,80004230 <freerange+0xd0>
    800041bc:	00058a13          	mv	s4,a1
    800041c0:	00002917          	auipc	s2,0x2
    800041c4:	bf090913          	addi	s2,s2,-1040 # 80005db0 <kmem>
    800041c8:	00002b37          	lui	s6,0x2
    800041cc:	0140006f          	j	800041e0 <freerange+0x80>
    800041d0:	000017b7          	lui	a5,0x1
    800041d4:	00f484b3          	add	s1,s1,a5
    800041d8:	0554ec63          	bltu	s1,s5,80004230 <freerange+0xd0>
    800041dc:	0534fa63          	bgeu	s1,s3,80004230 <freerange+0xd0>
    800041e0:	00001637          	lui	a2,0x1
    800041e4:	00100593          	li	a1,1
    800041e8:	00048513          	mv	a0,s1
    800041ec:	00000097          	auipc	ra,0x0
    800041f0:	50c080e7          	jalr	1292(ra) # 800046f8 <__memset>
    800041f4:	00093703          	ld	a4,0(s2)
    800041f8:	016487b3          	add	a5,s1,s6
    800041fc:	00e4b023          	sd	a4,0(s1)
    80004200:	00993023          	sd	s1,0(s2)
    80004204:	fcfa76e3          	bgeu	s4,a5,800041d0 <freerange+0x70>
    80004208:	03813083          	ld	ra,56(sp)
    8000420c:	03013403          	ld	s0,48(sp)
    80004210:	02813483          	ld	s1,40(sp)
    80004214:	02013903          	ld	s2,32(sp)
    80004218:	01813983          	ld	s3,24(sp)
    8000421c:	01013a03          	ld	s4,16(sp)
    80004220:	00813a83          	ld	s5,8(sp)
    80004224:	00013b03          	ld	s6,0(sp)
    80004228:	04010113          	addi	sp,sp,64
    8000422c:	00008067          	ret
    80004230:	00001517          	auipc	a0,0x1
    80004234:	07050513          	addi	a0,a0,112 # 800052a0 <digits+0x18>
    80004238:	fffff097          	auipc	ra,0xfffff
    8000423c:	3d4080e7          	jalr	980(ra) # 8000360c <panic>

0000000080004240 <kfree>:
    80004240:	fe010113          	addi	sp,sp,-32
    80004244:	00813823          	sd	s0,16(sp)
    80004248:	00113c23          	sd	ra,24(sp)
    8000424c:	00913423          	sd	s1,8(sp)
    80004250:	02010413          	addi	s0,sp,32
    80004254:	03451793          	slli	a5,a0,0x34
    80004258:	04079c63          	bnez	a5,800042b0 <kfree+0x70>
    8000425c:	00003797          	auipc	a5,0x3
    80004260:	e2478793          	addi	a5,a5,-476 # 80007080 <end>
    80004264:	00050493          	mv	s1,a0
    80004268:	04f56463          	bltu	a0,a5,800042b0 <kfree+0x70>
    8000426c:	01100793          	li	a5,17
    80004270:	01b79793          	slli	a5,a5,0x1b
    80004274:	02f57e63          	bgeu	a0,a5,800042b0 <kfree+0x70>
    80004278:	00001637          	lui	a2,0x1
    8000427c:	00100593          	li	a1,1
    80004280:	00000097          	auipc	ra,0x0
    80004284:	478080e7          	jalr	1144(ra) # 800046f8 <__memset>
    80004288:	00002797          	auipc	a5,0x2
    8000428c:	b2878793          	addi	a5,a5,-1240 # 80005db0 <kmem>
    80004290:	0007b703          	ld	a4,0(a5)
    80004294:	01813083          	ld	ra,24(sp)
    80004298:	01013403          	ld	s0,16(sp)
    8000429c:	00e4b023          	sd	a4,0(s1)
    800042a0:	0097b023          	sd	s1,0(a5)
    800042a4:	00813483          	ld	s1,8(sp)
    800042a8:	02010113          	addi	sp,sp,32
    800042ac:	00008067          	ret
    800042b0:	00001517          	auipc	a0,0x1
    800042b4:	ff050513          	addi	a0,a0,-16 # 800052a0 <digits+0x18>
    800042b8:	fffff097          	auipc	ra,0xfffff
    800042bc:	354080e7          	jalr	852(ra) # 8000360c <panic>

00000000800042c0 <kalloc>:
    800042c0:	fe010113          	addi	sp,sp,-32
    800042c4:	00813823          	sd	s0,16(sp)
    800042c8:	00913423          	sd	s1,8(sp)
    800042cc:	00113c23          	sd	ra,24(sp)
    800042d0:	02010413          	addi	s0,sp,32
    800042d4:	00002797          	auipc	a5,0x2
    800042d8:	adc78793          	addi	a5,a5,-1316 # 80005db0 <kmem>
    800042dc:	0007b483          	ld	s1,0(a5)
    800042e0:	02048063          	beqz	s1,80004300 <kalloc+0x40>
    800042e4:	0004b703          	ld	a4,0(s1)
    800042e8:	00001637          	lui	a2,0x1
    800042ec:	00500593          	li	a1,5
    800042f0:	00048513          	mv	a0,s1
    800042f4:	00e7b023          	sd	a4,0(a5)
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	400080e7          	jalr	1024(ra) # 800046f8 <__memset>
    80004300:	01813083          	ld	ra,24(sp)
    80004304:	01013403          	ld	s0,16(sp)
    80004308:	00048513          	mv	a0,s1
    8000430c:	00813483          	ld	s1,8(sp)
    80004310:	02010113          	addi	sp,sp,32
    80004314:	00008067          	ret

0000000080004318 <initlock>:
    80004318:	ff010113          	addi	sp,sp,-16
    8000431c:	00813423          	sd	s0,8(sp)
    80004320:	01010413          	addi	s0,sp,16
    80004324:	00813403          	ld	s0,8(sp)
    80004328:	00b53423          	sd	a1,8(a0)
    8000432c:	00052023          	sw	zero,0(a0)
    80004330:	00053823          	sd	zero,16(a0)
    80004334:	01010113          	addi	sp,sp,16
    80004338:	00008067          	ret

000000008000433c <acquire>:
    8000433c:	fe010113          	addi	sp,sp,-32
    80004340:	00813823          	sd	s0,16(sp)
    80004344:	00913423          	sd	s1,8(sp)
    80004348:	00113c23          	sd	ra,24(sp)
    8000434c:	01213023          	sd	s2,0(sp)
    80004350:	02010413          	addi	s0,sp,32
    80004354:	00050493          	mv	s1,a0
    80004358:	10002973          	csrr	s2,sstatus
    8000435c:	100027f3          	csrr	a5,sstatus
    80004360:	ffd7f793          	andi	a5,a5,-3
    80004364:	10079073          	csrw	sstatus,a5
    80004368:	fffff097          	auipc	ra,0xfffff
    8000436c:	8e8080e7          	jalr	-1816(ra) # 80002c50 <mycpu>
    80004370:	07852783          	lw	a5,120(a0)
    80004374:	06078e63          	beqz	a5,800043f0 <acquire+0xb4>
    80004378:	fffff097          	auipc	ra,0xfffff
    8000437c:	8d8080e7          	jalr	-1832(ra) # 80002c50 <mycpu>
    80004380:	07852783          	lw	a5,120(a0)
    80004384:	0004a703          	lw	a4,0(s1)
    80004388:	0017879b          	addiw	a5,a5,1
    8000438c:	06f52c23          	sw	a5,120(a0)
    80004390:	04071063          	bnez	a4,800043d0 <acquire+0x94>
    80004394:	00100713          	li	a4,1
    80004398:	00070793          	mv	a5,a4
    8000439c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800043a0:	0007879b          	sext.w	a5,a5
    800043a4:	fe079ae3          	bnez	a5,80004398 <acquire+0x5c>
    800043a8:	0ff0000f          	fence
    800043ac:	fffff097          	auipc	ra,0xfffff
    800043b0:	8a4080e7          	jalr	-1884(ra) # 80002c50 <mycpu>
    800043b4:	01813083          	ld	ra,24(sp)
    800043b8:	01013403          	ld	s0,16(sp)
    800043bc:	00a4b823          	sd	a0,16(s1)
    800043c0:	00013903          	ld	s2,0(sp)
    800043c4:	00813483          	ld	s1,8(sp)
    800043c8:	02010113          	addi	sp,sp,32
    800043cc:	00008067          	ret
    800043d0:	0104b903          	ld	s2,16(s1)
    800043d4:	fffff097          	auipc	ra,0xfffff
    800043d8:	87c080e7          	jalr	-1924(ra) # 80002c50 <mycpu>
    800043dc:	faa91ce3          	bne	s2,a0,80004394 <acquire+0x58>
    800043e0:	00001517          	auipc	a0,0x1
    800043e4:	ec850513          	addi	a0,a0,-312 # 800052a8 <digits+0x20>
    800043e8:	fffff097          	auipc	ra,0xfffff
    800043ec:	224080e7          	jalr	548(ra) # 8000360c <panic>
    800043f0:	00195913          	srli	s2,s2,0x1
    800043f4:	fffff097          	auipc	ra,0xfffff
    800043f8:	85c080e7          	jalr	-1956(ra) # 80002c50 <mycpu>
    800043fc:	00197913          	andi	s2,s2,1
    80004400:	07252e23          	sw	s2,124(a0)
    80004404:	f75ff06f          	j	80004378 <acquire+0x3c>

0000000080004408 <release>:
    80004408:	fe010113          	addi	sp,sp,-32
    8000440c:	00813823          	sd	s0,16(sp)
    80004410:	00113c23          	sd	ra,24(sp)
    80004414:	00913423          	sd	s1,8(sp)
    80004418:	01213023          	sd	s2,0(sp)
    8000441c:	02010413          	addi	s0,sp,32
    80004420:	00052783          	lw	a5,0(a0)
    80004424:	00079a63          	bnez	a5,80004438 <release+0x30>
    80004428:	00001517          	auipc	a0,0x1
    8000442c:	e8850513          	addi	a0,a0,-376 # 800052b0 <digits+0x28>
    80004430:	fffff097          	auipc	ra,0xfffff
    80004434:	1dc080e7          	jalr	476(ra) # 8000360c <panic>
    80004438:	01053903          	ld	s2,16(a0)
    8000443c:	00050493          	mv	s1,a0
    80004440:	fffff097          	auipc	ra,0xfffff
    80004444:	810080e7          	jalr	-2032(ra) # 80002c50 <mycpu>
    80004448:	fea910e3          	bne	s2,a0,80004428 <release+0x20>
    8000444c:	0004b823          	sd	zero,16(s1)
    80004450:	0ff0000f          	fence
    80004454:	0f50000f          	fence	iorw,ow
    80004458:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000445c:	ffffe097          	auipc	ra,0xffffe
    80004460:	7f4080e7          	jalr	2036(ra) # 80002c50 <mycpu>
    80004464:	100027f3          	csrr	a5,sstatus
    80004468:	0027f793          	andi	a5,a5,2
    8000446c:	04079a63          	bnez	a5,800044c0 <release+0xb8>
    80004470:	07852783          	lw	a5,120(a0)
    80004474:	02f05e63          	blez	a5,800044b0 <release+0xa8>
    80004478:	fff7871b          	addiw	a4,a5,-1
    8000447c:	06e52c23          	sw	a4,120(a0)
    80004480:	00071c63          	bnez	a4,80004498 <release+0x90>
    80004484:	07c52783          	lw	a5,124(a0)
    80004488:	00078863          	beqz	a5,80004498 <release+0x90>
    8000448c:	100027f3          	csrr	a5,sstatus
    80004490:	0027e793          	ori	a5,a5,2
    80004494:	10079073          	csrw	sstatus,a5
    80004498:	01813083          	ld	ra,24(sp)
    8000449c:	01013403          	ld	s0,16(sp)
    800044a0:	00813483          	ld	s1,8(sp)
    800044a4:	00013903          	ld	s2,0(sp)
    800044a8:	02010113          	addi	sp,sp,32
    800044ac:	00008067          	ret
    800044b0:	00001517          	auipc	a0,0x1
    800044b4:	e2050513          	addi	a0,a0,-480 # 800052d0 <digits+0x48>
    800044b8:	fffff097          	auipc	ra,0xfffff
    800044bc:	154080e7          	jalr	340(ra) # 8000360c <panic>
    800044c0:	00001517          	auipc	a0,0x1
    800044c4:	df850513          	addi	a0,a0,-520 # 800052b8 <digits+0x30>
    800044c8:	fffff097          	auipc	ra,0xfffff
    800044cc:	144080e7          	jalr	324(ra) # 8000360c <panic>

00000000800044d0 <holding>:
    800044d0:	00052783          	lw	a5,0(a0)
    800044d4:	00079663          	bnez	a5,800044e0 <holding+0x10>
    800044d8:	00000513          	li	a0,0
    800044dc:	00008067          	ret
    800044e0:	fe010113          	addi	sp,sp,-32
    800044e4:	00813823          	sd	s0,16(sp)
    800044e8:	00913423          	sd	s1,8(sp)
    800044ec:	00113c23          	sd	ra,24(sp)
    800044f0:	02010413          	addi	s0,sp,32
    800044f4:	01053483          	ld	s1,16(a0)
    800044f8:	ffffe097          	auipc	ra,0xffffe
    800044fc:	758080e7          	jalr	1880(ra) # 80002c50 <mycpu>
    80004500:	01813083          	ld	ra,24(sp)
    80004504:	01013403          	ld	s0,16(sp)
    80004508:	40a48533          	sub	a0,s1,a0
    8000450c:	00153513          	seqz	a0,a0
    80004510:	00813483          	ld	s1,8(sp)
    80004514:	02010113          	addi	sp,sp,32
    80004518:	00008067          	ret

000000008000451c <push_off>:
    8000451c:	fe010113          	addi	sp,sp,-32
    80004520:	00813823          	sd	s0,16(sp)
    80004524:	00113c23          	sd	ra,24(sp)
    80004528:	00913423          	sd	s1,8(sp)
    8000452c:	02010413          	addi	s0,sp,32
    80004530:	100024f3          	csrr	s1,sstatus
    80004534:	100027f3          	csrr	a5,sstatus
    80004538:	ffd7f793          	andi	a5,a5,-3
    8000453c:	10079073          	csrw	sstatus,a5
    80004540:	ffffe097          	auipc	ra,0xffffe
    80004544:	710080e7          	jalr	1808(ra) # 80002c50 <mycpu>
    80004548:	07852783          	lw	a5,120(a0)
    8000454c:	02078663          	beqz	a5,80004578 <push_off+0x5c>
    80004550:	ffffe097          	auipc	ra,0xffffe
    80004554:	700080e7          	jalr	1792(ra) # 80002c50 <mycpu>
    80004558:	07852783          	lw	a5,120(a0)
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	01013403          	ld	s0,16(sp)
    80004564:	0017879b          	addiw	a5,a5,1
    80004568:	06f52c23          	sw	a5,120(a0)
    8000456c:	00813483          	ld	s1,8(sp)
    80004570:	02010113          	addi	sp,sp,32
    80004574:	00008067          	ret
    80004578:	0014d493          	srli	s1,s1,0x1
    8000457c:	ffffe097          	auipc	ra,0xffffe
    80004580:	6d4080e7          	jalr	1748(ra) # 80002c50 <mycpu>
    80004584:	0014f493          	andi	s1,s1,1
    80004588:	06952e23          	sw	s1,124(a0)
    8000458c:	fc5ff06f          	j	80004550 <push_off+0x34>

0000000080004590 <pop_off>:
    80004590:	ff010113          	addi	sp,sp,-16
    80004594:	00813023          	sd	s0,0(sp)
    80004598:	00113423          	sd	ra,8(sp)
    8000459c:	01010413          	addi	s0,sp,16
    800045a0:	ffffe097          	auipc	ra,0xffffe
    800045a4:	6b0080e7          	jalr	1712(ra) # 80002c50 <mycpu>
    800045a8:	100027f3          	csrr	a5,sstatus
    800045ac:	0027f793          	andi	a5,a5,2
    800045b0:	04079663          	bnez	a5,800045fc <pop_off+0x6c>
    800045b4:	07852783          	lw	a5,120(a0)
    800045b8:	02f05a63          	blez	a5,800045ec <pop_off+0x5c>
    800045bc:	fff7871b          	addiw	a4,a5,-1
    800045c0:	06e52c23          	sw	a4,120(a0)
    800045c4:	00071c63          	bnez	a4,800045dc <pop_off+0x4c>
    800045c8:	07c52783          	lw	a5,124(a0)
    800045cc:	00078863          	beqz	a5,800045dc <pop_off+0x4c>
    800045d0:	100027f3          	csrr	a5,sstatus
    800045d4:	0027e793          	ori	a5,a5,2
    800045d8:	10079073          	csrw	sstatus,a5
    800045dc:	00813083          	ld	ra,8(sp)
    800045e0:	00013403          	ld	s0,0(sp)
    800045e4:	01010113          	addi	sp,sp,16
    800045e8:	00008067          	ret
    800045ec:	00001517          	auipc	a0,0x1
    800045f0:	ce450513          	addi	a0,a0,-796 # 800052d0 <digits+0x48>
    800045f4:	fffff097          	auipc	ra,0xfffff
    800045f8:	018080e7          	jalr	24(ra) # 8000360c <panic>
    800045fc:	00001517          	auipc	a0,0x1
    80004600:	cbc50513          	addi	a0,a0,-836 # 800052b8 <digits+0x30>
    80004604:	fffff097          	auipc	ra,0xfffff
    80004608:	008080e7          	jalr	8(ra) # 8000360c <panic>

000000008000460c <push_on>:
    8000460c:	fe010113          	addi	sp,sp,-32
    80004610:	00813823          	sd	s0,16(sp)
    80004614:	00113c23          	sd	ra,24(sp)
    80004618:	00913423          	sd	s1,8(sp)
    8000461c:	02010413          	addi	s0,sp,32
    80004620:	100024f3          	csrr	s1,sstatus
    80004624:	100027f3          	csrr	a5,sstatus
    80004628:	0027e793          	ori	a5,a5,2
    8000462c:	10079073          	csrw	sstatus,a5
    80004630:	ffffe097          	auipc	ra,0xffffe
    80004634:	620080e7          	jalr	1568(ra) # 80002c50 <mycpu>
    80004638:	07852783          	lw	a5,120(a0)
    8000463c:	02078663          	beqz	a5,80004668 <push_on+0x5c>
    80004640:	ffffe097          	auipc	ra,0xffffe
    80004644:	610080e7          	jalr	1552(ra) # 80002c50 <mycpu>
    80004648:	07852783          	lw	a5,120(a0)
    8000464c:	01813083          	ld	ra,24(sp)
    80004650:	01013403          	ld	s0,16(sp)
    80004654:	0017879b          	addiw	a5,a5,1
    80004658:	06f52c23          	sw	a5,120(a0)
    8000465c:	00813483          	ld	s1,8(sp)
    80004660:	02010113          	addi	sp,sp,32
    80004664:	00008067          	ret
    80004668:	0014d493          	srli	s1,s1,0x1
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	5e4080e7          	jalr	1508(ra) # 80002c50 <mycpu>
    80004674:	0014f493          	andi	s1,s1,1
    80004678:	06952e23          	sw	s1,124(a0)
    8000467c:	fc5ff06f          	j	80004640 <push_on+0x34>

0000000080004680 <pop_on>:
    80004680:	ff010113          	addi	sp,sp,-16
    80004684:	00813023          	sd	s0,0(sp)
    80004688:	00113423          	sd	ra,8(sp)
    8000468c:	01010413          	addi	s0,sp,16
    80004690:	ffffe097          	auipc	ra,0xffffe
    80004694:	5c0080e7          	jalr	1472(ra) # 80002c50 <mycpu>
    80004698:	100027f3          	csrr	a5,sstatus
    8000469c:	0027f793          	andi	a5,a5,2
    800046a0:	04078463          	beqz	a5,800046e8 <pop_on+0x68>
    800046a4:	07852783          	lw	a5,120(a0)
    800046a8:	02f05863          	blez	a5,800046d8 <pop_on+0x58>
    800046ac:	fff7879b          	addiw	a5,a5,-1
    800046b0:	06f52c23          	sw	a5,120(a0)
    800046b4:	07853783          	ld	a5,120(a0)
    800046b8:	00079863          	bnez	a5,800046c8 <pop_on+0x48>
    800046bc:	100027f3          	csrr	a5,sstatus
    800046c0:	ffd7f793          	andi	a5,a5,-3
    800046c4:	10079073          	csrw	sstatus,a5
    800046c8:	00813083          	ld	ra,8(sp)
    800046cc:	00013403          	ld	s0,0(sp)
    800046d0:	01010113          	addi	sp,sp,16
    800046d4:	00008067          	ret
    800046d8:	00001517          	auipc	a0,0x1
    800046dc:	c2050513          	addi	a0,a0,-992 # 800052f8 <digits+0x70>
    800046e0:	fffff097          	auipc	ra,0xfffff
    800046e4:	f2c080e7          	jalr	-212(ra) # 8000360c <panic>
    800046e8:	00001517          	auipc	a0,0x1
    800046ec:	bf050513          	addi	a0,a0,-1040 # 800052d8 <digits+0x50>
    800046f0:	fffff097          	auipc	ra,0xfffff
    800046f4:	f1c080e7          	jalr	-228(ra) # 8000360c <panic>

00000000800046f8 <__memset>:
    800046f8:	ff010113          	addi	sp,sp,-16
    800046fc:	00813423          	sd	s0,8(sp)
    80004700:	01010413          	addi	s0,sp,16
    80004704:	1a060e63          	beqz	a2,800048c0 <__memset+0x1c8>
    80004708:	40a007b3          	neg	a5,a0
    8000470c:	0077f793          	andi	a5,a5,7
    80004710:	00778693          	addi	a3,a5,7
    80004714:	00b00813          	li	a6,11
    80004718:	0ff5f593          	andi	a1,a1,255
    8000471c:	fff6071b          	addiw	a4,a2,-1
    80004720:	1b06e663          	bltu	a3,a6,800048cc <__memset+0x1d4>
    80004724:	1cd76463          	bltu	a4,a3,800048ec <__memset+0x1f4>
    80004728:	1a078e63          	beqz	a5,800048e4 <__memset+0x1ec>
    8000472c:	00b50023          	sb	a1,0(a0)
    80004730:	00100713          	li	a4,1
    80004734:	1ae78463          	beq	a5,a4,800048dc <__memset+0x1e4>
    80004738:	00b500a3          	sb	a1,1(a0)
    8000473c:	00200713          	li	a4,2
    80004740:	1ae78a63          	beq	a5,a4,800048f4 <__memset+0x1fc>
    80004744:	00b50123          	sb	a1,2(a0)
    80004748:	00300713          	li	a4,3
    8000474c:	18e78463          	beq	a5,a4,800048d4 <__memset+0x1dc>
    80004750:	00b501a3          	sb	a1,3(a0)
    80004754:	00400713          	li	a4,4
    80004758:	1ae78263          	beq	a5,a4,800048fc <__memset+0x204>
    8000475c:	00b50223          	sb	a1,4(a0)
    80004760:	00500713          	li	a4,5
    80004764:	1ae78063          	beq	a5,a4,80004904 <__memset+0x20c>
    80004768:	00b502a3          	sb	a1,5(a0)
    8000476c:	00700713          	li	a4,7
    80004770:	18e79e63          	bne	a5,a4,8000490c <__memset+0x214>
    80004774:	00b50323          	sb	a1,6(a0)
    80004778:	00700e93          	li	t4,7
    8000477c:	00859713          	slli	a4,a1,0x8
    80004780:	00e5e733          	or	a4,a1,a4
    80004784:	01059e13          	slli	t3,a1,0x10
    80004788:	01c76e33          	or	t3,a4,t3
    8000478c:	01859313          	slli	t1,a1,0x18
    80004790:	006e6333          	or	t1,t3,t1
    80004794:	02059893          	slli	a7,a1,0x20
    80004798:	40f60e3b          	subw	t3,a2,a5
    8000479c:	011368b3          	or	a7,t1,a7
    800047a0:	02859813          	slli	a6,a1,0x28
    800047a4:	0108e833          	or	a6,a7,a6
    800047a8:	03059693          	slli	a3,a1,0x30
    800047ac:	003e589b          	srliw	a7,t3,0x3
    800047b0:	00d866b3          	or	a3,a6,a3
    800047b4:	03859713          	slli	a4,a1,0x38
    800047b8:	00389813          	slli	a6,a7,0x3
    800047bc:	00f507b3          	add	a5,a0,a5
    800047c0:	00e6e733          	or	a4,a3,a4
    800047c4:	000e089b          	sext.w	a7,t3
    800047c8:	00f806b3          	add	a3,a6,a5
    800047cc:	00e7b023          	sd	a4,0(a5)
    800047d0:	00878793          	addi	a5,a5,8
    800047d4:	fed79ce3          	bne	a5,a3,800047cc <__memset+0xd4>
    800047d8:	ff8e7793          	andi	a5,t3,-8
    800047dc:	0007871b          	sext.w	a4,a5
    800047e0:	01d787bb          	addw	a5,a5,t4
    800047e4:	0ce88e63          	beq	a7,a4,800048c0 <__memset+0x1c8>
    800047e8:	00f50733          	add	a4,a0,a5
    800047ec:	00b70023          	sb	a1,0(a4)
    800047f0:	0017871b          	addiw	a4,a5,1
    800047f4:	0cc77663          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    800047f8:	00e50733          	add	a4,a0,a4
    800047fc:	00b70023          	sb	a1,0(a4)
    80004800:	0027871b          	addiw	a4,a5,2
    80004804:	0ac77e63          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004808:	00e50733          	add	a4,a0,a4
    8000480c:	00b70023          	sb	a1,0(a4)
    80004810:	0037871b          	addiw	a4,a5,3
    80004814:	0ac77663          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004818:	00e50733          	add	a4,a0,a4
    8000481c:	00b70023          	sb	a1,0(a4)
    80004820:	0047871b          	addiw	a4,a5,4
    80004824:	08c77e63          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004828:	00e50733          	add	a4,a0,a4
    8000482c:	00b70023          	sb	a1,0(a4)
    80004830:	0057871b          	addiw	a4,a5,5
    80004834:	08c77663          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004838:	00e50733          	add	a4,a0,a4
    8000483c:	00b70023          	sb	a1,0(a4)
    80004840:	0067871b          	addiw	a4,a5,6
    80004844:	06c77e63          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004848:	00e50733          	add	a4,a0,a4
    8000484c:	00b70023          	sb	a1,0(a4)
    80004850:	0077871b          	addiw	a4,a5,7
    80004854:	06c77663          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004858:	00e50733          	add	a4,a0,a4
    8000485c:	00b70023          	sb	a1,0(a4)
    80004860:	0087871b          	addiw	a4,a5,8
    80004864:	04c77e63          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004868:	00e50733          	add	a4,a0,a4
    8000486c:	00b70023          	sb	a1,0(a4)
    80004870:	0097871b          	addiw	a4,a5,9
    80004874:	04c77663          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004878:	00e50733          	add	a4,a0,a4
    8000487c:	00b70023          	sb	a1,0(a4)
    80004880:	00a7871b          	addiw	a4,a5,10
    80004884:	02c77e63          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004888:	00e50733          	add	a4,a0,a4
    8000488c:	00b70023          	sb	a1,0(a4)
    80004890:	00b7871b          	addiw	a4,a5,11
    80004894:	02c77663          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    80004898:	00e50733          	add	a4,a0,a4
    8000489c:	00b70023          	sb	a1,0(a4)
    800048a0:	00c7871b          	addiw	a4,a5,12
    800048a4:	00c77e63          	bgeu	a4,a2,800048c0 <__memset+0x1c8>
    800048a8:	00e50733          	add	a4,a0,a4
    800048ac:	00b70023          	sb	a1,0(a4)
    800048b0:	00d7879b          	addiw	a5,a5,13
    800048b4:	00c7f663          	bgeu	a5,a2,800048c0 <__memset+0x1c8>
    800048b8:	00f507b3          	add	a5,a0,a5
    800048bc:	00b78023          	sb	a1,0(a5)
    800048c0:	00813403          	ld	s0,8(sp)
    800048c4:	01010113          	addi	sp,sp,16
    800048c8:	00008067          	ret
    800048cc:	00b00693          	li	a3,11
    800048d0:	e55ff06f          	j	80004724 <__memset+0x2c>
    800048d4:	00300e93          	li	t4,3
    800048d8:	ea5ff06f          	j	8000477c <__memset+0x84>
    800048dc:	00100e93          	li	t4,1
    800048e0:	e9dff06f          	j	8000477c <__memset+0x84>
    800048e4:	00000e93          	li	t4,0
    800048e8:	e95ff06f          	j	8000477c <__memset+0x84>
    800048ec:	00000793          	li	a5,0
    800048f0:	ef9ff06f          	j	800047e8 <__memset+0xf0>
    800048f4:	00200e93          	li	t4,2
    800048f8:	e85ff06f          	j	8000477c <__memset+0x84>
    800048fc:	00400e93          	li	t4,4
    80004900:	e7dff06f          	j	8000477c <__memset+0x84>
    80004904:	00500e93          	li	t4,5
    80004908:	e75ff06f          	j	8000477c <__memset+0x84>
    8000490c:	00600e93          	li	t4,6
    80004910:	e6dff06f          	j	8000477c <__memset+0x84>

0000000080004914 <__memmove>:
    80004914:	ff010113          	addi	sp,sp,-16
    80004918:	00813423          	sd	s0,8(sp)
    8000491c:	01010413          	addi	s0,sp,16
    80004920:	0e060863          	beqz	a2,80004a10 <__memmove+0xfc>
    80004924:	fff6069b          	addiw	a3,a2,-1
    80004928:	0006881b          	sext.w	a6,a3
    8000492c:	0ea5e863          	bltu	a1,a0,80004a1c <__memmove+0x108>
    80004930:	00758713          	addi	a4,a1,7
    80004934:	00a5e7b3          	or	a5,a1,a0
    80004938:	40a70733          	sub	a4,a4,a0
    8000493c:	0077f793          	andi	a5,a5,7
    80004940:	00f73713          	sltiu	a4,a4,15
    80004944:	00174713          	xori	a4,a4,1
    80004948:	0017b793          	seqz	a5,a5
    8000494c:	00e7f7b3          	and	a5,a5,a4
    80004950:	10078863          	beqz	a5,80004a60 <__memmove+0x14c>
    80004954:	00900793          	li	a5,9
    80004958:	1107f463          	bgeu	a5,a6,80004a60 <__memmove+0x14c>
    8000495c:	0036581b          	srliw	a6,a2,0x3
    80004960:	fff8081b          	addiw	a6,a6,-1
    80004964:	02081813          	slli	a6,a6,0x20
    80004968:	01d85893          	srli	a7,a6,0x1d
    8000496c:	00858813          	addi	a6,a1,8
    80004970:	00058793          	mv	a5,a1
    80004974:	00050713          	mv	a4,a0
    80004978:	01088833          	add	a6,a7,a6
    8000497c:	0007b883          	ld	a7,0(a5)
    80004980:	00878793          	addi	a5,a5,8
    80004984:	00870713          	addi	a4,a4,8
    80004988:	ff173c23          	sd	a7,-8(a4)
    8000498c:	ff0798e3          	bne	a5,a6,8000497c <__memmove+0x68>
    80004990:	ff867713          	andi	a4,a2,-8
    80004994:	02071793          	slli	a5,a4,0x20
    80004998:	0207d793          	srli	a5,a5,0x20
    8000499c:	00f585b3          	add	a1,a1,a5
    800049a0:	40e686bb          	subw	a3,a3,a4
    800049a4:	00f507b3          	add	a5,a0,a5
    800049a8:	06e60463          	beq	a2,a4,80004a10 <__memmove+0xfc>
    800049ac:	0005c703          	lbu	a4,0(a1)
    800049b0:	00e78023          	sb	a4,0(a5)
    800049b4:	04068e63          	beqz	a3,80004a10 <__memmove+0xfc>
    800049b8:	0015c603          	lbu	a2,1(a1)
    800049bc:	00100713          	li	a4,1
    800049c0:	00c780a3          	sb	a2,1(a5)
    800049c4:	04e68663          	beq	a3,a4,80004a10 <__memmove+0xfc>
    800049c8:	0025c603          	lbu	a2,2(a1)
    800049cc:	00200713          	li	a4,2
    800049d0:	00c78123          	sb	a2,2(a5)
    800049d4:	02e68e63          	beq	a3,a4,80004a10 <__memmove+0xfc>
    800049d8:	0035c603          	lbu	a2,3(a1)
    800049dc:	00300713          	li	a4,3
    800049e0:	00c781a3          	sb	a2,3(a5)
    800049e4:	02e68663          	beq	a3,a4,80004a10 <__memmove+0xfc>
    800049e8:	0045c603          	lbu	a2,4(a1)
    800049ec:	00400713          	li	a4,4
    800049f0:	00c78223          	sb	a2,4(a5)
    800049f4:	00e68e63          	beq	a3,a4,80004a10 <__memmove+0xfc>
    800049f8:	0055c603          	lbu	a2,5(a1)
    800049fc:	00500713          	li	a4,5
    80004a00:	00c782a3          	sb	a2,5(a5)
    80004a04:	00e68663          	beq	a3,a4,80004a10 <__memmove+0xfc>
    80004a08:	0065c703          	lbu	a4,6(a1)
    80004a0c:	00e78323          	sb	a4,6(a5)
    80004a10:	00813403          	ld	s0,8(sp)
    80004a14:	01010113          	addi	sp,sp,16
    80004a18:	00008067          	ret
    80004a1c:	02061713          	slli	a4,a2,0x20
    80004a20:	02075713          	srli	a4,a4,0x20
    80004a24:	00e587b3          	add	a5,a1,a4
    80004a28:	f0f574e3          	bgeu	a0,a5,80004930 <__memmove+0x1c>
    80004a2c:	02069613          	slli	a2,a3,0x20
    80004a30:	02065613          	srli	a2,a2,0x20
    80004a34:	fff64613          	not	a2,a2
    80004a38:	00e50733          	add	a4,a0,a4
    80004a3c:	00c78633          	add	a2,a5,a2
    80004a40:	fff7c683          	lbu	a3,-1(a5)
    80004a44:	fff78793          	addi	a5,a5,-1
    80004a48:	fff70713          	addi	a4,a4,-1
    80004a4c:	00d70023          	sb	a3,0(a4)
    80004a50:	fec798e3          	bne	a5,a2,80004a40 <__memmove+0x12c>
    80004a54:	00813403          	ld	s0,8(sp)
    80004a58:	01010113          	addi	sp,sp,16
    80004a5c:	00008067          	ret
    80004a60:	02069713          	slli	a4,a3,0x20
    80004a64:	02075713          	srli	a4,a4,0x20
    80004a68:	00170713          	addi	a4,a4,1
    80004a6c:	00e50733          	add	a4,a0,a4
    80004a70:	00050793          	mv	a5,a0
    80004a74:	0005c683          	lbu	a3,0(a1)
    80004a78:	00178793          	addi	a5,a5,1
    80004a7c:	00158593          	addi	a1,a1,1
    80004a80:	fed78fa3          	sb	a3,-1(a5)
    80004a84:	fee798e3          	bne	a5,a4,80004a74 <__memmove+0x160>
    80004a88:	f89ff06f          	j	80004a10 <__memmove+0xfc>
	...
