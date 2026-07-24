
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	a3813103          	ld	sp,-1480(sp) # 8000ba38 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1cd060ef          	jal	ra,800069e8 <start>

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
    80001084:	50c000ef          	jal	ra,80001590 <_ZN6Kernel21supervisorTrapHandlerEv>

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

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:
/**
 * C API function for allocation on heap
 * @param size Size in bytes to be allocated
 * @return pointer to allocated heap space
 */
void* mem_alloc(size_t size) {
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16
    size_t size_in_blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001150:	03f50513          	addi	a0,a0,63
    80001154:	00655513          	srli	a0,a0,0x6
    
    __asm__ volatile("mv a1, %0" : : "r"(size_in_blocks)); //send size as argument for ecall
    80001158:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01"); //send opcode as second argument (0x01 - mem_alloc)
    8000115c:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001160:	00000073          	ecall

    void* ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001164:	00050513          	mv	a0,a0
    return ret;
}
    80001168:	00813403          	ld	s0,8(sp)
    8000116c:	01010113          	addi	sp,sp,16
    80001170:	00008067          	ret

0000000080001174 <_Z8mem_freePv>:
/**
 * C API function to free allocated space
 * @param ptr pointer to heap space allocated by mem_alloc
 * @return negative error code or 0 for successfull free
 */
int mem_free (void* ptr) {
    80001174:	ff010113          	addi	sp,sp,-16
    80001178:	00813423          	sd	s0,8(sp)
    8000117c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ptr)); //send pointer as argument for ecall
    80001180:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02"); //send opcode as second argument (0x02 - mem_free)
    80001184:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001188:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    8000118c:	00050513          	mv	a0,a0
    return (int)ret;
}
    80001190:	0005051b          	sext.w	a0,a0
    80001194:	00813403          	ld	s0,8(sp)
    80001198:	01010113          	addi	sp,sp,16
    8000119c:	00008067          	ret

00000000800011a0 <_Z13thread_createPP3TCBPFvPvES2_>:
 * C API function to start thread on start_routine function
 * @param arg pointer to the function argument
 * @param handle if created successfully here is written the handle of new thread
 * @return negative error code or 0 for successfull free
 */
int thread_create(thread_t* handle, void (*start_routine)(void*), void* arg) {
    800011a0:	fd010113          	addi	sp,sp,-48
    800011a4:	02113423          	sd	ra,40(sp)
    800011a8:	02813023          	sd	s0,32(sp)
    800011ac:	00913c23          	sd	s1,24(sp)
    800011b0:	01213823          	sd	s2,16(sp)
    800011b4:	01313423          	sd	s3,8(sp)
    800011b8:	03010413          	addi	s0,sp,48
    800011bc:	00050493          	mv	s1,a0
    800011c0:	00058913          	mv	s2,a1
    800011c4:	00060993          	mv	s3,a2
    uint64* stack = (uint64*) mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    800011c8:	00008537          	lui	a0,0x8
    800011cc:	00000097          	auipc	ra,0x0
    800011d0:	f78080e7          	jalr	-136(ra) # 80001144 <_Z9mem_allocm>
    __asm__ volatile("mv a7, %0" : : "r"(arg));
    800011d4:	00098893          	mv	a7,s3
    __asm__ volatile("mv a3, %0" : : "r"(stack));
    800011d8:	00050693          	mv	a3,a0
    __asm__ volatile("mv a2, %0" : : "r"(start_routine));
    800011dc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" : : "r"(handle));
    800011e0:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x11");
    800011e4:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800011e8:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    800011ec:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    800011f0:	0005051b          	sext.w	a0,a0
    800011f4:	02813083          	ld	ra,40(sp)
    800011f8:	02013403          	ld	s0,32(sp)
    800011fc:	01813483          	ld	s1,24(sp)
    80001200:	01013903          	ld	s2,16(sp)
    80001204:	00813983          	ld	s3,8(sp)
    80001208:	03010113          	addi	sp,sp,48
    8000120c:	00008067          	ret

0000000080001210 <_Z11thread_exitv>:

/**
 * C API function to terminate current thread
 * @return negative error code or 0 for successfull free
 */
int thread_exit() {
    80001210:	ff010113          	addi	sp,sp,-16
    80001214:	00813423          	sd	s0,8(sp)
    80001218:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    8000121c:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    80001220:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001224:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001228:	0005051b          	sext.w	a0,a0
    8000122c:	00813403          	ld	s0,8(sp)
    80001230:	01010113          	addi	sp,sp,16
    80001234:	00008067          	ret

0000000080001238 <_Z15thread_dispatchv>:

/**
 * C API function to potentially switch to another thread
 */
void thread_dispatch (){
    80001238:	ff010113          	addi	sp,sp,-16
    8000123c:	00813423          	sd	s0,8(sp)
    80001240:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001244:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_Z8sem_openPP10KSemaphorej>:
 * C API function to open a semaphore
 * @param handle pointer to semaphore handle
 * @param init initial value of semaphore
 * @return negative error code or 0 for success
 */
int sem_open(sem_t* handle, unsigned init) {
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (init));
    80001264:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001268:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    8000126c:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    80001270:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001274:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001278:	0005051b          	sext.w	a0,a0
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z9sem_closeP10KSemaphore>:
/**
 * C API function to close a semaphore
 * @param handle semaphore handle
 * @return negative error code or 0 for success
 */
int sem_close(sem_t handle) {
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (handle));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001298:	02200513          	li	a0,34
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

00000000800012b4 <_Z8sem_waitP10KSemaphore>:
/**
 * C API function to wait on a semaphore
 * @param id semaphore handle
 * @return negative error code or 0 for success
 */
int sem_wait(sem_t id) {
    800012b4:	ff010113          	addi	sp,sp,-16
    800012b8:	00813423          	sd	s0,8(sp)
    800012bc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012c0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800012c4:	02300513          	li	a0,35
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

00000000800012e0 <_Z10sem_wait_nP10KSemaphorej>:
 * C API function to wait on a semaphore for n resources
 * @param id semaphore handle
 * @param n number of resources to wait for
 * @return negative error code or 0 for success
 */
int sem_wait_n(sem_t id, unsigned n) { //bitan je redosled jer n stize u a1 a id u a0, i drugi redosled bi pregazio 
    800012e0:	ff010113          	addi	sp,sp,-16
    800012e4:	00813423          	sd	s0,8(sp)
    800012e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (n));
    800012ec:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    800012f0:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x25");
    800012f4:	02500513          	li	a0,37
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

0000000080001310 <_Z10sem_signalP10KSemaphore>:
/**
 * C API function to signal a semaphore
 * @param id semaphore handle
 * @return negative error code or 0 for success
 */
int sem_signal(sem_t id) {
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    8000131c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001320:	02400513          	li	a0,36
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

000000008000133c <_Z12sem_signal_nP10KSemaphorej>:
 * C API function to signal a semaphore for n resources
 * @param id semaphore handle
 * @param n number of resources to signal
 * @return negative error code or 0 for success
 */
int sem_signal_n(sem_t id, unsigned n) {
    8000133c:	ff010113          	addi	sp,sp,-16
    80001340:	00813423          	sd	s0,8(sp)
    80001344:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a2, %0" : : "r" (n));
    80001348:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %0" : : "r" (id));
    8000134c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x26");
    80001350:	02600513          	li	a0,38
    __asm__ volatile ("ecall");
    80001354:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001358:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    8000135c:	0005051b          	sext.w	a0,a0
    80001360:	00813403          	ld	s0,8(sp)
    80001364:	01010113          	addi	sp,sp,16
    80001368:	00008067          	ret

000000008000136c <_Z10time_sleepm>:
/**
 * C API function to sleep for a specified time
 * @param time time to sleep
 * @return negative error code or 0 for success
 */
int time_sleep(time_t time) {
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a1, %0" : : "r" (time));
    80001378:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    8000137c:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    80001380:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0, a0" : "=r"(returnValue));
    80001384:	00050513          	mv	a0,a0
    return (int)returnValue;
}
    80001388:	0005051b          	sext.w	a0,a0
    8000138c:	00813403          	ld	s0,8(sp)
    80001390:	01010113          	addi	sp,sp,16
    80001394:	00008067          	ret

0000000080001398 <_Z4getcv>:

/**
 * C API function to get a character from the input buffer
 * @return character from the input buffer
 */
char getc() {
    80001398:	ff010113          	addi	sp,sp,-16
    8000139c:	00813423          	sd	s0,8(sp)
    800013a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    800013a4:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    800013a8:	00000073          	ecall

    char ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    800013ac:	00050513          	mv	a0,a0
    return ret;
}
    800013b0:	0ff57513          	andi	a0,a0,255
    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_Z4putcc>:

/**
 * C API function to put a character into the output buffer
 * @param c character to put into the output buffer
 */
void putc(char c) {
    800013c0:	ff010113          	addi	sp,sp,-16
    800013c4:	00813423          	sd	s0,8(sp)
    800013c8:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r" (c));
    800013cc:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    800013d0:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    800013d4:	00000073          	ecall
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_ZN6Kernel16outputThreadBodyEPv>:
    // Nit koja jedina prazni buffOUT na konzolu (mora biti nit, ne kod u
    // prekidnoj rutini, jer KBuffer::get() blokira na semaforu kad je prazan).
    TCB::createThread(outputThreadBody, nullptr, new uint64[TCB::STACK_SIZE]);
}

void Kernel::outputThreadBody(void*) {
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00113423          	sd	ra,8(sp)
    800013ec:	00813023          	sd	s0,0(sp)
    800013f0:	01010413          	addi	s0,sp,16
    800013f4:	00c0006f          	j	80001400 <_ZN6Kernel16outputThreadBodyEPv+0x1c>
    while (true) {
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
            char c = buffOUT->get(); //blokira (preko semafora) dok ima nesto za slanje - bezbedno ovde, ovo je obicna nit, ne prekidna rutina
            (*(char *) CONSOLE_TX_DATA) = c;
        }
        thread_dispatch(); //ako konzola trenutno nije spremna za prijem, ustupi procesor umesto da se vrti u mestu
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	e40080e7          	jalr	-448(ra) # 80001238 <_Z15thread_dispatchv>
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    80001400:	0000a797          	auipc	a5,0xa
    80001404:	6107b783          	ld	a5,1552(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001408:	0007b783          	ld	a5,0(a5)
    8000140c:	0007c783          	lbu	a5,0(a5)
    80001410:	0ff7f793          	andi	a5,a5,255
    80001414:	0207f793          	andi	a5,a5,32
    80001418:	fe0780e3          	beqz	a5,800013f8 <_ZN6Kernel16outputThreadBodyEPv+0x14>
            char c = buffOUT->get(); //blokira (preko semafora) dok ima nesto za slanje - bezbedno ovde, ovo je obicna nit, ne prekidna rutina
    8000141c:	0000a517          	auipc	a0,0xa
    80001420:	69453503          	ld	a0,1684(a0) # 8000bab0 <_ZN6Kernel7buffOUTE>
    80001424:	00002097          	auipc	ra,0x2
    80001428:	df8080e7          	jalr	-520(ra) # 8000321c <_ZN7KBuffer3getEv>
            (*(char *) CONSOLE_TX_DATA) = c;
    8000142c:	0000a797          	auipc	a5,0xa
    80001430:	5fc7b783          	ld	a5,1532(a5) # 8000ba28 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001434:	0007b783          	ld	a5,0(a5)
    80001438:	00a78023          	sb	a0,0(a5)
        while (*((volatile char*) CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT) {
    8000143c:	fc5ff06f          	j	80001400 <_ZN6Kernel16outputThreadBodyEPv+0x1c>

0000000080001440 <_ZN6Kernel10popSppSpieEv>:
    }
}

void Kernel::popSppSpie() {
    80001440:	ff010113          	addi	sp,sp,-16
    80001444:	00813423          	sd	s0,8(sp)
    80001448:	01010413          	addi	s0,sp,16
    static inline void ms_sstatus(uint64 mask) {
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    }

    static inline void mc_sstatus(uint64 mask) {
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    8000144c:	10000793          	li	a5,256
    80001450:	1007b073          	csrc	sstatus,a5
    mc_sstatus(SSTATUS_SPP);
    __asm__ volatile("csrw sepc, ra"); //sepc = adresa odmah iza poziva ove funkcije (ra), da bi sret "nastavio" tacno tu, samo u User modu
    80001454:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret"); //vrati se iz trap-a
    80001458:	10200073          	sret
}
    8000145c:	00813403          	ld	s0,8(sp)
    80001460:	01010113          	addi	sp,sp,16
    80001464:	00008067          	ret

0000000080001468 <_ZN6Kernel11initBuffersEv>:

KBuffer *Kernel::buffIN;
KBuffer *Kernel::buffOUT;

void Kernel::initBuffers() {
    80001468:	fe010113          	addi	sp,sp,-32
    8000146c:	00113c23          	sd	ra,24(sp)
    80001470:	00813823          	sd	s0,16(sp)
    80001474:	00913423          	sd	s1,8(sp)
    80001478:	01213023          	sd	s2,0(sp)
    8000147c:	02010413          	addi	s0,sp,32
        char get();
        KBuffer(int cap);
        ~KBuffer();
        void* operator new(size_t size)
        {
            return MemoryAllocator::instance().kmem_alloc(size);
    80001480:	00002097          	auipc	ra,0x2
    80001484:	818080e7          	jalr	-2024(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001488:	03000593          	li	a1,48
    8000148c:	00002097          	auipc	ra,0x2
    80001490:	898080e7          	jalr	-1896(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    80001494:	00050493          	mv	s1,a0
    buffIN = new KBuffer(512);
    80001498:	20000593          	li	a1,512
    8000149c:	00002097          	auipc	ra,0x2
    800014a0:	c40080e7          	jalr	-960(ra) # 800030dc <_ZN7KBufferC1Ei>
    800014a4:	0000a797          	auipc	a5,0xa
    800014a8:	6097ba23          	sd	s1,1556(a5) # 8000bab8 <_ZN6Kernel6buffINE>
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	7ec080e7          	jalr	2028(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800014b4:	03000593          	li	a1,48
    800014b8:	00002097          	auipc	ra,0x2
    800014bc:	86c080e7          	jalr	-1940(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    800014c0:	00050493          	mv	s1,a0
    buffOUT = new KBuffer(512);
    800014c4:	20000593          	li	a1,512
    800014c8:	00002097          	auipc	ra,0x2
    800014cc:	c14080e7          	jalr	-1004(ra) # 800030dc <_ZN7KBufferC1Ei>
    800014d0:	0000a797          	auipc	a5,0xa
    800014d4:	5e97b023          	sd	s1,1504(a5) # 8000bab0 <_ZN6Kernel7buffOUTE>
}
    800014d8:	01813083          	ld	ra,24(sp)
    800014dc:	01013403          	ld	s0,16(sp)
    800014e0:	00813483          	ld	s1,8(sp)
    800014e4:	00013903          	ld	s2,0(sp)
    800014e8:	02010113          	addi	sp,sp,32
    800014ec:	00008067          	ret
    800014f0:	00050913          	mv	s2,a0
        }
        void operator delete(void* ptr)
        {
            MemoryAllocator::instance().kmem_free(ptr);
    800014f4:	00001097          	auipc	ra,0x1
    800014f8:	7a4080e7          	jalr	1956(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800014fc:	00048593          	mv	a1,s1
    80001500:	00002097          	auipc	ra,0x2
    80001504:	9ac080e7          	jalr	-1620(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
            return;
    80001508:	00090513          	mv	a0,s2
    8000150c:	0000b097          	auipc	ra,0xb
    80001510:	72c080e7          	jalr	1836(ra) # 8000cc38 <_Unwind_Resume>
    80001514:	00050913          	mv	s2,a0
            MemoryAllocator::instance().kmem_free(ptr);
    80001518:	00001097          	auipc	ra,0x1
    8000151c:	780080e7          	jalr	1920(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001520:	00048593          	mv	a1,s1
    80001524:	00002097          	auipc	ra,0x2
    80001528:	988080e7          	jalr	-1656(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
            return;
    8000152c:	00090513          	mv	a0,s2
    80001530:	0000b097          	auipc	ra,0xb
    80001534:	708080e7          	jalr	1800(ra) # 8000cc38 <_Unwind_Resume>

0000000080001538 <_ZN6Kernel4initEv>:
void Kernel::init() {
    80001538:	ff010113          	addi	sp,sp,-16
    8000153c:	00113423          	sd	ra,8(sp)
    80001540:	00813023          	sd	s0,0(sp)
    80001544:	01010413          	addi	s0,sp,16
    initBuffers();
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	f20080e7          	jalr	-224(ra) # 80001468 <_ZN6Kernel11initBuffersEv>
    w_stvec((uint64)&supervisorTrap);
    80001550:	0000a797          	auipc	a5,0xa
    80001554:	4f07b783          	ld	a5,1264(a5) # 8000ba40 <_GLOBAL_OFFSET_TABLE_+0x48>
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
        return x;
    }

    static inline void w_stvec(uint64 x) {
        __asm__ volatile("csrw stvec, %0" : : "r"(x));
    80001558:	10579073          	csrw	stvec,a5
    TCB::createThread(outputThreadBody, nullptr, new uint64[TCB::STACK_SIZE]);
    8000155c:	00008537          	lui	a0,0x8
    80001560:	00001097          	auipc	ra,0x1
    80001564:	13c080e7          	jalr	316(ra) # 8000269c <_Znam>
    80001568:	00050613          	mv	a2,a0
    8000156c:	00000593          	li	a1,0
    80001570:	00000517          	auipc	a0,0x0
    80001574:	e7450513          	addi	a0,a0,-396 # 800013e4 <_ZN6Kernel16outputThreadBodyEPv>
    80001578:	00001097          	auipc	ra,0x1
    8000157c:	b84080e7          	jalr	-1148(ra) # 800020fc <_ZN3TCB12createThreadEPFvPvES0_Pm>
}
    80001580:	00813083          	ld	ra,8(sp)
    80001584:	00013403          	ld	s0,0(sp)
    80001588:	01010113          	addi	sp,sp,16
    8000158c:	00008067          	ret

0000000080001590 <_ZN6Kernel21supervisorTrapHandlerEv>:

using Body = void (*)(void*);

void Kernel::supervisorTrapHandler()
{
    80001590:	f5010113          	addi	sp,sp,-176
    80001594:	0a113423          	sd	ra,168(sp)
    80001598:	0a813023          	sd	s0,160(sp)
    8000159c:	08913c23          	sd	s1,152(sp)
    800015a0:	09213823          	sd	s2,144(sp)
    800015a4:	09313423          	sd	s3,136(sp)
    800015a8:	09413023          	sd	s4,128(sp)
    800015ac:	0b010413          	addi	s0,sp,176
        __asm__ volatile("csrr %0, scause" : "=r"(x));
    800015b0:	142027f3          	csrr	a5,scause
    800015b4:	f8f43023          	sd	a5,-128(s0)
        return x;
    800015b8:	f8043703          	ld	a4,-128(s0)
    uint64 scause = r_scause();
    if(scause == 0x8000000000000001UL) {//timer interrupt can be recognized by the value 1 only in the least and most significant bits in the scause register.
    800015bc:	fff00793          	li	a5,-1
    800015c0:	03f79793          	slli	a5,a5,0x3f
    800015c4:	00178793          	addi	a5,a5,1
    800015c8:	06f70e63          	beq	a4,a5,80001644 <_ZN6Kernel21supervisorTrapHandlerEv+0xb4>

            w_sstatus(sstatus);
            w_sepc(sepc);
        }
    }
    else if(scause == 0x8000000000000009UL){ //Hardware interrupt
    800015cc:	fff00793          	li	a5,-1
    800015d0:	03f79793          	slli	a5,a5,0x3f
    800015d4:	00978793          	addi	a5,a5,9
    800015d8:	0ef70063          	beq	a4,a5,800016b8 <_ZN6Kernel21supervisorTrapHandlerEv+0x128>
                status = *((char *) CONSOLE_STATUS);
            }
        }
        plic_complete(irq);
    }
    else if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800015dc:	ff870713          	addi	a4,a4,-8
    800015e0:	00100793          	li	a5,1
    800015e4:	3ae7e063          	bltu	a5,a4,80001984 <_ZN6Kernel21supervisorTrapHandlerEv+0x3f4>
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    800015e8:	141027f3          	csrr	a5,sepc
    800015ec:	faf43423          	sd	a5,-88(s0)
        return x;
    800015f0:	fa843783          	ld	a5,-88(s0)
    {
        // Not external interupt
        // ecall from user or supervisor mode

        uint64 volatile sepc = r_sepc() + 4;
    800015f4:	00478793          	addi	a5,a5,4
    800015f8:	f6f43423          	sd	a5,-152(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    800015fc:	100027f3          	csrr	a5,sstatus
    80001600:	faf43023          	sd	a5,-96(s0)
        return x;
    80001604:	fa043783          	ld	a5,-96(s0)
        uint64 volatile sstatus =  r_sstatus();
    80001608:	f6f43823          	sd	a5,-144(s0)
        __asm__ volatile("mv %0, a0" : "=r"(x));
    8000160c:	00050793          	mv	a5,a0
    80001610:	f8f43c23          	sd	a5,-104(s0)
        return x;
    80001614:	f9843783          	ld	a5,-104(s0)
        
        uint64 volatile opcode = r_a0();
    80001618:	f6f43c23          	sd	a5,-136(s0)
        KSemaphore* semHandlePtr;
        int returnValue;
        
        int value;
        void* pointer;
        switch (opcode) {
    8000161c:	f7843783          	ld	a5,-136(s0)
    80001620:	04200713          	li	a4,66
    80001624:	14f76e63          	bltu	a4,a5,80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
    80001628:	00279793          	slli	a5,a5,0x2
    8000162c:	00008717          	auipc	a4,0x8
    80001630:	a5c70713          	addi	a4,a4,-1444 # 80009088 <CONSOLE_STATUS+0x78>
    80001634:	00e787b3          	add	a5,a5,a4
    80001638:	0007a783          	lw	a5,0(a5)
    8000163c:	00e787b3          	add	a5,a5,a4
    80001640:	00078067          	jr	a5
        __asm__ volatile("csrc sip, %0" : : "r"(mask));
    80001644:	00200793          	li	a5,2
    80001648:	1447b073          	csrc	sip,a5
        TCB::time_tick(); // increases time for sleeping threads.
    8000164c:	00001097          	auipc	ra,0x1
    80001650:	ec4080e7          	jalr	-316(ra) # 80002510 <_ZN3TCB9time_tickEv>
        TCB::timeSliceCounter++;
    80001654:	0000a717          	auipc	a4,0xa
    80001658:	3cc73703          	ld	a4,972(a4) # 8000ba20 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000165c:	00073783          	ld	a5,0(a4)
    80001660:	00178793          	addi	a5,a5,1
    80001664:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice()) {
    80001668:	0000a717          	auipc	a4,0xa
    8000166c:	3e073703          	ld	a4,992(a4) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001670:	00073703          	ld	a4,0(a4)

    static TCB *running;

    static List<TCB> SleepingThreads;

    uint64 getTimeSlice() const { return timeSlice; }
    80001674:	05073703          	ld	a4,80(a4)
    80001678:	10e7ec63          	bltu	a5,a4,80001790 <_ZN6Kernel21supervisorTrapHandlerEv+0x200>
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    8000167c:	141027f3          	csrr	a5,sepc
    80001680:	f8f43823          	sd	a5,-112(s0)
        return x;
    80001684:	f9043783          	ld	a5,-112(s0)
            uint64 volatile sepc = r_sepc();
    80001688:	f4f43c23          	sd	a5,-168(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    8000168c:	100027f3          	csrr	a5,sstatus
    80001690:	f8f43423          	sd	a5,-120(s0)
        return x;
    80001694:	f8843783          	ld	a5,-120(s0)
            uint64 volatile sstatus = r_sstatus();
    80001698:	f6f43023          	sd	a5,-160(s0)
            TCB::dispatch();
    8000169c:	00001097          	auipc	ra,0x1
    800016a0:	b74080e7          	jalr	-1164(ra) # 80002210 <_ZN3TCB8dispatchEv>
            w_sstatus(sstatus);
    800016a4:	f6043783          	ld	a5,-160(s0)
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    800016a8:	10079073          	csrw	sstatus,a5
            w_sepc(sepc);
    800016ac:	f5843783          	ld	a5,-168(s0)
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    800016b0:	14179073          	csrw	sepc,a5
    }
    800016b4:	0dc0006f          	j	80001790 <_ZN6Kernel21supervisorTrapHandlerEv+0x200>
        int irq = plic_claim();
    800016b8:	00006097          	auipc	ra,0x6
    800016bc:	b8c080e7          	jalr	-1140(ra) # 80007244 <plic_claim>
    800016c0:	00050493          	mv	s1,a0
        if (irq == 10) // Keyboard interrupt
    800016c4:	00a00793          	li	a5,10
    800016c8:	00f50a63          	beq	a0,a5,800016dc <_ZN6Kernel21supervisorTrapHandlerEv+0x14c>
        plic_complete(irq);
    800016cc:	00048513          	mv	a0,s1
    800016d0:	00006097          	auipc	ra,0x6
    800016d4:	bac080e7          	jalr	-1108(ra) # 8000727c <plic_complete>
    800016d8:	0b80006f          	j	80001790 <_ZN6Kernel21supervisorTrapHandlerEv+0x200>
            volatile char status = *((char *) CONSOLE_STATUS);
    800016dc:	0000a797          	auipc	a5,0xa
    800016e0:	3347b783          	ld	a5,820(a5) # 8000ba10 <_GLOBAL_OFFSET_TABLE_+0x18>
    800016e4:	0007b903          	ld	s2,0(a5)
    800016e8:	00094783          	lbu	a5,0(s2)
    800016ec:	f4f40ba3          	sb	a5,-169(s0)
    800016f0:	0280006f          	j	80001718 <_ZN6Kernel21supervisorTrapHandlerEv+0x188>
                if (!buffIN->full()) buffIN->put(c);
    800016f4:	00098593          	mv	a1,s3
    800016f8:	00002097          	auipc	ra,0x2
    800016fc:	a9c080e7          	jalr	-1380(ra) # 80003194 <_ZN7KBuffer3putEc>
    80001700:	0480006f          	j	80001748 <_ZN6Kernel21supervisorTrapHandlerEv+0x1b8>
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
    80001704:	00098593          	mv	a1,s3
    80001708:	00002097          	auipc	ra,0x2
    8000170c:	a8c080e7          	jalr	-1396(ra) # 80003194 <_ZN7KBuffer3putEc>
                status = *((char *) CONSOLE_STATUS);
    80001710:	00094783          	lbu	a5,0(s2)
    80001714:	f4f40ba3          	sb	a5,-169(s0)
            while (status & CONSOLE_RX_STATUS_BIT) { //receive data dok god ima novopristiglih znakova
    80001718:	f5744783          	lbu	a5,-169(s0)
    8000171c:	0017f793          	andi	a5,a5,1
    80001720:	fa0786e3          	beqz	a5,800016cc <_ZN6Kernel21supervisorTrapHandlerEv+0x13c>
                char c = (*(char *) CONSOLE_RX_DATA);
    80001724:	0000a797          	auipc	a5,0xa
    80001728:	2e47b783          	ld	a5,740(a5) # 8000ba08 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000172c:	0007b783          	ld	a5,0(a5)
    80001730:	0007c983          	lbu	s3,0(a5)
                if (!buffIN->full()) buffIN->put(c);
    80001734:	0000a517          	auipc	a0,0xa
    80001738:	38453503          	ld	a0,900(a0) # 8000bab8 <_ZN6Kernel6buffINE>
        }
        bool full() { return cnt==cap;}
    8000173c:	02852703          	lw	a4,40(a0)
    80001740:	00052783          	lw	a5,0(a0)
    80001744:	faf718e3          	bne	a4,a5,800016f4 <_ZN6Kernel21supervisorTrapHandlerEv+0x164>
                if (!buffOUT->full()) buffOUT->put(c); //eho na konzolu
    80001748:	0000a517          	auipc	a0,0xa
    8000174c:	36853503          	ld	a0,872(a0) # 8000bab0 <_ZN6Kernel7buffOUTE>
    80001750:	02852703          	lw	a4,40(a0)
    80001754:	00052783          	lw	a5,0(a0)
    80001758:	faf70ce3          	beq	a4,a5,80001710 <_ZN6Kernel21supervisorTrapHandlerEv+0x180>
    8000175c:	fa9ff06f          	j	80001704 <_ZN6Kernel21supervisorTrapHandlerEv+0x174>
            case 0x01: //mem_alloc
                size_t size;
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001760:	00058493          	mv	s1,a1

                pointer = MemoryAllocator::instance().kmem_alloc(size);
    80001764:	00001097          	auipc	ra,0x1
    80001768:	534080e7          	jalr	1332(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    8000176c:	00048593          	mv	a1,s1
    80001770:	00001097          	auipc	ra,0x1
    80001774:	5b4080e7          	jalr	1460(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>

                __asm__ volatile("mv t0, %0" : : "r"(pointer));
    80001778:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    8000177c:	04542823          	sw	t0,80(s0)
                buffOUT->put(c);
                break;
            default:
                break;
        }
        w_sstatus(sstatus);
    80001780:	f7043783          	ld	a5,-144(s0)
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    80001784:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001788:	f6843783          	ld	a5,-152(s0)
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    8000178c:	14179073          	csrw	sepc,a5
        // trap se prekida (isto kao kod thread_exit-a) i prelazi se na drugu.
        TCB::running->setFinished(true);
        TCB::dispatch();
    }
    return;
    80001790:	0a813083          	ld	ra,168(sp)
    80001794:	0a013403          	ld	s0,160(sp)
    80001798:	09813483          	ld	s1,152(sp)
    8000179c:	09013903          	ld	s2,144(sp)
    800017a0:	08813983          	ld	s3,136(sp)
    800017a4:	08013a03          	ld	s4,128(sp)
    800017a8:	0b010113          	addi	sp,sp,176
    800017ac:	00008067          	ret
                __asm__ volatile("mv %0, a1" : "=r" (pointer));
    800017b0:	00058493          	mv	s1,a1
                value = MemoryAllocator::instance().kmem_free(pointer);
    800017b4:	00001097          	auipc	ra,0x1
    800017b8:	4e4080e7          	jalr	1252(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800017bc:	00048593          	mv	a1,s1
    800017c0:	00001097          	auipc	ra,0x1
    800017c4:	6ec080e7          	jalr	1772(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(value));
    800017c8:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800017cc:	04542823          	sw	t0,80(s0)
                break;
    800017d0:	fb1ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    800017d4:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800017d8:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a3" : "=r" (stack));
    800017dc:	00068613          	mv	a2,a3
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
    800017e0:	00088593          	mv	a1,a7
                *tcb = TCB::createThread(body, arg, stack);
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	918080e7          	jalr	-1768(ra) # 800020fc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    800017ec:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    800017f0:	00050863          	beqz	a0,80001800 <_ZN6Kernel21supervisorTrapHandlerEv+0x270>
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
    800017f4:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800017f8:	04542823          	sw	t0,80(s0)
    800017fc:	f85ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                    __asm__ volatile ("li t0, -1"); //-1 = error
    80001800:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001804:	04542823          	sw	t0,80(s0)
    80001808:	f79ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                TCB::running->setFinished(true);
    8000180c:	0000a797          	auipc	a5,0xa
    80001810:	23c7b783          	ld	a5,572(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001814:	0007b783          	ld	a5,0(a5)
    void setFinished(bool value) { finished = value; }
    80001818:	00100713          	li	a4,1
    8000181c:	02e78023          	sb	a4,32(a5)
                TCB::dispatch();
    80001820:	00001097          	auipc	ra,0x1
    80001824:	9f0080e7          	jalr	-1552(ra) # 80002210 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    80001828:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    8000182c:	04542823          	sw	t0,80(s0)
                break;
    80001830:	f51ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                TCB::dispatch();
    80001834:	00001097          	auipc	ra,0x1
    80001838:	9dc080e7          	jalr	-1572(ra) # 80002210 <_ZN3TCB8dispatchEv>
                break;
    8000183c:	f45ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                __asm__ volatile ("mv %0, a2" : "=r" (init)); //initial value of semaphore
    80001840:	00060513          	mv	a0,a2
    80001844:	0005051b          	sext.w	a0,a0
                __asm__ volatile ("mv %0, a1" : "=r" (semHandle));
    80001848:	00058493          	mv	s1,a1
                *semHandle = KSemaphore::createSemaphore(init);
    8000184c:	00000097          	auipc	ra,0x0
    80001850:	494080e7          	jalr	1172(ra) # 80001ce0 <_ZN10KSemaphore15createSemaphoreEj>
    80001854:	00a4b023          	sd	a0,0(s1)
                if(*semHandle != nullptr) {
    80001858:	00050863          	beqz	a0,80001868 <_ZN6Kernel21supervisorTrapHandlerEv+0x2d8>
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
    8000185c:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)"); //override a0 on stack to return value
    80001860:	04542823          	sw	t0,80(s0)
    80001864:	f1dff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                    __asm__ volatile ("li t0, -1"); //load immediate -1 into t0 (error)
    80001868:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)");
    8000186c:	04542823          	sw	t0,80(s0)
    80001870:	f11ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80001874:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    80001878:	00050c63          	beqz	a0,80001890 <_ZN6Kernel21supervisorTrapHandlerEv+0x300>
                    returnValue = semHandlePtr->close();
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	4b8080e7          	jalr	1208(ra) # 80001d34 <_ZN10KSemaphore5closeEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue)); //load return value into temporary register t0
    80001884:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override a0 on stack to return value
    80001888:	04542823          	sw	t0,80(s0)
                break;
    8000188c:	ef5ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                else returnValue = -2;
    80001890:	ffe00513          	li	a0,-2
    80001894:	ff1ff06f          	j	80001884 <_ZN6Kernel21supervisorTrapHandlerEv+0x2f4>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80001898:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    8000189c:	00050e63          	beqz	a0,800018b8 <_ZN6Kernel21supervisorTrapHandlerEv+0x328>
                    returnValue = semHandlePtr->kwait_n(1);
    800018a0:	00100593          	li	a1,1
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	210080e7          	jalr	528(ra) # 80001ab4 <_ZN10KSemaphore7kwait_nEj>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800018ac:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); 
    800018b0:	04542823          	sw	t0,80(s0)
                break;
    800018b4:	ecdff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                else returnValue = -2;
    800018b8:	ffe00513          	li	a0,-2
    800018bc:	ff1ff06f          	j	800018ac <_ZN6Kernel21supervisorTrapHandlerEv+0x31c>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800018c0:	00058513          	mv	a0,a1
                if(semHandlePtr!= nullptr) {
    800018c4:	00050e63          	beqz	a0,800018e0 <_ZN6Kernel21supervisorTrapHandlerEv+0x350>
                    returnValue = semHandlePtr->ksignal_n(1);
    800018c8:	00100593          	li	a1,1
    800018cc:	00000097          	auipc	ra,0x0
    800018d0:	2fc080e7          	jalr	764(ra) # 80001bc8 <_ZN10KSemaphore9ksignal_nEj>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    800018d4:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    800018d8:	04542823          	sw	t0,80(s0)
                break;
    800018dc:	ea5ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                else returnValue = -2;
    800018e0:	ffe00513          	li	a0,-2
    800018e4:	ff1ff06f          	j	800018d4 <_ZN6Kernel21supervisorTrapHandlerEv+0x344>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    800018e8:	00058513          	mv	a0,a1
                __asm__ volatile ("mv %0, a2" : "=r" (value)); //n value
    800018ec:	00060593          	mv	a1,a2
                if(semHandlePtr!= nullptr) {
    800018f0:	00050e63          	beqz	a0,8000190c <_ZN6Kernel21supervisorTrapHandlerEv+0x37c>
                    returnValue = semHandlePtr->kwait_n(value);
    800018f4:	0005859b          	sext.w	a1,a1
    800018f8:	00000097          	auipc	ra,0x0
    800018fc:	1bc080e7          	jalr	444(ra) # 80001ab4 <_ZN10KSemaphore7kwait_nEj>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80001900:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001904:	04542823          	sw	t0,80(s0)
                break;
    80001908:	e79ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                else returnValue = -2;
    8000190c:	ffe00513          	li	a0,-2
    80001910:	ff1ff06f          	j	80001900 <_ZN6Kernel21supervisorTrapHandlerEv+0x370>
                __asm__ volatile ("mv %0, a1" : "=r" (semHandlePtr));
    80001914:	00058513          	mv	a0,a1
                __asm__ volatile ("mv %0, a2" : "=r" (value)); //n value
    80001918:	00060593          	mv	a1,a2
                if(semHandlePtr!= nullptr) {
    8000191c:	e60502e3          	beqz	a0,80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                    returnValue = semHandlePtr->ksignal_n(value);
    80001920:	0005859b          	sext.w	a1,a1
    80001924:	00000097          	auipc	ra,0x0
    80001928:	2a4080e7          	jalr	676(ra) # 80001bc8 <_ZN10KSemaphore9ksignal_nEj>
    8000192c:	e55ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                __asm__ volatile ("mv %0, a1" : "=r" (value)); //time value
    80001930:	00058513          	mv	a0,a1
                returnValue = TCB::time_sleep(value);
    80001934:	0005051b          	sext.w	a0,a0
    80001938:	00001097          	auipc	ra,0x1
    8000193c:	b10080e7          	jalr	-1264(ra) # 80002448 <_ZN3TCB10time_sleepEm>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    80001940:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001944:	04542823          	sw	t0,80(s0)
                break;
    80001948:	e39ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                returnValue = buffIN->get();
    8000194c:	0000a517          	auipc	a0,0xa
    80001950:	16c53503          	ld	a0,364(a0) # 8000bab8 <_ZN6Kernel6buffINE>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	8c8080e7          	jalr	-1848(ra) # 8000321c <_ZN7KBuffer3getEv>
                __asm__ volatile ("mv t0, %0" : : "r"(returnValue));
    8000195c:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)");
    80001960:	04542823          	sw	t0,80(s0)
                break;
    80001964:	e1dff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
                __asm__ volatile ("mv %0, a1" : "=r" (c));
    80001968:	00058593          	mv	a1,a1
                buffOUT->put(c);
    8000196c:	0ff5f593          	andi	a1,a1,255
    80001970:	0000a517          	auipc	a0,0xa
    80001974:	14053503          	ld	a0,320(a0) # 8000bab0 <_ZN6Kernel7buffOUTE>
    80001978:	00002097          	auipc	ra,0x2
    8000197c:	81c080e7          	jalr	-2020(ra) # 80003194 <_ZN7KBuffer3putEc>
                break;
    80001980:	e01ff06f          	j	80001780 <_ZN6Kernel21supervisorTrapHandlerEv+0x1f0>
        __asm__ volatile("csrr %0, scause" : "=r"(x));
    80001984:	142027f3          	csrr	a5,scause
    80001988:	fcf43423          	sd	a5,-56(s0)
        return x;
    8000198c:	fc843a03          	ld	s4,-56(s0)
    }

    static inline uint64 r_stval() {
        uint64 volatile x;
        __asm__ volatile("csrr %0, stval" : "=r"(x));
    80001990:	143027f3          	csrr	a5,stval
    80001994:	fcf43023          	sd	a5,-64(s0)
        return x;
    80001998:	fc043983          	ld	s3,-64(s0)
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
    8000199c:	105027f3          	csrr	a5,stvec
    800019a0:	faf43c23          	sd	a5,-72(s0)
        return x;
    800019a4:	fb843903          	ld	s2,-72(s0)
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    800019a8:	141027f3          	csrr	a5,sepc
    800019ac:	faf43823          	sd	a5,-80(s0)
        return x;
    800019b0:	fb043483          	ld	s1,-80(s0)
        kprintString("scause: ");
    800019b4:	00007517          	auipc	a0,0x7
    800019b8:	66c50513          	addi	a0,a0,1644 # 80009020 <CONSOLE_STATUS+0x10>
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	454080e7          	jalr	1108(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintInt(scause);
    800019c4:	00000613          	li	a2,0
    800019c8:	00a00593          	li	a1,10
    800019cc:	000a051b          	sext.w	a0,s4
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	568080e7          	jalr	1384(ra) # 80001f38 <_Z9kprintIntiii>
        kprintString("\n");
    800019d8:	00008517          	auipc	a0,0x8
    800019dc:	b1050513          	addi	a0,a0,-1264 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	430080e7          	jalr	1072(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintString("stval: ");
    800019e8:	00007517          	auipc	a0,0x7
    800019ec:	64850513          	addi	a0,a0,1608 # 80009030 <CONSOLE_STATUS+0x20>
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	420080e7          	jalr	1056(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintInt(stval);
    800019f8:	00000613          	li	a2,0
    800019fc:	00a00593          	li	a1,10
    80001a00:	0009851b          	sext.w	a0,s3
    80001a04:	00000097          	auipc	ra,0x0
    80001a08:	534080e7          	jalr	1332(ra) # 80001f38 <_Z9kprintIntiii>
        kprintString("\n");
    80001a0c:	00008517          	auipc	a0,0x8
    80001a10:	adc50513          	addi	a0,a0,-1316 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80001a14:	00000097          	auipc	ra,0x0
    80001a18:	3fc080e7          	jalr	1020(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintString("stvec: ");
    80001a1c:	00007517          	auipc	a0,0x7
    80001a20:	61c50513          	addi	a0,a0,1564 # 80009038 <CONSOLE_STATUS+0x28>
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	3ec080e7          	jalr	1004(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintInt(stvec);
    80001a2c:	00000613          	li	a2,0
    80001a30:	00a00593          	li	a1,10
    80001a34:	0009051b          	sext.w	a0,s2
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	500080e7          	jalr	1280(ra) # 80001f38 <_Z9kprintIntiii>
        kprintString("\n");
    80001a40:	00008517          	auipc	a0,0x8
    80001a44:	aa850513          	addi	a0,a0,-1368 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80001a48:	00000097          	auipc	ra,0x0
    80001a4c:	3c8080e7          	jalr	968(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintString("sepc: ");
    80001a50:	00007517          	auipc	a0,0x7
    80001a54:	5f050513          	addi	a0,a0,1520 # 80009040 <CONSOLE_STATUS+0x30>
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	3b8080e7          	jalr	952(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintInt(sepc);
    80001a60:	00000613          	li	a2,0
    80001a64:	00a00593          	li	a1,10
    80001a68:	0004851b          	sext.w	a0,s1
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	4cc080e7          	jalr	1228(ra) # 80001f38 <_Z9kprintIntiii>
        kprintString("\n");
    80001a74:	00008517          	auipc	a0,0x8
    80001a78:	a7450513          	addi	a0,a0,-1420 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80001a7c:	00000097          	auipc	ra,0x0
    80001a80:	394080e7          	jalr	916(ra) # 80001e10 <_Z12kprintStringPKc>
        kprintString("Neispravna instrukcija u korisnickom rezimu - nit se prekida.\n");
    80001a84:	00007517          	auipc	a0,0x7
    80001a88:	5c450513          	addi	a0,a0,1476 # 80009048 <CONSOLE_STATUS+0x38>
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	384080e7          	jalr	900(ra) # 80001e10 <_Z12kprintStringPKc>
        TCB::running->setFinished(true);
    80001a94:	0000a797          	auipc	a5,0xa
    80001a98:	fb47b783          	ld	a5,-76(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001a9c:	0007b783          	ld	a5,0(a5)
    80001aa0:	00100713          	li	a4,1
    80001aa4:	02e78023          	sb	a4,32(a5)
        TCB::dispatch();
    80001aa8:	00000097          	auipc	ra,0x0
    80001aac:	768080e7          	jalr	1896(ra) # 80002210 <_ZN3TCB8dispatchEv>
    return;
    80001ab0:	ce1ff06f          	j	80001790 <_ZN6Kernel21supervisorTrapHandlerEv+0x200>

0000000080001ab4 <_ZN10KSemaphore7kwait_nEj>:
#include "../h/semaphore.hpp"
#include "../h/syscall_c.hpp"
#include "../h/list.hpp"

int KSemaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
    if (closed) {
    80001ab4:	00054783          	lbu	a5,0(a0)
    80001ab8:	10079063          	bnez	a5,80001bb8 <_ZN10KSemaphore7kwait_nEj+0x104>
int KSemaphore::kwait_n(unsigned n) { //lock/unlock unnecesary because with ecall we blocked interrupts
    80001abc:	fd010113          	addi	sp,sp,-48
    80001ac0:	02113423          	sd	ra,40(sp)
    80001ac4:	02813023          	sd	s0,32(sp)
    80001ac8:	00913c23          	sd	s1,24(sp)
    80001acc:	01213823          	sd	s2,16(sp)
    80001ad0:	01313423          	sd	s3,8(sp)
    80001ad4:	01413023          	sd	s4,0(sp)
    80001ad8:	03010413          	addi	s0,sp,48
    80001adc:	00050493          	mv	s1,a0
    80001ae0:	00058913          	mv	s2,a1
        return -1;
    }

    if (value >= n) { //value is never negative
    80001ae4:	00452583          	lw	a1,4(a0)
    80001ae8:	0325e863          	bltu	a1,s2,80001b18 <_ZN10KSemaphore7kwait_nEj+0x64>
        value -= n;
    80001aec:	412585bb          	subw	a1,a1,s2
    80001af0:	00b52223          	sw	a1,4(a0)
        return 0;
    80001af4:	00000513          	li	a0,0
    if (closed) {
        return -1;
    }

    return 0;
}
    80001af8:	02813083          	ld	ra,40(sp)
    80001afc:	02013403          	ld	s0,32(sp)
    80001b00:	01813483          	ld	s1,24(sp)
    80001b04:	01013903          	ld	s2,16(sp)
    80001b08:	00813983          	ld	s3,8(sp)
    80001b0c:	00013a03          	ld	s4,0(sp)
    80001b10:	03010113          	addi	sp,sp,48
    80001b14:	00008067          	ret
    blocked.addLast(
    80001b18:	00850a13          	addi	s4,a0,8
private:
    class BlockedThreadInfo {
        TCB* thread; //pointer to blocked thread
        unsigned requested; //number of resources requested by the blocked thread (1 for wait, n for wait_n)
        void* operator new(size_t size) {
            return MemoryAllocator::instance().kmem_alloc(size);
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	17c080e7          	jalr	380(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001b24:	01000593          	li	a1,16
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	1fc080e7          	jalr	508(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    80001b30:	00050993          	mv	s3,a0
        new BlockedThreadInfo(TCB::running, n)
    80001b34:	0000a797          	auipc	a5,0xa
    80001b38:	f147b783          	ld	a5,-236(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001b3c:	0007b783          	ld	a5,0(a5)
        }
        void operator delete[](void *ptr) {
            MemoryAllocator::instance().kmem_free(ptr);
        }

        BlockedThreadInfo(TCB* thread, unsigned requested) : thread(thread), requested(requested) {}
    80001b40:	00f53023          	sd	a5,0(a0)
    80001b44:	01252423          	sw	s2,8(a0)
        Elem *next;

        Elem(T *data, Elem *next) : data(data), next(next) {}

        void* operator new(size_t size) {
            return MemoryAllocator::instance().kmem_alloc(size);
    80001b48:	00001097          	auipc	ra,0x1
    80001b4c:	150080e7          	jalr	336(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001b50:	01000593          	li	a1,16
    80001b54:	00001097          	auipc	ra,0x1
    80001b58:	1d0080e7          	jalr	464(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001b5c:	01353023          	sd	s3,0(a0)
    80001b60:	00053423          	sd	zero,8(a0)
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
        if (tail)
    80001b64:	008a3783          	ld	a5,8(s4)
    80001b68:	04078263          	beqz	a5,80001bac <_ZN10KSemaphore7kwait_nEj+0xf8>
        {
            tail->next = elem;
    80001b6c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001b70:	00aa3423          	sd	a0,8(s4)
        } else
        {
            head = tail = elem;
        }
        size++;
    80001b74:	010a3783          	ld	a5,16(s4)
    80001b78:	00178793          	addi	a5,a5,1
    80001b7c:	00fa3823          	sd	a5,16(s4)
    TCB::running->setBlocked(true);
    80001b80:	0000a797          	auipc	a5,0xa
    80001b84:	ec87b783          	ld	a5,-312(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80001b88:	0007b783          	ld	a5,0(a5)
    void setBlocked(bool value) { this->blocked = value; }
    80001b8c:	00100713          	li	a4,1
    80001b90:	02e780a3          	sb	a4,33(a5)
    thread_dispatch();
    80001b94:	fffff097          	auipc	ra,0xfffff
    80001b98:	6a4080e7          	jalr	1700(ra) # 80001238 <_Z15thread_dispatchv>
    if (closed) {
    80001b9c:	0004c783          	lbu	a5,0(s1)
    80001ba0:	02079063          	bnez	a5,80001bc0 <_ZN10KSemaphore7kwait_nEj+0x10c>
    return 0;
    80001ba4:	00000513          	li	a0,0
    80001ba8:	f51ff06f          	j	80001af8 <_ZN10KSemaphore7kwait_nEj+0x44>
            head = tail = elem;
    80001bac:	00aa3423          	sd	a0,8(s4)
    80001bb0:	00a4b423          	sd	a0,8(s1)
    80001bb4:	fc1ff06f          	j	80001b74 <_ZN10KSemaphore7kwait_nEj+0xc0>
        return -1;
    80001bb8:	fff00513          	li	a0,-1
}
    80001bbc:	00008067          	ret
        return -1;
    80001bc0:	fff00513          	li	a0,-1
    80001bc4:	f35ff06f          	j	80001af8 <_ZN10KSemaphore7kwait_nEj+0x44>

0000000080001bc8 <_ZN10KSemaphore9ksignal_nEj>:

int KSemaphore::ksignal_n(unsigned n) {
    if(this->closed) {
    80001bc8:	00054783          	lbu	a5,0(a0)
    80001bcc:	0c079c63          	bnez	a5,80001ca4 <_ZN10KSemaphore9ksignal_nEj+0xdc>
int KSemaphore::ksignal_n(unsigned n) {
    80001bd0:	fd010113          	addi	sp,sp,-48
    80001bd4:	02113423          	sd	ra,40(sp)
    80001bd8:	02813023          	sd	s0,32(sp)
    80001bdc:	00913c23          	sd	s1,24(sp)
    80001be0:	01213823          	sd	s2,16(sp)
    80001be4:	01313423          	sd	s3,8(sp)
    80001be8:	01413023          	sd	s4,0(sp)
    80001bec:	03010413          	addi	s0,sp,48
    80001bf0:	00050493          	mv	s1,a0
        return -1;
    }

    this->value += n;
    80001bf4:	00452783          	lw	a5,4(a0)
    80001bf8:	00b785bb          	addw	a1,a5,a1
    80001bfc:	00b52223          	sw	a1,4(a0)
    80001c00:	0440006f          	j	80001c44 <_ZN10KSemaphore9ksignal_nEj+0x7c>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001c04:	000a3423          	sd	zero,8(s4)

        T *ret = elem->data;
    80001c08:	00093983          	ld	s3,0(s2)
            MemoryAllocator::instance().kmem_free(ptr);
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	08c080e7          	jalr	140(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001c14:	00090593          	mv	a1,s2
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	294080e7          	jalr	660(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        delete elem;
        size--;
    80001c20:	010a3783          	ld	a5,16(s4)
    80001c24:	fff78793          	addi	a5,a5,-1
    80001c28:	00fa3823          	sd	a5,16(s4)
    while (this->blocked.peekFirst()) {
        BlockedThreadInfo* bti = this->blocked.peekFirst(); //FIFO - unlock threads in the order they were blocked
        if (bti->requested <= this->value) {
            this->value -= bti->requested;
            bti = this->blocked.removeFirst();
            bti->thread->setBlocked(false);
    80001c2c:	0009b783          	ld	a5,0(s3)
    80001c30:	020780a3          	sb	zero,33(a5)
            Scheduler::put(bti->thread);
    80001c34:	0009b503          	ld	a0,0(s3)
    80001c38:	00001097          	auipc	ra,0x1
    80001c3c:	3e8080e7          	jalr	1000(ra) # 80003020 <_ZN9Scheduler3putEP3TCB>
            delete bti;
    80001c40:	04099663          	bnez	s3,80001c8c <_ZN10KSemaphore9ksignal_nEj+0xc4>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001c44:	0084b783          	ld	a5,8(s1)
    80001c48:	06078263          	beqz	a5,80001cac <_ZN10KSemaphore9ksignal_nEj+0xe4>
        return head->data;
    80001c4c:	0007b783          	ld	a5,0(a5)
    while (this->blocked.peekFirst()) {
    80001c50:	08078063          	beqz	a5,80001cd0 <_ZN10KSemaphore9ksignal_nEj+0x108>
        if (bti->requested <= this->value) {
    80001c54:	0087a703          	lw	a4,8(a5)
    80001c58:	0044a783          	lw	a5,4(s1)
    80001c5c:	06e7ee63          	bltu	a5,a4,80001cd8 <_ZN10KSemaphore9ksignal_nEj+0x110>
            this->value -= bti->requested;
    80001c60:	40e787bb          	subw	a5,a5,a4
    80001c64:	00f4a223          	sw	a5,4(s1)
            bti = this->blocked.removeFirst();
    80001c68:	00848a13          	addi	s4,s1,8
        if (!head) { return 0; }
    80001c6c:	0084b903          	ld	s2,8(s1)
    80001c70:	00090a63          	beqz	s2,80001c84 <_ZN10KSemaphore9ksignal_nEj+0xbc>
        head = head->next;
    80001c74:	00893783          	ld	a5,8(s2)
    80001c78:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001c7c:	f80796e3          	bnez	a5,80001c08 <_ZN10KSemaphore9ksignal_nEj+0x40>
    80001c80:	f85ff06f          	j	80001c04 <_ZN10KSemaphore9ksignal_nEj+0x3c>
        if (!head) { return 0; }
    80001c84:	00090993          	mv	s3,s2
    80001c88:	fa5ff06f          	j	80001c2c <_ZN10KSemaphore9ksignal_nEj+0x64>
            MemoryAllocator::instance().kmem_free(ptr);
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	00c080e7          	jalr	12(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001c94:	00098593          	mv	a1,s3
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	214080e7          	jalr	532(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        }
    80001ca0:	fa5ff06f          	j	80001c44 <_ZN10KSemaphore9ksignal_nEj+0x7c>
        return -1;
    80001ca4:	fff00513          	li	a0,-1
            break;
        }
    }

    return 0;
}
    80001ca8:	00008067          	ret
    return 0;
    80001cac:	00000513          	li	a0,0
}
    80001cb0:	02813083          	ld	ra,40(sp)
    80001cb4:	02013403          	ld	s0,32(sp)
    80001cb8:	01813483          	ld	s1,24(sp)
    80001cbc:	01013903          	ld	s2,16(sp)
    80001cc0:	00813983          	ld	s3,8(sp)
    80001cc4:	00013a03          	ld	s4,0(sp)
    80001cc8:	03010113          	addi	sp,sp,48
    80001ccc:	00008067          	ret
    return 0;
    80001cd0:	00000513          	li	a0,0
    80001cd4:	fddff06f          	j	80001cb0 <_ZN10KSemaphore9ksignal_nEj+0xe8>
    80001cd8:	00000513          	li	a0,0
    80001cdc:	fd5ff06f          	j	80001cb0 <_ZN10KSemaphore9ksignal_nEj+0xe8>

0000000080001ce0 <_ZN10KSemaphore15createSemaphoreEj>:

KSemaphore *KSemaphore::createSemaphore(unsigned int init) {
    80001ce0:	fe010113          	addi	sp,sp,-32
    80001ce4:	00113c23          	sd	ra,24(sp)
    80001ce8:	00813823          	sd	s0,16(sp)
    80001cec:	00913423          	sd	s1,8(sp)
    80001cf0:	02010413          	addi	s0,sp,32
    80001cf4:	00050493          	mv	s1,a0
        return MemoryAllocator::instance().kmem_alloc(size);
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	fa0080e7          	jalr	-96(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001d00:	02000593          	li	a1,32
    80001d04:	00001097          	auipc	ra,0x1
    80001d08:	020080e7          	jalr	32(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    List() : head(0), tail(0), size(0) {}
    80001d0c:	00053423          	sd	zero,8(a0)
    80001d10:	00053823          	sd	zero,16(a0)
    80001d14:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80001d18:	00952223          	sw	s1,4(a0)
        this->closed = false;
    80001d1c:	00050023          	sb	zero,0(a0)
    return new KSemaphore(init);
}
    80001d20:	01813083          	ld	ra,24(sp)
    80001d24:	01013403          	ld	s0,16(sp)
    80001d28:	00813483          	ld	s1,8(sp)
    80001d2c:	02010113          	addi	sp,sp,32
    80001d30:	00008067          	ret

0000000080001d34 <_ZN10KSemaphore5closeEv>:

int KSemaphore::close() {
    if (closed) {
    80001d34:	00054783          	lbu	a5,0(a0)
    80001d38:	0a079263          	bnez	a5,80001ddc <_ZN10KSemaphore5closeEv+0xa8>
int KSemaphore::close() {
    80001d3c:	fd010113          	addi	sp,sp,-48
    80001d40:	02113423          	sd	ra,40(sp)
    80001d44:	02813023          	sd	s0,32(sp)
    80001d48:	00913c23          	sd	s1,24(sp)
    80001d4c:	01213823          	sd	s2,16(sp)
    80001d50:	01313423          	sd	s3,8(sp)
    80001d54:	01413023          	sd	s4,0(sp)
    80001d58:	03010413          	addi	s0,sp,48
    80001d5c:	00050493          	mv	s1,a0
        return -1;
    }
    closed = true;
    80001d60:	00100793          	li	a5,1
    80001d64:	00f50023          	sb	a5,0(a0)
    80001d68:	0400006f          	j	80001da8 <_ZN10KSemaphore5closeEv+0x74>
        if (!head) { tail = 0; }
    80001d6c:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    80001d70:	00093a03          	ld	s4,0(s2)
            MemoryAllocator::instance().kmem_free(ptr);
    80001d74:	00001097          	auipc	ra,0x1
    80001d78:	f24080e7          	jalr	-220(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80001d7c:	00090593          	mv	a1,s2
    80001d80:	00001097          	auipc	ra,0x1
    80001d84:	12c080e7          	jalr	300(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    80001d88:	0109b783          	ld	a5,16(s3)
    80001d8c:	fff78793          	addi	a5,a5,-1
    80001d90:	00f9b823          	sd	a5,16(s3)

    while (this->blocked.peekFirst()) {
        BlockedThreadInfo* bti = this->blocked.removeFirst();
        bti->thread->setBlocked(false);
    80001d94:	000a3783          	ld	a5,0(s4)
    80001d98:	020780a3          	sb	zero,33(a5)
        Scheduler::put(bti->thread);
    80001d9c:	000a3503          	ld	a0,0(s4)
    80001da0:	00001097          	auipc	ra,0x1
    80001da4:	280080e7          	jalr	640(ra) # 80003020 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001da8:	0084b783          	ld	a5,8(s1)
    80001dac:	02078c63          	beqz	a5,80001de4 <_ZN10KSemaphore5closeEv+0xb0>
        return head->data;
    80001db0:	0007b783          	ld	a5,0(a5)
    while (this->blocked.peekFirst()) {
    80001db4:	04078a63          	beqz	a5,80001e08 <_ZN10KSemaphore5closeEv+0xd4>
        BlockedThreadInfo* bti = this->blocked.removeFirst();
    80001db8:	00848993          	addi	s3,s1,8
        if (!head) { return 0; }
    80001dbc:	0084b903          	ld	s2,8(s1)
    80001dc0:	00090a63          	beqz	s2,80001dd4 <_ZN10KSemaphore5closeEv+0xa0>
        head = head->next;
    80001dc4:	00893783          	ld	a5,8(s2)
    80001dc8:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001dcc:	fa0792e3          	bnez	a5,80001d70 <_ZN10KSemaphore5closeEv+0x3c>
    80001dd0:	f9dff06f          	j	80001d6c <_ZN10KSemaphore5closeEv+0x38>
        if (!head) { return 0; }
    80001dd4:	00090a13          	mv	s4,s2
    80001dd8:	fbdff06f          	j	80001d94 <_ZN10KSemaphore5closeEv+0x60>
        return -1;
    80001ddc:	fff00513          	li	a0,-1
    }
    return 0;
    80001de0:	00008067          	ret
    return 0;
    80001de4:	00000513          	li	a0,0
    80001de8:	02813083          	ld	ra,40(sp)
    80001dec:	02013403          	ld	s0,32(sp)
    80001df0:	01813483          	ld	s1,24(sp)
    80001df4:	01013903          	ld	s2,16(sp)
    80001df8:	00813983          	ld	s3,8(sp)
    80001dfc:	00013a03          	ld	s4,0(sp)
    80001e00:	03010113          	addi	sp,sp,48
    80001e04:	00008067          	ret
    return 0;
    80001e08:	00000513          	li	a0,0
    80001e0c:	fddff06f          	j	80001de8 <_ZN10KSemaphore5closeEv+0xb4>

0000000080001e10 <_Z12kprintStringPKc>:
#include "../h/printing.hpp"


void kprintString(char const *string)
{
    80001e10:	fe010113          	addi	sp,sp,-32
    80001e14:	00113c23          	sd	ra,24(sp)
    80001e18:	00813823          	sd	s0,16(sp)
    80001e1c:	00913423          	sd	s1,8(sp)
    80001e20:	02010413          	addi	s0,sp,32
    80001e24:	00050493          	mv	s1,a0
    while (*string != '\0')
    80001e28:	0004c503          	lbu	a0,0(s1)
    80001e2c:	00050a63          	beqz	a0,80001e40 <_Z12kprintStringPKc+0x30>
    {
        putc(*string);
    80001e30:	fffff097          	auipc	ra,0xfffff
    80001e34:	590080e7          	jalr	1424(ra) # 800013c0 <_Z4putcc>
        string++;
    80001e38:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80001e3c:	fedff06f          	j	80001e28 <_Z12kprintStringPKc+0x18>
    }
}
    80001e40:	01813083          	ld	ra,24(sp)
    80001e44:	01013403          	ld	s0,16(sp)
    80001e48:	00813483          	ld	s1,8(sp)
    80001e4c:	02010113          	addi	sp,sp,32
    80001e50:	00008067          	ret

0000000080001e54 <_Z10kgetStringPci>:

char* kgetString(char *buf, int max) {
    80001e54:	fd010113          	addi	sp,sp,-48
    80001e58:	02113423          	sd	ra,40(sp)
    80001e5c:	02813023          	sd	s0,32(sp)
    80001e60:	00913c23          	sd	s1,24(sp)
    80001e64:	01213823          	sd	s2,16(sp)
    80001e68:	01313423          	sd	s3,8(sp)
    80001e6c:	01413023          	sd	s4,0(sp)
    80001e70:	03010413          	addi	s0,sp,48
    80001e74:	00050993          	mv	s3,a0
    80001e78:	00058a13          	mv	s4,a1
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80001e7c:	00000913          	li	s2,0
    80001e80:	00090493          	mv	s1,s2
    80001e84:	0019091b          	addiw	s2,s2,1
    80001e88:	03495a63          	bge	s2,s4,80001ebc <_Z10kgetStringPci+0x68>
        cc = getc();
    80001e8c:	fffff097          	auipc	ra,0xfffff
    80001e90:	50c080e7          	jalr	1292(ra) # 80001398 <_Z4getcv>
        if(cc < 1)
    80001e94:	02050463          	beqz	a0,80001ebc <_Z10kgetStringPci+0x68>
            break;
        c = cc;
        buf[i++] = c;
    80001e98:	009984b3          	add	s1,s3,s1
    80001e9c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80001ea0:	00a00793          	li	a5,10
    80001ea4:	00f50a63          	beq	a0,a5,80001eb8 <_Z10kgetStringPci+0x64>
    80001ea8:	00d00793          	li	a5,13
    80001eac:	fcf51ae3          	bne	a0,a5,80001e80 <_Z10kgetStringPci+0x2c>
        buf[i++] = c;
    80001eb0:	00090493          	mv	s1,s2
    80001eb4:	0080006f          	j	80001ebc <_Z10kgetStringPci+0x68>
    80001eb8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80001ebc:	009984b3          	add	s1,s3,s1
    80001ec0:	00048023          	sb	zero,0(s1)
    return buf;
}
    80001ec4:	00098513          	mv	a0,s3
    80001ec8:	02813083          	ld	ra,40(sp)
    80001ecc:	02013403          	ld	s0,32(sp)
    80001ed0:	01813483          	ld	s1,24(sp)
    80001ed4:	01013903          	ld	s2,16(sp)
    80001ed8:	00813983          	ld	s3,8(sp)
    80001edc:	00013a03          	ld	s4,0(sp)
    80001ee0:	03010113          	addi	sp,sp,48
    80001ee4:	00008067          	ret

0000000080001ee8 <_Z12kstringToIntPKc>:

int kstringToInt(const char *s) {
    80001ee8:	ff010113          	addi	sp,sp,-16
    80001eec:	00813423          	sd	s0,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    80001ef4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80001ef8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80001efc:	0006c603          	lbu	a2,0(a3)
    80001f00:	fd06071b          	addiw	a4,a2,-48
    80001f04:	0ff77713          	andi	a4,a4,255
    80001f08:	00900793          	li	a5,9
    80001f0c:	02e7e063          	bltu	a5,a4,80001f2c <_Z12kstringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80001f10:	0025179b          	slliw	a5,a0,0x2
    80001f14:	00a787bb          	addw	a5,a5,a0
    80001f18:	0017979b          	slliw	a5,a5,0x1
    80001f1c:	00168693          	addi	a3,a3,1
    80001f20:	00c787bb          	addw	a5,a5,a2
    80001f24:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80001f28:	fd5ff06f          	j	80001efc <_Z12kstringToIntPKc+0x14>
    return n;
}
    80001f2c:	00813403          	ld	s0,8(sp)
    80001f30:	01010113          	addi	sp,sp,16
    80001f34:	00008067          	ret

0000000080001f38 <_Z9kprintIntiii>:



void kprintInt(int xx, int base, int sgn)
{
    80001f38:	fb010113          	addi	sp,sp,-80
    80001f3c:	04113423          	sd	ra,72(sp)
    80001f40:	04813023          	sd	s0,64(sp)
    80001f44:	02913c23          	sd	s1,56(sp)
    80001f48:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80001f4c:	00007797          	auipc	a5,0x7
    80001f50:	24c78793          	addi	a5,a5,588 # 80009198 <CONSOLE_STATUS+0x188>
    80001f54:	0007b703          	ld	a4,0(a5)
    80001f58:	fce43423          	sd	a4,-56(s0)
    80001f5c:	0087b703          	ld	a4,8(a5)
    80001f60:	fce43823          	sd	a4,-48(s0)
    80001f64:	0107c783          	lbu	a5,16(a5)
    80001f68:	fcf40c23          	sb	a5,-40(s0)
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80001f6c:	00060463          	beqz	a2,80001f74 <_Z9kprintIntiii+0x3c>
    80001f70:	08054263          	bltz	a0,80001ff4 <_Z9kprintIntiii+0xbc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80001f74:	0005051b          	sext.w	a0,a0
    neg = 0;
    80001f78:	00000813          	li	a6,0
    }

    i = 0;
    80001f7c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80001f80:	0005871b          	sext.w	a4,a1
    80001f84:	02b577bb          	remuw	a5,a0,a1
    80001f88:	00048693          	mv	a3,s1
    80001f8c:	0014849b          	addiw	s1,s1,1
    80001f90:	02079793          	slli	a5,a5,0x20
    80001f94:	0207d793          	srli	a5,a5,0x20
    80001f98:	fe040613          	addi	a2,s0,-32
    80001f9c:	00f607b3          	add	a5,a2,a5
    80001fa0:	fe87c603          	lbu	a2,-24(a5)
    80001fa4:	fe040793          	addi	a5,s0,-32
    80001fa8:	00d787b3          	add	a5,a5,a3
    80001fac:	fcc78c23          	sb	a2,-40(a5)
    }while((x /= base) != 0);
    80001fb0:	0005061b          	sext.w	a2,a0
    80001fb4:	02b5553b          	divuw	a0,a0,a1
    80001fb8:	fce674e3          	bgeu	a2,a4,80001f80 <_Z9kprintIntiii+0x48>
    if(neg)
    80001fbc:	00080c63          	beqz	a6,80001fd4 <_Z9kprintIntiii+0x9c>
        buf[i++] = '-';
    80001fc0:	fe040793          	addi	a5,s0,-32
    80001fc4:	009784b3          	add	s1,a5,s1
    80001fc8:	02d00793          	li	a5,45
    80001fcc:	fcf48c23          	sb	a5,-40(s1)
    80001fd0:	0026849b          	addiw	s1,a3,2

    while(--i >= 0)
    80001fd4:	fff4849b          	addiw	s1,s1,-1
    80001fd8:	0204c463          	bltz	s1,80002000 <_Z9kprintIntiii+0xc8>
        putc(buf[i]);
    80001fdc:	fe040793          	addi	a5,s0,-32
    80001fe0:	009787b3          	add	a5,a5,s1
    80001fe4:	fd87c503          	lbu	a0,-40(a5)
    80001fe8:	fffff097          	auipc	ra,0xfffff
    80001fec:	3d8080e7          	jalr	984(ra) # 800013c0 <_Z4putcc>
    80001ff0:	fe5ff06f          	j	80001fd4 <_Z9kprintIntiii+0x9c>
        x = -xx;
    80001ff4:	40a0053b          	negw	a0,a0
        neg = 1;
    80001ff8:	00100813          	li	a6,1
        x = -xx;
    80001ffc:	f81ff06f          	j	80001f7c <_Z9kprintIntiii+0x44>
    80002000:	04813083          	ld	ra,72(sp)
    80002004:	04013403          	ld	s0,64(sp)
    80002008:	03813483          	ld	s1,56(sp)
    8000200c:	05010113          	addi	sp,sp,80
    80002010:	00008067          	ret

0000000080002014 <main>:
#include "../h/memory_allocator.hpp"

extern void userMain();

void main()
{
    80002014:	fc010113          	addi	sp,sp,-64
    80002018:	02113c23          	sd	ra,56(sp)
    8000201c:	02813823          	sd	s0,48(sp)
    80002020:	04010413          	addi	s0,sp,64

    Kernel::init();
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	514080e7          	jalr	1300(ra) # 80001538 <_ZN6Kernel4initEv>

    TCB *threads[5];

    threads[0] = TCB::createThread(nullptr,nullptr, new uint64[DEFAULT_STACK_SIZE]); //main thread
    8000202c:	00008537          	lui	a0,0x8
    80002030:	00000097          	auipc	ra,0x0
    80002034:	66c080e7          	jalr	1644(ra) # 8000269c <_Znam>
    80002038:	00050613          	mv	a2,a0
    8000203c:	00000593          	li	a1,0
    80002040:	00000513          	li	a0,0
    80002044:	00000097          	auipc	ra,0x0
    80002048:	0b8080e7          	jalr	184(ra) # 800020fc <_ZN3TCB12createThreadEPFvPvES0_Pm>
    8000204c:	fca43423          	sd	a0,-56(s0)
    TCB::running = threads[0];
    80002050:	0000a797          	auipc	a5,0xa
    80002054:	9f87b783          	ld	a5,-1544(a5) # 8000ba48 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002058:	00a7b023          	sd	a0,0(a5)
        __asm__ volatile("csrs sstatus, %0" : : "r"(mask));
    8000205c:	00200793          	li	a5,2
    80002060:	1007a073          	csrs	sstatus,a5

    Kernel::ms_sstatus(Kernel::SSTATUS_SIE); 

    thread_create(&threads[1], reinterpret_cast<void (*)(void *)>(userMain), nullptr);
    80002064:	00000613          	li	a2,0
    80002068:	0000a597          	auipc	a1,0xa
    8000206c:	9985b583          	ld	a1,-1640(a1) # 8000ba00 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002070:	fd040513          	addi	a0,s0,-48
    80002074:	fffff097          	auipc	ra,0xfffff
    80002078:	12c080e7          	jalr	300(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    8000207c:	00c0006f          	j	80002088 <main+0x74>

    while(!threads[1]->isFinished() || Kernel::outputPending()) {
        thread_dispatch();
    80002080:	fffff097          	auipc	ra,0xfffff
    80002084:	1b8080e7          	jalr	440(ra) # 80001238 <_Z15thread_dispatchv>
    while(!threads[1]->isFinished() || Kernel::outputPending()) {
    80002088:	fd043783          	ld	a5,-48(s0)
    bool isFinished() const { return finished; }
    8000208c:	0207c783          	lbu	a5,32(a5)
    80002090:	fe0788e3          	beqz	a5,80002080 <main+0x6c>
    static bool outputPending() { return !buffOUT->empty(); }
    80002094:	0000a797          	auipc	a5,0xa
    80002098:	99c7b783          	ld	a5,-1636(a5) # 8000ba30 <_GLOBAL_OFFSET_TABLE_+0x38>
    8000209c:	0007b783          	ld	a5,0(a5)
        bool empty() { return cnt==0;}
    800020a0:	0287a783          	lw	a5,40(a5)
    800020a4:	fc079ee3          	bnez	a5,80002080 <main+0x6c>
    }

    return;
    800020a8:	03813083          	ld	ra,56(sp)
    800020ac:	03013403          	ld	s0,48(sp)
    800020b0:	04010113          	addi	sp,sp,64
    800020b4:	00008067          	ret

00000000800020b8 <_Z41__static_initialization_and_destruction_0ii>:
            SleepingThreads.addLast(t);
        } else {
            Scheduler::put(t);
        }
    }
    800020b8:	ff010113          	addi	sp,sp,-16
    800020bc:	00813423          	sd	s0,8(sp)
    800020c0:	01010413          	addi	s0,sp,16
    800020c4:	00100793          	li	a5,1
    800020c8:	00f50863          	beq	a0,a5,800020d8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800020cc:	00813403          	ld	s0,8(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret
    800020d8:	000107b7          	lui	a5,0x10
    800020dc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800020e0:	fef596e3          	bne	a1,a5,800020cc <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    800020e4:	0000a797          	auipc	a5,0xa
    800020e8:	9dc78793          	addi	a5,a5,-1572 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    800020ec:	0007b023          	sd	zero,0(a5)
    800020f0:	0007b423          	sd	zero,8(a5)
    800020f4:	0007b823          	sd	zero,16(a5)
    800020f8:	fd5ff06f          	j	800020cc <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800020fc <_ZN3TCB12createThreadEPFvPvES0_Pm>:
{
    800020fc:	fd010113          	addi	sp,sp,-48
    80002100:	02113423          	sd	ra,40(sp)
    80002104:	02813023          	sd	s0,32(sp)
    80002108:	00913c23          	sd	s1,24(sp)
    8000210c:	01213823          	sd	s2,16(sp)
    80002110:	01313423          	sd	s3,8(sp)
    80002114:	01413023          	sd	s4,0(sp)
    80002118:	03010413          	addi	s0,sp,48
    8000211c:	00050993          	mv	s3,a0
    80002120:	00058a13          	mv	s4,a1
    80002124:	00060913          	mv	s2,a2

    void* operator new(size_t size) {
        return MemoryAllocator::instance().kmem_alloc(size);
    80002128:	00001097          	auipc	ra,0x1
    8000212c:	b70080e7          	jalr	-1168(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80002130:	05800593          	li	a1,88
    80002134:	00001097          	auipc	ra,0x1
    80002138:	bf0080e7          	jalr	-1040(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    8000213c:	00050493          	mv	s1,a0
                    }),
            finished(false),
            blocked(false),
            sleepTime(0),
            arg(arg),
            timeSlice(DEFAULT_TIME_SLICE)
    80002140:	01353023          	sd	s3,0(a0) # 8000 <_entry-0x7fff8000>
    80002144:	01253423          	sd	s2,8(a0)
    80002148:	00000797          	auipc	a5,0x0
    8000214c:	1fc78793          	addi	a5,a5,508 # 80002344 <_ZN3TCB13threadWrapperEv>
    80002150:	00f53823          	sd	a5,16(a0)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80002154:	04090463          	beqz	s2,8000219c <_ZN3TCB12createThreadEPFvPvES0_Pm+0xa0>
    80002158:	00008637          	lui	a2,0x8
    8000215c:	00c90933          	add	s2,s2,a2
            timeSlice(DEFAULT_TIME_SLICE)
    80002160:	0124bc23          	sd	s2,24(s1)
    80002164:	02048023          	sb	zero,32(s1)
    80002168:	020480a3          	sb	zero,33(s1)
    8000216c:	0204b423          	sd	zero,40(s1)
    80002170:	0344b823          	sd	s4,48(s1)
    80002174:	0204bc23          	sd	zero,56(s1)
    80002178:	0404b023          	sd	zero,64(s1)
    8000217c:	0404b423          	sd	zero,72(s1)
    80002180:	00200793          	li	a5,2
    80002184:	04f4b823          	sd	a5,80(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80002188:	04098063          	beqz	s3,800021c8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xcc>
    8000218c:	00048513          	mv	a0,s1
    80002190:	00001097          	auipc	ra,0x1
    80002194:	e90080e7          	jalr	-368(ra) # 80003020 <_ZN9Scheduler3putEP3TCB>
    80002198:	0300006f          	j	800021c8 <_ZN3TCB12createThreadEPFvPvES0_Pm+0xcc>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000219c:	00000913          	li	s2,0
    800021a0:	fc1ff06f          	j	80002160 <_ZN3TCB12createThreadEPFvPvES0_Pm+0x64>
    800021a4:	00050913          	mv	s2,a0
        MemoryAllocator::instance().kmem_free(ptr);
    800021a8:	00001097          	auipc	ra,0x1
    800021ac:	af0080e7          	jalr	-1296(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800021b0:	00048593          	mv	a1,s1
    800021b4:	00001097          	auipc	ra,0x1
    800021b8:	cf8080e7          	jalr	-776(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
    800021bc:	00090513          	mv	a0,s2
    800021c0:	0000b097          	auipc	ra,0xb
    800021c4:	a78080e7          	jalr	-1416(ra) # 8000cc38 <_Unwind_Resume>
}
    800021c8:	00048513          	mv	a0,s1
    800021cc:	02813083          	ld	ra,40(sp)
    800021d0:	02013403          	ld	s0,32(sp)
    800021d4:	01813483          	ld	s1,24(sp)
    800021d8:	01013903          	ld	s2,16(sp)
    800021dc:	00813983          	ld	s3,8(sp)
    800021e0:	00013a03          	ld	s4,0(sp)
    800021e4:	03010113          	addi	sp,sp,48
    800021e8:	00008067          	ret

00000000800021ec <_ZN3TCB5yieldEv>:
{
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00813423          	sd	s0,8(sp)
    800021f4:	01010413          	addi	s0,sp,16
        __asm__ volatile("mv a0, %0" : : "r"(x));
    800021f8:	01300793          	li	a5,19
    800021fc:	00078513          	mv	a0,a5
    __asm__ volatile ("ecall");
    80002200:	00000073          	ecall
}
    80002204:	00813403          	ld	s0,8(sp)
    80002208:	01010113          	addi	sp,sp,16
    8000220c:	00008067          	ret

0000000080002210 <_ZN3TCB8dispatchEv>:
{
    80002210:	fe010113          	addi	sp,sp,-32
    80002214:	00113c23          	sd	ra,24(sp)
    80002218:	00813823          	sd	s0,16(sp)
    8000221c:	00913423          	sd	s1,8(sp)
    80002220:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002224:	0000a497          	auipc	s1,0xa
    80002228:	8b44b483          	ld	s1,-1868(s1) # 8000bad8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000222c:	0204c783          	lbu	a5,32(s1)
    if (!old->isFinished() && !old->isBlocked() && !old->isSleeping()) {
    80002230:	00079a63          	bnez	a5,80002244 <_ZN3TCB8dispatchEv+0x34>
    bool isBlocked() const { return this->blocked; }
    80002234:	0214c783          	lbu	a5,33(s1)
    80002238:	00079663          	bnez	a5,80002244 <_ZN3TCB8dispatchEv+0x34>
    bool isSleeping() { return this->sleepTime > 0; }
    8000223c:	0284b783          	ld	a5,40(s1)
    80002240:	04078063          	beqz	a5,80002280 <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    80002244:	00001097          	auipc	ra,0x1
    80002248:	d4c080e7          	jalr	-692(ra) # 80002f90 <_ZN9Scheduler3getEv>
    8000224c:	0000a797          	auipc	a5,0xa
    80002250:	87478793          	addi	a5,a5,-1932 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    80002254:	00a7bc23          	sd	a0,24(a5)
    timeSliceCounter = 0; // reset time slice counter for the new running thread
    80002258:	0207b023          	sd	zero,32(a5)
    TCB::contextSwitch(&old->context, &running->context);
    8000225c:	01050593          	addi	a1,a0,16
    80002260:	01048513          	addi	a0,s1,16
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	eac080e7          	jalr	-340(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000226c:	01813083          	ld	ra,24(sp)
    80002270:	01013403          	ld	s0,16(sp)
    80002274:	00813483          	ld	s1,8(sp)
    80002278:	02010113          	addi	sp,sp,32
    8000227c:	00008067          	ret
        Scheduler::put(old);
    80002280:	00048513          	mv	a0,s1
    80002284:	00001097          	auipc	ra,0x1
    80002288:	d9c080e7          	jalr	-612(ra) # 80003020 <_ZN9Scheduler3putEP3TCB>
    8000228c:	fb9ff06f          	j	80002244 <_ZN3TCB8dispatchEv+0x34>

0000000080002290 <_ZN3TCB10releaseAllEv>:
void TCB::releaseAll() {
    80002290:	fd010113          	addi	sp,sp,-48
    80002294:	02113423          	sd	ra,40(sp)
    80002298:	02813023          	sd	s0,32(sp)
    8000229c:	00913c23          	sd	s1,24(sp)
    800022a0:	01213823          	sd	s2,16(sp)
    800022a4:	01313423          	sd	s3,8(sp)
    800022a8:	01413023          	sd	s4,0(sp)
    800022ac:	03010413          	addi	s0,sp,48
    800022b0:	00050913          	mv	s2,a0
    800022b4:	03c0006f          	j	800022f0 <_ZN3TCB10releaseAllEv+0x60>
        if (!head) { tail = 0; }
    800022b8:	0009b423          	sd	zero,8(s3)
        T *ret = elem->data;
    800022bc:	0004ba03          	ld	s4,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	9d8080e7          	jalr	-1576(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800022c8:	00048593          	mv	a1,s1
    800022cc:	00001097          	auipc	ra,0x1
    800022d0:	be0080e7          	jalr	-1056(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    800022d4:	0109b783          	ld	a5,16(s3)
    800022d8:	fff78793          	addi	a5,a5,-1
    800022dc:	00f9b823          	sd	a5,16(s3)
    void setBlocked(bool value) { this->blocked = value; }
    800022e0:	020a00a3          	sb	zero,33(s4)
        Scheduler::put(tcb);
    800022e4:	000a0513          	mv	a0,s4
    800022e8:	00001097          	auipc	ra,0x1
    800022ec:	d38080e7          	jalr	-712(ra) # 80003020 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800022f0:	03893783          	ld	a5,56(s2)
    800022f4:	02078863          	beqz	a5,80002324 <_ZN3TCB10releaseAllEv+0x94>
        return head->data;
    800022f8:	0007b783          	ld	a5,0(a5)
    while (this->joined.peekFirst()) {
    800022fc:	02078463          	beqz	a5,80002324 <_ZN3TCB10releaseAllEv+0x94>
        TCB* tcb = this->joined.removeFirst();
    80002300:	03890993          	addi	s3,s2,56
        if (!head) { return 0; }
    80002304:	03893483          	ld	s1,56(s2)
    80002308:	00048a63          	beqz	s1,8000231c <_ZN3TCB10releaseAllEv+0x8c>
        head = head->next;
    8000230c:	0084b783          	ld	a5,8(s1)
    80002310:	02f93c23          	sd	a5,56(s2)
        if (!head) { tail = 0; }
    80002314:	fa0794e3          	bnez	a5,800022bc <_ZN3TCB10releaseAllEv+0x2c>
    80002318:	fa1ff06f          	j	800022b8 <_ZN3TCB10releaseAllEv+0x28>
        if (!head) { return 0; }
    8000231c:	00048a13          	mv	s4,s1
    80002320:	fc1ff06f          	j	800022e0 <_ZN3TCB10releaseAllEv+0x50>
}
    80002324:	02813083          	ld	ra,40(sp)
    80002328:	02013403          	ld	s0,32(sp)
    8000232c:	01813483          	ld	s1,24(sp)
    80002330:	01013903          	ld	s2,16(sp)
    80002334:	00813983          	ld	s3,8(sp)
    80002338:	00013a03          	ld	s4,0(sp)
    8000233c:	03010113          	addi	sp,sp,48
    80002340:	00008067          	ret

0000000080002344 <_ZN3TCB13threadWrapperEv>:
{
    80002344:	fe010113          	addi	sp,sp,-32
    80002348:	00113c23          	sd	ra,24(sp)
    8000234c:	00813823          	sd	s0,16(sp)
    80002350:	00913423          	sd	s1,8(sp)
    80002354:	02010413          	addi	s0,sp,32
    Kernel::popSppSpie();
    80002358:	fffff097          	auipc	ra,0xfffff
    8000235c:	0e8080e7          	jalr	232(ra) # 80001440 <_ZN6Kernel10popSppSpieEv>
    running->body(running->arg);
    80002360:	00009497          	auipc	s1,0x9
    80002364:	76048493          	addi	s1,s1,1888 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    80002368:	0184b783          	ld	a5,24(s1)
    8000236c:	0007b703          	ld	a4,0(a5)
    80002370:	0307b503          	ld	a0,48(a5)
    80002374:	000700e7          	jalr	a4
    running->setFinished(true);
    80002378:	0184b503          	ld	a0,24(s1)
    void setFinished(bool value) { finished = value; }
    8000237c:	00100793          	li	a5,1
    80002380:	02f50023          	sb	a5,32(a0)
    running->releaseAll(); //release all joined threads that are waiting for this thread to finish
    80002384:	00000097          	auipc	ra,0x0
    80002388:	f0c080e7          	jalr	-244(ra) # 80002290 <_ZN3TCB10releaseAllEv>
    thread_dispatch();
    8000238c:	fffff097          	auipc	ra,0xfffff
    80002390:	eac080e7          	jalr	-340(ra) # 80001238 <_Z15thread_dispatchv>
}
    80002394:	01813083          	ld	ra,24(sp)
    80002398:	01013403          	ld	s0,16(sp)
    8000239c:	00813483          	ld	s1,8(sp)
    800023a0:	02010113          	addi	sp,sp,32
    800023a4:	00008067          	ret

00000000800023a8 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished; }
    800023a8:	02054783          	lbu	a5,32(a0)
    if(!handle->isFinished()) {
    800023ac:	00078463          	beqz	a5,800023b4 <_ZN3TCB4joinEPS_+0xc>
    800023b0:	00008067          	ret
void TCB::join(TCB* handle) {
    800023b4:	fd010113          	addi	sp,sp,-48
    800023b8:	02113423          	sd	ra,40(sp)
    800023bc:	02813023          	sd	s0,32(sp)
    800023c0:	00913c23          	sd	s1,24(sp)
    800023c4:	01213823          	sd	s2,16(sp)
    800023c8:	01313423          	sd	s3,8(sp)
    800023cc:	03010413          	addi	s0,sp,48
    800023d0:	00050493          	mv	s1,a0
        running->setBlocked(true);
    800023d4:	00009997          	auipc	s3,0x9
    800023d8:	7049b983          	ld	s3,1796(s3) # 8000bad8 <_ZN3TCB7runningE>
    void setBlocked(bool value) { this->blocked = value; }
    800023dc:	00100793          	li	a5,1
    800023e0:	02f980a3          	sb	a5,33(s3)
        handle->joined.addLast(running); //join this thread to the handle's joined list so it waits for the handle to finish
    800023e4:	03850913          	addi	s2,a0,56
            return MemoryAllocator::instance().kmem_alloc(size);
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	8b0080e7          	jalr	-1872(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800023f0:	01000593          	li	a1,16
    800023f4:	00001097          	auipc	ra,0x1
    800023f8:	930080e7          	jalr	-1744(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800023fc:	01353023          	sd	s3,0(a0)
    80002400:	00053423          	sd	zero,8(a0)
        if (tail)
    80002404:	00893783          	ld	a5,8(s2)
    80002408:	02078a63          	beqz	a5,8000243c <_ZN3TCB4joinEPS_+0x94>
            tail->next = elem;
    8000240c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002410:	00a93423          	sd	a0,8(s2)
        size++;
    80002414:	01093783          	ld	a5,16(s2)
    80002418:	00178793          	addi	a5,a5,1
    8000241c:	00f93823          	sd	a5,16(s2)
}
    80002420:	02813083          	ld	ra,40(sp)
    80002424:	02013403          	ld	s0,32(sp)
    80002428:	01813483          	ld	s1,24(sp)
    8000242c:	01013903          	ld	s2,16(sp)
    80002430:	00813983          	ld	s3,8(sp)
    80002434:	03010113          	addi	sp,sp,48
    80002438:	00008067          	ret
            head = tail = elem;
    8000243c:	00a93423          	sd	a0,8(s2)
    80002440:	02a4bc23          	sd	a0,56(s1)
    80002444:	fd1ff06f          	j	80002414 <_ZN3TCB4joinEPS_+0x6c>

0000000080002448 <_ZN3TCB10time_sleepEm>:
    if (timeout == 0) {
    80002448:	0a050863          	beqz	a0,800024f8 <_ZN3TCB10time_sleepEm+0xb0>
int TCB::time_sleep(time_t timeout) {
    8000244c:	fe010113          	addi	sp,sp,-32
    80002450:	00113c23          	sd	ra,24(sp)
    80002454:	00813823          	sd	s0,16(sp)
    80002458:	00913423          	sd	s1,8(sp)
    8000245c:	02010413          	addi	s0,sp,32
    if (running->isBlocked() || running->isFinished()) {
    80002460:	00009497          	auipc	s1,0x9
    80002464:	6784b483          	ld	s1,1656(s1) # 8000bad8 <_ZN3TCB7runningE>
    bool isBlocked() const { return this->blocked; }
    80002468:	0214c783          	lbu	a5,33(s1)
    8000246c:	08079a63          	bnez	a5,80002500 <_ZN3TCB10time_sleepEm+0xb8>
    bool isFinished() const { return finished; }
    80002470:	0204c783          	lbu	a5,32(s1)
    80002474:	08079a63          	bnez	a5,80002508 <_ZN3TCB10time_sleepEm+0xc0>
    void setSleeping(time_t value) { this->sleepTime = value; }
    80002478:	02a4b423          	sd	a0,40(s1)
            return MemoryAllocator::instance().kmem_alloc(size);
    8000247c:	00001097          	auipc	ra,0x1
    80002480:	81c080e7          	jalr	-2020(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80002484:	01000593          	li	a1,16
    80002488:	00001097          	auipc	ra,0x1
    8000248c:	89c080e7          	jalr	-1892(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002490:	00953023          	sd	s1,0(a0)
    80002494:	00053423          	sd	zero,8(a0)
        if (tail)
    80002498:	00009797          	auipc	a5,0x9
    8000249c:	6307b783          	ld	a5,1584(a5) # 8000bac8 <_ZN3TCB15SleepingThreadsE+0x8>
    800024a0:	04078263          	beqz	a5,800024e4 <_ZN3TCB10time_sleepEm+0x9c>
            tail->next = elem;
    800024a4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800024a8:	00009797          	auipc	a5,0x9
    800024ac:	62a7b023          	sd	a0,1568(a5) # 8000bac8 <_ZN3TCB15SleepingThreadsE+0x8>
        size++;
    800024b0:	00009717          	auipc	a4,0x9
    800024b4:	61070713          	addi	a4,a4,1552 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    800024b8:	01073783          	ld	a5,16(a4)
    800024bc:	00178793          	addi	a5,a5,1
    800024c0:	00f73823          	sd	a5,16(a4)
    TCB::dispatch(); //this won't put the sleeping thread back into the ready queue.
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	d4c080e7          	jalr	-692(ra) # 80002210 <_ZN3TCB8dispatchEv>
    return 0;
    800024cc:	00000513          	li	a0,0
}
    800024d0:	01813083          	ld	ra,24(sp)
    800024d4:	01013403          	ld	s0,16(sp)
    800024d8:	00813483          	ld	s1,8(sp)
    800024dc:	02010113          	addi	sp,sp,32
    800024e0:	00008067          	ret
            head = tail = elem;
    800024e4:	00009797          	auipc	a5,0x9
    800024e8:	5dc78793          	addi	a5,a5,1500 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    800024ec:	00a7b423          	sd	a0,8(a5)
    800024f0:	00a7b023          	sd	a0,0(a5)
    800024f4:	fbdff06f          	j	800024b0 <_ZN3TCB10time_sleepEm+0x68>
        return 0;
    800024f8:	00000513          	li	a0,0
}
    800024fc:	00008067          	ret
        return -1;
    80002500:	fff00513          	li	a0,-1
    80002504:	fcdff06f          	j	800024d0 <_ZN3TCB10time_sleepEm+0x88>
    80002508:	fff00513          	li	a0,-1
    8000250c:	fc5ff06f          	j	800024d0 <_ZN3TCB10time_sleepEm+0x88>

0000000080002510 <_ZN3TCB9time_tickEv>:
void TCB::time_tick(){
    80002510:	fd010113          	addi	sp,sp,-48
    80002514:	02113423          	sd	ra,40(sp)
    80002518:	02813023          	sd	s0,32(sp)
    8000251c:	00913c23          	sd	s1,24(sp)
    80002520:	01213823          	sd	s2,16(sp)
    80002524:	01313423          	sd	s3,8(sp)
    80002528:	03010413          	addi	s0,sp,48
    for(size_t i = 0; i < SleepingThreads.getSize(); i++) {
    8000252c:	00000993          	li	s3,0
    80002530:	0400006f          	j	80002570 <_ZN3TCB9time_tickEv+0x60>
        if (!head) { tail = 0; }
    80002534:	00009797          	auipc	a5,0x9
    80002538:	5807ba23          	sd	zero,1428(a5) # 8000bac8 <_ZN3TCB15SleepingThreadsE+0x8>
    8000253c:	05c0006f          	j	80002598 <_ZN3TCB9time_tickEv+0x88>
        if (!head) { return 0; }
    80002540:	00048913          	mv	s2,s1
    80002544:	0800006f          	j	800025c4 <_ZN3TCB9time_tickEv+0xb4>
            head = tail = elem;
    80002548:	00009797          	auipc	a5,0x9
    8000254c:	57878793          	addi	a5,a5,1400 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    80002550:	00a7b423          	sd	a0,8(a5)
    80002554:	00a7b023          	sd	a0,0(a5)
        size++;
    80002558:	00009717          	auipc	a4,0x9
    8000255c:	56870713          	addi	a4,a4,1384 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    80002560:	01073783          	ld	a5,16(a4)
    80002564:	00178793          	addi	a5,a5,1
    80002568:	00f73823          	sd	a5,16(a4)
    8000256c:	00198993          	addi	s3,s3,1
        if (!tail) { return 0; }
        return tail->data;
    }

    size_t getSize() {
        return size;
    80002570:	00009797          	auipc	a5,0x9
    80002574:	5607b783          	ld	a5,1376(a5) # 8000bad0 <_ZN3TCB15SleepingThreadsE+0x10>
    80002578:	0af9f663          	bgeu	s3,a5,80002624 <_ZN3TCB9time_tickEv+0x114>
        if (!head) { return 0; }
    8000257c:	00009497          	auipc	s1,0x9
    80002580:	5444b483          	ld	s1,1348(s1) # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    80002584:	fa048ee3          	beqz	s1,80002540 <_ZN3TCB9time_tickEv+0x30>
        head = head->next;
    80002588:	0084b783          	ld	a5,8(s1)
    8000258c:	00009717          	auipc	a4,0x9
    80002590:	52f73a23          	sd	a5,1332(a4) # 8000bac0 <_ZN3TCB15SleepingThreadsE>
        if (!head) { tail = 0; }
    80002594:	fa0780e3          	beqz	a5,80002534 <_ZN3TCB9time_tickEv+0x24>
        T *ret = elem->data;
    80002598:	0004b903          	ld	s2,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    8000259c:	00000097          	auipc	ra,0x0
    800025a0:	6fc080e7          	jalr	1788(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800025a4:	00048593          	mv	a1,s1
    800025a8:	00001097          	auipc	ra,0x1
    800025ac:	904080e7          	jalr	-1788(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    800025b0:	00009717          	auipc	a4,0x9
    800025b4:	51070713          	addi	a4,a4,1296 # 8000bac0 <_ZN3TCB15SleepingThreadsE>
    800025b8:	01073783          	ld	a5,16(a4)
    800025bc:	fff78793          	addi	a5,a5,-1
    800025c0:	00f73823          	sd	a5,16(a4)
    void decSleep() { if (this->sleepTime > 0) this->sleepTime--; }
    800025c4:	02893783          	ld	a5,40(s2)
    800025c8:	00078663          	beqz	a5,800025d4 <_ZN3TCB9time_tickEv+0xc4>
    800025cc:	fff78793          	addi	a5,a5,-1
    800025d0:	02f93423          	sd	a5,40(s2)
    bool isSleeping() { return this->sleepTime > 0; }
    800025d4:	02893783          	ld	a5,40(s2)
        if (t->isSleeping()) {
    800025d8:	02078e63          	beqz	a5,80002614 <_ZN3TCB9time_tickEv+0x104>
            return MemoryAllocator::instance().kmem_alloc(size);
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	6bc080e7          	jalr	1724(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800025e4:	01000593          	li	a1,16
    800025e8:	00000097          	auipc	ra,0x0
    800025ec:	73c080e7          	jalr	1852(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800025f0:	01253023          	sd	s2,0(a0)
    800025f4:	00053423          	sd	zero,8(a0)
        if (tail)
    800025f8:	00009797          	auipc	a5,0x9
    800025fc:	4d07b783          	ld	a5,1232(a5) # 8000bac8 <_ZN3TCB15SleepingThreadsE+0x8>
    80002600:	f40784e3          	beqz	a5,80002548 <_ZN3TCB9time_tickEv+0x38>
            tail->next = elem;
    80002604:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002608:	00009797          	auipc	a5,0x9
    8000260c:	4ca7b023          	sd	a0,1216(a5) # 8000bac8 <_ZN3TCB15SleepingThreadsE+0x8>
    80002610:	f49ff06f          	j	80002558 <_ZN3TCB9time_tickEv+0x48>
            Scheduler::put(t);
    80002614:	00090513          	mv	a0,s2
    80002618:	00001097          	auipc	ra,0x1
    8000261c:	a08080e7          	jalr	-1528(ra) # 80003020 <_ZN9Scheduler3putEP3TCB>
    80002620:	f4dff06f          	j	8000256c <_ZN3TCB9time_tickEv+0x5c>
    80002624:	02813083          	ld	ra,40(sp)
    80002628:	02013403          	ld	s0,32(sp)
    8000262c:	01813483          	ld	s1,24(sp)
    80002630:	01013903          	ld	s2,16(sp)
    80002634:	00813983          	ld	s3,8(sp)
    80002638:	03010113          	addi	sp,sp,48
    8000263c:	00008067          	ret

0000000080002640 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80002640:	ff010113          	addi	sp,sp,-16
    80002644:	00113423          	sd	ra,8(sp)
    80002648:	00813023          	sd	s0,0(sp)
    8000264c:	01010413          	addi	s0,sp,16
    80002650:	000105b7          	lui	a1,0x10
    80002654:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002658:	00100513          	li	a0,1
    8000265c:	00000097          	auipc	ra,0x0
    80002660:	a5c080e7          	jalr	-1444(ra) # 800020b8 <_Z41__static_initialization_and_destruction_0ii>
    80002664:	00813083          	ld	ra,8(sp)
    80002668:	00013403          	ld	s0,0(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80002684:	fffff097          	auipc	ra,0xfffff
    80002688:	ac0080e7          	jalr	-1344(ra) # 80001144 <_Z9mem_allocm>
}
    8000268c:	00813083          	ld	ra,8(sp)
    80002690:	00013403          	ld	s0,0(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_Znam>:

void *operator new[](size_t n)
{
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800026ac:	fffff097          	auipc	ra,0xfffff
    800026b0:	a98080e7          	jalr	-1384(ra) # 80001144 <_Z9mem_allocm>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00113423          	sd	ra,8(sp)
    800026cc:	00813023          	sd	s0,0(sp)
    800026d0:	01010413          	addi	s0,sp,16
    mem_free(p);
    800026d4:	fffff097          	auipc	ra,0xfffff
    800026d8:	aa0080e7          	jalr	-1376(ra) # 80001174 <_Z8mem_freePv>
}
    800026dc:	00813083          	ld	ra,8(sp)
    800026e0:	00013403          	ld	s0,0(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	00008067          	ret

00000000800026ec <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    800026ec:	ff010113          	addi	sp,sp,-16
    800026f0:	00113423          	sd	ra,8(sp)
    800026f4:	00813023          	sd	s0,0(sp)
    800026f8:	01010413          	addi	s0,sp,16
    mem_free(p);
    800026fc:	fffff097          	auipc	ra,0xfffff
    80002700:	a78080e7          	jalr	-1416(ra) # 80001174 <_Z8mem_freePv>
    80002704:	00813083          	ld	ra,8(sp)
    80002708:	00013403          	ld	s0,0(sp)
    8000270c:	01010113          	addi	sp,sp,16
    80002710:	00008067          	ret

0000000080002714 <_Z41__static_initialization_and_destruction_0ii>:
void PeriodicThread::run() {
    while (!terminated) {
        periodicActivation();
        Thread::sleep(period);
    }
    80002714:	ff010113          	addi	sp,sp,-16
    80002718:	00813423          	sd	s0,8(sp)
    8000271c:	01010413          	addi	s0,sp,16
    80002720:	00100793          	li	a5,1
    80002724:	00f50863          	beq	a0,a5,80002734 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002728:	00813403          	ld	s0,8(sp)
    8000272c:	01010113          	addi	sp,sp,16
    80002730:	00008067          	ret
    80002734:	000107b7          	lui	a5,0x10
    80002738:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000273c:	fef596e3          	bne	a1,a5,80002728 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80002740:	00009797          	auipc	a5,0x9
    80002744:	3a878793          	addi	a5,a5,936 # 8000bae8 <_ZN14PeriodicThread14createdThreadsE>
    80002748:	0007b023          	sd	zero,0(a5)
    8000274c:	0007b423          	sd	zero,8(a5)
    80002750:	0007b823          	sd	zero,16(a5)
    80002754:	fd5ff06f          	j	80002728 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002758 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    80002768:	00009797          	auipc	a5,0x9
    8000276c:	08078793          	addi	a5,a5,128 # 8000b7e8 <_ZTV9Semaphore+0x10>
    80002770:	00f53023          	sd	a5,0(a0)
    sem_close(this->myHandle);
    80002774:	00853503          	ld	a0,8(a0)
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	b10080e7          	jalr	-1264(ra) # 80001288 <_Z9sem_closeP10KSemaphore>
}
    80002780:	00813083          	ld	ra,8(sp)
    80002784:	00013403          	ld	s0,0(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002790:	fe010113          	addi	sp,sp,-32
    80002794:	00113c23          	sd	ra,24(sp)
    80002798:	00813823          	sd	s0,16(sp)
    8000279c:	00913423          	sd	s1,8(sp)
    800027a0:	02010413          	addi	s0,sp,32
    800027a4:	00050493          	mv	s1,a0
}
    800027a8:	00000097          	auipc	ra,0x0
    800027ac:	fb0080e7          	jalr	-80(ra) # 80002758 <_ZN9SemaphoreD1Ev>
    800027b0:	00048513          	mv	a0,s1
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	f10080e7          	jalr	-240(ra) # 800026c4 <_ZdlPv>
    800027bc:	01813083          	ld	ra,24(sp)
    800027c0:	01013403          	ld	s0,16(sp)
    800027c4:	00813483          	ld	s1,8(sp)
    800027c8:	02010113          	addi	sp,sp,32
    800027cc:	00008067          	ret

00000000800027d0 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800027d0:	fe010113          	addi	sp,sp,-32
    800027d4:	00113c23          	sd	ra,24(sp)
    800027d8:	00813823          	sd	s0,16(sp)
    800027dc:	00913423          	sd	s1,8(sp)
    800027e0:	02010413          	addi	s0,sp,32
    800027e4:	00009797          	auipc	a5,0x9
    800027e8:	02478793          	addi	a5,a5,36 # 8000b808 <_ZTV6Thread+0x10>
    800027ec:	00f53023          	sd	a5,0(a0)
    delete this->myHandle;
    800027f0:	00853483          	ld	s1,8(a0)
    800027f4:	02048663          	beqz	s1,80002820 <_ZN6ThreadD1Ev+0x50>
    ~TCB() { MemoryAllocator::instance().kmem_free(stack); }
    800027f8:	00000097          	auipc	ra,0x0
    800027fc:	4a0080e7          	jalr	1184(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80002800:	0084b583          	ld	a1,8(s1)
    80002804:	00000097          	auipc	ra,0x0
    80002808:	6a8080e7          	jalr	1704(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        MemoryAllocator::instance().kmem_free(ptr);
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	48c080e7          	jalr	1164(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80002814:	00048593          	mv	a1,s1
    80002818:	00000097          	auipc	ra,0x0
    8000281c:	694080e7          	jalr	1684(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
}
    80002820:	01813083          	ld	ra,24(sp)
    80002824:	01013403          	ld	s0,16(sp)
    80002828:	00813483          	ld	s1,8(sp)
    8000282c:	02010113          	addi	sp,sp,32
    80002830:	00008067          	ret

0000000080002834 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80002834:	fe010113          	addi	sp,sp,-32
    80002838:	00113c23          	sd	ra,24(sp)
    8000283c:	00813823          	sd	s0,16(sp)
    80002840:	00913423          	sd	s1,8(sp)
    80002844:	02010413          	addi	s0,sp,32
    80002848:	00050493          	mv	s1,a0
}
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	f84080e7          	jalr	-124(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80002854:	00048513          	mv	a0,s1
    80002858:	00000097          	auipc	ra,0x0
    8000285c:	e6c080e7          	jalr	-404(ra) # 800026c4 <_ZdlPv>
    80002860:	01813083          	ld	ra,24(sp)
    80002864:	01013403          	ld	s0,16(sp)
    80002868:	00813483          	ld	s1,8(sp)
    8000286c:	02010113          	addi	sp,sp,32
    80002870:	00008067          	ret

0000000080002874 <_ZN6Thread7wrapperEPv>:
void Thread::wrapper(void *thread) {
    80002874:	ff010113          	addi	sp,sp,-16
    80002878:	00113423          	sd	ra,8(sp)
    8000287c:	00813023          	sd	s0,0(sp)
    80002880:	01010413          	addi	s0,sp,16
    ((Thread *) thread)->run();
    80002884:	00053783          	ld	a5,0(a0)
    80002888:	0107b783          	ld	a5,16(a5)
    8000288c:	000780e7          	jalr	a5
    thread_exit();
    80002890:	fffff097          	auipc	ra,0xfffff
    80002894:	980080e7          	jalr	-1664(ra) # 80001210 <_Z11thread_exitv>
}
    80002898:	00813083          	ld	ra,8(sp)
    8000289c:	00013403          	ld	s0,0(sp)
    800028a0:	01010113          	addi	sp,sp,16
    800028a4:	00008067          	ret

00000000800028a8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800028a8:	ff010113          	addi	sp,sp,-16
    800028ac:	00113423          	sd	ra,8(sp)
    800028b0:	00813023          	sd	s0,0(sp)
    800028b4:	01010413          	addi	s0,sp,16
    800028b8:	00009797          	auipc	a5,0x9
    800028bc:	f3078793          	addi	a5,a5,-208 # 8000b7e8 <_ZTV9Semaphore+0x10>
    800028c0:	00f53023          	sd	a5,0(a0)
    sem_open(&this->myHandle, init);
    800028c4:	00850513          	addi	a0,a0,8
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	990080e7          	jalr	-1648(ra) # 80001258 <_Z8sem_openPP10KSemaphorej>
}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00113423          	sd	ra,8(sp)
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	01010413          	addi	s0,sp,16
    return sem_wait(this->myHandle);
    800028f0:	00853503          	ld	a0,8(a0)
    800028f4:	fffff097          	auipc	ra,0xfffff
    800028f8:	9c0080e7          	jalr	-1600(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>
}
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000290c:	ff010113          	addi	sp,sp,-16
    80002910:	00113423          	sd	ra,8(sp)
    80002914:	00813023          	sd	s0,0(sp)
    80002918:	01010413          	addi	s0,sp,16
    return sem_signal(this->myHandle);
    8000291c:	00853503          	ld	a0,8(a0)
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	9f0080e7          	jalr	-1552(ra) # 80001310 <_Z10sem_signalP10KSemaphore>
}
    80002928:	00813083          	ld	ra,8(sp)
    8000292c:	00013403          	ld	s0,0(sp)
    80002930:	01010113          	addi	sp,sp,16
    80002934:	00008067          	ret

0000000080002938 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002938:	ff010113          	addi	sp,sp,-16
    8000293c:	00113423          	sd	ra,8(sp)
    80002940:	00813023          	sd	s0,0(sp)
    80002944:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002948:	fffff097          	auipc	ra,0xfffff
    8000294c:	8f0080e7          	jalr	-1808(ra) # 80001238 <_Z15thread_dispatchv>
}
    80002950:	00813083          	ld	ra,8(sp)
    80002954:	00013403          	ld	s0,0(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	00008067          	ret

0000000080002960 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80002960:	ff010113          	addi	sp,sp,-16
    80002964:	00813423          	sd	s0,8(sp)
    80002968:	01010413          	addi	s0,sp,16
    8000296c:	00009797          	auipc	a5,0x9
    80002970:	e9c78793          	addi	a5,a5,-356 # 8000b808 <_ZTV6Thread+0x10>
    80002974:	00f53023          	sd	a5,0(a0)
    this->body = body;
    80002978:	00b53823          	sd	a1,16(a0)
    this->arg = arg;
    8000297c:	00c53c23          	sd	a2,24(a0)
    myHandle = nullptr;
    80002980:	00053423          	sd	zero,8(a0)
}
    80002984:	00813403          	ld	s0,8(sp)
    80002988:	01010113          	addi	sp,sp,16
    8000298c:	00008067          	ret

0000000080002990 <_ZN6Thread5startEv>:
int Thread::start() {
    80002990:	ff010113          	addi	sp,sp,-16
    80002994:	00113423          	sd	ra,8(sp)
    80002998:	00813023          	sd	s0,0(sp)
    8000299c:	01010413          	addi	s0,sp,16
    return thread_create(&this->myHandle, body, arg);
    800029a0:	01853603          	ld	a2,24(a0)
    800029a4:	01053583          	ld	a1,16(a0)
    800029a8:	00850513          	addi	a0,a0,8
    800029ac:	ffffe097          	auipc	ra,0xffffe
    800029b0:	7f4080e7          	jalr	2036(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
}
    800029b4:	00813083          	ld	ra,8(sp)
    800029b8:	00013403          	ld	s0,0(sp)
    800029bc:	01010113          	addi	sp,sp,16
    800029c0:	00008067          	ret

00000000800029c4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800029c4:	ff010113          	addi	sp,sp,-16
    800029c8:	00813423          	sd	s0,8(sp)
    800029cc:	01010413          	addi	s0,sp,16
    800029d0:	00009797          	auipc	a5,0x9
    800029d4:	e3878793          	addi	a5,a5,-456 # 8000b808 <_ZTV6Thread+0x10>
    800029d8:	00f53023          	sd	a5,0(a0)
    this->body = Thread::wrapper;
    800029dc:	00000797          	auipc	a5,0x0
    800029e0:	e9878793          	addi	a5,a5,-360 # 80002874 <_ZN6Thread7wrapperEPv>
    800029e4:	00f53823          	sd	a5,16(a0)
    this->arg = this;
    800029e8:	00a53c23          	sd	a0,24(a0)
    myHandle = nullptr;
    800029ec:	00053423          	sd	zero,8(a0)
}
    800029f0:	00813403          	ld	s0,8(sp)
    800029f4:	01010113          	addi	sp,sp,16
    800029f8:	00008067          	ret

00000000800029fc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t time) {
    800029fc:	ff010113          	addi	sp,sp,-16
    80002a00:	00113423          	sd	ra,8(sp)
    80002a04:	00813023          	sd	s0,0(sp)
    80002a08:	01010413          	addi	s0,sp,16
    return time_sleep(time);
    80002a0c:	fffff097          	auipc	ra,0xfffff
    80002a10:	960080e7          	jalr	-1696(ra) # 8000136c <_Z10time_sleepm>
}
    80002a14:	00813083          	ld	ra,8(sp)
    80002a18:	00013403          	ld	s0,0(sp)
    80002a1c:	01010113          	addi	sp,sp,16
    80002a20:	00008067          	ret

0000000080002a24 <_ZN14PeriodicThread3runEv>:
void PeriodicThread::run() {
    80002a24:	fe010113          	addi	sp,sp,-32
    80002a28:	00113c23          	sd	ra,24(sp)
    80002a2c:	00813823          	sd	s0,16(sp)
    80002a30:	00913423          	sd	s1,8(sp)
    80002a34:	02010413          	addi	s0,sp,32
    80002a38:	00050493          	mv	s1,a0
    while (!terminated) {
    80002a3c:	0284c783          	lbu	a5,40(s1)
    80002a40:	02079263          	bnez	a5,80002a64 <_ZN14PeriodicThread3runEv+0x40>
        periodicActivation();
    80002a44:	0004b783          	ld	a5,0(s1)
    80002a48:	0187b783          	ld	a5,24(a5)
    80002a4c:	00048513          	mv	a0,s1
    80002a50:	000780e7          	jalr	a5
        Thread::sleep(period);
    80002a54:	0204b503          	ld	a0,32(s1)
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	fa4080e7          	jalr	-92(ra) # 800029fc <_ZN6Thread5sleepEm>
    while (!terminated) {
    80002a60:	fddff06f          	j	80002a3c <_ZN14PeriodicThread3runEv+0x18>
    80002a64:	01813083          	ld	ra,24(sp)
    80002a68:	01013403          	ld	s0,16(sp)
    80002a6c:	00813483          	ld	s1,8(sp)
    80002a70:	02010113          	addi	sp,sp,32
    80002a74:	00008067          	ret

0000000080002a78 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    80002a78:	ff010113          	addi	sp,sp,-16
    80002a7c:	00113423          	sd	ra,8(sp)
    80002a80:	00813023          	sd	s0,0(sp)
    80002a84:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002a88:	fffff097          	auipc	ra,0xfffff
    80002a8c:	938080e7          	jalr	-1736(ra) # 800013c0 <_Z4putcc>
}
    80002a90:	00813083          	ld	ra,8(sp)
    80002a94:	00013403          	ld	s0,0(sp)
    80002a98:	01010113          	addi	sp,sp,16
    80002a9c:	00008067          	ret

0000000080002aa0 <_ZN7Console4getcEv>:
char Console::getc() {
    80002aa0:	ff010113          	addi	sp,sp,-16
    80002aa4:	00113423          	sd	ra,8(sp)
    80002aa8:	00813023          	sd	s0,0(sp)
    80002aac:	01010413          	addi	s0,sp,16
    return ::getc();
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	8e8080e7          	jalr	-1816(ra) # 80001398 <_Z4getcv>
}
    80002ab8:	00813083          	ld	ra,8(sp)
    80002abc:	00013403          	ld	s0,0(sp)
    80002ac0:	01010113          	addi	sp,sp,16
    80002ac4:	00008067          	ret

0000000080002ac8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period)
    80002ac8:	fe010113          	addi	sp,sp,-32
    80002acc:	00113c23          	sd	ra,24(sp)
    80002ad0:	00813823          	sd	s0,16(sp)
    80002ad4:	00913423          	sd	s1,8(sp)
    80002ad8:	01213023          	sd	s2,0(sp)
    80002adc:	02010413          	addi	s0,sp,32
    80002ae0:	00050493          	mv	s1,a0
    80002ae4:	00058913          	mv	s2,a1
    : Thread(), period(period), terminated(false)
    80002ae8:	00000097          	auipc	ra,0x0
    80002aec:	edc080e7          	jalr	-292(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80002af0:	00009797          	auipc	a5,0x9
    80002af4:	d4078793          	addi	a5,a5,-704 # 8000b830 <_ZTV14PeriodicThread+0x10>
    80002af8:	00f4b023          	sd	a5,0(s1)
    80002afc:	0324b023          	sd	s2,32(s1)
    80002b00:	02048423          	sb	zero,40(s1)
            return MemoryAllocator::instance().kmem_alloc(size);
    80002b04:	00000097          	auipc	ra,0x0
    80002b08:	194080e7          	jalr	404(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80002b0c:	01000593          	li	a1,16
    80002b10:	00000097          	auipc	ra,0x0
    80002b14:	214080e7          	jalr	532(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b18:	00953023          	sd	s1,0(a0)
    80002b1c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b20:	00009797          	auipc	a5,0x9
    80002b24:	fd07b783          	ld	a5,-48(a5) # 8000baf0 <_ZN14PeriodicThread14createdThreadsE+0x8>
    80002b28:	02078e63          	beqz	a5,80002b64 <_ZN14PeriodicThreadC1Em+0x9c>
            tail->next = elem;
    80002b2c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b30:	00009797          	auipc	a5,0x9
    80002b34:	fca7b023          	sd	a0,-64(a5) # 8000baf0 <_ZN14PeriodicThread14createdThreadsE+0x8>
        size++;
    80002b38:	00009717          	auipc	a4,0x9
    80002b3c:	fb070713          	addi	a4,a4,-80 # 8000bae8 <_ZN14PeriodicThread14createdThreadsE>
    80002b40:	01073783          	ld	a5,16(a4)
    80002b44:	00178793          	addi	a5,a5,1
    80002b48:	00f73823          	sd	a5,16(a4)
}
    80002b4c:	01813083          	ld	ra,24(sp)
    80002b50:	01013403          	ld	s0,16(sp)
    80002b54:	00813483          	ld	s1,8(sp)
    80002b58:	00013903          	ld	s2,0(sp)
    80002b5c:	02010113          	addi	sp,sp,32
    80002b60:	00008067          	ret
            head = tail = elem;
    80002b64:	00009797          	auipc	a5,0x9
    80002b68:	f8478793          	addi	a5,a5,-124 # 8000bae8 <_ZN14PeriodicThread14createdThreadsE>
    80002b6c:	00a7b423          	sd	a0,8(a5)
    80002b70:	00a7b023          	sd	a0,0(a5)
    80002b74:	fc5ff06f          	j	80002b38 <_ZN14PeriodicThreadC1Em+0x70>
    80002b78:	00050913          	mv	s2,a0
    : Thread(), period(period), terminated(false)
    80002b7c:	00048513          	mv	a0,s1
    80002b80:	00000097          	auipc	ra,0x0
    80002b84:	c50080e7          	jalr	-944(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80002b88:	00090513          	mv	a0,s2
    80002b8c:	0000a097          	auipc	ra,0xa
    80002b90:	0ac080e7          	jalr	172(ra) # 8000cc38 <_Unwind_Resume>

0000000080002b94 <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00813423          	sd	s0,8(sp)
    80002b9c:	01010413          	addi	s0,sp,16
    terminated = true;
    80002ba0:	00100793          	li	a5,1
    80002ba4:	02f50423          	sb	a5,40(a0)
}
    80002ba8:	00813403          	ld	s0,8(sp)
    80002bac:	01010113          	addi	sp,sp,16
    80002bb0:	00008067          	ret

0000000080002bb4 <_GLOBAL__sub_I__ZN9SemaphoreC2Ej>:
    80002bb4:	ff010113          	addi	sp,sp,-16
    80002bb8:	00113423          	sd	ra,8(sp)
    80002bbc:	00813023          	sd	s0,0(sp)
    80002bc0:	01010413          	addi	s0,sp,16
    80002bc4:	000105b7          	lui	a1,0x10
    80002bc8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002bcc:	00100513          	li	a0,1
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	b44080e7          	jalr	-1212(ra) # 80002714 <_Z41__static_initialization_and_destruction_0ii>
    80002bd8:	00813083          	ld	ra,8(sp)
    80002bdc:	00013403          	ld	s0,0(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret

0000000080002be8 <_ZN6Thread3runEv>:
  static int sleep (time_t); 
  static void wrapper(void*);
 
protected: 
  Thread (); 
  virtual void run () {} 
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00813423          	sd	s0,8(sp)
    80002bf0:	01010413          	addi	s0,sp,16
    80002bf4:	00813403          	ld	s0,8(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret

0000000080002c00 <_ZN14PeriodicThread18periodicActivationEv>:
public: 
  void terminate ();
 
protected: 
  PeriodicThread (time_t period); 
  virtual void periodicActivation () {} 
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00813423          	sd	s0,8(sp)
    80002c08:	01010413          	addi	s0,sp,16
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret

0000000080002c18 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread { 
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00113423          	sd	ra,8(sp)
    80002c20:	00813023          	sd	s0,0(sp)
    80002c24:	01010413          	addi	s0,sp,16
    80002c28:	00009797          	auipc	a5,0x9
    80002c2c:	c0878793          	addi	a5,a5,-1016 # 8000b830 <_ZTV14PeriodicThread+0x10>
    80002c30:	00f53023          	sd	a5,0(a0)
    80002c34:	00000097          	auipc	ra,0x0
    80002c38:	b9c080e7          	jalr	-1124(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80002c3c:	00813083          	ld	ra,8(sp)
    80002c40:	00013403          	ld	s0,0(sp)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <_ZN14PeriodicThreadD0Ev>:
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00113c23          	sd	ra,24(sp)
    80002c54:	00813823          	sd	s0,16(sp)
    80002c58:	00913423          	sd	s1,8(sp)
    80002c5c:	02010413          	addi	s0,sp,32
    80002c60:	00050493          	mv	s1,a0
    80002c64:	00009797          	auipc	a5,0x9
    80002c68:	bcc78793          	addi	a5,a5,-1076 # 8000b830 <_ZTV14PeriodicThread+0x10>
    80002c6c:	00f53023          	sd	a5,0(a0)
    80002c70:	00000097          	auipc	ra,0x0
    80002c74:	b60080e7          	jalr	-1184(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80002c78:	00048513          	mv	a0,s1
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	a48080e7          	jalr	-1464(ra) # 800026c4 <_ZdlPv>
    80002c84:	01813083          	ld	ra,24(sp)
    80002c88:	01013403          	ld	s0,16(sp)
    80002c8c:	00813483          	ld	s1,8(sp)
    80002c90:	02010113          	addi	sp,sp,32
    80002c94:	00008067          	ret

0000000080002c98 <_ZN15MemoryAllocator8instanceEv>:
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"

MemoryAllocator& MemoryAllocator::instance() {
    80002c98:	ff010113          	addi	sp,sp,-16
    80002c9c:	00813423          	sd	s0,8(sp)
    80002ca0:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    return inst;
}
    80002ca4:	00009517          	auipc	a0,0x9
    80002ca8:	e5c50513          	addi	a0,a0,-420 # 8000bb00 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80002cac:	00813403          	ld	s0,8(sp)
    80002cb0:	01010113          	addi	sp,sp,16
    80002cb4:	00008067          	ret

0000000080002cb8 <_ZN15MemoryAllocator9kmem_initEv>:

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    80002cb8:	ff010113          	addi	sp,sp,-16
    80002cbc:	00813423          	sd	s0,8(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    head = (ChunkHeader*) HEAP_START_ADDR;
    80002cc4:	00009797          	auipc	a5,0x9
    80002cc8:	d547b783          	ld	a5,-684(a5) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ccc:	0007b703          	ld	a4,0(a5)
    80002cd0:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    80002cd4:	00073c23          	sd	zero,24(a4)
    head->prev = nullptr;
    80002cd8:	00053783          	ld	a5,0(a0)
    80002cdc:	0007b823          	sd	zero,16(a5)
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    80002ce0:	00009797          	auipc	a5,0x9
    80002ce4:	d707b783          	ld	a5,-656(a5) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ce8:	0007b783          	ld	a5,0(a5)
    80002cec:	40e787b3          	sub	a5,a5,a4
    80002cf0:	00053703          	ld	a4,0(a0)
    80002cf4:	fd878793          	addi	a5,a5,-40
    80002cf8:	00f73423          	sd	a5,8(a4)
    head->free = true;
    80002cfc:	00053783          	ld	a5,0(a0)
    80002d00:	00100713          	li	a4,1
    80002d04:	02e78023          	sb	a4,32(a5)
    head->magic = MAGIC;
    80002d08:	00053703          	ld	a4,0(a0)
    80002d0c:	abcdf7b7          	lui	a5,0xabcdf
    80002d10:	f017879b          	addiw	a5,a5,-255
    80002d14:	00f72023          	sw	a5,0(a4)
    return;
} 
    80002d18:	00813403          	ld	s0,8(sp)
    80002d1c:	01010113          	addi	sp,sp,16
    80002d20:	00008067          	ret

0000000080002d24 <_ZN15MemoryAllocator10kmem_allocEm>:
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;
    80002d24:	0c058863          	beqz	a1,80002df4 <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
void* MemoryAllocator::kmem_alloc(size_t size) {
    80002d28:	fe010113          	addi	sp,sp,-32
    80002d2c:	00113c23          	sd	ra,24(sp)
    80002d30:	00813823          	sd	s0,16(sp)
    80002d34:	00913423          	sd	s1,8(sp)
    80002d38:	01213023          	sd	s2,0(sp)
    80002d3c:	02010413          	addi	s0,sp,32
    80002d40:	00050913          	mv	s2,a0

    // aligned size in bytes
    size_t aligned = size * MEM_BLOCK_SIZE;
    80002d44:	00659493          	slli	s1,a1,0x6

    if (!head) kmem_init();
    80002d48:	00053783          	ld	a5,0(a0)
    80002d4c:	00078663          	beqz	a5,80002d58 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    
    ChunkHeader* curr = head;
    80002d50:	00093503          	ld	a0,0(s2)
    80002d54:	0340006f          	j	80002d88 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    if (!head) kmem_init();
    80002d58:	00000097          	auipc	ra,0x0
    80002d5c:	f60080e7          	jalr	-160(ra) # 80002cb8 <_ZN15MemoryAllocator9kmem_initEv>
    80002d60:	ff1ff06f          	j	80002d50 <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;
    80002d64:	02050023          	sb	zero,32(a0)

                return (void*)((char*)curr + sizeof(ChunkHeader));
    80002d68:	02850513          	addi	a0,a0,40

        curr = curr->next;
    }

    return nullptr;
}
    80002d6c:	01813083          	ld	ra,24(sp)
    80002d70:	01013403          	ld	s0,16(sp)
    80002d74:	00813483          	ld	s1,8(sp)
    80002d78:	00013903          	ld	s2,0(sp)
    80002d7c:	02010113          	addi	sp,sp,32
    80002d80:	00008067          	ret
        curr = curr->next;
    80002d84:	01853503          	ld	a0,24(a0)
    while (curr) {
    80002d88:	fe0502e3          	beqz	a0,80002d6c <_ZN15MemoryAllocator10kmem_allocEm+0x48>
        if (curr->free){
    80002d8c:	02054783          	lbu	a5,32(a0)
    80002d90:	fe078ae3          	beqz	a5,80002d84 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
            if (curr->size == aligned){
    80002d94:	00853783          	ld	a5,8(a0)
    80002d98:	fc9786e3          	beq	a5,s1,80002d64 <_ZN15MemoryAllocator10kmem_allocEm+0x40>
            else if (curr->size > aligned + sizeof(ChunkHeader)){
    80002d9c:	02848713          	addi	a4,s1,40
    80002da0:	fef772e3          	bgeu	a4,a5,80002d84 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
                size_t remaining = curr->size - aligned;
    80002da4:	409787b3          	sub	a5,a5,s1
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
    80002da8:	00e50733          	add	a4,a0,a4
                newChunk->free = true;
    80002dac:	00100693          	li	a3,1
    80002db0:	02d70023          	sb	a3,32(a4)
                newChunk->size = remaining - sizeof(ChunkHeader);
    80002db4:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd2208>
    80002db8:	00f73423          	sd	a5,8(a4)
                newChunk->next = curr->next;
    80002dbc:	01853783          	ld	a5,24(a0)
    80002dc0:	00f73c23          	sd	a5,24(a4)
                newChunk->prev = curr;
    80002dc4:	00a73823          	sd	a0,16(a4)
                newChunk->magic = MAGIC;
    80002dc8:	abcdf7b7          	lui	a5,0xabcdf
    80002dcc:	f017879b          	addiw	a5,a5,-255
    80002dd0:	00f72023          	sw	a5,0(a4)
                if(curr->next) curr->next->prev = newChunk;
    80002dd4:	01853783          	ld	a5,24(a0)
    80002dd8:	00078463          	beqz	a5,80002de0 <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    80002ddc:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd2240>
                curr->next = newChunk;
    80002de0:	00e53c23          	sd	a4,24(a0)
                curr->size = aligned;
    80002de4:	00953423          	sd	s1,8(a0)
                curr->free = false;
    80002de8:	02050023          	sb	zero,32(a0)
                return (void*)((char*)curr + sizeof(ChunkHeader));
    80002dec:	02850513          	addi	a0,a0,40
    80002df0:	f7dff06f          	j	80002d6c <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    if (size == 0) return nullptr;
    80002df4:	00000513          	li	a0,0
}
    80002df8:	00008067          	ret

0000000080002dfc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    80002dfc:	ff010113          	addi	sp,sp,-16
    80002e00:	00813423          	sd	s0,8(sp)
    80002e04:	01010413          	addi	s0,sp,16
    if(!chunk->free) return;
    80002e08:	0205c783          	lbu	a5,32(a1)
    80002e0c:	04078263          	beqz	a5,80002e50 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

    //join with next
    if(chunk->next){
    80002e10:	0185b783          	ld	a5,24(a1)
    80002e14:	00078e63          	beqz	a5,80002e30 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
    80002e18:	0207c703          	lbu	a4,32(a5)
    80002e1c:	00070a63          	beqz	a4,80002e30 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    80002e20:	0085b683          	ld	a3,8(a1)
    80002e24:	02868713          	addi	a4,a3,40
    80002e28:	00e58733          	add	a4,a1,a4
    80002e2c:	02e78863          	beq	a5,a4,80002e5c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
    80002e30:	0105b783          	ld	a5,16(a1)
    80002e34:	00078e63          	beqz	a5,80002e50 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
    80002e38:	0207c703          	lbu	a4,32(a5)
    80002e3c:	00070a63          	beqz	a4,80002e50 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    80002e40:	0087b683          	ld	a3,8(a5)
    80002e44:	02868713          	addi	a4,a3,40
    80002e48:	00e78733          	add	a4,a5,a4
    80002e4c:	02b70a63          	beq	a4,a1,80002e80 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
    80002e50:	00813403          	ld	s0,8(sp)
    80002e54:	01010113          	addi	sp,sp,16
    80002e58:	00008067          	ret
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
    80002e5c:	0087b703          	ld	a4,8(a5)
    80002e60:	00e686b3          	add	a3,a3,a4
    80002e64:	02868693          	addi	a3,a3,40
    80002e68:	00d5b423          	sd	a3,8(a1)
            chunk->next = chunk->next->next;
    80002e6c:	0187b783          	ld	a5,24(a5)
    80002e70:	00f5bc23          	sd	a5,24(a1)
            if (chunk->next)
    80002e74:	fa078ee3          	beqz	a5,80002e30 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
                chunk->next->prev = chunk;
    80002e78:	00b7b823          	sd	a1,16(a5)
    80002e7c:	fb5ff06f          	j	80002e30 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
    80002e80:	0085b703          	ld	a4,8(a1)
    80002e84:	00e686b3          	add	a3,a3,a4
    80002e88:	02868693          	addi	a3,a3,40
    80002e8c:	00d7b423          	sd	a3,8(a5)
            chunk->prev->next = chunk->next;
    80002e90:	0105b703          	ld	a4,16(a1)
    80002e94:	0185b783          	ld	a5,24(a1)
    80002e98:	00f73c23          	sd	a5,24(a4)
            if (chunk->next)
    80002e9c:	fa078ae3          	beqz	a5,80002e50 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
                chunk->next->prev = chunk->prev;
    80002ea0:	0105b703          	ld	a4,16(a1)
    80002ea4:	00e7b823          	sd	a4,16(a5)
            chunk = chunk->prev;
    80002ea8:	fa9ff06f          	j	80002e50 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080002eac <_ZN15MemoryAllocator9kmem_freeEPv>:
    if (!ptr) return -1;
    80002eac:	06058c63          	beqz	a1,80002f24 <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    80002eb0:	00058793          	mv	a5,a1
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80002eb4:	00009717          	auipc	a4,0x9
    80002eb8:	b6473703          	ld	a4,-1180(a4) # 8000ba18 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002ebc:	00073703          	ld	a4,0(a4)
    80002ec0:	06e5e663          	bltu	a1,a4,80002f2c <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    80002ec4:	00009717          	auipc	a4,0x9
    80002ec8:	b8c73703          	ld	a4,-1140(a4) # 8000ba50 <_GLOBAL_OFFSET_TABLE_+0x58>
    80002ecc:	00073703          	ld	a4,0(a4)
    80002ed0:	06b76263          	bltu	a4,a1,80002f34 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    80002ed4:	fd858593          	addi	a1,a1,-40
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80002ed8:	fd87a683          	lw	a3,-40(a5)
    80002edc:	abcdf737          	lui	a4,0xabcdf
    80002ee0:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd2131>
    80002ee4:	04e69c63          	bne	a3,a4,80002f3c <_ZN15MemoryAllocator9kmem_freeEPv+0x90>
    80002ee8:	ff87c703          	lbu	a4,-8(a5)
    80002eec:	04071c63          	bnez	a4,80002f44 <_ZN15MemoryAllocator9kmem_freeEPv+0x98>
int MemoryAllocator::kmem_free(void* ptr) {
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00113423          	sd	ra,8(sp)
    80002ef8:	00813023          	sd	s0,0(sp)
    80002efc:	01010413          	addi	s0,sp,16
    chunkHeader->free = true;
    80002f00:	00100713          	li	a4,1
    80002f04:	fee78c23          	sb	a4,-8(a5)
    try_join(chunkHeader);
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	ef4080e7          	jalr	-268(ra) # 80002dfc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    return 0;
    80002f10:	00000513          	li	a0,0
}
    80002f14:	00813083          	ld	ra,8(sp)
    80002f18:	00013403          	ld	s0,0(sp)
    80002f1c:	01010113          	addi	sp,sp,16
    80002f20:	00008067          	ret
    if (!ptr) return -1;
    80002f24:	fff00513          	li	a0,-1
    80002f28:	00008067          	ret
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80002f2c:	ffe00513          	li	a0,-2
    80002f30:	00008067          	ret
    80002f34:	ffe00513          	li	a0,-2
    80002f38:	00008067          	ret
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80002f3c:	ffd00513          	li	a0,-3
    80002f40:	00008067          	ret
    80002f44:	ffd00513          	li	a0,-3
}
    80002f48:	00008067          	ret

0000000080002f4c <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002f4c:	ff010113          	addi	sp,sp,-16
    80002f50:	00813423          	sd	s0,8(sp)
    80002f54:	01010413          	addi	s0,sp,16
    80002f58:	00100793          	li	a5,1
    80002f5c:	00f50863          	beq	a0,a5,80002f6c <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002f60:	00813403          	ld	s0,8(sp)
    80002f64:	01010113          	addi	sp,sp,16
    80002f68:	00008067          	ret
    80002f6c:	000107b7          	lui	a5,0x10
    80002f70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002f74:	fef596e3          	bne	a1,a5,80002f60 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0), size(0) {}
    80002f78:	00009797          	auipc	a5,0x9
    80002f7c:	b9078793          	addi	a5,a5,-1136 # 8000bb08 <_ZN9Scheduler16readyThreadQueueE>
    80002f80:	0007b023          	sd	zero,0(a5)
    80002f84:	0007b423          	sd	zero,8(a5)
    80002f88:	0007b823          	sd	zero,16(a5)
    80002f8c:	fd5ff06f          	j	80002f60 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002f90 <_ZN9Scheduler3getEv>:
{
    80002f90:	fe010113          	addi	sp,sp,-32
    80002f94:	00113c23          	sd	ra,24(sp)
    80002f98:	00813823          	sd	s0,16(sp)
    80002f9c:	00913423          	sd	s1,8(sp)
    80002fa0:	01213023          	sd	s2,0(sp)
    80002fa4:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002fa8:	00009497          	auipc	s1,0x9
    80002fac:	b604b483          	ld	s1,-1184(s1) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE>
    80002fb0:	06048463          	beqz	s1,80003018 <_ZN9Scheduler3getEv+0x88>
        head = head->next;
    80002fb4:	0084b783          	ld	a5,8(s1)
    80002fb8:	00009717          	auipc	a4,0x9
    80002fbc:	b4f73823          	sd	a5,-1200(a4) # 8000bb08 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002fc0:	04078663          	beqz	a5,8000300c <_ZN9Scheduler3getEv+0x7c>
        T *ret = elem->data;
    80002fc4:	0004b903          	ld	s2,0(s1)
            MemoryAllocator::instance().kmem_free(ptr);
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	cd0080e7          	jalr	-816(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80002fd0:	00048593          	mv	a1,s1
    80002fd4:	00000097          	auipc	ra,0x0
    80002fd8:	ed8080e7          	jalr	-296(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
        size--;
    80002fdc:	00009717          	auipc	a4,0x9
    80002fe0:	b2c70713          	addi	a4,a4,-1236 # 8000bb08 <_ZN9Scheduler16readyThreadQueueE>
    80002fe4:	01073783          	ld	a5,16(a4)
    80002fe8:	fff78793          	addi	a5,a5,-1
    80002fec:	00f73823          	sd	a5,16(a4)
}
    80002ff0:	00090513          	mv	a0,s2
    80002ff4:	01813083          	ld	ra,24(sp)
    80002ff8:	01013403          	ld	s0,16(sp)
    80002ffc:	00813483          	ld	s1,8(sp)
    80003000:	00013903          	ld	s2,0(sp)
    80003004:	02010113          	addi	sp,sp,32
    80003008:	00008067          	ret
        if (!head) { tail = 0; }
    8000300c:	00009797          	auipc	a5,0x9
    80003010:	b007b223          	sd	zero,-1276(a5) # 8000bb10 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003014:	fb1ff06f          	j	80002fc4 <_ZN9Scheduler3getEv+0x34>
        if (!head) { return 0; }
    80003018:	00048913          	mv	s2,s1
    return readyThreadQueue.removeFirst();
    8000301c:	fd5ff06f          	j	80002ff0 <_ZN9Scheduler3getEv+0x60>

0000000080003020 <_ZN9Scheduler3putEP3TCB>:
{
    80003020:	fe010113          	addi	sp,sp,-32
    80003024:	00113c23          	sd	ra,24(sp)
    80003028:	00813823          	sd	s0,16(sp)
    8000302c:	00913423          	sd	s1,8(sp)
    80003030:	02010413          	addi	s0,sp,32
    80003034:	00050493          	mv	s1,a0
            return MemoryAllocator::instance().kmem_alloc(size);
    80003038:	00000097          	auipc	ra,0x0
    8000303c:	c60080e7          	jalr	-928(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80003040:	01000593          	li	a1,16
    80003044:	00000097          	auipc	ra,0x0
    80003048:	ce0080e7          	jalr	-800(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000304c:	00953023          	sd	s1,0(a0)
    80003050:	00053423          	sd	zero,8(a0)
        if (tail)
    80003054:	00009797          	auipc	a5,0x9
    80003058:	abc7b783          	ld	a5,-1348(a5) # 8000bb10 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000305c:	02078c63          	beqz	a5,80003094 <_ZN9Scheduler3putEP3TCB+0x74>
            tail->next = elem;
    80003060:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80003064:	00009797          	auipc	a5,0x9
    80003068:	aaa7b623          	sd	a0,-1364(a5) # 8000bb10 <_ZN9Scheduler16readyThreadQueueE+0x8>
        size++;
    8000306c:	00009717          	auipc	a4,0x9
    80003070:	a9c70713          	addi	a4,a4,-1380 # 8000bb08 <_ZN9Scheduler16readyThreadQueueE>
    80003074:	01073783          	ld	a5,16(a4)
    80003078:	00178793          	addi	a5,a5,1
    8000307c:	00f73823          	sd	a5,16(a4)
    80003080:	01813083          	ld	ra,24(sp)
    80003084:	01013403          	ld	s0,16(sp)
    80003088:	00813483          	ld	s1,8(sp)
    8000308c:	02010113          	addi	sp,sp,32
    80003090:	00008067          	ret
            head = tail = elem;
    80003094:	00009797          	auipc	a5,0x9
    80003098:	a7478793          	addi	a5,a5,-1420 # 8000bb08 <_ZN9Scheduler16readyThreadQueueE>
    8000309c:	00a7b423          	sd	a0,8(a5)
    800030a0:	00a7b023          	sd	a0,0(a5)
    800030a4:	fc9ff06f          	j	8000306c <_ZN9Scheduler3putEP3TCB+0x4c>

00000000800030a8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800030a8:	ff010113          	addi	sp,sp,-16
    800030ac:	00113423          	sd	ra,8(sp)
    800030b0:	00813023          	sd	s0,0(sp)
    800030b4:	01010413          	addi	s0,sp,16
    800030b8:	000105b7          	lui	a1,0x10
    800030bc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800030c0:	00100513          	li	a0,1
    800030c4:	00000097          	auipc	ra,0x0
    800030c8:	e88080e7          	jalr	-376(ra) # 80002f4c <_Z41__static_initialization_and_destruction_0ii>
    800030cc:	00813083          	ld	ra,8(sp)
    800030d0:	00013403          	ld	s0,0(sp)
    800030d4:	01010113          	addi	sp,sp,16
    800030d8:	00008067          	ret

00000000800030dc <_ZN7KBufferC1Ei>:
#include "../h/buffer.hpp"

KBuffer::KBuffer(int cap)
    800030dc:	fe010113          	addi	sp,sp,-32
    800030e0:	00113c23          	sd	ra,24(sp)
    800030e4:	00813823          	sd	s0,16(sp)
    800030e8:	00913423          	sd	s1,8(sp)
    800030ec:	01213023          	sd	s2,0(sp)
    800030f0:	02010413          	addi	s0,sp,32
    800030f4:	00050493          	mv	s1,a0
    800030f8:	00058913          	mv	s2,a1
{
    this->cap = cap;
    800030fc:	00b52023          	sw	a1,0(a0)
    head=tail=0;
    80003100:	00052e23          	sw	zero,28(a0)
    80003104:	00052c23          	sw	zero,24(a0)
    cnt=0;
    80003108:	02052423          	sw	zero,40(a0)
    buff = (char*) MemoryAllocator::instance().kmem_alloc(cap*sizeof(char));
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	b8c080e7          	jalr	-1140(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80003114:	00090593          	mv	a1,s2
    80003118:	00000097          	auipc	ra,0x0
    8000311c:	c0c080e7          	jalr	-1012(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    80003120:	02a4b023          	sd	a0,32(s1)
        return MemoryAllocator::instance().kmem_alloc(size);
    80003124:	00000097          	auipc	ra,0x0
    80003128:	b74080e7          	jalr	-1164(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    8000312c:	02000593          	li	a1,32
    80003130:	00000097          	auipc	ra,0x0
    80003134:	bf4080e7          	jalr	-1036(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    List() : head(0), tail(0), size(0) {}
    80003138:	00053423          	sd	zero,8(a0)
    8000313c:	00053823          	sd	zero,16(a0)
    80003140:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80003144:	00052223          	sw	zero,4(a0)
        this->closed = false;
    80003148:	00050023          	sb	zero,0(a0)
    itemAvailable = new KSemaphore(0);
    8000314c:	00a4b423          	sd	a0,8(s1)
        return MemoryAllocator::instance().kmem_alloc(size);
    80003150:	00000097          	auipc	ra,0x0
    80003154:	b48080e7          	jalr	-1208(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    80003158:	02000593          	li	a1,32
    8000315c:	00000097          	auipc	ra,0x0
    80003160:	bc8080e7          	jalr	-1080(ra) # 80002d24 <_ZN15MemoryAllocator10kmem_allocEm>
    80003164:	00053423          	sd	zero,8(a0)
    80003168:	00053823          	sd	zero,16(a0)
    8000316c:	00053c23          	sd	zero,24(a0)
        this->value = init;
    80003170:	01252223          	sw	s2,4(a0)
        this->closed = false;
    80003174:	00050023          	sb	zero,0(a0)
    spaceAvailable = new KSemaphore(cap);
    80003178:	00a4b823          	sd	a0,16(s1)
}
    8000317c:	01813083          	ld	ra,24(sp)
    80003180:	01013403          	ld	s0,16(sp)
    80003184:	00813483          	ld	s1,8(sp)
    80003188:	00013903          	ld	s2,0(sp)
    8000318c:	02010113          	addi	sp,sp,32
    80003190:	00008067          	ret

0000000080003194 <_ZN7KBuffer3putEc>:

void KBuffer::put(char item)
{
    80003194:	fe010113          	addi	sp,sp,-32
    80003198:	00113c23          	sd	ra,24(sp)
    8000319c:	00813823          	sd	s0,16(sp)
    800031a0:	00913423          	sd	s1,8(sp)
    800031a4:	01213023          	sd	s2,0(sp)
    800031a8:	02010413          	addi	s0,sp,32
    800031ac:	00050493          	mv	s1,a0
    800031b0:	00058913          	mv	s2,a1
    spaceAvailable->kwait_n(1);
    800031b4:	00100593          	li	a1,1
    800031b8:	01053503          	ld	a0,16(a0)
    800031bc:	fffff097          	auipc	ra,0xfffff
    800031c0:	8f8080e7          	jalr	-1800(ra) # 80001ab4 <_ZN10KSemaphore7kwait_nEj>
    buff[head]=item;
    800031c4:	0204b783          	ld	a5,32(s1)
    800031c8:	0184a703          	lw	a4,24(s1)
    800031cc:	00e787b3          	add	a5,a5,a4
    800031d0:	01278023          	sb	s2,0(a5)
    head = (head+1)%cap;
    800031d4:	0184a783          	lw	a5,24(s1)
    800031d8:	0017879b          	addiw	a5,a5,1
    800031dc:	0004a703          	lw	a4,0(s1)
    800031e0:	02e7e7bb          	remw	a5,a5,a4
    800031e4:	00f4ac23          	sw	a5,24(s1)
    cnt++;
    800031e8:	0284a783          	lw	a5,40(s1)
    800031ec:	0017879b          	addiw	a5,a5,1
    800031f0:	02f4a423          	sw	a5,40(s1)
    itemAvailable->ksignal_n(1);
    800031f4:	00100593          	li	a1,1
    800031f8:	0084b503          	ld	a0,8(s1)
    800031fc:	fffff097          	auipc	ra,0xfffff
    80003200:	9cc080e7          	jalr	-1588(ra) # 80001bc8 <_ZN10KSemaphore9ksignal_nEj>
}
    80003204:	01813083          	ld	ra,24(sp)
    80003208:	01013403          	ld	s0,16(sp)
    8000320c:	00813483          	ld	s1,8(sp)
    80003210:	00013903          	ld	s2,0(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret

000000008000321c <_ZN7KBuffer3getEv>:

char KBuffer::get()
{
    8000321c:	fe010113          	addi	sp,sp,-32
    80003220:	00113c23          	sd	ra,24(sp)
    80003224:	00813823          	sd	s0,16(sp)
    80003228:	00913423          	sd	s1,8(sp)
    8000322c:	01213023          	sd	s2,0(sp)
    80003230:	02010413          	addi	s0,sp,32
    80003234:	00050493          	mv	s1,a0
    itemAvailable->kwait_n(1);
    80003238:	00100593          	li	a1,1
    8000323c:	00853503          	ld	a0,8(a0)
    80003240:	fffff097          	auipc	ra,0xfffff
    80003244:	874080e7          	jalr	-1932(ra) # 80001ab4 <_ZN10KSemaphore7kwait_nEj>
    char ret = buff[tail];
    80003248:	0204b703          	ld	a4,32(s1)
    8000324c:	01c4a783          	lw	a5,28(s1)
    80003250:	00f70733          	add	a4,a4,a5
    80003254:	00074903          	lbu	s2,0(a4)
    tail = (tail+1)%cap;
    80003258:	0017879b          	addiw	a5,a5,1
    8000325c:	0004a703          	lw	a4,0(s1)
    80003260:	02e7e7bb          	remw	a5,a5,a4
    80003264:	00f4ae23          	sw	a5,28(s1)
    cnt--;
    80003268:	0284a783          	lw	a5,40(s1)
    8000326c:	fff7879b          	addiw	a5,a5,-1
    80003270:	02f4a423          	sw	a5,40(s1)
    spaceAvailable->ksignal_n(1);
    80003274:	00100593          	li	a1,1
    80003278:	0104b503          	ld	a0,16(s1)
    8000327c:	fffff097          	auipc	ra,0xfffff
    80003280:	94c080e7          	jalr	-1716(ra) # 80001bc8 <_ZN10KSemaphore9ksignal_nEj>
    return ret;
}
    80003284:	00090513          	mv	a0,s2
    80003288:	01813083          	ld	ra,24(sp)
    8000328c:	01013403          	ld	s0,16(sp)
    80003290:	00813483          	ld	s1,8(sp)
    80003294:	00013903          	ld	s2,0(sp)
    80003298:	02010113          	addi	sp,sp,32
    8000329c:	00008067          	ret

00000000800032a0 <_ZN7KBufferD1Ev>:

KBuffer::~KBuffer()
    800032a0:	fe010113          	addi	sp,sp,-32
    800032a4:	00113c23          	sd	ra,24(sp)
    800032a8:	00813823          	sd	s0,16(sp)
    800032ac:	00913423          	sd	s1,8(sp)
    800032b0:	01213023          	sd	s2,0(sp)
    800032b4:	02010413          	addi	s0,sp,32
    800032b8:	00050493          	mv	s1,a0
{
    MemoryAllocator::instance().kmem_free(buff);
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	9dc080e7          	jalr	-1572(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800032c4:	0204b583          	ld	a1,32(s1)
    800032c8:	00000097          	auipc	ra,0x0
    800032cc:	be4080e7          	jalr	-1052(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
    delete itemAvailable;
    800032d0:	0084b903          	ld	s2,8(s1)
    800032d4:	00090c63          	beqz	s2,800032ec <_ZN7KBufferD1Ev+0x4c>
        MemoryAllocator::instance().kmem_free(ptr);
    800032d8:	00000097          	auipc	ra,0x0
    800032dc:	9c0080e7          	jalr	-1600(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800032e0:	00090593          	mv	a1,s2
    800032e4:	00000097          	auipc	ra,0x0
    800032e8:	bc8080e7          	jalr	-1080(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
    delete spaceAvailable;
    800032ec:	0104b483          	ld	s1,16(s1)
    800032f0:	00048c63          	beqz	s1,80003308 <_ZN7KBufferD1Ev+0x68>
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	9a4080e7          	jalr	-1628(ra) # 80002c98 <_ZN15MemoryAllocator8instanceEv>
    800032fc:	00048593          	mv	a1,s1
    80003300:	00000097          	auipc	ra,0x0
    80003304:	bac080e7          	jalr	-1108(ra) # 80002eac <_ZN15MemoryAllocator9kmem_freeEPv>
    80003308:	01813083          	ld	ra,24(sp)
    8000330c:	01013403          	ld	s0,16(sp)
    80003310:	00813483          	ld	s1,8(sp)
    80003314:	00013903          	ld	s2,0(sp)
    80003318:	02010113          	addi	sp,sp,32
    8000331c:	00008067          	ret

0000000080003320 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003320:	fe010113          	addi	sp,sp,-32
    80003324:	00113c23          	sd	ra,24(sp)
    80003328:	00813823          	sd	s0,16(sp)
    8000332c:	00913423          	sd	s1,8(sp)
    80003330:	01213023          	sd	s2,0(sp)
    80003334:	02010413          	addi	s0,sp,32
    80003338:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000333c:	00000913          	li	s2,0
    80003340:	00c0006f          	j	8000334c <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003344:	ffffe097          	auipc	ra,0xffffe
    80003348:	ef4080e7          	jalr	-268(ra) # 80001238 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	04c080e7          	jalr	76(ra) # 80001398 <_Z4getcv>
    80003354:	0005059b          	sext.w	a1,a0
    80003358:	01b00793          	li	a5,27
    8000335c:	02f58a63          	beq	a1,a5,80003390 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003360:	0084b503          	ld	a0,8(s1)
    80003364:	00003097          	auipc	ra,0x3
    80003368:	400080e7          	jalr	1024(ra) # 80006764 <_ZN6Buffer3putEi>
        i++;
    8000336c:	0019071b          	addiw	a4,s2,1
    80003370:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003374:	0004a683          	lw	a3,0(s1)
    80003378:	0026979b          	slliw	a5,a3,0x2
    8000337c:	00d787bb          	addw	a5,a5,a3
    80003380:	0017979b          	slliw	a5,a5,0x1
    80003384:	02f767bb          	remw	a5,a4,a5
    80003388:	fc0792e3          	bnez	a5,8000334c <_ZL16producerKeyboardPv+0x2c>
    8000338c:	fb9ff06f          	j	80003344 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003390:	00100793          	li	a5,1
    80003394:	00008717          	auipc	a4,0x8
    80003398:	78f72623          	sw	a5,1932(a4) # 8000bb20 <_ZL9threadEnd>
    data->buffer->put('!');
    8000339c:	02100593          	li	a1,33
    800033a0:	0084b503          	ld	a0,8(s1)
    800033a4:	00003097          	auipc	ra,0x3
    800033a8:	3c0080e7          	jalr	960(ra) # 80006764 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800033ac:	0104b503          	ld	a0,16(s1)
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	f60080e7          	jalr	-160(ra) # 80001310 <_Z10sem_signalP10KSemaphore>
}
    800033b8:	01813083          	ld	ra,24(sp)
    800033bc:	01013403          	ld	s0,16(sp)
    800033c0:	00813483          	ld	s1,8(sp)
    800033c4:	00013903          	ld	s2,0(sp)
    800033c8:	02010113          	addi	sp,sp,32
    800033cc:	00008067          	ret

00000000800033d0 <_ZL8producerPv>:

static void producer(void *arg) {
    800033d0:	fe010113          	addi	sp,sp,-32
    800033d4:	00113c23          	sd	ra,24(sp)
    800033d8:	00813823          	sd	s0,16(sp)
    800033dc:	00913423          	sd	s1,8(sp)
    800033e0:	01213023          	sd	s2,0(sp)
    800033e4:	02010413          	addi	s0,sp,32
    800033e8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800033ec:	00000913          	li	s2,0
    800033f0:	00c0006f          	j	800033fc <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800033f4:	ffffe097          	auipc	ra,0xffffe
    800033f8:	e44080e7          	jalr	-444(ra) # 80001238 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800033fc:	00008797          	auipc	a5,0x8
    80003400:	7247a783          	lw	a5,1828(a5) # 8000bb20 <_ZL9threadEnd>
    80003404:	02079e63          	bnez	a5,80003440 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003408:	0004a583          	lw	a1,0(s1)
    8000340c:	0305859b          	addiw	a1,a1,48
    80003410:	0084b503          	ld	a0,8(s1)
    80003414:	00003097          	auipc	ra,0x3
    80003418:	350080e7          	jalr	848(ra) # 80006764 <_ZN6Buffer3putEi>
        i++;
    8000341c:	0019071b          	addiw	a4,s2,1
    80003420:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003424:	0004a683          	lw	a3,0(s1)
    80003428:	0026979b          	slliw	a5,a3,0x2
    8000342c:	00d787bb          	addw	a5,a5,a3
    80003430:	0017979b          	slliw	a5,a5,0x1
    80003434:	02f767bb          	remw	a5,a4,a5
    80003438:	fc0792e3          	bnez	a5,800033fc <_ZL8producerPv+0x2c>
    8000343c:	fb9ff06f          	j	800033f4 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003440:	0104b503          	ld	a0,16(s1)
    80003444:	ffffe097          	auipc	ra,0xffffe
    80003448:	ecc080e7          	jalr	-308(ra) # 80001310 <_Z10sem_signalP10KSemaphore>
}
    8000344c:	01813083          	ld	ra,24(sp)
    80003450:	01013403          	ld	s0,16(sp)
    80003454:	00813483          	ld	s1,8(sp)
    80003458:	00013903          	ld	s2,0(sp)
    8000345c:	02010113          	addi	sp,sp,32
    80003460:	00008067          	ret

0000000080003464 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003464:	fd010113          	addi	sp,sp,-48
    80003468:	02113423          	sd	ra,40(sp)
    8000346c:	02813023          	sd	s0,32(sp)
    80003470:	00913c23          	sd	s1,24(sp)
    80003474:	01213823          	sd	s2,16(sp)
    80003478:	01313423          	sd	s3,8(sp)
    8000347c:	03010413          	addi	s0,sp,48
    80003480:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003484:	00000993          	li	s3,0
    80003488:	01c0006f          	j	800034a4 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	dac080e7          	jalr	-596(ra) # 80001238 <_Z15thread_dispatchv>
    80003494:	0500006f          	j	800034e4 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80003498:	00a00513          	li	a0,10
    8000349c:	ffffe097          	auipc	ra,0xffffe
    800034a0:	f24080e7          	jalr	-220(ra) # 800013c0 <_Z4putcc>
    while (!threadEnd) {
    800034a4:	00008797          	auipc	a5,0x8
    800034a8:	67c7a783          	lw	a5,1660(a5) # 8000bb20 <_ZL9threadEnd>
    800034ac:	06079063          	bnez	a5,8000350c <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    800034b0:	00893503          	ld	a0,8(s2)
    800034b4:	00003097          	auipc	ra,0x3
    800034b8:	340080e7          	jalr	832(ra) # 800067f4 <_ZN6Buffer3getEv>
        i++;
    800034bc:	0019849b          	addiw	s1,s3,1
    800034c0:	0004899b          	sext.w	s3,s1
        putc(key);
    800034c4:	0ff57513          	andi	a0,a0,255
    800034c8:	ffffe097          	auipc	ra,0xffffe
    800034cc:	ef8080e7          	jalr	-264(ra) # 800013c0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800034d0:	00092703          	lw	a4,0(s2)
    800034d4:	0027179b          	slliw	a5,a4,0x2
    800034d8:	00e787bb          	addw	a5,a5,a4
    800034dc:	02f4e7bb          	remw	a5,s1,a5
    800034e0:	fa0786e3          	beqz	a5,8000348c <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    800034e4:	05000793          	li	a5,80
    800034e8:	02f4e4bb          	remw	s1,s1,a5
    800034ec:	fa049ce3          	bnez	s1,800034a4 <_ZL8consumerPv+0x40>
    800034f0:	fa9ff06f          	j	80003498 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800034f4:	00893503          	ld	a0,8(s2)
    800034f8:	00003097          	auipc	ra,0x3
    800034fc:	2fc080e7          	jalr	764(ra) # 800067f4 <_ZN6Buffer3getEv>
        putc(key);
    80003500:	0ff57513          	andi	a0,a0,255
    80003504:	ffffe097          	auipc	ra,0xffffe
    80003508:	ebc080e7          	jalr	-324(ra) # 800013c0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    8000350c:	00893503          	ld	a0,8(s2)
    80003510:	00003097          	auipc	ra,0x3
    80003514:	370080e7          	jalr	880(ra) # 80006880 <_ZN6Buffer6getCntEv>
    80003518:	fca04ee3          	bgtz	a0,800034f4 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    8000351c:	01093503          	ld	a0,16(s2)
    80003520:	ffffe097          	auipc	ra,0xffffe
    80003524:	df0080e7          	jalr	-528(ra) # 80001310 <_Z10sem_signalP10KSemaphore>
}
    80003528:	02813083          	ld	ra,40(sp)
    8000352c:	02013403          	ld	s0,32(sp)
    80003530:	01813483          	ld	s1,24(sp)
    80003534:	01013903          	ld	s2,16(sp)
    80003538:	00813983          	ld	s3,8(sp)
    8000353c:	03010113          	addi	sp,sp,48
    80003540:	00008067          	ret

0000000080003544 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80003544:	f9010113          	addi	sp,sp,-112
    80003548:	06113423          	sd	ra,104(sp)
    8000354c:	06813023          	sd	s0,96(sp)
    80003550:	04913c23          	sd	s1,88(sp)
    80003554:	05213823          	sd	s2,80(sp)
    80003558:	05313423          	sd	s3,72(sp)
    8000355c:	05413023          	sd	s4,64(sp)
    80003560:	03513c23          	sd	s5,56(sp)
    80003564:	03613823          	sd	s6,48(sp)
    80003568:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000356c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80003570:	00006517          	auipc	a0,0x6
    80003574:	c4050513          	addi	a0,a0,-960 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80003578:	00002097          	auipc	ra,0x2
    8000357c:	220080e7          	jalr	544(ra) # 80005798 <_Z11printStringPKc>
    getString(input, 30);
    80003580:	01e00593          	li	a1,30
    80003584:	fa040493          	addi	s1,s0,-96
    80003588:	00048513          	mv	a0,s1
    8000358c:	00002097          	auipc	ra,0x2
    80003590:	294080e7          	jalr	660(ra) # 80005820 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003594:	00048513          	mv	a0,s1
    80003598:	00002097          	auipc	ra,0x2
    8000359c:	360080e7          	jalr	864(ra) # 800058f8 <_Z11stringToIntPKc>
    800035a0:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800035a4:	00006517          	auipc	a0,0x6
    800035a8:	c2c50513          	addi	a0,a0,-980 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800035ac:	00002097          	auipc	ra,0x2
    800035b0:	1ec080e7          	jalr	492(ra) # 80005798 <_Z11printStringPKc>
    getString(input, 30);
    800035b4:	01e00593          	li	a1,30
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00002097          	auipc	ra,0x2
    800035c0:	264080e7          	jalr	612(ra) # 80005820 <_Z9getStringPci>
    n = stringToInt(input);
    800035c4:	00048513          	mv	a0,s1
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	330080e7          	jalr	816(ra) # 800058f8 <_Z11stringToIntPKc>
    800035d0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	c1c50513          	addi	a0,a0,-996 # 800091f0 <CONSOLE_STATUS+0x1e0>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	1bc080e7          	jalr	444(ra) # 80005798 <_Z11printStringPKc>
    800035e4:	00000613          	li	a2,0
    800035e8:	00a00593          	li	a1,10
    800035ec:	00090513          	mv	a0,s2
    800035f0:	00002097          	auipc	ra,0x2
    800035f4:	358080e7          	jalr	856(ra) # 80005948 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800035f8:	00006517          	auipc	a0,0x6
    800035fc:	c1050513          	addi	a0,a0,-1008 # 80009208 <CONSOLE_STATUS+0x1f8>
    80003600:	00002097          	auipc	ra,0x2
    80003604:	198080e7          	jalr	408(ra) # 80005798 <_Z11printStringPKc>
    80003608:	00000613          	li	a2,0
    8000360c:	00a00593          	li	a1,10
    80003610:	00048513          	mv	a0,s1
    80003614:	00002097          	auipc	ra,0x2
    80003618:	334080e7          	jalr	820(ra) # 80005948 <_Z8printIntiii>
    printString(".\n");
    8000361c:	00006517          	auipc	a0,0x6
    80003620:	c0450513          	addi	a0,a0,-1020 # 80009220 <CONSOLE_STATUS+0x210>
    80003624:	00002097          	auipc	ra,0x2
    80003628:	174080e7          	jalr	372(ra) # 80005798 <_Z11printStringPKc>
    if(threadNum > n) {
    8000362c:	0324c463          	blt	s1,s2,80003654 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80003630:	03205c63          	blez	s2,80003668 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80003634:	03800513          	li	a0,56
    80003638:	fffff097          	auipc	ra,0xfffff
    8000363c:	03c080e7          	jalr	60(ra) # 80002674 <_Znwm>
    80003640:	00050a13          	mv	s4,a0
    80003644:	00048593          	mv	a1,s1
    80003648:	00003097          	auipc	ra,0x3
    8000364c:	080080e7          	jalr	128(ra) # 800066c8 <_ZN6BufferC1Ei>
    80003650:	0300006f          	j	80003680 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003654:	00006517          	auipc	a0,0x6
    80003658:	bd450513          	addi	a0,a0,-1068 # 80009228 <CONSOLE_STATUS+0x218>
    8000365c:	00002097          	auipc	ra,0x2
    80003660:	13c080e7          	jalr	316(ra) # 80005798 <_Z11printStringPKc>
        return;
    80003664:	0140006f          	j	80003678 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003668:	00006517          	auipc	a0,0x6
    8000366c:	c0050513          	addi	a0,a0,-1024 # 80009268 <CONSOLE_STATUS+0x258>
    80003670:	00002097          	auipc	ra,0x2
    80003674:	128080e7          	jalr	296(ra) # 80005798 <_Z11printStringPKc>
        return;
    80003678:	000b0113          	mv	sp,s6
    8000367c:	1500006f          	j	800037cc <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80003680:	00000593          	li	a1,0
    80003684:	00008517          	auipc	a0,0x8
    80003688:	4a450513          	addi	a0,a0,1188 # 8000bb28 <_ZL10waitForAll>
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	bcc080e7          	jalr	-1076(ra) # 80001258 <_Z8sem_openPP10KSemaphorej>
    thread_t threads[threadNum];
    80003694:	00391793          	slli	a5,s2,0x3
    80003698:	00f78793          	addi	a5,a5,15
    8000369c:	ff07f793          	andi	a5,a5,-16
    800036a0:	40f10133          	sub	sp,sp,a5
    800036a4:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    800036a8:	0019071b          	addiw	a4,s2,1
    800036ac:	00171793          	slli	a5,a4,0x1
    800036b0:	00e787b3          	add	a5,a5,a4
    800036b4:	00379793          	slli	a5,a5,0x3
    800036b8:	00f78793          	addi	a5,a5,15
    800036bc:	ff07f793          	andi	a5,a5,-16
    800036c0:	40f10133          	sub	sp,sp,a5
    800036c4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    800036c8:	00191613          	slli	a2,s2,0x1
    800036cc:	012607b3          	add	a5,a2,s2
    800036d0:	00379793          	slli	a5,a5,0x3
    800036d4:	00f987b3          	add	a5,s3,a5
    800036d8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800036dc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    800036e0:	00008717          	auipc	a4,0x8
    800036e4:	44873703          	ld	a4,1096(a4) # 8000bb28 <_ZL10waitForAll>
    800036e8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800036ec:	00078613          	mv	a2,a5
    800036f0:	00000597          	auipc	a1,0x0
    800036f4:	d7458593          	addi	a1,a1,-652 # 80003464 <_ZL8consumerPv>
    800036f8:	f9840513          	addi	a0,s0,-104
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	aa4080e7          	jalr	-1372(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80003704:	00000493          	li	s1,0
    80003708:	0280006f          	j	80003730 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    8000370c:	00000597          	auipc	a1,0x0
    80003710:	c1458593          	addi	a1,a1,-1004 # 80003320 <_ZL16producerKeyboardPv>
                      data + i);
    80003714:	00179613          	slli	a2,a5,0x1
    80003718:	00f60633          	add	a2,a2,a5
    8000371c:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80003720:	00c98633          	add	a2,s3,a2
    80003724:	ffffe097          	auipc	ra,0xffffe
    80003728:	a7c080e7          	jalr	-1412(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000372c:	0014849b          	addiw	s1,s1,1
    80003730:	0524d263          	bge	s1,s2,80003774 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80003734:	00149793          	slli	a5,s1,0x1
    80003738:	009787b3          	add	a5,a5,s1
    8000373c:	00379793          	slli	a5,a5,0x3
    80003740:	00f987b3          	add	a5,s3,a5
    80003744:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003748:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    8000374c:	00008717          	auipc	a4,0x8
    80003750:	3dc73703          	ld	a4,988(a4) # 8000bb28 <_ZL10waitForAll>
    80003754:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003758:	00048793          	mv	a5,s1
    8000375c:	00349513          	slli	a0,s1,0x3
    80003760:	00aa8533          	add	a0,s5,a0
    80003764:	fa9054e3          	blez	s1,8000370c <_Z22producerConsumer_C_APIv+0x1c8>
    80003768:	00000597          	auipc	a1,0x0
    8000376c:	c6858593          	addi	a1,a1,-920 # 800033d0 <_ZL8producerPv>
    80003770:	fa5ff06f          	j	80003714 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	ac4080e7          	jalr	-1340(ra) # 80001238 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    8000377c:	00000493          	li	s1,0
    80003780:	00994e63          	blt	s2,s1,8000379c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003784:	00008517          	auipc	a0,0x8
    80003788:	3a453503          	ld	a0,932(a0) # 8000bb28 <_ZL10waitForAll>
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	b28080e7          	jalr	-1240(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80003794:	0014849b          	addiw	s1,s1,1
    80003798:	fe9ff06f          	j	80003780 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    8000379c:	00008517          	auipc	a0,0x8
    800037a0:	38c53503          	ld	a0,908(a0) # 8000bb28 <_ZL10waitForAll>
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	ae4080e7          	jalr	-1308(ra) # 80001288 <_Z9sem_closeP10KSemaphore>
    delete buffer;
    800037ac:	000a0e63          	beqz	s4,800037c8 <_Z22producerConsumer_C_APIv+0x284>
    800037b0:	000a0513          	mv	a0,s4
    800037b4:	00003097          	auipc	ra,0x3
    800037b8:	154080e7          	jalr	340(ra) # 80006908 <_ZN6BufferD1Ev>
    800037bc:	000a0513          	mv	a0,s4
    800037c0:	fffff097          	auipc	ra,0xfffff
    800037c4:	f04080e7          	jalr	-252(ra) # 800026c4 <_ZdlPv>
    800037c8:	000b0113          	mv	sp,s6

}
    800037cc:	f9040113          	addi	sp,s0,-112
    800037d0:	06813083          	ld	ra,104(sp)
    800037d4:	06013403          	ld	s0,96(sp)
    800037d8:	05813483          	ld	s1,88(sp)
    800037dc:	05013903          	ld	s2,80(sp)
    800037e0:	04813983          	ld	s3,72(sp)
    800037e4:	04013a03          	ld	s4,64(sp)
    800037e8:	03813a83          	ld	s5,56(sp)
    800037ec:	03013b03          	ld	s6,48(sp)
    800037f0:	07010113          	addi	sp,sp,112
    800037f4:	00008067          	ret
    800037f8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800037fc:	000a0513          	mv	a0,s4
    80003800:	fffff097          	auipc	ra,0xfffff
    80003804:	ec4080e7          	jalr	-316(ra) # 800026c4 <_ZdlPv>
    80003808:	00048513          	mv	a0,s1
    8000380c:	00009097          	auipc	ra,0x9
    80003810:	42c080e7          	jalr	1068(ra) # 8000cc38 <_Unwind_Resume>

0000000080003814 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003814:	fe010113          	addi	sp,sp,-32
    80003818:	00113c23          	sd	ra,24(sp)
    8000381c:	00813823          	sd	s0,16(sp)
    80003820:	00913423          	sd	s1,8(sp)
    80003824:	01213023          	sd	s2,0(sp)
    80003828:	02010413          	addi	s0,sp,32
    8000382c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003830:	00100793          	li	a5,1
    80003834:	02a7f863          	bgeu	a5,a0,80003864 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003838:	00a00793          	li	a5,10
    8000383c:	02f577b3          	remu	a5,a0,a5
    80003840:	02078e63          	beqz	a5,8000387c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003844:	fff48513          	addi	a0,s1,-1
    80003848:	00000097          	auipc	ra,0x0
    8000384c:	fcc080e7          	jalr	-52(ra) # 80003814 <_ZL9fibonaccim>
    80003850:	00050913          	mv	s2,a0
    80003854:	ffe48513          	addi	a0,s1,-2
    80003858:	00000097          	auipc	ra,0x0
    8000385c:	fbc080e7          	jalr	-68(ra) # 80003814 <_ZL9fibonaccim>
    80003860:	00a90533          	add	a0,s2,a0
}
    80003864:	01813083          	ld	ra,24(sp)
    80003868:	01013403          	ld	s0,16(sp)
    8000386c:	00813483          	ld	s1,8(sp)
    80003870:	00013903          	ld	s2,0(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	9bc080e7          	jalr	-1604(ra) # 80001238 <_Z15thread_dispatchv>
    80003884:	fc1ff06f          	j	80003844 <_ZL9fibonaccim+0x30>

0000000080003888 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003888:	fe010113          	addi	sp,sp,-32
    8000388c:	00113c23          	sd	ra,24(sp)
    80003890:	00813823          	sd	s0,16(sp)
    80003894:	00913423          	sd	s1,8(sp)
    80003898:	01213023          	sd	s2,0(sp)
    8000389c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800038a0:	00000913          	li	s2,0
    800038a4:	0380006f          	j	800038dc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800038a8:	ffffe097          	auipc	ra,0xffffe
    800038ac:	990080e7          	jalr	-1648(ra) # 80001238 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800038b0:	00148493          	addi	s1,s1,1
    800038b4:	000027b7          	lui	a5,0x2
    800038b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800038bc:	0097ee63          	bltu	a5,s1,800038d8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800038c0:	00000713          	li	a4,0
    800038c4:	000077b7          	lui	a5,0x7
    800038c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800038cc:	fce7eee3          	bltu	a5,a4,800038a8 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800038d0:	00170713          	addi	a4,a4,1
    800038d4:	ff1ff06f          	j	800038c4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800038d8:	00190913          	addi	s2,s2,1
    800038dc:	00900793          	li	a5,9
    800038e0:	0527e063          	bltu	a5,s2,80003920 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800038e4:	00006517          	auipc	a0,0x6
    800038e8:	9b450513          	addi	a0,a0,-1612 # 80009298 <CONSOLE_STATUS+0x288>
    800038ec:	00002097          	auipc	ra,0x2
    800038f0:	eac080e7          	jalr	-340(ra) # 80005798 <_Z11printStringPKc>
    800038f4:	00000613          	li	a2,0
    800038f8:	00a00593          	li	a1,10
    800038fc:	0009051b          	sext.w	a0,s2
    80003900:	00002097          	auipc	ra,0x2
    80003904:	048080e7          	jalr	72(ra) # 80005948 <_Z8printIntiii>
    80003908:	00006517          	auipc	a0,0x6
    8000390c:	be050513          	addi	a0,a0,-1056 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003910:	00002097          	auipc	ra,0x2
    80003914:	e88080e7          	jalr	-376(ra) # 80005798 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003918:	00000493          	li	s1,0
    8000391c:	f99ff06f          	j	800038b4 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80003920:	00006517          	auipc	a0,0x6
    80003924:	98050513          	addi	a0,a0,-1664 # 800092a0 <CONSOLE_STATUS+0x290>
    80003928:	00002097          	auipc	ra,0x2
    8000392c:	e70080e7          	jalr	-400(ra) # 80005798 <_Z11printStringPKc>
    finishedA = true;
    80003930:	00100793          	li	a5,1
    80003934:	00008717          	auipc	a4,0x8
    80003938:	1ef70e23          	sb	a5,508(a4) # 8000bb30 <_ZL9finishedA>
}
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	00813483          	ld	s1,8(sp)
    80003948:	00013903          	ld	s2,0(sp)
    8000394c:	02010113          	addi	sp,sp,32
    80003950:	00008067          	ret

0000000080003954 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003954:	fe010113          	addi	sp,sp,-32
    80003958:	00113c23          	sd	ra,24(sp)
    8000395c:	00813823          	sd	s0,16(sp)
    80003960:	00913423          	sd	s1,8(sp)
    80003964:	01213023          	sd	s2,0(sp)
    80003968:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000396c:	00000913          	li	s2,0
    80003970:	0380006f          	j	800039a8 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	8c4080e7          	jalr	-1852(ra) # 80001238 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000397c:	00148493          	addi	s1,s1,1
    80003980:	000027b7          	lui	a5,0x2
    80003984:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003988:	0097ee63          	bltu	a5,s1,800039a4 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000398c:	00000713          	li	a4,0
    80003990:	000077b7          	lui	a5,0x7
    80003994:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003998:	fce7eee3          	bltu	a5,a4,80003974 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000399c:	00170713          	addi	a4,a4,1
    800039a0:	ff1ff06f          	j	80003990 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800039a4:	00190913          	addi	s2,s2,1
    800039a8:	00f00793          	li	a5,15
    800039ac:	0527e063          	bltu	a5,s2,800039ec <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800039b0:	00006517          	auipc	a0,0x6
    800039b4:	90050513          	addi	a0,a0,-1792 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800039b8:	00002097          	auipc	ra,0x2
    800039bc:	de0080e7          	jalr	-544(ra) # 80005798 <_Z11printStringPKc>
    800039c0:	00000613          	li	a2,0
    800039c4:	00a00593          	li	a1,10
    800039c8:	0009051b          	sext.w	a0,s2
    800039cc:	00002097          	auipc	ra,0x2
    800039d0:	f7c080e7          	jalr	-132(ra) # 80005948 <_Z8printIntiii>
    800039d4:	00006517          	auipc	a0,0x6
    800039d8:	b1450513          	addi	a0,a0,-1260 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800039dc:	00002097          	auipc	ra,0x2
    800039e0:	dbc080e7          	jalr	-580(ra) # 80005798 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800039e4:	00000493          	li	s1,0
    800039e8:	f99ff06f          	j	80003980 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800039ec:	00006517          	auipc	a0,0x6
    800039f0:	8cc50513          	addi	a0,a0,-1844 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800039f4:	00002097          	auipc	ra,0x2
    800039f8:	da4080e7          	jalr	-604(ra) # 80005798 <_Z11printStringPKc>
    finishedB = true;
    800039fc:	00100793          	li	a5,1
    80003a00:	00008717          	auipc	a4,0x8
    80003a04:	12f708a3          	sb	a5,305(a4) # 8000bb31 <_ZL9finishedB>
    thread_dispatch();
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	830080e7          	jalr	-2000(ra) # 80001238 <_Z15thread_dispatchv>
}
    80003a10:	01813083          	ld	ra,24(sp)
    80003a14:	01013403          	ld	s0,16(sp)
    80003a18:	00813483          	ld	s1,8(sp)
    80003a1c:	00013903          	ld	s2,0(sp)
    80003a20:	02010113          	addi	sp,sp,32
    80003a24:	00008067          	ret

0000000080003a28 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003a28:	fe010113          	addi	sp,sp,-32
    80003a2c:	00113c23          	sd	ra,24(sp)
    80003a30:	00813823          	sd	s0,16(sp)
    80003a34:	00913423          	sd	s1,8(sp)
    80003a38:	01213023          	sd	s2,0(sp)
    80003a3c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003a40:	00000493          	li	s1,0
    80003a44:	0400006f          	j	80003a84 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003a48:	00006517          	auipc	a0,0x6
    80003a4c:	88050513          	addi	a0,a0,-1920 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003a50:	00002097          	auipc	ra,0x2
    80003a54:	d48080e7          	jalr	-696(ra) # 80005798 <_Z11printStringPKc>
    80003a58:	00000613          	li	a2,0
    80003a5c:	00a00593          	li	a1,10
    80003a60:	00048513          	mv	a0,s1
    80003a64:	00002097          	auipc	ra,0x2
    80003a68:	ee4080e7          	jalr	-284(ra) # 80005948 <_Z8printIntiii>
    80003a6c:	00006517          	auipc	a0,0x6
    80003a70:	a7c50513          	addi	a0,a0,-1412 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003a74:	00002097          	auipc	ra,0x2
    80003a78:	d24080e7          	jalr	-732(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003a7c:	0014849b          	addiw	s1,s1,1
    80003a80:	0ff4f493          	andi	s1,s1,255
    80003a84:	00200793          	li	a5,2
    80003a88:	fc97f0e3          	bgeu	a5,s1,80003a48 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003a8c:	00006517          	auipc	a0,0x6
    80003a90:	84450513          	addi	a0,a0,-1980 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80003a94:	00002097          	auipc	ra,0x2
    80003a98:	d04080e7          	jalr	-764(ra) # 80005798 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003a9c:	00700313          	li	t1,7
    thread_dispatch();
    80003aa0:	ffffd097          	auipc	ra,0xffffd
    80003aa4:	798080e7          	jalr	1944(ra) # 80001238 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003aa8:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003aac:	00006517          	auipc	a0,0x6
    80003ab0:	83450513          	addi	a0,a0,-1996 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003ab4:	00002097          	auipc	ra,0x2
    80003ab8:	ce4080e7          	jalr	-796(ra) # 80005798 <_Z11printStringPKc>
    80003abc:	00000613          	li	a2,0
    80003ac0:	00a00593          	li	a1,10
    80003ac4:	0009051b          	sext.w	a0,s2
    80003ac8:	00002097          	auipc	ra,0x2
    80003acc:	e80080e7          	jalr	-384(ra) # 80005948 <_Z8printIntiii>
    80003ad0:	00006517          	auipc	a0,0x6
    80003ad4:	a1850513          	addi	a0,a0,-1512 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003ad8:	00002097          	auipc	ra,0x2
    80003adc:	cc0080e7          	jalr	-832(ra) # 80005798 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80003ae0:	00c00513          	li	a0,12
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	d30080e7          	jalr	-720(ra) # 80003814 <_ZL9fibonaccim>
    80003aec:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003af0:	00005517          	auipc	a0,0x5
    80003af4:	7f850513          	addi	a0,a0,2040 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80003af8:	00002097          	auipc	ra,0x2
    80003afc:	ca0080e7          	jalr	-864(ra) # 80005798 <_Z11printStringPKc>
    80003b00:	00000613          	li	a2,0
    80003b04:	00a00593          	li	a1,10
    80003b08:	0009051b          	sext.w	a0,s2
    80003b0c:	00002097          	auipc	ra,0x2
    80003b10:	e3c080e7          	jalr	-452(ra) # 80005948 <_Z8printIntiii>
    80003b14:	00006517          	auipc	a0,0x6
    80003b18:	9d450513          	addi	a0,a0,-1580 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003b1c:	00002097          	auipc	ra,0x2
    80003b20:	c7c080e7          	jalr	-900(ra) # 80005798 <_Z11printStringPKc>
    80003b24:	0400006f          	j	80003b64 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003b28:	00005517          	auipc	a0,0x5
    80003b2c:	7a050513          	addi	a0,a0,1952 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003b30:	00002097          	auipc	ra,0x2
    80003b34:	c68080e7          	jalr	-920(ra) # 80005798 <_Z11printStringPKc>
    80003b38:	00000613          	li	a2,0
    80003b3c:	00a00593          	li	a1,10
    80003b40:	00048513          	mv	a0,s1
    80003b44:	00002097          	auipc	ra,0x2
    80003b48:	e04080e7          	jalr	-508(ra) # 80005948 <_Z8printIntiii>
    80003b4c:	00006517          	auipc	a0,0x6
    80003b50:	99c50513          	addi	a0,a0,-1636 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003b54:	00002097          	auipc	ra,0x2
    80003b58:	c44080e7          	jalr	-956(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003b5c:	0014849b          	addiw	s1,s1,1
    80003b60:	0ff4f493          	andi	s1,s1,255
    80003b64:	00500793          	li	a5,5
    80003b68:	fc97f0e3          	bgeu	a5,s1,80003b28 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003b6c:	00005517          	auipc	a0,0x5
    80003b70:	73450513          	addi	a0,a0,1844 # 800092a0 <CONSOLE_STATUS+0x290>
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	c24080e7          	jalr	-988(ra) # 80005798 <_Z11printStringPKc>
    finishedC = true;
    80003b7c:	00100793          	li	a5,1
    80003b80:	00008717          	auipc	a4,0x8
    80003b84:	faf70923          	sb	a5,-78(a4) # 8000bb32 <_ZL9finishedC>
    thread_dispatch();
    80003b88:	ffffd097          	auipc	ra,0xffffd
    80003b8c:	6b0080e7          	jalr	1712(ra) # 80001238 <_Z15thread_dispatchv>
}
    80003b90:	01813083          	ld	ra,24(sp)
    80003b94:	01013403          	ld	s0,16(sp)
    80003b98:	00813483          	ld	s1,8(sp)
    80003b9c:	00013903          	ld	s2,0(sp)
    80003ba0:	02010113          	addi	sp,sp,32
    80003ba4:	00008067          	ret

0000000080003ba8 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003ba8:	fe010113          	addi	sp,sp,-32
    80003bac:	00113c23          	sd	ra,24(sp)
    80003bb0:	00813823          	sd	s0,16(sp)
    80003bb4:	00913423          	sd	s1,8(sp)
    80003bb8:	01213023          	sd	s2,0(sp)
    80003bbc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003bc0:	00a00493          	li	s1,10
    80003bc4:	0400006f          	j	80003c04 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bc8:	00005517          	auipc	a0,0x5
    80003bcc:	73050513          	addi	a0,a0,1840 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003bd0:	00002097          	auipc	ra,0x2
    80003bd4:	bc8080e7          	jalr	-1080(ra) # 80005798 <_Z11printStringPKc>
    80003bd8:	00000613          	li	a2,0
    80003bdc:	00a00593          	li	a1,10
    80003be0:	00048513          	mv	a0,s1
    80003be4:	00002097          	auipc	ra,0x2
    80003be8:	d64080e7          	jalr	-668(ra) # 80005948 <_Z8printIntiii>
    80003bec:	00006517          	auipc	a0,0x6
    80003bf0:	8fc50513          	addi	a0,a0,-1796 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003bf4:	00002097          	auipc	ra,0x2
    80003bf8:	ba4080e7          	jalr	-1116(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003bfc:	0014849b          	addiw	s1,s1,1
    80003c00:	0ff4f493          	andi	s1,s1,255
    80003c04:	00c00793          	li	a5,12
    80003c08:	fc97f0e3          	bgeu	a5,s1,80003bc8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80003c0c:	00005517          	auipc	a0,0x5
    80003c10:	6f450513          	addi	a0,a0,1780 # 80009300 <CONSOLE_STATUS+0x2f0>
    80003c14:	00002097          	auipc	ra,0x2
    80003c18:	b84080e7          	jalr	-1148(ra) # 80005798 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003c1c:	00500313          	li	t1,5
    thread_dispatch();
    80003c20:	ffffd097          	auipc	ra,0xffffd
    80003c24:	618080e7          	jalr	1560(ra) # 80001238 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003c28:	01000513          	li	a0,16
    80003c2c:	00000097          	auipc	ra,0x0
    80003c30:	be8080e7          	jalr	-1048(ra) # 80003814 <_ZL9fibonaccim>
    80003c34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003c38:	00005517          	auipc	a0,0x5
    80003c3c:	6d850513          	addi	a0,a0,1752 # 80009310 <CONSOLE_STATUS+0x300>
    80003c40:	00002097          	auipc	ra,0x2
    80003c44:	b58080e7          	jalr	-1192(ra) # 80005798 <_Z11printStringPKc>
    80003c48:	00000613          	li	a2,0
    80003c4c:	00a00593          	li	a1,10
    80003c50:	0009051b          	sext.w	a0,s2
    80003c54:	00002097          	auipc	ra,0x2
    80003c58:	cf4080e7          	jalr	-780(ra) # 80005948 <_Z8printIntiii>
    80003c5c:	00006517          	auipc	a0,0x6
    80003c60:	88c50513          	addi	a0,a0,-1908 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003c64:	00002097          	auipc	ra,0x2
    80003c68:	b34080e7          	jalr	-1228(ra) # 80005798 <_Z11printStringPKc>
    80003c6c:	0400006f          	j	80003cac <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003c70:	00005517          	auipc	a0,0x5
    80003c74:	68850513          	addi	a0,a0,1672 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80003c78:	00002097          	auipc	ra,0x2
    80003c7c:	b20080e7          	jalr	-1248(ra) # 80005798 <_Z11printStringPKc>
    80003c80:	00000613          	li	a2,0
    80003c84:	00a00593          	li	a1,10
    80003c88:	00048513          	mv	a0,s1
    80003c8c:	00002097          	auipc	ra,0x2
    80003c90:	cbc080e7          	jalr	-836(ra) # 80005948 <_Z8printIntiii>
    80003c94:	00006517          	auipc	a0,0x6
    80003c98:	85450513          	addi	a0,a0,-1964 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80003c9c:	00002097          	auipc	ra,0x2
    80003ca0:	afc080e7          	jalr	-1284(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003ca4:	0014849b          	addiw	s1,s1,1
    80003ca8:	0ff4f493          	andi	s1,s1,255
    80003cac:	00f00793          	li	a5,15
    80003cb0:	fc97f0e3          	bgeu	a5,s1,80003c70 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003cb4:	00005517          	auipc	a0,0x5
    80003cb8:	66c50513          	addi	a0,a0,1644 # 80009320 <CONSOLE_STATUS+0x310>
    80003cbc:	00002097          	auipc	ra,0x2
    80003cc0:	adc080e7          	jalr	-1316(ra) # 80005798 <_Z11printStringPKc>
    finishedD = true;
    80003cc4:	00100793          	li	a5,1
    80003cc8:	00008717          	auipc	a4,0x8
    80003ccc:	e6f705a3          	sb	a5,-405(a4) # 8000bb33 <_ZL9finishedD>
    thread_dispatch();
    80003cd0:	ffffd097          	auipc	ra,0xffffd
    80003cd4:	568080e7          	jalr	1384(ra) # 80001238 <_Z15thread_dispatchv>
}
    80003cd8:	01813083          	ld	ra,24(sp)
    80003cdc:	01013403          	ld	s0,16(sp)
    80003ce0:	00813483          	ld	s1,8(sp)
    80003ce4:	00013903          	ld	s2,0(sp)
    80003ce8:	02010113          	addi	sp,sp,32
    80003cec:	00008067          	ret

0000000080003cf0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80003cf0:	fc010113          	addi	sp,sp,-64
    80003cf4:	02113c23          	sd	ra,56(sp)
    80003cf8:	02813823          	sd	s0,48(sp)
    80003cfc:	02913423          	sd	s1,40(sp)
    80003d00:	03213023          	sd	s2,32(sp)
    80003d04:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80003d08:	02000513          	li	a0,32
    80003d0c:	fffff097          	auipc	ra,0xfffff
    80003d10:	968080e7          	jalr	-1688(ra) # 80002674 <_Znwm>
    80003d14:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80003d18:	fffff097          	auipc	ra,0xfffff
    80003d1c:	cac080e7          	jalr	-852(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80003d20:	00008797          	auipc	a5,0x8
    80003d24:	b4078793          	addi	a5,a5,-1216 # 8000b860 <_ZTV7WorkerA+0x10>
    80003d28:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003d2c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80003d30:	00005517          	auipc	a0,0x5
    80003d34:	60050513          	addi	a0,a0,1536 # 80009330 <CONSOLE_STATUS+0x320>
    80003d38:	00002097          	auipc	ra,0x2
    80003d3c:	a60080e7          	jalr	-1440(ra) # 80005798 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80003d40:	02000513          	li	a0,32
    80003d44:	fffff097          	auipc	ra,0xfffff
    80003d48:	930080e7          	jalr	-1744(ra) # 80002674 <_Znwm>
    80003d4c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003d50:	fffff097          	auipc	ra,0xfffff
    80003d54:	c74080e7          	jalr	-908(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80003d58:	00008797          	auipc	a5,0x8
    80003d5c:	b3078793          	addi	a5,a5,-1232 # 8000b888 <_ZTV7WorkerB+0x10>
    80003d60:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003d64:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003d68:	00005517          	auipc	a0,0x5
    80003d6c:	5e050513          	addi	a0,a0,1504 # 80009348 <CONSOLE_STATUS+0x338>
    80003d70:	00002097          	auipc	ra,0x2
    80003d74:	a28080e7          	jalr	-1496(ra) # 80005798 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003d78:	02000513          	li	a0,32
    80003d7c:	fffff097          	auipc	ra,0xfffff
    80003d80:	8f8080e7          	jalr	-1800(ra) # 80002674 <_Znwm>
    80003d84:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003d88:	fffff097          	auipc	ra,0xfffff
    80003d8c:	c3c080e7          	jalr	-964(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80003d90:	00008797          	auipc	a5,0x8
    80003d94:	b2078793          	addi	a5,a5,-1248 # 8000b8b0 <_ZTV7WorkerC+0x10>
    80003d98:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003d9c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003da0:	00005517          	auipc	a0,0x5
    80003da4:	5c050513          	addi	a0,a0,1472 # 80009360 <CONSOLE_STATUS+0x350>
    80003da8:	00002097          	auipc	ra,0x2
    80003dac:	9f0080e7          	jalr	-1552(ra) # 80005798 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003db0:	02000513          	li	a0,32
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	8c0080e7          	jalr	-1856(ra) # 80002674 <_Znwm>
    80003dbc:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003dc0:	fffff097          	auipc	ra,0xfffff
    80003dc4:	c04080e7          	jalr	-1020(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80003dc8:	00008797          	auipc	a5,0x8
    80003dcc:	b1078793          	addi	a5,a5,-1264 # 8000b8d8 <_ZTV7WorkerD+0x10>
    80003dd0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80003dd4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80003dd8:	00005517          	auipc	a0,0x5
    80003ddc:	5a050513          	addi	a0,a0,1440 # 80009378 <CONSOLE_STATUS+0x368>
    80003de0:	00002097          	auipc	ra,0x2
    80003de4:	9b8080e7          	jalr	-1608(ra) # 80005798 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80003de8:	00000493          	li	s1,0
    80003dec:	00300793          	li	a5,3
    80003df0:	0297c663          	blt	a5,s1,80003e1c <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80003df4:	00349793          	slli	a5,s1,0x3
    80003df8:	fe040713          	addi	a4,s0,-32
    80003dfc:	00f707b3          	add	a5,a4,a5
    80003e00:	fe07b503          	ld	a0,-32(a5)
    80003e04:	fffff097          	auipc	ra,0xfffff
    80003e08:	b8c080e7          	jalr	-1140(ra) # 80002990 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80003e0c:	0014849b          	addiw	s1,s1,1
    80003e10:	fddff06f          	j	80003dec <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	b24080e7          	jalr	-1244(ra) # 80002938 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80003e1c:	00008797          	auipc	a5,0x8
    80003e20:	d147c783          	lbu	a5,-748(a5) # 8000bb30 <_ZL9finishedA>
    80003e24:	fe0788e3          	beqz	a5,80003e14 <_Z20Threads_CPP_API_testv+0x124>
    80003e28:	00008797          	auipc	a5,0x8
    80003e2c:	d097c783          	lbu	a5,-759(a5) # 8000bb31 <_ZL9finishedB>
    80003e30:	fe0782e3          	beqz	a5,80003e14 <_Z20Threads_CPP_API_testv+0x124>
    80003e34:	00008797          	auipc	a5,0x8
    80003e38:	cfe7c783          	lbu	a5,-770(a5) # 8000bb32 <_ZL9finishedC>
    80003e3c:	fc078ce3          	beqz	a5,80003e14 <_Z20Threads_CPP_API_testv+0x124>
    80003e40:	00008797          	auipc	a5,0x8
    80003e44:	cf37c783          	lbu	a5,-781(a5) # 8000bb33 <_ZL9finishedD>
    80003e48:	fc0786e3          	beqz	a5,80003e14 <_Z20Threads_CPP_API_testv+0x124>
    80003e4c:	fc040493          	addi	s1,s0,-64
    80003e50:	0080006f          	j	80003e58 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003e54:	00848493          	addi	s1,s1,8
    80003e58:	fe040793          	addi	a5,s0,-32
    80003e5c:	08f48663          	beq	s1,a5,80003ee8 <_Z20Threads_CPP_API_testv+0x1f8>
    80003e60:	0004b503          	ld	a0,0(s1)
    80003e64:	fe0508e3          	beqz	a0,80003e54 <_Z20Threads_CPP_API_testv+0x164>
    80003e68:	00053783          	ld	a5,0(a0)
    80003e6c:	0087b783          	ld	a5,8(a5)
    80003e70:	000780e7          	jalr	a5
    80003e74:	fe1ff06f          	j	80003e54 <_Z20Threads_CPP_API_testv+0x164>
    80003e78:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003e7c:	00048513          	mv	a0,s1
    80003e80:	fffff097          	auipc	ra,0xfffff
    80003e84:	844080e7          	jalr	-1980(ra) # 800026c4 <_ZdlPv>
    80003e88:	00090513          	mv	a0,s2
    80003e8c:	00009097          	auipc	ra,0x9
    80003e90:	dac080e7          	jalr	-596(ra) # 8000cc38 <_Unwind_Resume>
    80003e94:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003e98:	00048513          	mv	a0,s1
    80003e9c:	fffff097          	auipc	ra,0xfffff
    80003ea0:	828080e7          	jalr	-2008(ra) # 800026c4 <_ZdlPv>
    80003ea4:	00090513          	mv	a0,s2
    80003ea8:	00009097          	auipc	ra,0x9
    80003eac:	d90080e7          	jalr	-624(ra) # 8000cc38 <_Unwind_Resume>
    80003eb0:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003eb4:	00048513          	mv	a0,s1
    80003eb8:	fffff097          	auipc	ra,0xfffff
    80003ebc:	80c080e7          	jalr	-2036(ra) # 800026c4 <_ZdlPv>
    80003ec0:	00090513          	mv	a0,s2
    80003ec4:	00009097          	auipc	ra,0x9
    80003ec8:	d74080e7          	jalr	-652(ra) # 8000cc38 <_Unwind_Resume>
    80003ecc:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80003ed0:	00048513          	mv	a0,s1
    80003ed4:	ffffe097          	auipc	ra,0xffffe
    80003ed8:	7f0080e7          	jalr	2032(ra) # 800026c4 <_ZdlPv>
    80003edc:	00090513          	mv	a0,s2
    80003ee0:	00009097          	auipc	ra,0x9
    80003ee4:	d58080e7          	jalr	-680(ra) # 8000cc38 <_Unwind_Resume>
}
    80003ee8:	03813083          	ld	ra,56(sp)
    80003eec:	03013403          	ld	s0,48(sp)
    80003ef0:	02813483          	ld	s1,40(sp)
    80003ef4:	02013903          	ld	s2,32(sp)
    80003ef8:	04010113          	addi	sp,sp,64
    80003efc:	00008067          	ret

0000000080003f00 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80003f00:	ff010113          	addi	sp,sp,-16
    80003f04:	00113423          	sd	ra,8(sp)
    80003f08:	00813023          	sd	s0,0(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    80003f10:	00008797          	auipc	a5,0x8
    80003f14:	95078793          	addi	a5,a5,-1712 # 8000b860 <_ZTV7WorkerA+0x10>
    80003f18:	00f53023          	sd	a5,0(a0)
    80003f1c:	fffff097          	auipc	ra,0xfffff
    80003f20:	8b4080e7          	jalr	-1868(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80003f24:	00813083          	ld	ra,8(sp)
    80003f28:	00013403          	ld	s0,0(sp)
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <_ZN7WorkerAD0Ev>:
    80003f34:	fe010113          	addi	sp,sp,-32
    80003f38:	00113c23          	sd	ra,24(sp)
    80003f3c:	00813823          	sd	s0,16(sp)
    80003f40:	00913423          	sd	s1,8(sp)
    80003f44:	02010413          	addi	s0,sp,32
    80003f48:	00050493          	mv	s1,a0
    80003f4c:	00008797          	auipc	a5,0x8
    80003f50:	91478793          	addi	a5,a5,-1772 # 8000b860 <_ZTV7WorkerA+0x10>
    80003f54:	00f53023          	sd	a5,0(a0)
    80003f58:	fffff097          	auipc	ra,0xfffff
    80003f5c:	878080e7          	jalr	-1928(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80003f60:	00048513          	mv	a0,s1
    80003f64:	ffffe097          	auipc	ra,0xffffe
    80003f68:	760080e7          	jalr	1888(ra) # 800026c4 <_ZdlPv>
    80003f6c:	01813083          	ld	ra,24(sp)
    80003f70:	01013403          	ld	s0,16(sp)
    80003f74:	00813483          	ld	s1,8(sp)
    80003f78:	02010113          	addi	sp,sp,32
    80003f7c:	00008067          	ret

0000000080003f80 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003f80:	ff010113          	addi	sp,sp,-16
    80003f84:	00113423          	sd	ra,8(sp)
    80003f88:	00813023          	sd	s0,0(sp)
    80003f8c:	01010413          	addi	s0,sp,16
    80003f90:	00008797          	auipc	a5,0x8
    80003f94:	8f878793          	addi	a5,a5,-1800 # 8000b888 <_ZTV7WorkerB+0x10>
    80003f98:	00f53023          	sd	a5,0(a0)
    80003f9c:	fffff097          	auipc	ra,0xfffff
    80003fa0:	834080e7          	jalr	-1996(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80003fa4:	00813083          	ld	ra,8(sp)
    80003fa8:	00013403          	ld	s0,0(sp)
    80003fac:	01010113          	addi	sp,sp,16
    80003fb0:	00008067          	ret

0000000080003fb4 <_ZN7WorkerBD0Ev>:
    80003fb4:	fe010113          	addi	sp,sp,-32
    80003fb8:	00113c23          	sd	ra,24(sp)
    80003fbc:	00813823          	sd	s0,16(sp)
    80003fc0:	00913423          	sd	s1,8(sp)
    80003fc4:	02010413          	addi	s0,sp,32
    80003fc8:	00050493          	mv	s1,a0
    80003fcc:	00008797          	auipc	a5,0x8
    80003fd0:	8bc78793          	addi	a5,a5,-1860 # 8000b888 <_ZTV7WorkerB+0x10>
    80003fd4:	00f53023          	sd	a5,0(a0)
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	7f8080e7          	jalr	2040(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80003fe0:	00048513          	mv	a0,s1
    80003fe4:	ffffe097          	auipc	ra,0xffffe
    80003fe8:	6e0080e7          	jalr	1760(ra) # 800026c4 <_ZdlPv>
    80003fec:	01813083          	ld	ra,24(sp)
    80003ff0:	01013403          	ld	s0,16(sp)
    80003ff4:	00813483          	ld	s1,8(sp)
    80003ff8:	02010113          	addi	sp,sp,32
    80003ffc:	00008067          	ret

0000000080004000 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004000:	ff010113          	addi	sp,sp,-16
    80004004:	00113423          	sd	ra,8(sp)
    80004008:	00813023          	sd	s0,0(sp)
    8000400c:	01010413          	addi	s0,sp,16
    80004010:	00008797          	auipc	a5,0x8
    80004014:	8a078793          	addi	a5,a5,-1888 # 8000b8b0 <_ZTV7WorkerC+0x10>
    80004018:	00f53023          	sd	a5,0(a0)
    8000401c:	ffffe097          	auipc	ra,0xffffe
    80004020:	7b4080e7          	jalr	1972(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80004024:	00813083          	ld	ra,8(sp)
    80004028:	00013403          	ld	s0,0(sp)
    8000402c:	01010113          	addi	sp,sp,16
    80004030:	00008067          	ret

0000000080004034 <_ZN7WorkerCD0Ev>:
    80004034:	fe010113          	addi	sp,sp,-32
    80004038:	00113c23          	sd	ra,24(sp)
    8000403c:	00813823          	sd	s0,16(sp)
    80004040:	00913423          	sd	s1,8(sp)
    80004044:	02010413          	addi	s0,sp,32
    80004048:	00050493          	mv	s1,a0
    8000404c:	00008797          	auipc	a5,0x8
    80004050:	86478793          	addi	a5,a5,-1948 # 8000b8b0 <_ZTV7WorkerC+0x10>
    80004054:	00f53023          	sd	a5,0(a0)
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	778080e7          	jalr	1912(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80004060:	00048513          	mv	a0,s1
    80004064:	ffffe097          	auipc	ra,0xffffe
    80004068:	660080e7          	jalr	1632(ra) # 800026c4 <_ZdlPv>
    8000406c:	01813083          	ld	ra,24(sp)
    80004070:	01013403          	ld	s0,16(sp)
    80004074:	00813483          	ld	s1,8(sp)
    80004078:	02010113          	addi	sp,sp,32
    8000407c:	00008067          	ret

0000000080004080 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004080:	ff010113          	addi	sp,sp,-16
    80004084:	00113423          	sd	ra,8(sp)
    80004088:	00813023          	sd	s0,0(sp)
    8000408c:	01010413          	addi	s0,sp,16
    80004090:	00008797          	auipc	a5,0x8
    80004094:	84878793          	addi	a5,a5,-1976 # 8000b8d8 <_ZTV7WorkerD+0x10>
    80004098:	00f53023          	sd	a5,0(a0)
    8000409c:	ffffe097          	auipc	ra,0xffffe
    800040a0:	734080e7          	jalr	1844(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800040a4:	00813083          	ld	ra,8(sp)
    800040a8:	00013403          	ld	s0,0(sp)
    800040ac:	01010113          	addi	sp,sp,16
    800040b0:	00008067          	ret

00000000800040b4 <_ZN7WorkerDD0Ev>:
    800040b4:	fe010113          	addi	sp,sp,-32
    800040b8:	00113c23          	sd	ra,24(sp)
    800040bc:	00813823          	sd	s0,16(sp)
    800040c0:	00913423          	sd	s1,8(sp)
    800040c4:	02010413          	addi	s0,sp,32
    800040c8:	00050493          	mv	s1,a0
    800040cc:	00008797          	auipc	a5,0x8
    800040d0:	80c78793          	addi	a5,a5,-2036 # 8000b8d8 <_ZTV7WorkerD+0x10>
    800040d4:	00f53023          	sd	a5,0(a0)
    800040d8:	ffffe097          	auipc	ra,0xffffe
    800040dc:	6f8080e7          	jalr	1784(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800040e0:	00048513          	mv	a0,s1
    800040e4:	ffffe097          	auipc	ra,0xffffe
    800040e8:	5e0080e7          	jalr	1504(ra) # 800026c4 <_ZdlPv>
    800040ec:	01813083          	ld	ra,24(sp)
    800040f0:	01013403          	ld	s0,16(sp)
    800040f4:	00813483          	ld	s1,8(sp)
    800040f8:	02010113          	addi	sp,sp,32
    800040fc:	00008067          	ret

0000000080004100 <_ZN7WorkerA3runEv>:
    void run() override {
    80004100:	ff010113          	addi	sp,sp,-16
    80004104:	00113423          	sd	ra,8(sp)
    80004108:	00813023          	sd	s0,0(sp)
    8000410c:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004110:	00000593          	li	a1,0
    80004114:	fffff097          	auipc	ra,0xfffff
    80004118:	774080e7          	jalr	1908(ra) # 80003888 <_ZN7WorkerA11workerBodyAEPv>
    }
    8000411c:	00813083          	ld	ra,8(sp)
    80004120:	00013403          	ld	s0,0(sp)
    80004124:	01010113          	addi	sp,sp,16
    80004128:	00008067          	ret

000000008000412c <_ZN7WorkerB3runEv>:
    void run() override {
    8000412c:	ff010113          	addi	sp,sp,-16
    80004130:	00113423          	sd	ra,8(sp)
    80004134:	00813023          	sd	s0,0(sp)
    80004138:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    8000413c:	00000593          	li	a1,0
    80004140:	00000097          	auipc	ra,0x0
    80004144:	814080e7          	jalr	-2028(ra) # 80003954 <_ZN7WorkerB11workerBodyBEPv>
    }
    80004148:	00813083          	ld	ra,8(sp)
    8000414c:	00013403          	ld	s0,0(sp)
    80004150:	01010113          	addi	sp,sp,16
    80004154:	00008067          	ret

0000000080004158 <_ZN7WorkerC3runEv>:
    void run() override {
    80004158:	ff010113          	addi	sp,sp,-16
    8000415c:	00113423          	sd	ra,8(sp)
    80004160:	00813023          	sd	s0,0(sp)
    80004164:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004168:	00000593          	li	a1,0
    8000416c:	00000097          	auipc	ra,0x0
    80004170:	8bc080e7          	jalr	-1860(ra) # 80003a28 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004174:	00813083          	ld	ra,8(sp)
    80004178:	00013403          	ld	s0,0(sp)
    8000417c:	01010113          	addi	sp,sp,16
    80004180:	00008067          	ret

0000000080004184 <_ZN7WorkerD3runEv>:
    void run() override {
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00113423          	sd	ra,8(sp)
    8000418c:	00813023          	sd	s0,0(sp)
    80004190:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004194:	00000593          	li	a1,0
    80004198:	00000097          	auipc	ra,0x0
    8000419c:	a10080e7          	jalr	-1520(ra) # 80003ba8 <_ZN7WorkerD11workerBodyDEPv>
    }
    800041a0:	00813083          	ld	ra,8(sp)
    800041a4:	00013403          	ld	s0,0(sp)
    800041a8:	01010113          	addi	sp,sp,16
    800041ac:	00008067          	ret

00000000800041b0 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    800041b0:	f8010113          	addi	sp,sp,-128
    800041b4:	06113c23          	sd	ra,120(sp)
    800041b8:	06813823          	sd	s0,112(sp)
    800041bc:	06913423          	sd	s1,104(sp)
    800041c0:	07213023          	sd	s2,96(sp)
    800041c4:	05313c23          	sd	s3,88(sp)
    800041c8:	05413823          	sd	s4,80(sp)
    800041cc:	05513423          	sd	s5,72(sp)
    800041d0:	05613023          	sd	s6,64(sp)
    800041d4:	03713c23          	sd	s7,56(sp)
    800041d8:	03813823          	sd	s8,48(sp)
    800041dc:	03913423          	sd	s9,40(sp)
    800041e0:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800041e4:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800041e8:	00005517          	auipc	a0,0x5
    800041ec:	fc850513          	addi	a0,a0,-56 # 800091b0 <CONSOLE_STATUS+0x1a0>
    800041f0:	00001097          	auipc	ra,0x1
    800041f4:	5a8080e7          	jalr	1448(ra) # 80005798 <_Z11printStringPKc>
    getString(input, 30);
    800041f8:	01e00593          	li	a1,30
    800041fc:	f8040493          	addi	s1,s0,-128
    80004200:	00048513          	mv	a0,s1
    80004204:	00001097          	auipc	ra,0x1
    80004208:	61c080e7          	jalr	1564(ra) # 80005820 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000420c:	00048513          	mv	a0,s1
    80004210:	00001097          	auipc	ra,0x1
    80004214:	6e8080e7          	jalr	1768(ra) # 800058f8 <_Z11stringToIntPKc>
    80004218:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    8000421c:	00005517          	auipc	a0,0x5
    80004220:	fb450513          	addi	a0,a0,-76 # 800091d0 <CONSOLE_STATUS+0x1c0>
    80004224:	00001097          	auipc	ra,0x1
    80004228:	574080e7          	jalr	1396(ra) # 80005798 <_Z11printStringPKc>
    getString(input, 30);
    8000422c:	01e00593          	li	a1,30
    80004230:	00048513          	mv	a0,s1
    80004234:	00001097          	auipc	ra,0x1
    80004238:	5ec080e7          	jalr	1516(ra) # 80005820 <_Z9getStringPci>
    n = stringToInt(input);
    8000423c:	00048513          	mv	a0,s1
    80004240:	00001097          	auipc	ra,0x1
    80004244:	6b8080e7          	jalr	1720(ra) # 800058f8 <_Z11stringToIntPKc>
    80004248:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    8000424c:	00005517          	auipc	a0,0x5
    80004250:	fa450513          	addi	a0,a0,-92 # 800091f0 <CONSOLE_STATUS+0x1e0>
    80004254:	00001097          	auipc	ra,0x1
    80004258:	544080e7          	jalr	1348(ra) # 80005798 <_Z11printStringPKc>
    printInt(threadNum);
    8000425c:	00000613          	li	a2,0
    80004260:	00a00593          	li	a1,10
    80004264:	00098513          	mv	a0,s3
    80004268:	00001097          	auipc	ra,0x1
    8000426c:	6e0080e7          	jalr	1760(ra) # 80005948 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004270:	00005517          	auipc	a0,0x5
    80004274:	f9850513          	addi	a0,a0,-104 # 80009208 <CONSOLE_STATUS+0x1f8>
    80004278:	00001097          	auipc	ra,0x1
    8000427c:	520080e7          	jalr	1312(ra) # 80005798 <_Z11printStringPKc>
    printInt(n);
    80004280:	00000613          	li	a2,0
    80004284:	00a00593          	li	a1,10
    80004288:	00048513          	mv	a0,s1
    8000428c:	00001097          	auipc	ra,0x1
    80004290:	6bc080e7          	jalr	1724(ra) # 80005948 <_Z8printIntiii>
    printString(".\n");
    80004294:	00005517          	auipc	a0,0x5
    80004298:	f8c50513          	addi	a0,a0,-116 # 80009220 <CONSOLE_STATUS+0x210>
    8000429c:	00001097          	auipc	ra,0x1
    800042a0:	4fc080e7          	jalr	1276(ra) # 80005798 <_Z11printStringPKc>
    if (threadNum > n) {
    800042a4:	0334c463          	blt	s1,s3,800042cc <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    800042a8:	03305c63          	blez	s3,800042e0 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800042ac:	03800513          	li	a0,56
    800042b0:	ffffe097          	auipc	ra,0xffffe
    800042b4:	3c4080e7          	jalr	964(ra) # 80002674 <_Znwm>
    800042b8:	00050a93          	mv	s5,a0
    800042bc:	00048593          	mv	a1,s1
    800042c0:	00001097          	auipc	ra,0x1
    800042c4:	7a8080e7          	jalr	1960(ra) # 80005a68 <_ZN9BufferCPPC1Ei>
    800042c8:	0300006f          	j	800042f8 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800042cc:	00005517          	auipc	a0,0x5
    800042d0:	f5c50513          	addi	a0,a0,-164 # 80009228 <CONSOLE_STATUS+0x218>
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	4c4080e7          	jalr	1220(ra) # 80005798 <_Z11printStringPKc>
        return;
    800042dc:	0140006f          	j	800042f0 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800042e0:	00005517          	auipc	a0,0x5
    800042e4:	f8850513          	addi	a0,a0,-120 # 80009268 <CONSOLE_STATUS+0x258>
    800042e8:	00001097          	auipc	ra,0x1
    800042ec:	4b0080e7          	jalr	1200(ra) # 80005798 <_Z11printStringPKc>
        return;
    800042f0:	000c0113          	mv	sp,s8
    800042f4:	2140006f          	j	80004508 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800042f8:	01000513          	li	a0,16
    800042fc:	ffffe097          	auipc	ra,0xffffe
    80004300:	378080e7          	jalr	888(ra) # 80002674 <_Znwm>
    80004304:	00050913          	mv	s2,a0
    80004308:	00000593          	li	a1,0
    8000430c:	ffffe097          	auipc	ra,0xffffe
    80004310:	59c080e7          	jalr	1436(ra) # 800028a8 <_ZN9SemaphoreC1Ej>
    80004314:	00008797          	auipc	a5,0x8
    80004318:	8327b623          	sd	s2,-2004(a5) # 8000bb40 <_ZL10waitForAll>
    Thread *producers[threadNum];
    8000431c:	00399793          	slli	a5,s3,0x3
    80004320:	00f78793          	addi	a5,a5,15
    80004324:	ff07f793          	andi	a5,a5,-16
    80004328:	40f10133          	sub	sp,sp,a5
    8000432c:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004330:	0019871b          	addiw	a4,s3,1
    80004334:	00171793          	slli	a5,a4,0x1
    80004338:	00e787b3          	add	a5,a5,a4
    8000433c:	00379793          	slli	a5,a5,0x3
    80004340:	00f78793          	addi	a5,a5,15
    80004344:	ff07f793          	andi	a5,a5,-16
    80004348:	40f10133          	sub	sp,sp,a5
    8000434c:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004350:	00199493          	slli	s1,s3,0x1
    80004354:	013484b3          	add	s1,s1,s3
    80004358:	00349493          	slli	s1,s1,0x3
    8000435c:	009b04b3          	add	s1,s6,s1
    80004360:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004364:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004368:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000436c:	02800513          	li	a0,40
    80004370:	ffffe097          	auipc	ra,0xffffe
    80004374:	304080e7          	jalr	772(ra) # 80002674 <_Znwm>
    80004378:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    8000437c:	ffffe097          	auipc	ra,0xffffe
    80004380:	648080e7          	jalr	1608(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80004384:	00007797          	auipc	a5,0x7
    80004388:	5cc78793          	addi	a5,a5,1484 # 8000b950 <_ZTV8Consumer+0x10>
    8000438c:	00fbb023          	sd	a5,0(s7)
    80004390:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004394:	000b8513          	mv	a0,s7
    80004398:	ffffe097          	auipc	ra,0xffffe
    8000439c:	5f8080e7          	jalr	1528(ra) # 80002990 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    800043a0:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    800043a4:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    800043a8:	00007797          	auipc	a5,0x7
    800043ac:	7987b783          	ld	a5,1944(a5) # 8000bb40 <_ZL10waitForAll>
    800043b0:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043b4:	02800513          	li	a0,40
    800043b8:	ffffe097          	auipc	ra,0xffffe
    800043bc:	2bc080e7          	jalr	700(ra) # 80002674 <_Znwm>
    800043c0:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	600080e7          	jalr	1536(ra) # 800029c4 <_ZN6ThreadC1Ev>
    800043cc:	00007797          	auipc	a5,0x7
    800043d0:	53478793          	addi	a5,a5,1332 # 8000b900 <_ZTV16ProducerKeyborad+0x10>
    800043d4:	00f4b023          	sd	a5,0(s1)
    800043d8:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800043dc:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800043e0:	00048513          	mv	a0,s1
    800043e4:	ffffe097          	auipc	ra,0xffffe
    800043e8:	5ac080e7          	jalr	1452(ra) # 80002990 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800043ec:	00100913          	li	s2,1
    800043f0:	0300006f          	j	80004420 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800043f4:	00007797          	auipc	a5,0x7
    800043f8:	53478793          	addi	a5,a5,1332 # 8000b928 <_ZTV8Producer+0x10>
    800043fc:	00fcb023          	sd	a5,0(s9)
    80004400:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004404:	00391793          	slli	a5,s2,0x3
    80004408:	00fa07b3          	add	a5,s4,a5
    8000440c:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004410:	000c8513          	mv	a0,s9
    80004414:	ffffe097          	auipc	ra,0xffffe
    80004418:	57c080e7          	jalr	1404(ra) # 80002990 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    8000441c:	0019091b          	addiw	s2,s2,1
    80004420:	05395263          	bge	s2,s3,80004464 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004424:	00191493          	slli	s1,s2,0x1
    80004428:	012484b3          	add	s1,s1,s2
    8000442c:	00349493          	slli	s1,s1,0x3
    80004430:	009b04b3          	add	s1,s6,s1
    80004434:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004438:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    8000443c:	00007797          	auipc	a5,0x7
    80004440:	7047b783          	ld	a5,1796(a5) # 8000bb40 <_ZL10waitForAll>
    80004444:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004448:	02800513          	li	a0,40
    8000444c:	ffffe097          	auipc	ra,0xffffe
    80004450:	228080e7          	jalr	552(ra) # 80002674 <_Znwm>
    80004454:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	56c080e7          	jalr	1388(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80004460:	f95ff06f          	j	800043f4 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	4d4080e7          	jalr	1236(ra) # 80002938 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    8000446c:	00000493          	li	s1,0
    80004470:	0099ce63          	blt	s3,s1,8000448c <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004474:	00007517          	auipc	a0,0x7
    80004478:	6cc53503          	ld	a0,1740(a0) # 8000bb40 <_ZL10waitForAll>
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	464080e7          	jalr	1124(ra) # 800028e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004484:	0014849b          	addiw	s1,s1,1
    80004488:	fe9ff06f          	j	80004470 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    8000448c:	00007517          	auipc	a0,0x7
    80004490:	6b453503          	ld	a0,1716(a0) # 8000bb40 <_ZL10waitForAll>
    80004494:	00050863          	beqz	a0,800044a4 <_Z20testConsumerProducerv+0x2f4>
    80004498:	00053783          	ld	a5,0(a0)
    8000449c:	0087b783          	ld	a5,8(a5)
    800044a0:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    800044a4:	00000493          	li	s1,0
    800044a8:	0080006f          	j	800044b0 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    800044ac:	0014849b          	addiw	s1,s1,1
    800044b0:	0334d263          	bge	s1,s3,800044d4 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    800044b4:	00349793          	slli	a5,s1,0x3
    800044b8:	00fa07b3          	add	a5,s4,a5
    800044bc:	0007b503          	ld	a0,0(a5)
    800044c0:	fe0506e3          	beqz	a0,800044ac <_Z20testConsumerProducerv+0x2fc>
    800044c4:	00053783          	ld	a5,0(a0)
    800044c8:	0087b783          	ld	a5,8(a5)
    800044cc:	000780e7          	jalr	a5
    800044d0:	fddff06f          	j	800044ac <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    800044d4:	000b8a63          	beqz	s7,800044e8 <_Z20testConsumerProducerv+0x338>
    800044d8:	000bb783          	ld	a5,0(s7)
    800044dc:	0087b783          	ld	a5,8(a5)
    800044e0:	000b8513          	mv	a0,s7
    800044e4:	000780e7          	jalr	a5
    delete buffer;
    800044e8:	000a8e63          	beqz	s5,80004504 <_Z20testConsumerProducerv+0x354>
    800044ec:	000a8513          	mv	a0,s5
    800044f0:	00002097          	auipc	ra,0x2
    800044f4:	870080e7          	jalr	-1936(ra) # 80005d60 <_ZN9BufferCPPD1Ev>
    800044f8:	000a8513          	mv	a0,s5
    800044fc:	ffffe097          	auipc	ra,0xffffe
    80004500:	1c8080e7          	jalr	456(ra) # 800026c4 <_ZdlPv>
    80004504:	000c0113          	mv	sp,s8
}
    80004508:	f8040113          	addi	sp,s0,-128
    8000450c:	07813083          	ld	ra,120(sp)
    80004510:	07013403          	ld	s0,112(sp)
    80004514:	06813483          	ld	s1,104(sp)
    80004518:	06013903          	ld	s2,96(sp)
    8000451c:	05813983          	ld	s3,88(sp)
    80004520:	05013a03          	ld	s4,80(sp)
    80004524:	04813a83          	ld	s5,72(sp)
    80004528:	04013b03          	ld	s6,64(sp)
    8000452c:	03813b83          	ld	s7,56(sp)
    80004530:	03013c03          	ld	s8,48(sp)
    80004534:	02813c83          	ld	s9,40(sp)
    80004538:	08010113          	addi	sp,sp,128
    8000453c:	00008067          	ret
    80004540:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004544:	000a8513          	mv	a0,s5
    80004548:	ffffe097          	auipc	ra,0xffffe
    8000454c:	17c080e7          	jalr	380(ra) # 800026c4 <_ZdlPv>
    80004550:	00048513          	mv	a0,s1
    80004554:	00008097          	auipc	ra,0x8
    80004558:	6e4080e7          	jalr	1764(ra) # 8000cc38 <_Unwind_Resume>
    8000455c:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004560:	00090513          	mv	a0,s2
    80004564:	ffffe097          	auipc	ra,0xffffe
    80004568:	160080e7          	jalr	352(ra) # 800026c4 <_ZdlPv>
    8000456c:	00048513          	mv	a0,s1
    80004570:	00008097          	auipc	ra,0x8
    80004574:	6c8080e7          	jalr	1736(ra) # 8000cc38 <_Unwind_Resume>
    80004578:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    8000457c:	000b8513          	mv	a0,s7
    80004580:	ffffe097          	auipc	ra,0xffffe
    80004584:	144080e7          	jalr	324(ra) # 800026c4 <_ZdlPv>
    80004588:	00048513          	mv	a0,s1
    8000458c:	00008097          	auipc	ra,0x8
    80004590:	6ac080e7          	jalr	1708(ra) # 8000cc38 <_Unwind_Resume>
    80004594:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004598:	00048513          	mv	a0,s1
    8000459c:	ffffe097          	auipc	ra,0xffffe
    800045a0:	128080e7          	jalr	296(ra) # 800026c4 <_ZdlPv>
    800045a4:	00090513          	mv	a0,s2
    800045a8:	00008097          	auipc	ra,0x8
    800045ac:	690080e7          	jalr	1680(ra) # 8000cc38 <_Unwind_Resume>
    800045b0:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    800045b4:	000c8513          	mv	a0,s9
    800045b8:	ffffe097          	auipc	ra,0xffffe
    800045bc:	10c080e7          	jalr	268(ra) # 800026c4 <_ZdlPv>
    800045c0:	00048513          	mv	a0,s1
    800045c4:	00008097          	auipc	ra,0x8
    800045c8:	674080e7          	jalr	1652(ra) # 8000cc38 <_Unwind_Resume>

00000000800045cc <_ZN8Consumer3runEv>:
    void run() override {
    800045cc:	fd010113          	addi	sp,sp,-48
    800045d0:	02113423          	sd	ra,40(sp)
    800045d4:	02813023          	sd	s0,32(sp)
    800045d8:	00913c23          	sd	s1,24(sp)
    800045dc:	01213823          	sd	s2,16(sp)
    800045e0:	01313423          	sd	s3,8(sp)
    800045e4:	03010413          	addi	s0,sp,48
    800045e8:	00050913          	mv	s2,a0
        int i = 0;
    800045ec:	00000993          	li	s3,0
    800045f0:	0100006f          	j	80004600 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800045f4:	00a00513          	li	a0,10
    800045f8:	ffffe097          	auipc	ra,0xffffe
    800045fc:	480080e7          	jalr	1152(ra) # 80002a78 <_ZN7Console4putcEc>
        while (!threadEnd) {
    80004600:	00007797          	auipc	a5,0x7
    80004604:	5387a783          	lw	a5,1336(a5) # 8000bb38 <_ZL9threadEnd>
    80004608:	04079a63          	bnez	a5,8000465c <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    8000460c:	02093783          	ld	a5,32(s2)
    80004610:	0087b503          	ld	a0,8(a5)
    80004614:	00001097          	auipc	ra,0x1
    80004618:	638080e7          	jalr	1592(ra) # 80005c4c <_ZN9BufferCPP3getEv>
            i++;
    8000461c:	0019849b          	addiw	s1,s3,1
    80004620:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80004624:	0ff57513          	andi	a0,a0,255
    80004628:	ffffe097          	auipc	ra,0xffffe
    8000462c:	450080e7          	jalr	1104(ra) # 80002a78 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004630:	05000793          	li	a5,80
    80004634:	02f4e4bb          	remw	s1,s1,a5
    80004638:	fc0494e3          	bnez	s1,80004600 <_ZN8Consumer3runEv+0x34>
    8000463c:	fb9ff06f          	j	800045f4 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004640:	02093783          	ld	a5,32(s2)
    80004644:	0087b503          	ld	a0,8(a5)
    80004648:	00001097          	auipc	ra,0x1
    8000464c:	604080e7          	jalr	1540(ra) # 80005c4c <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004650:	0ff57513          	andi	a0,a0,255
    80004654:	ffffe097          	auipc	ra,0xffffe
    80004658:	424080e7          	jalr	1060(ra) # 80002a78 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    8000465c:	02093783          	ld	a5,32(s2)
    80004660:	0087b503          	ld	a0,8(a5)
    80004664:	00001097          	auipc	ra,0x1
    80004668:	674080e7          	jalr	1652(ra) # 80005cd8 <_ZN9BufferCPP6getCntEv>
    8000466c:	fca04ae3          	bgtz	a0,80004640 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004670:	02093783          	ld	a5,32(s2)
    80004674:	0107b503          	ld	a0,16(a5)
    80004678:	ffffe097          	auipc	ra,0xffffe
    8000467c:	294080e7          	jalr	660(ra) # 8000290c <_ZN9Semaphore6signalEv>
    }
    80004680:	02813083          	ld	ra,40(sp)
    80004684:	02013403          	ld	s0,32(sp)
    80004688:	01813483          	ld	s1,24(sp)
    8000468c:	01013903          	ld	s2,16(sp)
    80004690:	00813983          	ld	s3,8(sp)
    80004694:	03010113          	addi	sp,sp,48
    80004698:	00008067          	ret

000000008000469c <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    8000469c:	ff010113          	addi	sp,sp,-16
    800046a0:	00113423          	sd	ra,8(sp)
    800046a4:	00813023          	sd	s0,0(sp)
    800046a8:	01010413          	addi	s0,sp,16
    800046ac:	00007797          	auipc	a5,0x7
    800046b0:	2a478793          	addi	a5,a5,676 # 8000b950 <_ZTV8Consumer+0x10>
    800046b4:	00f53023          	sd	a5,0(a0)
    800046b8:	ffffe097          	auipc	ra,0xffffe
    800046bc:	118080e7          	jalr	280(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800046c0:	00813083          	ld	ra,8(sp)
    800046c4:	00013403          	ld	s0,0(sp)
    800046c8:	01010113          	addi	sp,sp,16
    800046cc:	00008067          	ret

00000000800046d0 <_ZN8ConsumerD0Ev>:
    800046d0:	fe010113          	addi	sp,sp,-32
    800046d4:	00113c23          	sd	ra,24(sp)
    800046d8:	00813823          	sd	s0,16(sp)
    800046dc:	00913423          	sd	s1,8(sp)
    800046e0:	02010413          	addi	s0,sp,32
    800046e4:	00050493          	mv	s1,a0
    800046e8:	00007797          	auipc	a5,0x7
    800046ec:	26878793          	addi	a5,a5,616 # 8000b950 <_ZTV8Consumer+0x10>
    800046f0:	00f53023          	sd	a5,0(a0)
    800046f4:	ffffe097          	auipc	ra,0xffffe
    800046f8:	0dc080e7          	jalr	220(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800046fc:	00048513          	mv	a0,s1
    80004700:	ffffe097          	auipc	ra,0xffffe
    80004704:	fc4080e7          	jalr	-60(ra) # 800026c4 <_ZdlPv>
    80004708:	01813083          	ld	ra,24(sp)
    8000470c:	01013403          	ld	s0,16(sp)
    80004710:	00813483          	ld	s1,8(sp)
    80004714:	02010113          	addi	sp,sp,32
    80004718:	00008067          	ret

000000008000471c <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    8000471c:	ff010113          	addi	sp,sp,-16
    80004720:	00113423          	sd	ra,8(sp)
    80004724:	00813023          	sd	s0,0(sp)
    80004728:	01010413          	addi	s0,sp,16
    8000472c:	00007797          	auipc	a5,0x7
    80004730:	1d478793          	addi	a5,a5,468 # 8000b900 <_ZTV16ProducerKeyborad+0x10>
    80004734:	00f53023          	sd	a5,0(a0)
    80004738:	ffffe097          	auipc	ra,0xffffe
    8000473c:	098080e7          	jalr	152(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80004740:	00813083          	ld	ra,8(sp)
    80004744:	00013403          	ld	s0,0(sp)
    80004748:	01010113          	addi	sp,sp,16
    8000474c:	00008067          	ret

0000000080004750 <_ZN16ProducerKeyboradD0Ev>:
    80004750:	fe010113          	addi	sp,sp,-32
    80004754:	00113c23          	sd	ra,24(sp)
    80004758:	00813823          	sd	s0,16(sp)
    8000475c:	00913423          	sd	s1,8(sp)
    80004760:	02010413          	addi	s0,sp,32
    80004764:	00050493          	mv	s1,a0
    80004768:	00007797          	auipc	a5,0x7
    8000476c:	19878793          	addi	a5,a5,408 # 8000b900 <_ZTV16ProducerKeyborad+0x10>
    80004770:	00f53023          	sd	a5,0(a0)
    80004774:	ffffe097          	auipc	ra,0xffffe
    80004778:	05c080e7          	jalr	92(ra) # 800027d0 <_ZN6ThreadD1Ev>
    8000477c:	00048513          	mv	a0,s1
    80004780:	ffffe097          	auipc	ra,0xffffe
    80004784:	f44080e7          	jalr	-188(ra) # 800026c4 <_ZdlPv>
    80004788:	01813083          	ld	ra,24(sp)
    8000478c:	01013403          	ld	s0,16(sp)
    80004790:	00813483          	ld	s1,8(sp)
    80004794:	02010113          	addi	sp,sp,32
    80004798:	00008067          	ret

000000008000479c <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    8000479c:	ff010113          	addi	sp,sp,-16
    800047a0:	00113423          	sd	ra,8(sp)
    800047a4:	00813023          	sd	s0,0(sp)
    800047a8:	01010413          	addi	s0,sp,16
    800047ac:	00007797          	auipc	a5,0x7
    800047b0:	17c78793          	addi	a5,a5,380 # 8000b928 <_ZTV8Producer+0x10>
    800047b4:	00f53023          	sd	a5,0(a0)
    800047b8:	ffffe097          	auipc	ra,0xffffe
    800047bc:	018080e7          	jalr	24(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800047c0:	00813083          	ld	ra,8(sp)
    800047c4:	00013403          	ld	s0,0(sp)
    800047c8:	01010113          	addi	sp,sp,16
    800047cc:	00008067          	ret

00000000800047d0 <_ZN8ProducerD0Ev>:
    800047d0:	fe010113          	addi	sp,sp,-32
    800047d4:	00113c23          	sd	ra,24(sp)
    800047d8:	00813823          	sd	s0,16(sp)
    800047dc:	00913423          	sd	s1,8(sp)
    800047e0:	02010413          	addi	s0,sp,32
    800047e4:	00050493          	mv	s1,a0
    800047e8:	00007797          	auipc	a5,0x7
    800047ec:	14078793          	addi	a5,a5,320 # 8000b928 <_ZTV8Producer+0x10>
    800047f0:	00f53023          	sd	a5,0(a0)
    800047f4:	ffffe097          	auipc	ra,0xffffe
    800047f8:	fdc080e7          	jalr	-36(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800047fc:	00048513          	mv	a0,s1
    80004800:	ffffe097          	auipc	ra,0xffffe
    80004804:	ec4080e7          	jalr	-316(ra) # 800026c4 <_ZdlPv>
    80004808:	01813083          	ld	ra,24(sp)
    8000480c:	01013403          	ld	s0,16(sp)
    80004810:	00813483          	ld	s1,8(sp)
    80004814:	02010113          	addi	sp,sp,32
    80004818:	00008067          	ret

000000008000481c <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	02010413          	addi	s0,sp,32
    80004830:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80004834:	ffffd097          	auipc	ra,0xffffd
    80004838:	b64080e7          	jalr	-1180(ra) # 80001398 <_Z4getcv>
    8000483c:	0005059b          	sext.w	a1,a0
    80004840:	01b00793          	li	a5,27
    80004844:	00f58c63          	beq	a1,a5,8000485c <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004848:	0204b783          	ld	a5,32(s1)
    8000484c:	0087b503          	ld	a0,8(a5)
    80004850:	00001097          	auipc	ra,0x1
    80004854:	36c080e7          	jalr	876(ra) # 80005bbc <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004858:	fddff06f          	j	80004834 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    8000485c:	00100793          	li	a5,1
    80004860:	00007717          	auipc	a4,0x7
    80004864:	2cf72c23          	sw	a5,728(a4) # 8000bb38 <_ZL9threadEnd>
        td->buffer->put('!');
    80004868:	0204b783          	ld	a5,32(s1)
    8000486c:	02100593          	li	a1,33
    80004870:	0087b503          	ld	a0,8(a5)
    80004874:	00001097          	auipc	ra,0x1
    80004878:	348080e7          	jalr	840(ra) # 80005bbc <_ZN9BufferCPP3putEi>
        td->sem->signal();
    8000487c:	0204b783          	ld	a5,32(s1)
    80004880:	0107b503          	ld	a0,16(a5)
    80004884:	ffffe097          	auipc	ra,0xffffe
    80004888:	088080e7          	jalr	136(ra) # 8000290c <_ZN9Semaphore6signalEv>
    }
    8000488c:	01813083          	ld	ra,24(sp)
    80004890:	01013403          	ld	s0,16(sp)
    80004894:	00813483          	ld	s1,8(sp)
    80004898:	02010113          	addi	sp,sp,32
    8000489c:	00008067          	ret

00000000800048a0 <_ZN8Producer3runEv>:
    void run() override {
    800048a0:	fe010113          	addi	sp,sp,-32
    800048a4:	00113c23          	sd	ra,24(sp)
    800048a8:	00813823          	sd	s0,16(sp)
    800048ac:	00913423          	sd	s1,8(sp)
    800048b0:	01213023          	sd	s2,0(sp)
    800048b4:	02010413          	addi	s0,sp,32
    800048b8:	00050493          	mv	s1,a0
        int i = 0;
    800048bc:	00000913          	li	s2,0
        while (!threadEnd) {
    800048c0:	00007797          	auipc	a5,0x7
    800048c4:	2787a783          	lw	a5,632(a5) # 8000bb38 <_ZL9threadEnd>
    800048c8:	04079263          	bnez	a5,8000490c <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800048cc:	0204b783          	ld	a5,32(s1)
    800048d0:	0007a583          	lw	a1,0(a5)
    800048d4:	0305859b          	addiw	a1,a1,48
    800048d8:	0087b503          	ld	a0,8(a5)
    800048dc:	00001097          	auipc	ra,0x1
    800048e0:	2e0080e7          	jalr	736(ra) # 80005bbc <_ZN9BufferCPP3putEi>
            i++;
    800048e4:	0019071b          	addiw	a4,s2,1
    800048e8:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800048ec:	0204b783          	ld	a5,32(s1)
    800048f0:	0007a783          	lw	a5,0(a5)
    800048f4:	00e787bb          	addw	a5,a5,a4
    800048f8:	00500513          	li	a0,5
    800048fc:	02a7e53b          	remw	a0,a5,a0
    80004900:	ffffe097          	auipc	ra,0xffffe
    80004904:	0fc080e7          	jalr	252(ra) # 800029fc <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80004908:	fb9ff06f          	j	800048c0 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    8000490c:	0204b783          	ld	a5,32(s1)
    80004910:	0107b503          	ld	a0,16(a5)
    80004914:	ffffe097          	auipc	ra,0xffffe
    80004918:	ff8080e7          	jalr	-8(ra) # 8000290c <_ZN9Semaphore6signalEv>
    }
    8000491c:	01813083          	ld	ra,24(sp)
    80004920:	01013403          	ld	s0,16(sp)
    80004924:	00813483          	ld	s1,8(sp)
    80004928:	00013903          	ld	s2,0(sp)
    8000492c:	02010113          	addi	sp,sp,32
    80004930:	00008067          	ret

0000000080004934 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80004934:	fe010113          	addi	sp,sp,-32
    80004938:	00113c23          	sd	ra,24(sp)
    8000493c:	00813823          	sd	s0,16(sp)
    80004940:	00913423          	sd	s1,8(sp)
    80004944:	01213023          	sd	s2,0(sp)
    80004948:	02010413          	addi	s0,sp,32
    8000494c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004950:	00100793          	li	a5,1
    80004954:	02a7f863          	bgeu	a5,a0,80004984 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004958:	00a00793          	li	a5,10
    8000495c:	02f577b3          	remu	a5,a0,a5
    80004960:	02078e63          	beqz	a5,8000499c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004964:	fff48513          	addi	a0,s1,-1
    80004968:	00000097          	auipc	ra,0x0
    8000496c:	fcc080e7          	jalr	-52(ra) # 80004934 <_ZL9fibonaccim>
    80004970:	00050913          	mv	s2,a0
    80004974:	ffe48513          	addi	a0,s1,-2
    80004978:	00000097          	auipc	ra,0x0
    8000497c:	fbc080e7          	jalr	-68(ra) # 80004934 <_ZL9fibonaccim>
    80004980:	00a90533          	add	a0,s2,a0
}
    80004984:	01813083          	ld	ra,24(sp)
    80004988:	01013403          	ld	s0,16(sp)
    8000498c:	00813483          	ld	s1,8(sp)
    80004990:	00013903          	ld	s2,0(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	89c080e7          	jalr	-1892(ra) # 80001238 <_Z15thread_dispatchv>
    800049a4:	fc1ff06f          	j	80004964 <_ZL9fibonaccim+0x30>

00000000800049a8 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800049a8:	fe010113          	addi	sp,sp,-32
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	00813823          	sd	s0,16(sp)
    800049b4:	00913423          	sd	s1,8(sp)
    800049b8:	01213023          	sd	s2,0(sp)
    800049bc:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800049c0:	00a00493          	li	s1,10
    800049c4:	0400006f          	j	80004a04 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800049c8:	00005517          	auipc	a0,0x5
    800049cc:	93050513          	addi	a0,a0,-1744 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800049d0:	00001097          	auipc	ra,0x1
    800049d4:	dc8080e7          	jalr	-568(ra) # 80005798 <_Z11printStringPKc>
    800049d8:	00000613          	li	a2,0
    800049dc:	00a00593          	li	a1,10
    800049e0:	00048513          	mv	a0,s1
    800049e4:	00001097          	auipc	ra,0x1
    800049e8:	f64080e7          	jalr	-156(ra) # 80005948 <_Z8printIntiii>
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	afc50513          	addi	a0,a0,-1284 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800049f4:	00001097          	auipc	ra,0x1
    800049f8:	da4080e7          	jalr	-604(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800049fc:	0014849b          	addiw	s1,s1,1
    80004a00:	0ff4f493          	andi	s1,s1,255
    80004a04:	00c00793          	li	a5,12
    80004a08:	fc97f0e3          	bgeu	a5,s1,800049c8 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80004a0c:	00005517          	auipc	a0,0x5
    80004a10:	8f450513          	addi	a0,a0,-1804 # 80009300 <CONSOLE_STATUS+0x2f0>
    80004a14:	00001097          	auipc	ra,0x1
    80004a18:	d84080e7          	jalr	-636(ra) # 80005798 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004a1c:	00500313          	li	t1,5
    thread_dispatch();
    80004a20:	ffffd097          	auipc	ra,0xffffd
    80004a24:	818080e7          	jalr	-2024(ra) # 80001238 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004a28:	01000513          	li	a0,16
    80004a2c:	00000097          	auipc	ra,0x0
    80004a30:	f08080e7          	jalr	-248(ra) # 80004934 <_ZL9fibonaccim>
    80004a34:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004a38:	00005517          	auipc	a0,0x5
    80004a3c:	8d850513          	addi	a0,a0,-1832 # 80009310 <CONSOLE_STATUS+0x300>
    80004a40:	00001097          	auipc	ra,0x1
    80004a44:	d58080e7          	jalr	-680(ra) # 80005798 <_Z11printStringPKc>
    80004a48:	00000613          	li	a2,0
    80004a4c:	00a00593          	li	a1,10
    80004a50:	0009051b          	sext.w	a0,s2
    80004a54:	00001097          	auipc	ra,0x1
    80004a58:	ef4080e7          	jalr	-268(ra) # 80005948 <_Z8printIntiii>
    80004a5c:	00005517          	auipc	a0,0x5
    80004a60:	a8c50513          	addi	a0,a0,-1396 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004a64:	00001097          	auipc	ra,0x1
    80004a68:	d34080e7          	jalr	-716(ra) # 80005798 <_Z11printStringPKc>
    80004a6c:	0400006f          	j	80004aac <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a70:	00005517          	auipc	a0,0x5
    80004a74:	88850513          	addi	a0,a0,-1912 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004a78:	00001097          	auipc	ra,0x1
    80004a7c:	d20080e7          	jalr	-736(ra) # 80005798 <_Z11printStringPKc>
    80004a80:	00000613          	li	a2,0
    80004a84:	00a00593          	li	a1,10
    80004a88:	00048513          	mv	a0,s1
    80004a8c:	00001097          	auipc	ra,0x1
    80004a90:	ebc080e7          	jalr	-324(ra) # 80005948 <_Z8printIntiii>
    80004a94:	00005517          	auipc	a0,0x5
    80004a98:	a5450513          	addi	a0,a0,-1452 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004a9c:	00001097          	auipc	ra,0x1
    80004aa0:	cfc080e7          	jalr	-772(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004aa4:	0014849b          	addiw	s1,s1,1
    80004aa8:	0ff4f493          	andi	s1,s1,255
    80004aac:	00f00793          	li	a5,15
    80004ab0:	fc97f0e3          	bgeu	a5,s1,80004a70 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004ab4:	00005517          	auipc	a0,0x5
    80004ab8:	86c50513          	addi	a0,a0,-1940 # 80009320 <CONSOLE_STATUS+0x310>
    80004abc:	00001097          	auipc	ra,0x1
    80004ac0:	cdc080e7          	jalr	-804(ra) # 80005798 <_Z11printStringPKc>
    finishedD = true;
    80004ac4:	00100793          	li	a5,1
    80004ac8:	00007717          	auipc	a4,0x7
    80004acc:	08f70023          	sb	a5,128(a4) # 8000bb48 <_ZL9finishedD>
    thread_dispatch();
    80004ad0:	ffffc097          	auipc	ra,0xffffc
    80004ad4:	768080e7          	jalr	1896(ra) # 80001238 <_Z15thread_dispatchv>
}
    80004ad8:	01813083          	ld	ra,24(sp)
    80004adc:	01013403          	ld	s0,16(sp)
    80004ae0:	00813483          	ld	s1,8(sp)
    80004ae4:	00013903          	ld	s2,0(sp)
    80004ae8:	02010113          	addi	sp,sp,32
    80004aec:	00008067          	ret

0000000080004af0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004af0:	fe010113          	addi	sp,sp,-32
    80004af4:	00113c23          	sd	ra,24(sp)
    80004af8:	00813823          	sd	s0,16(sp)
    80004afc:	00913423          	sd	s1,8(sp)
    80004b00:	01213023          	sd	s2,0(sp)
    80004b04:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004b08:	00000493          	li	s1,0
    80004b0c:	0400006f          	j	80004b4c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004b10:	00004517          	auipc	a0,0x4
    80004b14:	7b850513          	addi	a0,a0,1976 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004b18:	00001097          	auipc	ra,0x1
    80004b1c:	c80080e7          	jalr	-896(ra) # 80005798 <_Z11printStringPKc>
    80004b20:	00000613          	li	a2,0
    80004b24:	00a00593          	li	a1,10
    80004b28:	00048513          	mv	a0,s1
    80004b2c:	00001097          	auipc	ra,0x1
    80004b30:	e1c080e7          	jalr	-484(ra) # 80005948 <_Z8printIntiii>
    80004b34:	00005517          	auipc	a0,0x5
    80004b38:	9b450513          	addi	a0,a0,-1612 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004b3c:	00001097          	auipc	ra,0x1
    80004b40:	c5c080e7          	jalr	-932(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004b44:	0014849b          	addiw	s1,s1,1
    80004b48:	0ff4f493          	andi	s1,s1,255
    80004b4c:	00200793          	li	a5,2
    80004b50:	fc97f0e3          	bgeu	a5,s1,80004b10 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004b54:	00004517          	auipc	a0,0x4
    80004b58:	77c50513          	addi	a0,a0,1916 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80004b5c:	00001097          	auipc	ra,0x1
    80004b60:	c3c080e7          	jalr	-964(ra) # 80005798 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b64:	00700313          	li	t1,7
    thread_dispatch();
    80004b68:	ffffc097          	auipc	ra,0xffffc
    80004b6c:	6d0080e7          	jalr	1744(ra) # 80001238 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b70:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b74:	00004517          	auipc	a0,0x4
    80004b78:	76c50513          	addi	a0,a0,1900 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004b7c:	00001097          	auipc	ra,0x1
    80004b80:	c1c080e7          	jalr	-996(ra) # 80005798 <_Z11printStringPKc>
    80004b84:	00000613          	li	a2,0
    80004b88:	00a00593          	li	a1,10
    80004b8c:	0009051b          	sext.w	a0,s2
    80004b90:	00001097          	auipc	ra,0x1
    80004b94:	db8080e7          	jalr	-584(ra) # 80005948 <_Z8printIntiii>
    80004b98:	00005517          	auipc	a0,0x5
    80004b9c:	95050513          	addi	a0,a0,-1712 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004ba0:	00001097          	auipc	ra,0x1
    80004ba4:	bf8080e7          	jalr	-1032(ra) # 80005798 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004ba8:	00c00513          	li	a0,12
    80004bac:	00000097          	auipc	ra,0x0
    80004bb0:	d88080e7          	jalr	-632(ra) # 80004934 <_ZL9fibonaccim>
    80004bb4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004bb8:	00004517          	auipc	a0,0x4
    80004bbc:	73050513          	addi	a0,a0,1840 # 800092e8 <CONSOLE_STATUS+0x2d8>
    80004bc0:	00001097          	auipc	ra,0x1
    80004bc4:	bd8080e7          	jalr	-1064(ra) # 80005798 <_Z11printStringPKc>
    80004bc8:	00000613          	li	a2,0
    80004bcc:	00a00593          	li	a1,10
    80004bd0:	0009051b          	sext.w	a0,s2
    80004bd4:	00001097          	auipc	ra,0x1
    80004bd8:	d74080e7          	jalr	-652(ra) # 80005948 <_Z8printIntiii>
    80004bdc:	00005517          	auipc	a0,0x5
    80004be0:	90c50513          	addi	a0,a0,-1780 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004be4:	00001097          	auipc	ra,0x1
    80004be8:	bb4080e7          	jalr	-1100(ra) # 80005798 <_Z11printStringPKc>
    80004bec:	0400006f          	j	80004c2c <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004bf0:	00004517          	auipc	a0,0x4
    80004bf4:	6d850513          	addi	a0,a0,1752 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004bf8:	00001097          	auipc	ra,0x1
    80004bfc:	ba0080e7          	jalr	-1120(ra) # 80005798 <_Z11printStringPKc>
    80004c00:	00000613          	li	a2,0
    80004c04:	00a00593          	li	a1,10
    80004c08:	00048513          	mv	a0,s1
    80004c0c:	00001097          	auipc	ra,0x1
    80004c10:	d3c080e7          	jalr	-708(ra) # 80005948 <_Z8printIntiii>
    80004c14:	00005517          	auipc	a0,0x5
    80004c18:	8d450513          	addi	a0,a0,-1836 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004c1c:	00001097          	auipc	ra,0x1
    80004c20:	b7c080e7          	jalr	-1156(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004c24:	0014849b          	addiw	s1,s1,1
    80004c28:	0ff4f493          	andi	s1,s1,255
    80004c2c:	00500793          	li	a5,5
    80004c30:	fc97f0e3          	bgeu	a5,s1,80004bf0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004c34:	00004517          	auipc	a0,0x4
    80004c38:	66c50513          	addi	a0,a0,1644 # 800092a0 <CONSOLE_STATUS+0x290>
    80004c3c:	00001097          	auipc	ra,0x1
    80004c40:	b5c080e7          	jalr	-1188(ra) # 80005798 <_Z11printStringPKc>
    finishedC = true;
    80004c44:	00100793          	li	a5,1
    80004c48:	00007717          	auipc	a4,0x7
    80004c4c:	f0f700a3          	sb	a5,-255(a4) # 8000bb49 <_ZL9finishedC>
    thread_dispatch();
    80004c50:	ffffc097          	auipc	ra,0xffffc
    80004c54:	5e8080e7          	jalr	1512(ra) # 80001238 <_Z15thread_dispatchv>
}
    80004c58:	01813083          	ld	ra,24(sp)
    80004c5c:	01013403          	ld	s0,16(sp)
    80004c60:	00813483          	ld	s1,8(sp)
    80004c64:	00013903          	ld	s2,0(sp)
    80004c68:	02010113          	addi	sp,sp,32
    80004c6c:	00008067          	ret

0000000080004c70 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c70:	fe010113          	addi	sp,sp,-32
    80004c74:	00113c23          	sd	ra,24(sp)
    80004c78:	00813823          	sd	s0,16(sp)
    80004c7c:	00913423          	sd	s1,8(sp)
    80004c80:	01213023          	sd	s2,0(sp)
    80004c84:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c88:	00000913          	li	s2,0
    80004c8c:	0380006f          	j	80004cc4 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004c90:	ffffc097          	auipc	ra,0xffffc
    80004c94:	5a8080e7          	jalr	1448(ra) # 80001238 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c98:	00148493          	addi	s1,s1,1
    80004c9c:	000027b7          	lui	a5,0x2
    80004ca0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004ca4:	0097ee63          	bltu	a5,s1,80004cc0 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004ca8:	00000713          	li	a4,0
    80004cac:	000077b7          	lui	a5,0x7
    80004cb0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004cb4:	fce7eee3          	bltu	a5,a4,80004c90 <_ZL11workerBodyBPv+0x20>
    80004cb8:	00170713          	addi	a4,a4,1
    80004cbc:	ff1ff06f          	j	80004cac <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004cc0:	00190913          	addi	s2,s2,1
    80004cc4:	00f00793          	li	a5,15
    80004cc8:	0527e063          	bltu	a5,s2,80004d08 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004ccc:	00004517          	auipc	a0,0x4
    80004cd0:	5e450513          	addi	a0,a0,1508 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004cd4:	00001097          	auipc	ra,0x1
    80004cd8:	ac4080e7          	jalr	-1340(ra) # 80005798 <_Z11printStringPKc>
    80004cdc:	00000613          	li	a2,0
    80004ce0:	00a00593          	li	a1,10
    80004ce4:	0009051b          	sext.w	a0,s2
    80004ce8:	00001097          	auipc	ra,0x1
    80004cec:	c60080e7          	jalr	-928(ra) # 80005948 <_Z8printIntiii>
    80004cf0:	00004517          	auipc	a0,0x4
    80004cf4:	7f850513          	addi	a0,a0,2040 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004cf8:	00001097          	auipc	ra,0x1
    80004cfc:	aa0080e7          	jalr	-1376(ra) # 80005798 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d00:	00000493          	li	s1,0
    80004d04:	f99ff06f          	j	80004c9c <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80004d08:	00004517          	auipc	a0,0x4
    80004d0c:	5b050513          	addi	a0,a0,1456 # 800092b8 <CONSOLE_STATUS+0x2a8>
    80004d10:	00001097          	auipc	ra,0x1
    80004d14:	a88080e7          	jalr	-1400(ra) # 80005798 <_Z11printStringPKc>
    finishedB = true;
    80004d18:	00100793          	li	a5,1
    80004d1c:	00007717          	auipc	a4,0x7
    80004d20:	e2f70723          	sb	a5,-466(a4) # 8000bb4a <_ZL9finishedB>
    thread_dispatch();
    80004d24:	ffffc097          	auipc	ra,0xffffc
    80004d28:	514080e7          	jalr	1300(ra) # 80001238 <_Z15thread_dispatchv>
}
    80004d2c:	01813083          	ld	ra,24(sp)
    80004d30:	01013403          	ld	s0,16(sp)
    80004d34:	00813483          	ld	s1,8(sp)
    80004d38:	00013903          	ld	s2,0(sp)
    80004d3c:	02010113          	addi	sp,sp,32
    80004d40:	00008067          	ret

0000000080004d44 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004d44:	fe010113          	addi	sp,sp,-32
    80004d48:	00113c23          	sd	ra,24(sp)
    80004d4c:	00813823          	sd	s0,16(sp)
    80004d50:	00913423          	sd	s1,8(sp)
    80004d54:	01213023          	sd	s2,0(sp)
    80004d58:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d5c:	00000913          	li	s2,0
    80004d60:	0380006f          	j	80004d98 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d64:	ffffc097          	auipc	ra,0xffffc
    80004d68:	4d4080e7          	jalr	1236(ra) # 80001238 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d6c:	00148493          	addi	s1,s1,1
    80004d70:	000027b7          	lui	a5,0x2
    80004d74:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d78:	0097ee63          	bltu	a5,s1,80004d94 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d7c:	00000713          	li	a4,0
    80004d80:	000077b7          	lui	a5,0x7
    80004d84:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d88:	fce7eee3          	bltu	a5,a4,80004d64 <_ZL11workerBodyAPv+0x20>
    80004d8c:	00170713          	addi	a4,a4,1
    80004d90:	ff1ff06f          	j	80004d80 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d94:	00190913          	addi	s2,s2,1
    80004d98:	00900793          	li	a5,9
    80004d9c:	0527e063          	bltu	a5,s2,80004ddc <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004da0:	00004517          	auipc	a0,0x4
    80004da4:	4f850513          	addi	a0,a0,1272 # 80009298 <CONSOLE_STATUS+0x288>
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	9f0080e7          	jalr	-1552(ra) # 80005798 <_Z11printStringPKc>
    80004db0:	00000613          	li	a2,0
    80004db4:	00a00593          	li	a1,10
    80004db8:	0009051b          	sext.w	a0,s2
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	b8c080e7          	jalr	-1140(ra) # 80005948 <_Z8printIntiii>
    80004dc4:	00004517          	auipc	a0,0x4
    80004dc8:	72450513          	addi	a0,a0,1828 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80004dcc:	00001097          	auipc	ra,0x1
    80004dd0:	9cc080e7          	jalr	-1588(ra) # 80005798 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004dd4:	00000493          	li	s1,0
    80004dd8:	f99ff06f          	j	80004d70 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004ddc:	00004517          	auipc	a0,0x4
    80004de0:	4c450513          	addi	a0,a0,1220 # 800092a0 <CONSOLE_STATUS+0x290>
    80004de4:	00001097          	auipc	ra,0x1
    80004de8:	9b4080e7          	jalr	-1612(ra) # 80005798 <_Z11printStringPKc>
    finishedA = true;
    80004dec:	00100793          	li	a5,1
    80004df0:	00007717          	auipc	a4,0x7
    80004df4:	d4f70da3          	sb	a5,-677(a4) # 8000bb4b <_ZL9finishedA>
}
    80004df8:	01813083          	ld	ra,24(sp)
    80004dfc:	01013403          	ld	s0,16(sp)
    80004e00:	00813483          	ld	s1,8(sp)
    80004e04:	00013903          	ld	s2,0(sp)
    80004e08:	02010113          	addi	sp,sp,32
    80004e0c:	00008067          	ret

0000000080004e10 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80004e10:	fd010113          	addi	sp,sp,-48
    80004e14:	02113423          	sd	ra,40(sp)
    80004e18:	02813023          	sd	s0,32(sp)
    80004e1c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004e20:	00000613          	li	a2,0
    80004e24:	00000597          	auipc	a1,0x0
    80004e28:	f2058593          	addi	a1,a1,-224 # 80004d44 <_ZL11workerBodyAPv>
    80004e2c:	fd040513          	addi	a0,s0,-48
    80004e30:	ffffc097          	auipc	ra,0xffffc
    80004e34:	370080e7          	jalr	880(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004e38:	00004517          	auipc	a0,0x4
    80004e3c:	4f850513          	addi	a0,a0,1272 # 80009330 <CONSOLE_STATUS+0x320>
    80004e40:	00001097          	auipc	ra,0x1
    80004e44:	958080e7          	jalr	-1704(ra) # 80005798 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004e48:	00000613          	li	a2,0
    80004e4c:	00000597          	auipc	a1,0x0
    80004e50:	e2458593          	addi	a1,a1,-476 # 80004c70 <_ZL11workerBodyBPv>
    80004e54:	fd840513          	addi	a0,s0,-40
    80004e58:	ffffc097          	auipc	ra,0xffffc
    80004e5c:	348080e7          	jalr	840(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004e60:	00004517          	auipc	a0,0x4
    80004e64:	4e850513          	addi	a0,a0,1256 # 80009348 <CONSOLE_STATUS+0x338>
    80004e68:	00001097          	auipc	ra,0x1
    80004e6c:	930080e7          	jalr	-1744(ra) # 80005798 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e70:	00000613          	li	a2,0
    80004e74:	00000597          	auipc	a1,0x0
    80004e78:	c7c58593          	addi	a1,a1,-900 # 80004af0 <_ZL11workerBodyCPv>
    80004e7c:	fe040513          	addi	a0,s0,-32
    80004e80:	ffffc097          	auipc	ra,0xffffc
    80004e84:	320080e7          	jalr	800(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004e88:	00004517          	auipc	a0,0x4
    80004e8c:	4d850513          	addi	a0,a0,1240 # 80009360 <CONSOLE_STATUS+0x350>
    80004e90:	00001097          	auipc	ra,0x1
    80004e94:	908080e7          	jalr	-1784(ra) # 80005798 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e98:	00000613          	li	a2,0
    80004e9c:	00000597          	auipc	a1,0x0
    80004ea0:	b0c58593          	addi	a1,a1,-1268 # 800049a8 <_ZL11workerBodyDPv>
    80004ea4:	fe840513          	addi	a0,s0,-24
    80004ea8:	ffffc097          	auipc	ra,0xffffc
    80004eac:	2f8080e7          	jalr	760(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004eb0:	00004517          	auipc	a0,0x4
    80004eb4:	4c850513          	addi	a0,a0,1224 # 80009378 <CONSOLE_STATUS+0x368>
    80004eb8:	00001097          	auipc	ra,0x1
    80004ebc:	8e0080e7          	jalr	-1824(ra) # 80005798 <_Z11printStringPKc>
    80004ec0:	00c0006f          	j	80004ecc <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004ec4:	ffffc097          	auipc	ra,0xffffc
    80004ec8:	374080e7          	jalr	884(ra) # 80001238 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004ecc:	00007797          	auipc	a5,0x7
    80004ed0:	c7f7c783          	lbu	a5,-897(a5) # 8000bb4b <_ZL9finishedA>
    80004ed4:	fe0788e3          	beqz	a5,80004ec4 <_Z18Threads_C_API_testv+0xb4>
    80004ed8:	00007797          	auipc	a5,0x7
    80004edc:	c727c783          	lbu	a5,-910(a5) # 8000bb4a <_ZL9finishedB>
    80004ee0:	fe0782e3          	beqz	a5,80004ec4 <_Z18Threads_C_API_testv+0xb4>
    80004ee4:	00007797          	auipc	a5,0x7
    80004ee8:	c657c783          	lbu	a5,-923(a5) # 8000bb49 <_ZL9finishedC>
    80004eec:	fc078ce3          	beqz	a5,80004ec4 <_Z18Threads_C_API_testv+0xb4>
    80004ef0:	00007797          	auipc	a5,0x7
    80004ef4:	c587c783          	lbu	a5,-936(a5) # 8000bb48 <_ZL9finishedD>
    80004ef8:	fc0786e3          	beqz	a5,80004ec4 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004efc:	02813083          	ld	ra,40(sp)
    80004f00:	02013403          	ld	s0,32(sp)
    80004f04:	03010113          	addi	sp,sp,48
    80004f08:	00008067          	ret

0000000080004f0c <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004f0c:	fd010113          	addi	sp,sp,-48
    80004f10:	02113423          	sd	ra,40(sp)
    80004f14:	02813023          	sd	s0,32(sp)
    80004f18:	00913c23          	sd	s1,24(sp)
    80004f1c:	01213823          	sd	s2,16(sp)
    80004f20:	01313423          	sd	s3,8(sp)
    80004f24:	03010413          	addi	s0,sp,48
    80004f28:	00050993          	mv	s3,a0
    80004f2c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004f30:	00000913          	li	s2,0
    80004f34:	00c0006f          	j	80004f40 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004f38:	ffffe097          	auipc	ra,0xffffe
    80004f3c:	a00080e7          	jalr	-1536(ra) # 80002938 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004f40:	ffffc097          	auipc	ra,0xffffc
    80004f44:	458080e7          	jalr	1112(ra) # 80001398 <_Z4getcv>
    80004f48:	0005059b          	sext.w	a1,a0
    80004f4c:	01b00793          	li	a5,27
    80004f50:	02f58a63          	beq	a1,a5,80004f84 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004f54:	0084b503          	ld	a0,8(s1)
    80004f58:	00001097          	auipc	ra,0x1
    80004f5c:	c64080e7          	jalr	-924(ra) # 80005bbc <_ZN9BufferCPP3putEi>
        i++;
    80004f60:	0019071b          	addiw	a4,s2,1
    80004f64:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004f68:	0004a683          	lw	a3,0(s1)
    80004f6c:	0026979b          	slliw	a5,a3,0x2
    80004f70:	00d787bb          	addw	a5,a5,a3
    80004f74:	0017979b          	slliw	a5,a5,0x1
    80004f78:	02f767bb          	remw	a5,a4,a5
    80004f7c:	fc0792e3          	bnez	a5,80004f40 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004f80:	fb9ff06f          	j	80004f38 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004f84:	00100793          	li	a5,1
    80004f88:	00007717          	auipc	a4,0x7
    80004f8c:	bcf72423          	sw	a5,-1080(a4) # 8000bb50 <_ZL9threadEnd>
    td->buffer->put('!');
    80004f90:	0209b783          	ld	a5,32(s3)
    80004f94:	02100593          	li	a1,33
    80004f98:	0087b503          	ld	a0,8(a5)
    80004f9c:	00001097          	auipc	ra,0x1
    80004fa0:	c20080e7          	jalr	-992(ra) # 80005bbc <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004fa4:	0104b503          	ld	a0,16(s1)
    80004fa8:	ffffe097          	auipc	ra,0xffffe
    80004fac:	964080e7          	jalr	-1692(ra) # 8000290c <_ZN9Semaphore6signalEv>
}
    80004fb0:	02813083          	ld	ra,40(sp)
    80004fb4:	02013403          	ld	s0,32(sp)
    80004fb8:	01813483          	ld	s1,24(sp)
    80004fbc:	01013903          	ld	s2,16(sp)
    80004fc0:	00813983          	ld	s3,8(sp)
    80004fc4:	03010113          	addi	sp,sp,48
    80004fc8:	00008067          	ret

0000000080004fcc <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004fcc:	fe010113          	addi	sp,sp,-32
    80004fd0:	00113c23          	sd	ra,24(sp)
    80004fd4:	00813823          	sd	s0,16(sp)
    80004fd8:	00913423          	sd	s1,8(sp)
    80004fdc:	01213023          	sd	s2,0(sp)
    80004fe0:	02010413          	addi	s0,sp,32
    80004fe4:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004fe8:	00000913          	li	s2,0
    80004fec:	00c0006f          	j	80004ff8 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ff0:	ffffe097          	auipc	ra,0xffffe
    80004ff4:	948080e7          	jalr	-1720(ra) # 80002938 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004ff8:	00007797          	auipc	a5,0x7
    80004ffc:	b587a783          	lw	a5,-1192(a5) # 8000bb50 <_ZL9threadEnd>
    80005000:	02079e63          	bnez	a5,8000503c <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005004:	0004a583          	lw	a1,0(s1)
    80005008:	0305859b          	addiw	a1,a1,48
    8000500c:	0084b503          	ld	a0,8(s1)
    80005010:	00001097          	auipc	ra,0x1
    80005014:	bac080e7          	jalr	-1108(ra) # 80005bbc <_ZN9BufferCPP3putEi>
        i++;
    80005018:	0019071b          	addiw	a4,s2,1
    8000501c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005020:	0004a683          	lw	a3,0(s1)
    80005024:	0026979b          	slliw	a5,a3,0x2
    80005028:	00d787bb          	addw	a5,a5,a3
    8000502c:	0017979b          	slliw	a5,a5,0x1
    80005030:	02f767bb          	remw	a5,a4,a5
    80005034:	fc0792e3          	bnez	a5,80004ff8 <_ZN12ProducerSync8producerEPv+0x2c>
    80005038:	fb9ff06f          	j	80004ff0 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    8000503c:	0104b503          	ld	a0,16(s1)
    80005040:	ffffe097          	auipc	ra,0xffffe
    80005044:	8cc080e7          	jalr	-1844(ra) # 8000290c <_ZN9Semaphore6signalEv>
}
    80005048:	01813083          	ld	ra,24(sp)
    8000504c:	01013403          	ld	s0,16(sp)
    80005050:	00813483          	ld	s1,8(sp)
    80005054:	00013903          	ld	s2,0(sp)
    80005058:	02010113          	addi	sp,sp,32
    8000505c:	00008067          	ret

0000000080005060 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005060:	fd010113          	addi	sp,sp,-48
    80005064:	02113423          	sd	ra,40(sp)
    80005068:	02813023          	sd	s0,32(sp)
    8000506c:	00913c23          	sd	s1,24(sp)
    80005070:	01213823          	sd	s2,16(sp)
    80005074:	01313423          	sd	s3,8(sp)
    80005078:	01413023          	sd	s4,0(sp)
    8000507c:	03010413          	addi	s0,sp,48
    80005080:	00050993          	mv	s3,a0
    80005084:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005088:	00000a13          	li	s4,0
    8000508c:	01c0006f          	j	800050a8 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005090:	ffffe097          	auipc	ra,0xffffe
    80005094:	8a8080e7          	jalr	-1880(ra) # 80002938 <_ZN6Thread8dispatchEv>
    80005098:	0500006f          	j	800050e8 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    8000509c:	00a00513          	li	a0,10
    800050a0:	ffffc097          	auipc	ra,0xffffc
    800050a4:	320080e7          	jalr	800(ra) # 800013c0 <_Z4putcc>
    while (!threadEnd) {
    800050a8:	00007797          	auipc	a5,0x7
    800050ac:	aa87a783          	lw	a5,-1368(a5) # 8000bb50 <_ZL9threadEnd>
    800050b0:	06079263          	bnez	a5,80005114 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800050b4:	00893503          	ld	a0,8(s2)
    800050b8:	00001097          	auipc	ra,0x1
    800050bc:	b94080e7          	jalr	-1132(ra) # 80005c4c <_ZN9BufferCPP3getEv>
        i++;
    800050c0:	001a049b          	addiw	s1,s4,1
    800050c4:	00048a1b          	sext.w	s4,s1
        putc(key);
    800050c8:	0ff57513          	andi	a0,a0,255
    800050cc:	ffffc097          	auipc	ra,0xffffc
    800050d0:	2f4080e7          	jalr	756(ra) # 800013c0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800050d4:	00092703          	lw	a4,0(s2)
    800050d8:	0027179b          	slliw	a5,a4,0x2
    800050dc:	00e787bb          	addw	a5,a5,a4
    800050e0:	02f4e7bb          	remw	a5,s1,a5
    800050e4:	fa0786e3          	beqz	a5,80005090 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800050e8:	05000793          	li	a5,80
    800050ec:	02f4e4bb          	remw	s1,s1,a5
    800050f0:	fa049ce3          	bnez	s1,800050a8 <_ZN12ConsumerSync8consumerEPv+0x48>
    800050f4:	fa9ff06f          	j	8000509c <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800050f8:	0209b783          	ld	a5,32(s3)
    800050fc:	0087b503          	ld	a0,8(a5)
    80005100:	00001097          	auipc	ra,0x1
    80005104:	b4c080e7          	jalr	-1204(ra) # 80005c4c <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005108:	0ff57513          	andi	a0,a0,255
    8000510c:	ffffe097          	auipc	ra,0xffffe
    80005110:	96c080e7          	jalr	-1684(ra) # 80002a78 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005114:	0209b783          	ld	a5,32(s3)
    80005118:	0087b503          	ld	a0,8(a5)
    8000511c:	00001097          	auipc	ra,0x1
    80005120:	bbc080e7          	jalr	-1092(ra) # 80005cd8 <_ZN9BufferCPP6getCntEv>
    80005124:	fca04ae3          	bgtz	a0,800050f8 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005128:	01093503          	ld	a0,16(s2)
    8000512c:	ffffd097          	auipc	ra,0xffffd
    80005130:	7e0080e7          	jalr	2016(ra) # 8000290c <_ZN9Semaphore6signalEv>
}
    80005134:	02813083          	ld	ra,40(sp)
    80005138:	02013403          	ld	s0,32(sp)
    8000513c:	01813483          	ld	s1,24(sp)
    80005140:	01013903          	ld	s2,16(sp)
    80005144:	00813983          	ld	s3,8(sp)
    80005148:	00013a03          	ld	s4,0(sp)
    8000514c:	03010113          	addi	sp,sp,48
    80005150:	00008067          	ret

0000000080005154 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005154:	f8010113          	addi	sp,sp,-128
    80005158:	06113c23          	sd	ra,120(sp)
    8000515c:	06813823          	sd	s0,112(sp)
    80005160:	06913423          	sd	s1,104(sp)
    80005164:	07213023          	sd	s2,96(sp)
    80005168:	05313c23          	sd	s3,88(sp)
    8000516c:	05413823          	sd	s4,80(sp)
    80005170:	05513423          	sd	s5,72(sp)
    80005174:	05613023          	sd	s6,64(sp)
    80005178:	03713c23          	sd	s7,56(sp)
    8000517c:	03813823          	sd	s8,48(sp)
    80005180:	03913423          	sd	s9,40(sp)
    80005184:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005188:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    8000518c:	00004517          	auipc	a0,0x4
    80005190:	02450513          	addi	a0,a0,36 # 800091b0 <CONSOLE_STATUS+0x1a0>
    80005194:	00000097          	auipc	ra,0x0
    80005198:	604080e7          	jalr	1540(ra) # 80005798 <_Z11printStringPKc>
    getString(input, 30);
    8000519c:	01e00593          	li	a1,30
    800051a0:	f8040493          	addi	s1,s0,-128
    800051a4:	00048513          	mv	a0,s1
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	678080e7          	jalr	1656(ra) # 80005820 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800051b0:	00048513          	mv	a0,s1
    800051b4:	00000097          	auipc	ra,0x0
    800051b8:	744080e7          	jalr	1860(ra) # 800058f8 <_Z11stringToIntPKc>
    800051bc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800051c0:	00004517          	auipc	a0,0x4
    800051c4:	01050513          	addi	a0,a0,16 # 800091d0 <CONSOLE_STATUS+0x1c0>
    800051c8:	00000097          	auipc	ra,0x0
    800051cc:	5d0080e7          	jalr	1488(ra) # 80005798 <_Z11printStringPKc>
    getString(input, 30);
    800051d0:	01e00593          	li	a1,30
    800051d4:	00048513          	mv	a0,s1
    800051d8:	00000097          	auipc	ra,0x0
    800051dc:	648080e7          	jalr	1608(ra) # 80005820 <_Z9getStringPci>
    n = stringToInt(input);
    800051e0:	00048513          	mv	a0,s1
    800051e4:	00000097          	auipc	ra,0x0
    800051e8:	714080e7          	jalr	1812(ra) # 800058f8 <_Z11stringToIntPKc>
    800051ec:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800051f0:	00004517          	auipc	a0,0x4
    800051f4:	00050513          	mv	a0,a0
    800051f8:	00000097          	auipc	ra,0x0
    800051fc:	5a0080e7          	jalr	1440(ra) # 80005798 <_Z11printStringPKc>
    80005200:	00000613          	li	a2,0
    80005204:	00a00593          	li	a1,10
    80005208:	00090513          	mv	a0,s2
    8000520c:	00000097          	auipc	ra,0x0
    80005210:	73c080e7          	jalr	1852(ra) # 80005948 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005214:	00004517          	auipc	a0,0x4
    80005218:	ff450513          	addi	a0,a0,-12 # 80009208 <CONSOLE_STATUS+0x1f8>
    8000521c:	00000097          	auipc	ra,0x0
    80005220:	57c080e7          	jalr	1404(ra) # 80005798 <_Z11printStringPKc>
    80005224:	00000613          	li	a2,0
    80005228:	00a00593          	li	a1,10
    8000522c:	00048513          	mv	a0,s1
    80005230:	00000097          	auipc	ra,0x0
    80005234:	718080e7          	jalr	1816(ra) # 80005948 <_Z8printIntiii>
    printString(".\n");
    80005238:	00004517          	auipc	a0,0x4
    8000523c:	fe850513          	addi	a0,a0,-24 # 80009220 <CONSOLE_STATUS+0x210>
    80005240:	00000097          	auipc	ra,0x0
    80005244:	558080e7          	jalr	1368(ra) # 80005798 <_Z11printStringPKc>
    if(threadNum > n) {
    80005248:	0324c463          	blt	s1,s2,80005270 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    8000524c:	03205c63          	blez	s2,80005284 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005250:	03800513          	li	a0,56
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	420080e7          	jalr	1056(ra) # 80002674 <_Znwm>
    8000525c:	00050a93          	mv	s5,a0
    80005260:	00048593          	mv	a1,s1
    80005264:	00001097          	auipc	ra,0x1
    80005268:	804080e7          	jalr	-2044(ra) # 80005a68 <_ZN9BufferCPPC1Ei>
    8000526c:	0300006f          	j	8000529c <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005270:	00004517          	auipc	a0,0x4
    80005274:	fb850513          	addi	a0,a0,-72 # 80009228 <CONSOLE_STATUS+0x218>
    80005278:	00000097          	auipc	ra,0x0
    8000527c:	520080e7          	jalr	1312(ra) # 80005798 <_Z11printStringPKc>
        return;
    80005280:	0140006f          	j	80005294 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005284:	00004517          	auipc	a0,0x4
    80005288:	fe450513          	addi	a0,a0,-28 # 80009268 <CONSOLE_STATUS+0x258>
    8000528c:	00000097          	auipc	ra,0x0
    80005290:	50c080e7          	jalr	1292(ra) # 80005798 <_Z11printStringPKc>
        return;
    80005294:	000b8113          	mv	sp,s7
    80005298:	2380006f          	j	800054d0 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    8000529c:	01000513          	li	a0,16
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	3d4080e7          	jalr	980(ra) # 80002674 <_Znwm>
    800052a8:	00050493          	mv	s1,a0
    800052ac:	00000593          	li	a1,0
    800052b0:	ffffd097          	auipc	ra,0xffffd
    800052b4:	5f8080e7          	jalr	1528(ra) # 800028a8 <_ZN9SemaphoreC1Ej>
    800052b8:	00007797          	auipc	a5,0x7
    800052bc:	8a97b023          	sd	s1,-1888(a5) # 8000bb58 <_ZL10waitForAll>
    Thread* threads[threadNum];
    800052c0:	00391793          	slli	a5,s2,0x3
    800052c4:	00f78793          	addi	a5,a5,15
    800052c8:	ff07f793          	andi	a5,a5,-16
    800052cc:	40f10133          	sub	sp,sp,a5
    800052d0:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800052d4:	0019071b          	addiw	a4,s2,1
    800052d8:	00171793          	slli	a5,a4,0x1
    800052dc:	00e787b3          	add	a5,a5,a4
    800052e0:	00379793          	slli	a5,a5,0x3
    800052e4:	00f78793          	addi	a5,a5,15
    800052e8:	ff07f793          	andi	a5,a5,-16
    800052ec:	40f10133          	sub	sp,sp,a5
    800052f0:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800052f4:	00191c13          	slli	s8,s2,0x1
    800052f8:	012c07b3          	add	a5,s8,s2
    800052fc:	00379793          	slli	a5,a5,0x3
    80005300:	00fa07b3          	add	a5,s4,a5
    80005304:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005308:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    8000530c:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005310:	02800513          	li	a0,40
    80005314:	ffffd097          	auipc	ra,0xffffd
    80005318:	360080e7          	jalr	864(ra) # 80002674 <_Znwm>
    8000531c:	00050b13          	mv	s6,a0
    80005320:	012c0c33          	add	s8,s8,s2
    80005324:	003c1c13          	slli	s8,s8,0x3
    80005328:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    8000532c:	ffffd097          	auipc	ra,0xffffd
    80005330:	698080e7          	jalr	1688(ra) # 800029c4 <_ZN6ThreadC1Ev>
    80005334:	00006797          	auipc	a5,0x6
    80005338:	69478793          	addi	a5,a5,1684 # 8000b9c8 <_ZTV12ConsumerSync+0x10>
    8000533c:	00fb3023          	sd	a5,0(s6)
    80005340:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005344:	000b0513          	mv	a0,s6
    80005348:	ffffd097          	auipc	ra,0xffffd
    8000534c:	648080e7          	jalr	1608(ra) # 80002990 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005350:	00000493          	li	s1,0
    80005354:	0380006f          	j	8000538c <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005358:	00006797          	auipc	a5,0x6
    8000535c:	64878793          	addi	a5,a5,1608 # 8000b9a0 <_ZTV12ProducerSync+0x10>
    80005360:	00fcb023          	sd	a5,0(s9)
    80005364:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005368:	00349793          	slli	a5,s1,0x3
    8000536c:	00f987b3          	add	a5,s3,a5
    80005370:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005374:	00349793          	slli	a5,s1,0x3
    80005378:	00f987b3          	add	a5,s3,a5
    8000537c:	0007b503          	ld	a0,0(a5)
    80005380:	ffffd097          	auipc	ra,0xffffd
    80005384:	610080e7          	jalr	1552(ra) # 80002990 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005388:	0014849b          	addiw	s1,s1,1
    8000538c:	0b24d063          	bge	s1,s2,8000542c <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005390:	00149793          	slli	a5,s1,0x1
    80005394:	009787b3          	add	a5,a5,s1
    80005398:	00379793          	slli	a5,a5,0x3
    8000539c:	00fa07b3          	add	a5,s4,a5
    800053a0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800053a4:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    800053a8:	00006717          	auipc	a4,0x6
    800053ac:	7b073703          	ld	a4,1968(a4) # 8000bb58 <_ZL10waitForAll>
    800053b0:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    800053b4:	02905863          	blez	s1,800053e4 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    800053b8:	02800513          	li	a0,40
    800053bc:	ffffd097          	auipc	ra,0xffffd
    800053c0:	2b8080e7          	jalr	696(ra) # 80002674 <_Znwm>
    800053c4:	00050c93          	mv	s9,a0
    800053c8:	00149c13          	slli	s8,s1,0x1
    800053cc:	009c0c33          	add	s8,s8,s1
    800053d0:	003c1c13          	slli	s8,s8,0x3
    800053d4:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800053d8:	ffffd097          	auipc	ra,0xffffd
    800053dc:	5ec080e7          	jalr	1516(ra) # 800029c4 <_ZN6ThreadC1Ev>
    800053e0:	f79ff06f          	j	80005358 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800053e4:	02800513          	li	a0,40
    800053e8:	ffffd097          	auipc	ra,0xffffd
    800053ec:	28c080e7          	jalr	652(ra) # 80002674 <_Znwm>
    800053f0:	00050c93          	mv	s9,a0
    800053f4:	00149c13          	slli	s8,s1,0x1
    800053f8:	009c0c33          	add	s8,s8,s1
    800053fc:	003c1c13          	slli	s8,s8,0x3
    80005400:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005404:	ffffd097          	auipc	ra,0xffffd
    80005408:	5c0080e7          	jalr	1472(ra) # 800029c4 <_ZN6ThreadC1Ev>
    8000540c:	00006797          	auipc	a5,0x6
    80005410:	56c78793          	addi	a5,a5,1388 # 8000b978 <_ZTV16ProducerKeyboard+0x10>
    80005414:	00fcb023          	sd	a5,0(s9)
    80005418:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    8000541c:	00349793          	slli	a5,s1,0x3
    80005420:	00f987b3          	add	a5,s3,a5
    80005424:	0197b023          	sd	s9,0(a5)
    80005428:	f4dff06f          	j	80005374 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    8000542c:	ffffd097          	auipc	ra,0xffffd
    80005430:	50c080e7          	jalr	1292(ra) # 80002938 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005434:	00000493          	li	s1,0
    80005438:	00994e63          	blt	s2,s1,80005454 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    8000543c:	00006517          	auipc	a0,0x6
    80005440:	71c53503          	ld	a0,1820(a0) # 8000bb58 <_ZL10waitForAll>
    80005444:	ffffd097          	auipc	ra,0xffffd
    80005448:	49c080e7          	jalr	1180(ra) # 800028e0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    8000544c:	0014849b          	addiw	s1,s1,1
    80005450:	fe9ff06f          	j	80005438 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005454:	00000493          	li	s1,0
    80005458:	0080006f          	j	80005460 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    8000545c:	0014849b          	addiw	s1,s1,1
    80005460:	0324d263          	bge	s1,s2,80005484 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005464:	00349793          	slli	a5,s1,0x3
    80005468:	00f987b3          	add	a5,s3,a5
    8000546c:	0007b503          	ld	a0,0(a5)
    80005470:	fe0506e3          	beqz	a0,8000545c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005474:	00053783          	ld	a5,0(a0)
    80005478:	0087b783          	ld	a5,8(a5)
    8000547c:	000780e7          	jalr	a5
    80005480:	fddff06f          	j	8000545c <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005484:	000b0a63          	beqz	s6,80005498 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005488:	000b3783          	ld	a5,0(s6)
    8000548c:	0087b783          	ld	a5,8(a5)
    80005490:	000b0513          	mv	a0,s6
    80005494:	000780e7          	jalr	a5
    delete waitForAll;
    80005498:	00006517          	auipc	a0,0x6
    8000549c:	6c053503          	ld	a0,1728(a0) # 8000bb58 <_ZL10waitForAll>
    800054a0:	00050863          	beqz	a0,800054b0 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    800054a4:	00053783          	ld	a5,0(a0)
    800054a8:	0087b783          	ld	a5,8(a5)
    800054ac:	000780e7          	jalr	a5
    delete buffer;
    800054b0:	000a8e63          	beqz	s5,800054cc <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    800054b4:	000a8513          	mv	a0,s5
    800054b8:	00001097          	auipc	ra,0x1
    800054bc:	8a8080e7          	jalr	-1880(ra) # 80005d60 <_ZN9BufferCPPD1Ev>
    800054c0:	000a8513          	mv	a0,s5
    800054c4:	ffffd097          	auipc	ra,0xffffd
    800054c8:	200080e7          	jalr	512(ra) # 800026c4 <_ZdlPv>
    800054cc:	000b8113          	mv	sp,s7

}
    800054d0:	f8040113          	addi	sp,s0,-128
    800054d4:	07813083          	ld	ra,120(sp)
    800054d8:	07013403          	ld	s0,112(sp)
    800054dc:	06813483          	ld	s1,104(sp)
    800054e0:	06013903          	ld	s2,96(sp)
    800054e4:	05813983          	ld	s3,88(sp)
    800054e8:	05013a03          	ld	s4,80(sp)
    800054ec:	04813a83          	ld	s5,72(sp)
    800054f0:	04013b03          	ld	s6,64(sp)
    800054f4:	03813b83          	ld	s7,56(sp)
    800054f8:	03013c03          	ld	s8,48(sp)
    800054fc:	02813c83          	ld	s9,40(sp)
    80005500:	08010113          	addi	sp,sp,128
    80005504:	00008067          	ret
    80005508:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000550c:	000a8513          	mv	a0,s5
    80005510:	ffffd097          	auipc	ra,0xffffd
    80005514:	1b4080e7          	jalr	436(ra) # 800026c4 <_ZdlPv>
    80005518:	00048513          	mv	a0,s1
    8000551c:	00007097          	auipc	ra,0x7
    80005520:	71c080e7          	jalr	1820(ra) # 8000cc38 <_Unwind_Resume>
    80005524:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005528:	00048513          	mv	a0,s1
    8000552c:	ffffd097          	auipc	ra,0xffffd
    80005530:	198080e7          	jalr	408(ra) # 800026c4 <_ZdlPv>
    80005534:	00090513          	mv	a0,s2
    80005538:	00007097          	auipc	ra,0x7
    8000553c:	700080e7          	jalr	1792(ra) # 8000cc38 <_Unwind_Resume>
    80005540:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80005544:	000b0513          	mv	a0,s6
    80005548:	ffffd097          	auipc	ra,0xffffd
    8000554c:	17c080e7          	jalr	380(ra) # 800026c4 <_ZdlPv>
    80005550:	00048513          	mv	a0,s1
    80005554:	00007097          	auipc	ra,0x7
    80005558:	6e4080e7          	jalr	1764(ra) # 8000cc38 <_Unwind_Resume>
    8000555c:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005560:	000c8513          	mv	a0,s9
    80005564:	ffffd097          	auipc	ra,0xffffd
    80005568:	160080e7          	jalr	352(ra) # 800026c4 <_ZdlPv>
    8000556c:	00048513          	mv	a0,s1
    80005570:	00007097          	auipc	ra,0x7
    80005574:	6c8080e7          	jalr	1736(ra) # 8000cc38 <_Unwind_Resume>
    80005578:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    8000557c:	000c8513          	mv	a0,s9
    80005580:	ffffd097          	auipc	ra,0xffffd
    80005584:	144080e7          	jalr	324(ra) # 800026c4 <_ZdlPv>
    80005588:	00048513          	mv	a0,s1
    8000558c:	00007097          	auipc	ra,0x7
    80005590:	6ac080e7          	jalr	1708(ra) # 8000cc38 <_Unwind_Resume>

0000000080005594 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80005594:	ff010113          	addi	sp,sp,-16
    80005598:	00113423          	sd	ra,8(sp)
    8000559c:	00813023          	sd	s0,0(sp)
    800055a0:	01010413          	addi	s0,sp,16
    800055a4:	00006797          	auipc	a5,0x6
    800055a8:	42478793          	addi	a5,a5,1060 # 8000b9c8 <_ZTV12ConsumerSync+0x10>
    800055ac:	00f53023          	sd	a5,0(a0)
    800055b0:	ffffd097          	auipc	ra,0xffffd
    800055b4:	220080e7          	jalr	544(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800055b8:	00813083          	ld	ra,8(sp)
    800055bc:	00013403          	ld	s0,0(sp)
    800055c0:	01010113          	addi	sp,sp,16
    800055c4:	00008067          	ret

00000000800055c8 <_ZN12ConsumerSyncD0Ev>:
    800055c8:	fe010113          	addi	sp,sp,-32
    800055cc:	00113c23          	sd	ra,24(sp)
    800055d0:	00813823          	sd	s0,16(sp)
    800055d4:	00913423          	sd	s1,8(sp)
    800055d8:	02010413          	addi	s0,sp,32
    800055dc:	00050493          	mv	s1,a0
    800055e0:	00006797          	auipc	a5,0x6
    800055e4:	3e878793          	addi	a5,a5,1000 # 8000b9c8 <_ZTV12ConsumerSync+0x10>
    800055e8:	00f53023          	sd	a5,0(a0)
    800055ec:	ffffd097          	auipc	ra,0xffffd
    800055f0:	1e4080e7          	jalr	484(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800055f4:	00048513          	mv	a0,s1
    800055f8:	ffffd097          	auipc	ra,0xffffd
    800055fc:	0cc080e7          	jalr	204(ra) # 800026c4 <_ZdlPv>
    80005600:	01813083          	ld	ra,24(sp)
    80005604:	01013403          	ld	s0,16(sp)
    80005608:	00813483          	ld	s1,8(sp)
    8000560c:	02010113          	addi	sp,sp,32
    80005610:	00008067          	ret

0000000080005614 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80005614:	ff010113          	addi	sp,sp,-16
    80005618:	00113423          	sd	ra,8(sp)
    8000561c:	00813023          	sd	s0,0(sp)
    80005620:	01010413          	addi	s0,sp,16
    80005624:	00006797          	auipc	a5,0x6
    80005628:	37c78793          	addi	a5,a5,892 # 8000b9a0 <_ZTV12ProducerSync+0x10>
    8000562c:	00f53023          	sd	a5,0(a0)
    80005630:	ffffd097          	auipc	ra,0xffffd
    80005634:	1a0080e7          	jalr	416(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80005638:	00813083          	ld	ra,8(sp)
    8000563c:	00013403          	ld	s0,0(sp)
    80005640:	01010113          	addi	sp,sp,16
    80005644:	00008067          	ret

0000000080005648 <_ZN12ProducerSyncD0Ev>:
    80005648:	fe010113          	addi	sp,sp,-32
    8000564c:	00113c23          	sd	ra,24(sp)
    80005650:	00813823          	sd	s0,16(sp)
    80005654:	00913423          	sd	s1,8(sp)
    80005658:	02010413          	addi	s0,sp,32
    8000565c:	00050493          	mv	s1,a0
    80005660:	00006797          	auipc	a5,0x6
    80005664:	34078793          	addi	a5,a5,832 # 8000b9a0 <_ZTV12ProducerSync+0x10>
    80005668:	00f53023          	sd	a5,0(a0)
    8000566c:	ffffd097          	auipc	ra,0xffffd
    80005670:	164080e7          	jalr	356(ra) # 800027d0 <_ZN6ThreadD1Ev>
    80005674:	00048513          	mv	a0,s1
    80005678:	ffffd097          	auipc	ra,0xffffd
    8000567c:	04c080e7          	jalr	76(ra) # 800026c4 <_ZdlPv>
    80005680:	01813083          	ld	ra,24(sp)
    80005684:	01013403          	ld	s0,16(sp)
    80005688:	00813483          	ld	s1,8(sp)
    8000568c:	02010113          	addi	sp,sp,32
    80005690:	00008067          	ret

0000000080005694 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80005694:	ff010113          	addi	sp,sp,-16
    80005698:	00113423          	sd	ra,8(sp)
    8000569c:	00813023          	sd	s0,0(sp)
    800056a0:	01010413          	addi	s0,sp,16
    800056a4:	00006797          	auipc	a5,0x6
    800056a8:	2d478793          	addi	a5,a5,724 # 8000b978 <_ZTV16ProducerKeyboard+0x10>
    800056ac:	00f53023          	sd	a5,0(a0)
    800056b0:	ffffd097          	auipc	ra,0xffffd
    800056b4:	120080e7          	jalr	288(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800056b8:	00813083          	ld	ra,8(sp)
    800056bc:	00013403          	ld	s0,0(sp)
    800056c0:	01010113          	addi	sp,sp,16
    800056c4:	00008067          	ret

00000000800056c8 <_ZN16ProducerKeyboardD0Ev>:
    800056c8:	fe010113          	addi	sp,sp,-32
    800056cc:	00113c23          	sd	ra,24(sp)
    800056d0:	00813823          	sd	s0,16(sp)
    800056d4:	00913423          	sd	s1,8(sp)
    800056d8:	02010413          	addi	s0,sp,32
    800056dc:	00050493          	mv	s1,a0
    800056e0:	00006797          	auipc	a5,0x6
    800056e4:	29878793          	addi	a5,a5,664 # 8000b978 <_ZTV16ProducerKeyboard+0x10>
    800056e8:	00f53023          	sd	a5,0(a0)
    800056ec:	ffffd097          	auipc	ra,0xffffd
    800056f0:	0e4080e7          	jalr	228(ra) # 800027d0 <_ZN6ThreadD1Ev>
    800056f4:	00048513          	mv	a0,s1
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	fcc080e7          	jalr	-52(ra) # 800026c4 <_ZdlPv>
    80005700:	01813083          	ld	ra,24(sp)
    80005704:	01013403          	ld	s0,16(sp)
    80005708:	00813483          	ld	s1,8(sp)
    8000570c:	02010113          	addi	sp,sp,32
    80005710:	00008067          	ret

0000000080005714 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80005714:	ff010113          	addi	sp,sp,-16
    80005718:	00113423          	sd	ra,8(sp)
    8000571c:	00813023          	sd	s0,0(sp)
    80005720:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80005724:	02053583          	ld	a1,32(a0)
    80005728:	fffff097          	auipc	ra,0xfffff
    8000572c:	7e4080e7          	jalr	2020(ra) # 80004f0c <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005730:	00813083          	ld	ra,8(sp)
    80005734:	00013403          	ld	s0,0(sp)
    80005738:	01010113          	addi	sp,sp,16
    8000573c:	00008067          	ret

0000000080005740 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005740:	ff010113          	addi	sp,sp,-16
    80005744:	00113423          	sd	ra,8(sp)
    80005748:	00813023          	sd	s0,0(sp)
    8000574c:	01010413          	addi	s0,sp,16
        producer(td);
    80005750:	02053583          	ld	a1,32(a0)
    80005754:	00000097          	auipc	ra,0x0
    80005758:	878080e7          	jalr	-1928(ra) # 80004fcc <_ZN12ProducerSync8producerEPv>
    }
    8000575c:	00813083          	ld	ra,8(sp)
    80005760:	00013403          	ld	s0,0(sp)
    80005764:	01010113          	addi	sp,sp,16
    80005768:	00008067          	ret

000000008000576c <_ZN12ConsumerSync3runEv>:
    void run() override {
    8000576c:	ff010113          	addi	sp,sp,-16
    80005770:	00113423          	sd	ra,8(sp)
    80005774:	00813023          	sd	s0,0(sp)
    80005778:	01010413          	addi	s0,sp,16
        consumer(td);
    8000577c:	02053583          	ld	a1,32(a0)
    80005780:	00000097          	auipc	ra,0x0
    80005784:	8e0080e7          	jalr	-1824(ra) # 80005060 <_ZN12ConsumerSync8consumerEPv>
    }
    80005788:	00813083          	ld	ra,8(sp)
    8000578c:	00013403          	ld	s0,0(sp)
    80005790:	01010113          	addi	sp,sp,16
    80005794:	00008067          	ret

0000000080005798 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005798:	fe010113          	addi	sp,sp,-32
    8000579c:	00113c23          	sd	ra,24(sp)
    800057a0:	00813823          	sd	s0,16(sp)
    800057a4:	00913423          	sd	s1,8(sp)
    800057a8:	02010413          	addi	s0,sp,32
    800057ac:	00050493          	mv	s1,a0
    LOCK();
    800057b0:	00100613          	li	a2,1
    800057b4:	00000593          	li	a1,0
    800057b8:	00006517          	auipc	a0,0x6
    800057bc:	3a850513          	addi	a0,a0,936 # 8000bb60 <lockPrint>
    800057c0:	ffffc097          	auipc	ra,0xffffc
    800057c4:	964080e7          	jalr	-1692(ra) # 80001124 <copy_and_swap>
    800057c8:	00050863          	beqz	a0,800057d8 <_Z11printStringPKc+0x40>
    800057cc:	ffffc097          	auipc	ra,0xffffc
    800057d0:	a6c080e7          	jalr	-1428(ra) # 80001238 <_Z15thread_dispatchv>
    800057d4:	fddff06f          	j	800057b0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800057d8:	0004c503          	lbu	a0,0(s1)
    800057dc:	00050a63          	beqz	a0,800057f0 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800057e0:	ffffc097          	auipc	ra,0xffffc
    800057e4:	be0080e7          	jalr	-1056(ra) # 800013c0 <_Z4putcc>
        string++;
    800057e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800057ec:	fedff06f          	j	800057d8 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800057f0:	00000613          	li	a2,0
    800057f4:	00100593          	li	a1,1
    800057f8:	00006517          	auipc	a0,0x6
    800057fc:	36850513          	addi	a0,a0,872 # 8000bb60 <lockPrint>
    80005800:	ffffc097          	auipc	ra,0xffffc
    80005804:	924080e7          	jalr	-1756(ra) # 80001124 <copy_and_swap>
    80005808:	fe0514e3          	bnez	a0,800057f0 <_Z11printStringPKc+0x58>
}
    8000580c:	01813083          	ld	ra,24(sp)
    80005810:	01013403          	ld	s0,16(sp)
    80005814:	00813483          	ld	s1,8(sp)
    80005818:	02010113          	addi	sp,sp,32
    8000581c:	00008067          	ret

0000000080005820 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80005820:	fd010113          	addi	sp,sp,-48
    80005824:	02113423          	sd	ra,40(sp)
    80005828:	02813023          	sd	s0,32(sp)
    8000582c:	00913c23          	sd	s1,24(sp)
    80005830:	01213823          	sd	s2,16(sp)
    80005834:	01313423          	sd	s3,8(sp)
    80005838:	01413023          	sd	s4,0(sp)
    8000583c:	03010413          	addi	s0,sp,48
    80005840:	00050993          	mv	s3,a0
    80005844:	00058a13          	mv	s4,a1
    LOCK();
    80005848:	00100613          	li	a2,1
    8000584c:	00000593          	li	a1,0
    80005850:	00006517          	auipc	a0,0x6
    80005854:	31050513          	addi	a0,a0,784 # 8000bb60 <lockPrint>
    80005858:	ffffc097          	auipc	ra,0xffffc
    8000585c:	8cc080e7          	jalr	-1844(ra) # 80001124 <copy_and_swap>
    80005860:	00050863          	beqz	a0,80005870 <_Z9getStringPci+0x50>
    80005864:	ffffc097          	auipc	ra,0xffffc
    80005868:	9d4080e7          	jalr	-1580(ra) # 80001238 <_Z15thread_dispatchv>
    8000586c:	fddff06f          	j	80005848 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005870:	00000913          	li	s2,0
    80005874:	00090493          	mv	s1,s2
    80005878:	0019091b          	addiw	s2,s2,1
    8000587c:	03495a63          	bge	s2,s4,800058b0 <_Z9getStringPci+0x90>
        cc = getc();
    80005880:	ffffc097          	auipc	ra,0xffffc
    80005884:	b18080e7          	jalr	-1256(ra) # 80001398 <_Z4getcv>
        if(cc < 1)
    80005888:	02050463          	beqz	a0,800058b0 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    8000588c:	009984b3          	add	s1,s3,s1
    80005890:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80005894:	00a00793          	li	a5,10
    80005898:	00f50a63          	beq	a0,a5,800058ac <_Z9getStringPci+0x8c>
    8000589c:	00d00793          	li	a5,13
    800058a0:	fcf51ae3          	bne	a0,a5,80005874 <_Z9getStringPci+0x54>
        buf[i++] = c;
    800058a4:	00090493          	mv	s1,s2
    800058a8:	0080006f          	j	800058b0 <_Z9getStringPci+0x90>
    800058ac:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800058b0:	009984b3          	add	s1,s3,s1
    800058b4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800058b8:	00000613          	li	a2,0
    800058bc:	00100593          	li	a1,1
    800058c0:	00006517          	auipc	a0,0x6
    800058c4:	2a050513          	addi	a0,a0,672 # 8000bb60 <lockPrint>
    800058c8:	ffffc097          	auipc	ra,0xffffc
    800058cc:	85c080e7          	jalr	-1956(ra) # 80001124 <copy_and_swap>
    800058d0:	fe0514e3          	bnez	a0,800058b8 <_Z9getStringPci+0x98>
    return buf;
}
    800058d4:	00098513          	mv	a0,s3
    800058d8:	02813083          	ld	ra,40(sp)
    800058dc:	02013403          	ld	s0,32(sp)
    800058e0:	01813483          	ld	s1,24(sp)
    800058e4:	01013903          	ld	s2,16(sp)
    800058e8:	00813983          	ld	s3,8(sp)
    800058ec:	00013a03          	ld	s4,0(sp)
    800058f0:	03010113          	addi	sp,sp,48
    800058f4:	00008067          	ret

00000000800058f8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800058f8:	ff010113          	addi	sp,sp,-16
    800058fc:	00813423          	sd	s0,8(sp)
    80005900:	01010413          	addi	s0,sp,16
    80005904:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80005908:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000590c:	0006c603          	lbu	a2,0(a3)
    80005910:	fd06071b          	addiw	a4,a2,-48
    80005914:	0ff77713          	andi	a4,a4,255
    80005918:	00900793          	li	a5,9
    8000591c:	02e7e063          	bltu	a5,a4,8000593c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80005920:	0025179b          	slliw	a5,a0,0x2
    80005924:	00a787bb          	addw	a5,a5,a0
    80005928:	0017979b          	slliw	a5,a5,0x1
    8000592c:	00168693          	addi	a3,a3,1
    80005930:	00c787bb          	addw	a5,a5,a2
    80005934:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005938:	fd5ff06f          	j	8000590c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000593c:	00813403          	ld	s0,8(sp)
    80005940:	01010113          	addi	sp,sp,16
    80005944:	00008067          	ret

0000000080005948 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005948:	fc010113          	addi	sp,sp,-64
    8000594c:	02113c23          	sd	ra,56(sp)
    80005950:	02813823          	sd	s0,48(sp)
    80005954:	02913423          	sd	s1,40(sp)
    80005958:	03213023          	sd	s2,32(sp)
    8000595c:	01313c23          	sd	s3,24(sp)
    80005960:	04010413          	addi	s0,sp,64
    80005964:	00050493          	mv	s1,a0
    80005968:	00058913          	mv	s2,a1
    8000596c:	00060993          	mv	s3,a2
    LOCK();
    80005970:	00100613          	li	a2,1
    80005974:	00000593          	li	a1,0
    80005978:	00006517          	auipc	a0,0x6
    8000597c:	1e850513          	addi	a0,a0,488 # 8000bb60 <lockPrint>
    80005980:	ffffb097          	auipc	ra,0xffffb
    80005984:	7a4080e7          	jalr	1956(ra) # 80001124 <copy_and_swap>
    80005988:	00050863          	beqz	a0,80005998 <_Z8printIntiii+0x50>
    8000598c:	ffffc097          	auipc	ra,0xffffc
    80005990:	8ac080e7          	jalr	-1876(ra) # 80001238 <_Z15thread_dispatchv>
    80005994:	fddff06f          	j	80005970 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005998:	00098463          	beqz	s3,800059a0 <_Z8printIntiii+0x58>
    8000599c:	0804c463          	bltz	s1,80005a24 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800059a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800059a4:	00000593          	li	a1,0
    }

    i = 0;
    800059a8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800059ac:	0009079b          	sext.w	a5,s2
    800059b0:	0325773b          	remuw	a4,a0,s2
    800059b4:	00048613          	mv	a2,s1
    800059b8:	0014849b          	addiw	s1,s1,1
    800059bc:	02071693          	slli	a3,a4,0x20
    800059c0:	0206d693          	srli	a3,a3,0x20
    800059c4:	00006717          	auipc	a4,0x6
    800059c8:	01c70713          	addi	a4,a4,28 # 8000b9e0 <digits>
    800059cc:	00d70733          	add	a4,a4,a3
    800059d0:	00074683          	lbu	a3,0(a4)
    800059d4:	fd040713          	addi	a4,s0,-48
    800059d8:	00c70733          	add	a4,a4,a2
    800059dc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800059e0:	0005071b          	sext.w	a4,a0
    800059e4:	0325553b          	divuw	a0,a0,s2
    800059e8:	fcf772e3          	bgeu	a4,a5,800059ac <_Z8printIntiii+0x64>
    if(neg)
    800059ec:	00058c63          	beqz	a1,80005a04 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800059f0:	fd040793          	addi	a5,s0,-48
    800059f4:	009784b3          	add	s1,a5,s1
    800059f8:	02d00793          	li	a5,45
    800059fc:	fef48823          	sb	a5,-16(s1)
    80005a00:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005a04:	fff4849b          	addiw	s1,s1,-1
    80005a08:	0204c463          	bltz	s1,80005a30 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80005a0c:	fd040793          	addi	a5,s0,-48
    80005a10:	009787b3          	add	a5,a5,s1
    80005a14:	ff07c503          	lbu	a0,-16(a5)
    80005a18:	ffffc097          	auipc	ra,0xffffc
    80005a1c:	9a8080e7          	jalr	-1624(ra) # 800013c0 <_Z4putcc>
    80005a20:	fe5ff06f          	j	80005a04 <_Z8printIntiii+0xbc>
        x = -xx;
    80005a24:	4090053b          	negw	a0,s1
        neg = 1;
    80005a28:	00100593          	li	a1,1
        x = -xx;
    80005a2c:	f7dff06f          	j	800059a8 <_Z8printIntiii+0x60>

    UNLOCK();
    80005a30:	00000613          	li	a2,0
    80005a34:	00100593          	li	a1,1
    80005a38:	00006517          	auipc	a0,0x6
    80005a3c:	12850513          	addi	a0,a0,296 # 8000bb60 <lockPrint>
    80005a40:	ffffb097          	auipc	ra,0xffffb
    80005a44:	6e4080e7          	jalr	1764(ra) # 80001124 <copy_and_swap>
    80005a48:	fe0514e3          	bnez	a0,80005a30 <_Z8printIntiii+0xe8>
    80005a4c:	03813083          	ld	ra,56(sp)
    80005a50:	03013403          	ld	s0,48(sp)
    80005a54:	02813483          	ld	s1,40(sp)
    80005a58:	02013903          	ld	s2,32(sp)
    80005a5c:	01813983          	ld	s3,24(sp)
    80005a60:	04010113          	addi	sp,sp,64
    80005a64:	00008067          	ret

0000000080005a68 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005a68:	fd010113          	addi	sp,sp,-48
    80005a6c:	02113423          	sd	ra,40(sp)
    80005a70:	02813023          	sd	s0,32(sp)
    80005a74:	00913c23          	sd	s1,24(sp)
    80005a78:	01213823          	sd	s2,16(sp)
    80005a7c:	01313423          	sd	s3,8(sp)
    80005a80:	03010413          	addi	s0,sp,48
    80005a84:	00050493          	mv	s1,a0
    80005a88:	00058913          	mv	s2,a1
    80005a8c:	0015879b          	addiw	a5,a1,1
    80005a90:	0007851b          	sext.w	a0,a5
    80005a94:	00f4a023          	sw	a5,0(s1)
    80005a98:	0004a823          	sw	zero,16(s1)
    80005a9c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005aa0:	00251513          	slli	a0,a0,0x2
    80005aa4:	ffffb097          	auipc	ra,0xffffb
    80005aa8:	6a0080e7          	jalr	1696(ra) # 80001144 <_Z9mem_allocm>
    80005aac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005ab0:	01000513          	li	a0,16
    80005ab4:	ffffd097          	auipc	ra,0xffffd
    80005ab8:	bc0080e7          	jalr	-1088(ra) # 80002674 <_Znwm>
    80005abc:	00050993          	mv	s3,a0
    80005ac0:	00000593          	li	a1,0
    80005ac4:	ffffd097          	auipc	ra,0xffffd
    80005ac8:	de4080e7          	jalr	-540(ra) # 800028a8 <_ZN9SemaphoreC1Ej>
    80005acc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80005ad0:	01000513          	li	a0,16
    80005ad4:	ffffd097          	auipc	ra,0xffffd
    80005ad8:	ba0080e7          	jalr	-1120(ra) # 80002674 <_Znwm>
    80005adc:	00050993          	mv	s3,a0
    80005ae0:	00090593          	mv	a1,s2
    80005ae4:	ffffd097          	auipc	ra,0xffffd
    80005ae8:	dc4080e7          	jalr	-572(ra) # 800028a8 <_ZN9SemaphoreC1Ej>
    80005aec:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80005af0:	01000513          	li	a0,16
    80005af4:	ffffd097          	auipc	ra,0xffffd
    80005af8:	b80080e7          	jalr	-1152(ra) # 80002674 <_Znwm>
    80005afc:	00050913          	mv	s2,a0
    80005b00:	00100593          	li	a1,1
    80005b04:	ffffd097          	auipc	ra,0xffffd
    80005b08:	da4080e7          	jalr	-604(ra) # 800028a8 <_ZN9SemaphoreC1Ej>
    80005b0c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80005b10:	01000513          	li	a0,16
    80005b14:	ffffd097          	auipc	ra,0xffffd
    80005b18:	b60080e7          	jalr	-1184(ra) # 80002674 <_Znwm>
    80005b1c:	00050913          	mv	s2,a0
    80005b20:	00100593          	li	a1,1
    80005b24:	ffffd097          	auipc	ra,0xffffd
    80005b28:	d84080e7          	jalr	-636(ra) # 800028a8 <_ZN9SemaphoreC1Ej>
    80005b2c:	0324b823          	sd	s2,48(s1)
}
    80005b30:	02813083          	ld	ra,40(sp)
    80005b34:	02013403          	ld	s0,32(sp)
    80005b38:	01813483          	ld	s1,24(sp)
    80005b3c:	01013903          	ld	s2,16(sp)
    80005b40:	00813983          	ld	s3,8(sp)
    80005b44:	03010113          	addi	sp,sp,48
    80005b48:	00008067          	ret
    80005b4c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005b50:	00098513          	mv	a0,s3
    80005b54:	ffffd097          	auipc	ra,0xffffd
    80005b58:	b70080e7          	jalr	-1168(ra) # 800026c4 <_ZdlPv>
    80005b5c:	00048513          	mv	a0,s1
    80005b60:	00007097          	auipc	ra,0x7
    80005b64:	0d8080e7          	jalr	216(ra) # 8000cc38 <_Unwind_Resume>
    80005b68:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005b6c:	00098513          	mv	a0,s3
    80005b70:	ffffd097          	auipc	ra,0xffffd
    80005b74:	b54080e7          	jalr	-1196(ra) # 800026c4 <_ZdlPv>
    80005b78:	00048513          	mv	a0,s1
    80005b7c:	00007097          	auipc	ra,0x7
    80005b80:	0bc080e7          	jalr	188(ra) # 8000cc38 <_Unwind_Resume>
    80005b84:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005b88:	00090513          	mv	a0,s2
    80005b8c:	ffffd097          	auipc	ra,0xffffd
    80005b90:	b38080e7          	jalr	-1224(ra) # 800026c4 <_ZdlPv>
    80005b94:	00048513          	mv	a0,s1
    80005b98:	00007097          	auipc	ra,0x7
    80005b9c:	0a0080e7          	jalr	160(ra) # 8000cc38 <_Unwind_Resume>
    80005ba0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005ba4:	00090513          	mv	a0,s2
    80005ba8:	ffffd097          	auipc	ra,0xffffd
    80005bac:	b1c080e7          	jalr	-1252(ra) # 800026c4 <_ZdlPv>
    80005bb0:	00048513          	mv	a0,s1
    80005bb4:	00007097          	auipc	ra,0x7
    80005bb8:	084080e7          	jalr	132(ra) # 8000cc38 <_Unwind_Resume>

0000000080005bbc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005bbc:	fe010113          	addi	sp,sp,-32
    80005bc0:	00113c23          	sd	ra,24(sp)
    80005bc4:	00813823          	sd	s0,16(sp)
    80005bc8:	00913423          	sd	s1,8(sp)
    80005bcc:	01213023          	sd	s2,0(sp)
    80005bd0:	02010413          	addi	s0,sp,32
    80005bd4:	00050493          	mv	s1,a0
    80005bd8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005bdc:	01853503          	ld	a0,24(a0)
    80005be0:	ffffd097          	auipc	ra,0xffffd
    80005be4:	d00080e7          	jalr	-768(ra) # 800028e0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005be8:	0304b503          	ld	a0,48(s1)
    80005bec:	ffffd097          	auipc	ra,0xffffd
    80005bf0:	cf4080e7          	jalr	-780(ra) # 800028e0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005bf4:	0084b783          	ld	a5,8(s1)
    80005bf8:	0144a703          	lw	a4,20(s1)
    80005bfc:	00271713          	slli	a4,a4,0x2
    80005c00:	00e787b3          	add	a5,a5,a4
    80005c04:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c08:	0144a783          	lw	a5,20(s1)
    80005c0c:	0017879b          	addiw	a5,a5,1
    80005c10:	0004a703          	lw	a4,0(s1)
    80005c14:	02e7e7bb          	remw	a5,a5,a4
    80005c18:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005c1c:	0304b503          	ld	a0,48(s1)
    80005c20:	ffffd097          	auipc	ra,0xffffd
    80005c24:	cec080e7          	jalr	-788(ra) # 8000290c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005c28:	0204b503          	ld	a0,32(s1)
    80005c2c:	ffffd097          	auipc	ra,0xffffd
    80005c30:	ce0080e7          	jalr	-800(ra) # 8000290c <_ZN9Semaphore6signalEv>

}
    80005c34:	01813083          	ld	ra,24(sp)
    80005c38:	01013403          	ld	s0,16(sp)
    80005c3c:	00813483          	ld	s1,8(sp)
    80005c40:	00013903          	ld	s2,0(sp)
    80005c44:	02010113          	addi	sp,sp,32
    80005c48:	00008067          	ret

0000000080005c4c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005c4c:	fe010113          	addi	sp,sp,-32
    80005c50:	00113c23          	sd	ra,24(sp)
    80005c54:	00813823          	sd	s0,16(sp)
    80005c58:	00913423          	sd	s1,8(sp)
    80005c5c:	01213023          	sd	s2,0(sp)
    80005c60:	02010413          	addi	s0,sp,32
    80005c64:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005c68:	02053503          	ld	a0,32(a0)
    80005c6c:	ffffd097          	auipc	ra,0xffffd
    80005c70:	c74080e7          	jalr	-908(ra) # 800028e0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005c74:	0284b503          	ld	a0,40(s1)
    80005c78:	ffffd097          	auipc	ra,0xffffd
    80005c7c:	c68080e7          	jalr	-920(ra) # 800028e0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005c80:	0084b703          	ld	a4,8(s1)
    80005c84:	0104a783          	lw	a5,16(s1)
    80005c88:	00279693          	slli	a3,a5,0x2
    80005c8c:	00d70733          	add	a4,a4,a3
    80005c90:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c94:	0017879b          	addiw	a5,a5,1
    80005c98:	0004a703          	lw	a4,0(s1)
    80005c9c:	02e7e7bb          	remw	a5,a5,a4
    80005ca0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005ca4:	0284b503          	ld	a0,40(s1)
    80005ca8:	ffffd097          	auipc	ra,0xffffd
    80005cac:	c64080e7          	jalr	-924(ra) # 8000290c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005cb0:	0184b503          	ld	a0,24(s1)
    80005cb4:	ffffd097          	auipc	ra,0xffffd
    80005cb8:	c58080e7          	jalr	-936(ra) # 8000290c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005cbc:	00090513          	mv	a0,s2
    80005cc0:	01813083          	ld	ra,24(sp)
    80005cc4:	01013403          	ld	s0,16(sp)
    80005cc8:	00813483          	ld	s1,8(sp)
    80005ccc:	00013903          	ld	s2,0(sp)
    80005cd0:	02010113          	addi	sp,sp,32
    80005cd4:	00008067          	ret

0000000080005cd8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005cd8:	fe010113          	addi	sp,sp,-32
    80005cdc:	00113c23          	sd	ra,24(sp)
    80005ce0:	00813823          	sd	s0,16(sp)
    80005ce4:	00913423          	sd	s1,8(sp)
    80005ce8:	01213023          	sd	s2,0(sp)
    80005cec:	02010413          	addi	s0,sp,32
    80005cf0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005cf4:	02853503          	ld	a0,40(a0)
    80005cf8:	ffffd097          	auipc	ra,0xffffd
    80005cfc:	be8080e7          	jalr	-1048(ra) # 800028e0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80005d00:	0304b503          	ld	a0,48(s1)
    80005d04:	ffffd097          	auipc	ra,0xffffd
    80005d08:	bdc080e7          	jalr	-1060(ra) # 800028e0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005d0c:	0144a783          	lw	a5,20(s1)
    80005d10:	0104a903          	lw	s2,16(s1)
    80005d14:	0327ce63          	blt	a5,s2,80005d50 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005d18:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005d1c:	0304b503          	ld	a0,48(s1)
    80005d20:	ffffd097          	auipc	ra,0xffffd
    80005d24:	bec080e7          	jalr	-1044(ra) # 8000290c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005d28:	0284b503          	ld	a0,40(s1)
    80005d2c:	ffffd097          	auipc	ra,0xffffd
    80005d30:	be0080e7          	jalr	-1056(ra) # 8000290c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005d34:	00090513          	mv	a0,s2
    80005d38:	01813083          	ld	ra,24(sp)
    80005d3c:	01013403          	ld	s0,16(sp)
    80005d40:	00813483          	ld	s1,8(sp)
    80005d44:	00013903          	ld	s2,0(sp)
    80005d48:	02010113          	addi	sp,sp,32
    80005d4c:	00008067          	ret
        ret = cap - head + tail;
    80005d50:	0004a703          	lw	a4,0(s1)
    80005d54:	4127093b          	subw	s2,a4,s2
    80005d58:	00f9093b          	addw	s2,s2,a5
    80005d5c:	fc1ff06f          	j	80005d1c <_ZN9BufferCPP6getCntEv+0x44>

0000000080005d60 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005d60:	fe010113          	addi	sp,sp,-32
    80005d64:	00113c23          	sd	ra,24(sp)
    80005d68:	00813823          	sd	s0,16(sp)
    80005d6c:	00913423          	sd	s1,8(sp)
    80005d70:	02010413          	addi	s0,sp,32
    80005d74:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005d78:	00a00513          	li	a0,10
    80005d7c:	ffffd097          	auipc	ra,0xffffd
    80005d80:	cfc080e7          	jalr	-772(ra) # 80002a78 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005d84:	00003517          	auipc	a0,0x3
    80005d88:	60c50513          	addi	a0,a0,1548 # 80009390 <CONSOLE_STATUS+0x380>
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	a0c080e7          	jalr	-1524(ra) # 80005798 <_Z11printStringPKc>
    while (getCnt()) {
    80005d94:	00048513          	mv	a0,s1
    80005d98:	00000097          	auipc	ra,0x0
    80005d9c:	f40080e7          	jalr	-192(ra) # 80005cd8 <_ZN9BufferCPP6getCntEv>
    80005da0:	02050c63          	beqz	a0,80005dd8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005da4:	0084b783          	ld	a5,8(s1)
    80005da8:	0104a703          	lw	a4,16(s1)
    80005dac:	00271713          	slli	a4,a4,0x2
    80005db0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005db4:	0007c503          	lbu	a0,0(a5)
    80005db8:	ffffd097          	auipc	ra,0xffffd
    80005dbc:	cc0080e7          	jalr	-832(ra) # 80002a78 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005dc0:	0104a783          	lw	a5,16(s1)
    80005dc4:	0017879b          	addiw	a5,a5,1
    80005dc8:	0004a703          	lw	a4,0(s1)
    80005dcc:	02e7e7bb          	remw	a5,a5,a4
    80005dd0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005dd4:	fc1ff06f          	j	80005d94 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005dd8:	02100513          	li	a0,33
    80005ddc:	ffffd097          	auipc	ra,0xffffd
    80005de0:	c9c080e7          	jalr	-868(ra) # 80002a78 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005de4:	00a00513          	li	a0,10
    80005de8:	ffffd097          	auipc	ra,0xffffd
    80005dec:	c90080e7          	jalr	-880(ra) # 80002a78 <_ZN7Console4putcEc>
    mem_free(buffer);
    80005df0:	0084b503          	ld	a0,8(s1)
    80005df4:	ffffb097          	auipc	ra,0xffffb
    80005df8:	380080e7          	jalr	896(ra) # 80001174 <_Z8mem_freePv>
    delete itemAvailable;
    80005dfc:	0204b503          	ld	a0,32(s1)
    80005e00:	00050863          	beqz	a0,80005e10 <_ZN9BufferCPPD1Ev+0xb0>
    80005e04:	00053783          	ld	a5,0(a0)
    80005e08:	0087b783          	ld	a5,8(a5)
    80005e0c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80005e10:	0184b503          	ld	a0,24(s1)
    80005e14:	00050863          	beqz	a0,80005e24 <_ZN9BufferCPPD1Ev+0xc4>
    80005e18:	00053783          	ld	a5,0(a0)
    80005e1c:	0087b783          	ld	a5,8(a5)
    80005e20:	000780e7          	jalr	a5
    delete mutexTail;
    80005e24:	0304b503          	ld	a0,48(s1)
    80005e28:	00050863          	beqz	a0,80005e38 <_ZN9BufferCPPD1Ev+0xd8>
    80005e2c:	00053783          	ld	a5,0(a0)
    80005e30:	0087b783          	ld	a5,8(a5)
    80005e34:	000780e7          	jalr	a5
    delete mutexHead;
    80005e38:	0284b503          	ld	a0,40(s1)
    80005e3c:	00050863          	beqz	a0,80005e4c <_ZN9BufferCPPD1Ev+0xec>
    80005e40:	00053783          	ld	a5,0(a0)
    80005e44:	0087b783          	ld	a5,8(a5)
    80005e48:	000780e7          	jalr	a5
}
    80005e4c:	01813083          	ld	ra,24(sp)
    80005e50:	01013403          	ld	s0,16(sp)
    80005e54:	00813483          	ld	s1,8(sp)
    80005e58:	02010113          	addi	sp,sp,32
    80005e5c:	00008067          	ret

0000000080005e60 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005e60:	fe010113          	addi	sp,sp,-32
    80005e64:	00113c23          	sd	ra,24(sp)
    80005e68:	00813823          	sd	s0,16(sp)
    80005e6c:	00913423          	sd	s1,8(sp)
    80005e70:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80005e74:	00003517          	auipc	a0,0x3
    80005e78:	53450513          	addi	a0,a0,1332 # 800093a8 <CONSOLE_STATUS+0x398>
    80005e7c:	00000097          	auipc	ra,0x0
    80005e80:	91c080e7          	jalr	-1764(ra) # 80005798 <_Z11printStringPKc>
    int test = getc() - '0';
    80005e84:	ffffb097          	auipc	ra,0xffffb
    80005e88:	514080e7          	jalr	1300(ra) # 80001398 <_Z4getcv>
    80005e8c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005e90:	ffffb097          	auipc	ra,0xffffb
    80005e94:	508080e7          	jalr	1288(ra) # 80001398 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005e98:	00700793          	li	a5,7
    80005e9c:	1097e263          	bltu	a5,s1,80005fa0 <_Z8userMainv+0x140>
    80005ea0:	00249493          	slli	s1,s1,0x2
    80005ea4:	00003717          	auipc	a4,0x3
    80005ea8:	75c70713          	addi	a4,a4,1884 # 80009600 <CONSOLE_STATUS+0x5f0>
    80005eac:	00e484b3          	add	s1,s1,a4
    80005eb0:	0004a783          	lw	a5,0(s1)
    80005eb4:	00e787b3          	add	a5,a5,a4
    80005eb8:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005ebc:	fffff097          	auipc	ra,0xfffff
    80005ec0:	f54080e7          	jalr	-172(ra) # 80004e10 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80005ec4:	00003517          	auipc	a0,0x3
    80005ec8:	50450513          	addi	a0,a0,1284 # 800093c8 <CONSOLE_STATUS+0x3b8>
    80005ecc:	00000097          	auipc	ra,0x0
    80005ed0:	8cc080e7          	jalr	-1844(ra) # 80005798 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80005ed4:	01813083          	ld	ra,24(sp)
    80005ed8:	01013403          	ld	s0,16(sp)
    80005edc:	00813483          	ld	s1,8(sp)
    80005ee0:	02010113          	addi	sp,sp,32
    80005ee4:	00008067          	ret
            Threads_CPP_API_test();
    80005ee8:	ffffe097          	auipc	ra,0xffffe
    80005eec:	e08080e7          	jalr	-504(ra) # 80003cf0 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005ef0:	00003517          	auipc	a0,0x3
    80005ef4:	51850513          	addi	a0,a0,1304 # 80009408 <CONSOLE_STATUS+0x3f8>
    80005ef8:	00000097          	auipc	ra,0x0
    80005efc:	8a0080e7          	jalr	-1888(ra) # 80005798 <_Z11printStringPKc>
            break;
    80005f00:	fd5ff06f          	j	80005ed4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80005f04:	ffffd097          	auipc	ra,0xffffd
    80005f08:	640080e7          	jalr	1600(ra) # 80003544 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80005f0c:	00003517          	auipc	a0,0x3
    80005f10:	53c50513          	addi	a0,a0,1340 # 80009448 <CONSOLE_STATUS+0x438>
    80005f14:	00000097          	auipc	ra,0x0
    80005f18:	884080e7          	jalr	-1916(ra) # 80005798 <_Z11printStringPKc>
            break;
    80005f1c:	fb9ff06f          	j	80005ed4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80005f20:	fffff097          	auipc	ra,0xfffff
    80005f24:	234080e7          	jalr	564(ra) # 80005154 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005f28:	00003517          	auipc	a0,0x3
    80005f2c:	57050513          	addi	a0,a0,1392 # 80009498 <CONSOLE_STATUS+0x488>
    80005f30:	00000097          	auipc	ra,0x0
    80005f34:	868080e7          	jalr	-1944(ra) # 80005798 <_Z11printStringPKc>
            break;
    80005f38:	f9dff06f          	j	80005ed4 <_Z8userMainv+0x74>
            testSleeping();
    80005f3c:	00000097          	auipc	ra,0x0
    80005f40:	11c080e7          	jalr	284(ra) # 80006058 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005f44:	00003517          	auipc	a0,0x3
    80005f48:	5ac50513          	addi	a0,a0,1452 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005f4c:	00000097          	auipc	ra,0x0
    80005f50:	84c080e7          	jalr	-1972(ra) # 80005798 <_Z11printStringPKc>
            break;
    80005f54:	f81ff06f          	j	80005ed4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80005f58:	ffffe097          	auipc	ra,0xffffe
    80005f5c:	258080e7          	jalr	600(ra) # 800041b0 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005f60:	00003517          	auipc	a0,0x3
    80005f64:	5c050513          	addi	a0,a0,1472 # 80009520 <CONSOLE_STATUS+0x510>
    80005f68:	00000097          	auipc	ra,0x0
    80005f6c:	830080e7          	jalr	-2000(ra) # 80005798 <_Z11printStringPKc>
            break;
    80005f70:	f65ff06f          	j	80005ed4 <_Z8userMainv+0x74>
            System_Mode_test();
    80005f74:	00000097          	auipc	ra,0x0
    80005f78:	658080e7          	jalr	1624(ra) # 800065cc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005f7c:	00003517          	auipc	a0,0x3
    80005f80:	5e450513          	addi	a0,a0,1508 # 80009560 <CONSOLE_STATUS+0x550>
    80005f84:	00000097          	auipc	ra,0x0
    80005f88:	814080e7          	jalr	-2028(ra) # 80005798 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005f8c:	00003517          	auipc	a0,0x3
    80005f90:	5f450513          	addi	a0,a0,1524 # 80009580 <CONSOLE_STATUS+0x570>
    80005f94:	00000097          	auipc	ra,0x0
    80005f98:	804080e7          	jalr	-2044(ra) # 80005798 <_Z11printStringPKc>
            break;
    80005f9c:	f39ff06f          	j	80005ed4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005fa0:	00003517          	auipc	a0,0x3
    80005fa4:	63850513          	addi	a0,a0,1592 # 800095d8 <CONSOLE_STATUS+0x5c8>
    80005fa8:	fffff097          	auipc	ra,0xfffff
    80005fac:	7f0080e7          	jalr	2032(ra) # 80005798 <_Z11printStringPKc>
    80005fb0:	f25ff06f          	j	80005ed4 <_Z8userMainv+0x74>

0000000080005fb4 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005fb4:	fe010113          	addi	sp,sp,-32
    80005fb8:	00113c23          	sd	ra,24(sp)
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	01213023          	sd	s2,0(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005fcc:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005fd0:	00600493          	li	s1,6
    while (--i > 0) {
    80005fd4:	fff4849b          	addiw	s1,s1,-1
    80005fd8:	04905463          	blez	s1,80006020 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005fdc:	00003517          	auipc	a0,0x3
    80005fe0:	64450513          	addi	a0,a0,1604 # 80009620 <CONSOLE_STATUS+0x610>
    80005fe4:	fffff097          	auipc	ra,0xfffff
    80005fe8:	7b4080e7          	jalr	1972(ra) # 80005798 <_Z11printStringPKc>
        printInt(sleep_time);
    80005fec:	00000613          	li	a2,0
    80005ff0:	00a00593          	li	a1,10
    80005ff4:	0009051b          	sext.w	a0,s2
    80005ff8:	00000097          	auipc	ra,0x0
    80005ffc:	950080e7          	jalr	-1712(ra) # 80005948 <_Z8printIntiii>
        printString(" !\n");
    80006000:	00003517          	auipc	a0,0x3
    80006004:	62850513          	addi	a0,a0,1576 # 80009628 <CONSOLE_STATUS+0x618>
    80006008:	fffff097          	auipc	ra,0xfffff
    8000600c:	790080e7          	jalr	1936(ra) # 80005798 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006010:	00090513          	mv	a0,s2
    80006014:	ffffb097          	auipc	ra,0xffffb
    80006018:	358080e7          	jalr	856(ra) # 8000136c <_Z10time_sleepm>
    while (--i > 0) {
    8000601c:	fb9ff06f          	j	80005fd4 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006020:	00a00793          	li	a5,10
    80006024:	02f95933          	divu	s2,s2,a5
    80006028:	fff90913          	addi	s2,s2,-1
    8000602c:	00006797          	auipc	a5,0x6
    80006030:	b3c78793          	addi	a5,a5,-1220 # 8000bb68 <_ZL8finished>
    80006034:	01278933          	add	s2,a5,s2
    80006038:	00100793          	li	a5,1
    8000603c:	00f90023          	sb	a5,0(s2)
}
    80006040:	01813083          	ld	ra,24(sp)
    80006044:	01013403          	ld	s0,16(sp)
    80006048:	00813483          	ld	s1,8(sp)
    8000604c:	00013903          	ld	s2,0(sp)
    80006050:	02010113          	addi	sp,sp,32
    80006054:	00008067          	ret

0000000080006058 <_Z12testSleepingv>:

void testSleeping() {
    80006058:	fc010113          	addi	sp,sp,-64
    8000605c:	02113c23          	sd	ra,56(sp)
    80006060:	02813823          	sd	s0,48(sp)
    80006064:	02913423          	sd	s1,40(sp)
    80006068:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    8000606c:	00a00793          	li	a5,10
    80006070:	fcf43823          	sd	a5,-48(s0)
    80006074:	01400793          	li	a5,20
    80006078:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    8000607c:	00000493          	li	s1,0
    80006080:	02c0006f          	j	800060ac <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006084:	00349793          	slli	a5,s1,0x3
    80006088:	fd040613          	addi	a2,s0,-48
    8000608c:	00f60633          	add	a2,a2,a5
    80006090:	00000597          	auipc	a1,0x0
    80006094:	f2458593          	addi	a1,a1,-220 # 80005fb4 <_ZL9sleepyRunPv>
    80006098:	fc040513          	addi	a0,s0,-64
    8000609c:	00f50533          	add	a0,a0,a5
    800060a0:	ffffb097          	auipc	ra,0xffffb
    800060a4:	100080e7          	jalr	256(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    800060a8:	0014849b          	addiw	s1,s1,1
    800060ac:	00100793          	li	a5,1
    800060b0:	fc97dae3          	bge	a5,s1,80006084 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    800060b4:	00006797          	auipc	a5,0x6
    800060b8:	ab47c783          	lbu	a5,-1356(a5) # 8000bb68 <_ZL8finished>
    800060bc:	fe078ce3          	beqz	a5,800060b4 <_Z12testSleepingv+0x5c>
    800060c0:	00006797          	auipc	a5,0x6
    800060c4:	aa97c783          	lbu	a5,-1367(a5) # 8000bb69 <_ZL8finished+0x1>
    800060c8:	fe0786e3          	beqz	a5,800060b4 <_Z12testSleepingv+0x5c>
}
    800060cc:	03813083          	ld	ra,56(sp)
    800060d0:	03013403          	ld	s0,48(sp)
    800060d4:	02813483          	ld	s1,40(sp)
    800060d8:	04010113          	addi	sp,sp,64
    800060dc:	00008067          	ret

00000000800060e0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800060e0:	fe010113          	addi	sp,sp,-32
    800060e4:	00113c23          	sd	ra,24(sp)
    800060e8:	00813823          	sd	s0,16(sp)
    800060ec:	00913423          	sd	s1,8(sp)
    800060f0:	01213023          	sd	s2,0(sp)
    800060f4:	02010413          	addi	s0,sp,32
    800060f8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800060fc:	00100793          	li	a5,1
    80006100:	02a7f863          	bgeu	a5,a0,80006130 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006104:	00a00793          	li	a5,10
    80006108:	02f577b3          	remu	a5,a0,a5
    8000610c:	02078e63          	beqz	a5,80006148 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006110:	fff48513          	addi	a0,s1,-1
    80006114:	00000097          	auipc	ra,0x0
    80006118:	fcc080e7          	jalr	-52(ra) # 800060e0 <_ZL9fibonaccim>
    8000611c:	00050913          	mv	s2,a0
    80006120:	ffe48513          	addi	a0,s1,-2
    80006124:	00000097          	auipc	ra,0x0
    80006128:	fbc080e7          	jalr	-68(ra) # 800060e0 <_ZL9fibonaccim>
    8000612c:	00a90533          	add	a0,s2,a0
}
    80006130:	01813083          	ld	ra,24(sp)
    80006134:	01013403          	ld	s0,16(sp)
    80006138:	00813483          	ld	s1,8(sp)
    8000613c:	00013903          	ld	s2,0(sp)
    80006140:	02010113          	addi	sp,sp,32
    80006144:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006148:	ffffb097          	auipc	ra,0xffffb
    8000614c:	0f0080e7          	jalr	240(ra) # 80001238 <_Z15thread_dispatchv>
    80006150:	fc1ff06f          	j	80006110 <_ZL9fibonaccim+0x30>

0000000080006154 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006154:	fe010113          	addi	sp,sp,-32
    80006158:	00113c23          	sd	ra,24(sp)
    8000615c:	00813823          	sd	s0,16(sp)
    80006160:	00913423          	sd	s1,8(sp)
    80006164:	01213023          	sd	s2,0(sp)
    80006168:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000616c:	00a00493          	li	s1,10
    80006170:	0400006f          	j	800061b0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006174:	00003517          	auipc	a0,0x3
    80006178:	18450513          	addi	a0,a0,388 # 800092f8 <CONSOLE_STATUS+0x2e8>
    8000617c:	fffff097          	auipc	ra,0xfffff
    80006180:	61c080e7          	jalr	1564(ra) # 80005798 <_Z11printStringPKc>
    80006184:	00000613          	li	a2,0
    80006188:	00a00593          	li	a1,10
    8000618c:	00048513          	mv	a0,s1
    80006190:	fffff097          	auipc	ra,0xfffff
    80006194:	7b8080e7          	jalr	1976(ra) # 80005948 <_Z8printIntiii>
    80006198:	00003517          	auipc	a0,0x3
    8000619c:	35050513          	addi	a0,a0,848 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800061a0:	fffff097          	auipc	ra,0xfffff
    800061a4:	5f8080e7          	jalr	1528(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800061a8:	0014849b          	addiw	s1,s1,1
    800061ac:	0ff4f493          	andi	s1,s1,255
    800061b0:	00c00793          	li	a5,12
    800061b4:	fc97f0e3          	bgeu	a5,s1,80006174 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800061b8:	00003517          	auipc	a0,0x3
    800061bc:	14850513          	addi	a0,a0,328 # 80009300 <CONSOLE_STATUS+0x2f0>
    800061c0:	fffff097          	auipc	ra,0xfffff
    800061c4:	5d8080e7          	jalr	1496(ra) # 80005798 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800061c8:	00500313          	li	t1,5
    thread_dispatch();
    800061cc:	ffffb097          	auipc	ra,0xffffb
    800061d0:	06c080e7          	jalr	108(ra) # 80001238 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800061d4:	01000513          	li	a0,16
    800061d8:	00000097          	auipc	ra,0x0
    800061dc:	f08080e7          	jalr	-248(ra) # 800060e0 <_ZL9fibonaccim>
    800061e0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800061e4:	00003517          	auipc	a0,0x3
    800061e8:	12c50513          	addi	a0,a0,300 # 80009310 <CONSOLE_STATUS+0x300>
    800061ec:	fffff097          	auipc	ra,0xfffff
    800061f0:	5ac080e7          	jalr	1452(ra) # 80005798 <_Z11printStringPKc>
    800061f4:	00000613          	li	a2,0
    800061f8:	00a00593          	li	a1,10
    800061fc:	0009051b          	sext.w	a0,s2
    80006200:	fffff097          	auipc	ra,0xfffff
    80006204:	748080e7          	jalr	1864(ra) # 80005948 <_Z8printIntiii>
    80006208:	00003517          	auipc	a0,0x3
    8000620c:	2e050513          	addi	a0,a0,736 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006210:	fffff097          	auipc	ra,0xfffff
    80006214:	588080e7          	jalr	1416(ra) # 80005798 <_Z11printStringPKc>
    80006218:	0400006f          	j	80006258 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000621c:	00003517          	auipc	a0,0x3
    80006220:	0dc50513          	addi	a0,a0,220 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006224:	fffff097          	auipc	ra,0xfffff
    80006228:	574080e7          	jalr	1396(ra) # 80005798 <_Z11printStringPKc>
    8000622c:	00000613          	li	a2,0
    80006230:	00a00593          	li	a1,10
    80006234:	00048513          	mv	a0,s1
    80006238:	fffff097          	auipc	ra,0xfffff
    8000623c:	710080e7          	jalr	1808(ra) # 80005948 <_Z8printIntiii>
    80006240:	00003517          	auipc	a0,0x3
    80006244:	2a850513          	addi	a0,a0,680 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006248:	fffff097          	auipc	ra,0xfffff
    8000624c:	550080e7          	jalr	1360(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006250:	0014849b          	addiw	s1,s1,1
    80006254:	0ff4f493          	andi	s1,s1,255
    80006258:	00f00793          	li	a5,15
    8000625c:	fc97f0e3          	bgeu	a5,s1,8000621c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006260:	00003517          	auipc	a0,0x3
    80006264:	0c050513          	addi	a0,a0,192 # 80009320 <CONSOLE_STATUS+0x310>
    80006268:	fffff097          	auipc	ra,0xfffff
    8000626c:	530080e7          	jalr	1328(ra) # 80005798 <_Z11printStringPKc>
    finishedD = true;
    80006270:	00100793          	li	a5,1
    80006274:	00006717          	auipc	a4,0x6
    80006278:	8ef70b23          	sb	a5,-1802(a4) # 8000bb6a <_ZL9finishedD>
    thread_dispatch();
    8000627c:	ffffb097          	auipc	ra,0xffffb
    80006280:	fbc080e7          	jalr	-68(ra) # 80001238 <_Z15thread_dispatchv>
}
    80006284:	01813083          	ld	ra,24(sp)
    80006288:	01013403          	ld	s0,16(sp)
    8000628c:	00813483          	ld	s1,8(sp)
    80006290:	00013903          	ld	s2,0(sp)
    80006294:	02010113          	addi	sp,sp,32
    80006298:	00008067          	ret

000000008000629c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000629c:	fe010113          	addi	sp,sp,-32
    800062a0:	00113c23          	sd	ra,24(sp)
    800062a4:	00813823          	sd	s0,16(sp)
    800062a8:	00913423          	sd	s1,8(sp)
    800062ac:	01213023          	sd	s2,0(sp)
    800062b0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800062b4:	00000493          	li	s1,0
    800062b8:	0400006f          	j	800062f8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800062bc:	00003517          	auipc	a0,0x3
    800062c0:	00c50513          	addi	a0,a0,12 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800062c4:	fffff097          	auipc	ra,0xfffff
    800062c8:	4d4080e7          	jalr	1236(ra) # 80005798 <_Z11printStringPKc>
    800062cc:	00000613          	li	a2,0
    800062d0:	00a00593          	li	a1,10
    800062d4:	00048513          	mv	a0,s1
    800062d8:	fffff097          	auipc	ra,0xfffff
    800062dc:	670080e7          	jalr	1648(ra) # 80005948 <_Z8printIntiii>
    800062e0:	00003517          	auipc	a0,0x3
    800062e4:	20850513          	addi	a0,a0,520 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800062e8:	fffff097          	auipc	ra,0xfffff
    800062ec:	4b0080e7          	jalr	1200(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800062f0:	0014849b          	addiw	s1,s1,1
    800062f4:	0ff4f493          	andi	s1,s1,255
    800062f8:	00200793          	li	a5,2
    800062fc:	fc97f0e3          	bgeu	a5,s1,800062bc <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006300:	00003517          	auipc	a0,0x3
    80006304:	fd050513          	addi	a0,a0,-48 # 800092d0 <CONSOLE_STATUS+0x2c0>
    80006308:	fffff097          	auipc	ra,0xfffff
    8000630c:	490080e7          	jalr	1168(ra) # 80005798 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006310:	00700313          	li	t1,7
    thread_dispatch();
    80006314:	ffffb097          	auipc	ra,0xffffb
    80006318:	f24080e7          	jalr	-220(ra) # 80001238 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000631c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006320:	00003517          	auipc	a0,0x3
    80006324:	fc050513          	addi	a0,a0,-64 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80006328:	fffff097          	auipc	ra,0xfffff
    8000632c:	470080e7          	jalr	1136(ra) # 80005798 <_Z11printStringPKc>
    80006330:	00000613          	li	a2,0
    80006334:	00a00593          	li	a1,10
    80006338:	0009051b          	sext.w	a0,s2
    8000633c:	fffff097          	auipc	ra,0xfffff
    80006340:	60c080e7          	jalr	1548(ra) # 80005948 <_Z8printIntiii>
    80006344:	00003517          	auipc	a0,0x3
    80006348:	1a450513          	addi	a0,a0,420 # 800094e8 <CONSOLE_STATUS+0x4d8>
    8000634c:	fffff097          	auipc	ra,0xfffff
    80006350:	44c080e7          	jalr	1100(ra) # 80005798 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006354:	00c00513          	li	a0,12
    80006358:	00000097          	auipc	ra,0x0
    8000635c:	d88080e7          	jalr	-632(ra) # 800060e0 <_ZL9fibonaccim>
    80006360:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006364:	00003517          	auipc	a0,0x3
    80006368:	f8450513          	addi	a0,a0,-124 # 800092e8 <CONSOLE_STATUS+0x2d8>
    8000636c:	fffff097          	auipc	ra,0xfffff
    80006370:	42c080e7          	jalr	1068(ra) # 80005798 <_Z11printStringPKc>
    80006374:	00000613          	li	a2,0
    80006378:	00a00593          	li	a1,10
    8000637c:	0009051b          	sext.w	a0,s2
    80006380:	fffff097          	auipc	ra,0xfffff
    80006384:	5c8080e7          	jalr	1480(ra) # 80005948 <_Z8printIntiii>
    80006388:	00003517          	auipc	a0,0x3
    8000638c:	16050513          	addi	a0,a0,352 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006390:	fffff097          	auipc	ra,0xfffff
    80006394:	408080e7          	jalr	1032(ra) # 80005798 <_Z11printStringPKc>
    80006398:	0400006f          	j	800063d8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000639c:	00003517          	auipc	a0,0x3
    800063a0:	f2c50513          	addi	a0,a0,-212 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800063a4:	fffff097          	auipc	ra,0xfffff
    800063a8:	3f4080e7          	jalr	1012(ra) # 80005798 <_Z11printStringPKc>
    800063ac:	00000613          	li	a2,0
    800063b0:	00a00593          	li	a1,10
    800063b4:	00048513          	mv	a0,s1
    800063b8:	fffff097          	auipc	ra,0xfffff
    800063bc:	590080e7          	jalr	1424(ra) # 80005948 <_Z8printIntiii>
    800063c0:	00003517          	auipc	a0,0x3
    800063c4:	12850513          	addi	a0,a0,296 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800063c8:	fffff097          	auipc	ra,0xfffff
    800063cc:	3d0080e7          	jalr	976(ra) # 80005798 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800063d0:	0014849b          	addiw	s1,s1,1
    800063d4:	0ff4f493          	andi	s1,s1,255
    800063d8:	00500793          	li	a5,5
    800063dc:	fc97f0e3          	bgeu	a5,s1,8000639c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    800063e0:	00003517          	auipc	a0,0x3
    800063e4:	ec050513          	addi	a0,a0,-320 # 800092a0 <CONSOLE_STATUS+0x290>
    800063e8:	fffff097          	auipc	ra,0xfffff
    800063ec:	3b0080e7          	jalr	944(ra) # 80005798 <_Z11printStringPKc>
    finishedC = true;
    800063f0:	00100793          	li	a5,1
    800063f4:	00005717          	auipc	a4,0x5
    800063f8:	76f70ba3          	sb	a5,1911(a4) # 8000bb6b <_ZL9finishedC>
    thread_dispatch();
    800063fc:	ffffb097          	auipc	ra,0xffffb
    80006400:	e3c080e7          	jalr	-452(ra) # 80001238 <_Z15thread_dispatchv>
}
    80006404:	01813083          	ld	ra,24(sp)
    80006408:	01013403          	ld	s0,16(sp)
    8000640c:	00813483          	ld	s1,8(sp)
    80006410:	00013903          	ld	s2,0(sp)
    80006414:	02010113          	addi	sp,sp,32
    80006418:	00008067          	ret

000000008000641c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000641c:	fe010113          	addi	sp,sp,-32
    80006420:	00113c23          	sd	ra,24(sp)
    80006424:	00813823          	sd	s0,16(sp)
    80006428:	00913423          	sd	s1,8(sp)
    8000642c:	01213023          	sd	s2,0(sp)
    80006430:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006434:	00000913          	li	s2,0
    80006438:	0400006f          	j	80006478 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    8000643c:	ffffb097          	auipc	ra,0xffffb
    80006440:	dfc080e7          	jalr	-516(ra) # 80001238 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006444:	00148493          	addi	s1,s1,1
    80006448:	000027b7          	lui	a5,0x2
    8000644c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006450:	0097ee63          	bltu	a5,s1,8000646c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006454:	00000713          	li	a4,0
    80006458:	000077b7          	lui	a5,0x7
    8000645c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006460:	fce7eee3          	bltu	a5,a4,8000643c <_ZL11workerBodyBPv+0x20>
    80006464:	00170713          	addi	a4,a4,1
    80006468:	ff1ff06f          	j	80006458 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    8000646c:	00a00793          	li	a5,10
    80006470:	04f90663          	beq	s2,a5,800064bc <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006474:	00190913          	addi	s2,s2,1
    80006478:	00f00793          	li	a5,15
    8000647c:	0527e463          	bltu	a5,s2,800064c4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006480:	00003517          	auipc	a0,0x3
    80006484:	e3050513          	addi	a0,a0,-464 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80006488:	fffff097          	auipc	ra,0xfffff
    8000648c:	310080e7          	jalr	784(ra) # 80005798 <_Z11printStringPKc>
    80006490:	00000613          	li	a2,0
    80006494:	00a00593          	li	a1,10
    80006498:	0009051b          	sext.w	a0,s2
    8000649c:	fffff097          	auipc	ra,0xfffff
    800064a0:	4ac080e7          	jalr	1196(ra) # 80005948 <_Z8printIntiii>
    800064a4:	00003517          	auipc	a0,0x3
    800064a8:	04450513          	addi	a0,a0,68 # 800094e8 <CONSOLE_STATUS+0x4d8>
    800064ac:	fffff097          	auipc	ra,0xfffff
    800064b0:	2ec080e7          	jalr	748(ra) # 80005798 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800064b4:	00000493          	li	s1,0
    800064b8:	f91ff06f          	j	80006448 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    800064bc:	14102ff3          	csrr	t6,sepc
    800064c0:	fb5ff06f          	j	80006474 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    800064c4:	00003517          	auipc	a0,0x3
    800064c8:	df450513          	addi	a0,a0,-524 # 800092b8 <CONSOLE_STATUS+0x2a8>
    800064cc:	fffff097          	auipc	ra,0xfffff
    800064d0:	2cc080e7          	jalr	716(ra) # 80005798 <_Z11printStringPKc>
    finishedB = true;
    800064d4:	00100793          	li	a5,1
    800064d8:	00005717          	auipc	a4,0x5
    800064dc:	68f70a23          	sb	a5,1684(a4) # 8000bb6c <_ZL9finishedB>
    thread_dispatch();
    800064e0:	ffffb097          	auipc	ra,0xffffb
    800064e4:	d58080e7          	jalr	-680(ra) # 80001238 <_Z15thread_dispatchv>
}
    800064e8:	01813083          	ld	ra,24(sp)
    800064ec:	01013403          	ld	s0,16(sp)
    800064f0:	00813483          	ld	s1,8(sp)
    800064f4:	00013903          	ld	s2,0(sp)
    800064f8:	02010113          	addi	sp,sp,32
    800064fc:	00008067          	ret

0000000080006500 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006500:	fe010113          	addi	sp,sp,-32
    80006504:	00113c23          	sd	ra,24(sp)
    80006508:	00813823          	sd	s0,16(sp)
    8000650c:	00913423          	sd	s1,8(sp)
    80006510:	01213023          	sd	s2,0(sp)
    80006514:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006518:	00000913          	li	s2,0
    8000651c:	0380006f          	j	80006554 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006520:	ffffb097          	auipc	ra,0xffffb
    80006524:	d18080e7          	jalr	-744(ra) # 80001238 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006528:	00148493          	addi	s1,s1,1
    8000652c:	000027b7          	lui	a5,0x2
    80006530:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006534:	0097ee63          	bltu	a5,s1,80006550 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006538:	00000713          	li	a4,0
    8000653c:	000077b7          	lui	a5,0x7
    80006540:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006544:	fce7eee3          	bltu	a5,a4,80006520 <_ZL11workerBodyAPv+0x20>
    80006548:	00170713          	addi	a4,a4,1
    8000654c:	ff1ff06f          	j	8000653c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006550:	00190913          	addi	s2,s2,1
    80006554:	00900793          	li	a5,9
    80006558:	0527e063          	bltu	a5,s2,80006598 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000655c:	00003517          	auipc	a0,0x3
    80006560:	d3c50513          	addi	a0,a0,-708 # 80009298 <CONSOLE_STATUS+0x288>
    80006564:	fffff097          	auipc	ra,0xfffff
    80006568:	234080e7          	jalr	564(ra) # 80005798 <_Z11printStringPKc>
    8000656c:	00000613          	li	a2,0
    80006570:	00a00593          	li	a1,10
    80006574:	0009051b          	sext.w	a0,s2
    80006578:	fffff097          	auipc	ra,0xfffff
    8000657c:	3d0080e7          	jalr	976(ra) # 80005948 <_Z8printIntiii>
    80006580:	00003517          	auipc	a0,0x3
    80006584:	f6850513          	addi	a0,a0,-152 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006588:	fffff097          	auipc	ra,0xfffff
    8000658c:	210080e7          	jalr	528(ra) # 80005798 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006590:	00000493          	li	s1,0
    80006594:	f99ff06f          	j	8000652c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006598:	00003517          	auipc	a0,0x3
    8000659c:	d0850513          	addi	a0,a0,-760 # 800092a0 <CONSOLE_STATUS+0x290>
    800065a0:	fffff097          	auipc	ra,0xfffff
    800065a4:	1f8080e7          	jalr	504(ra) # 80005798 <_Z11printStringPKc>
    finishedA = true;
    800065a8:	00100793          	li	a5,1
    800065ac:	00005717          	auipc	a4,0x5
    800065b0:	5cf700a3          	sb	a5,1473(a4) # 8000bb6d <_ZL9finishedA>
}
    800065b4:	01813083          	ld	ra,24(sp)
    800065b8:	01013403          	ld	s0,16(sp)
    800065bc:	00813483          	ld	s1,8(sp)
    800065c0:	00013903          	ld	s2,0(sp)
    800065c4:	02010113          	addi	sp,sp,32
    800065c8:	00008067          	ret

00000000800065cc <_Z16System_Mode_testv>:


void System_Mode_test() {
    800065cc:	fd010113          	addi	sp,sp,-48
    800065d0:	02113423          	sd	ra,40(sp)
    800065d4:	02813023          	sd	s0,32(sp)
    800065d8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800065dc:	00000613          	li	a2,0
    800065e0:	00000597          	auipc	a1,0x0
    800065e4:	f2058593          	addi	a1,a1,-224 # 80006500 <_ZL11workerBodyAPv>
    800065e8:	fd040513          	addi	a0,s0,-48
    800065ec:	ffffb097          	auipc	ra,0xffffb
    800065f0:	bb4080e7          	jalr	-1100(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800065f4:	00003517          	auipc	a0,0x3
    800065f8:	d3c50513          	addi	a0,a0,-708 # 80009330 <CONSOLE_STATUS+0x320>
    800065fc:	fffff097          	auipc	ra,0xfffff
    80006600:	19c080e7          	jalr	412(ra) # 80005798 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80006604:	00000613          	li	a2,0
    80006608:	00000597          	auipc	a1,0x0
    8000660c:	e1458593          	addi	a1,a1,-492 # 8000641c <_ZL11workerBodyBPv>
    80006610:	fd840513          	addi	a0,s0,-40
    80006614:	ffffb097          	auipc	ra,0xffffb
    80006618:	b8c080e7          	jalr	-1140(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    8000661c:	00003517          	auipc	a0,0x3
    80006620:	d2c50513          	addi	a0,a0,-724 # 80009348 <CONSOLE_STATUS+0x338>
    80006624:	fffff097          	auipc	ra,0xfffff
    80006628:	174080e7          	jalr	372(ra) # 80005798 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000662c:	00000613          	li	a2,0
    80006630:	00000597          	auipc	a1,0x0
    80006634:	c6c58593          	addi	a1,a1,-916 # 8000629c <_ZL11workerBodyCPv>
    80006638:	fe040513          	addi	a0,s0,-32
    8000663c:	ffffb097          	auipc	ra,0xffffb
    80006640:	b64080e7          	jalr	-1180(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006644:	00003517          	auipc	a0,0x3
    80006648:	d1c50513          	addi	a0,a0,-740 # 80009360 <CONSOLE_STATUS+0x350>
    8000664c:	fffff097          	auipc	ra,0xfffff
    80006650:	14c080e7          	jalr	332(ra) # 80005798 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006654:	00000613          	li	a2,0
    80006658:	00000597          	auipc	a1,0x0
    8000665c:	afc58593          	addi	a1,a1,-1284 # 80006154 <_ZL11workerBodyDPv>
    80006660:	fe840513          	addi	a0,s0,-24
    80006664:	ffffb097          	auipc	ra,0xffffb
    80006668:	b3c080e7          	jalr	-1220(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000666c:	00003517          	auipc	a0,0x3
    80006670:	d0c50513          	addi	a0,a0,-756 # 80009378 <CONSOLE_STATUS+0x368>
    80006674:	fffff097          	auipc	ra,0xfffff
    80006678:	124080e7          	jalr	292(ra) # 80005798 <_Z11printStringPKc>
    8000667c:	00c0006f          	j	80006688 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006680:	ffffb097          	auipc	ra,0xffffb
    80006684:	bb8080e7          	jalr	-1096(ra) # 80001238 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006688:	00005797          	auipc	a5,0x5
    8000668c:	4e57c783          	lbu	a5,1253(a5) # 8000bb6d <_ZL9finishedA>
    80006690:	fe0788e3          	beqz	a5,80006680 <_Z16System_Mode_testv+0xb4>
    80006694:	00005797          	auipc	a5,0x5
    80006698:	4d87c783          	lbu	a5,1240(a5) # 8000bb6c <_ZL9finishedB>
    8000669c:	fe0782e3          	beqz	a5,80006680 <_Z16System_Mode_testv+0xb4>
    800066a0:	00005797          	auipc	a5,0x5
    800066a4:	4cb7c783          	lbu	a5,1227(a5) # 8000bb6b <_ZL9finishedC>
    800066a8:	fc078ce3          	beqz	a5,80006680 <_Z16System_Mode_testv+0xb4>
    800066ac:	00005797          	auipc	a5,0x5
    800066b0:	4be7c783          	lbu	a5,1214(a5) # 8000bb6a <_ZL9finishedD>
    800066b4:	fc0786e3          	beqz	a5,80006680 <_Z16System_Mode_testv+0xb4>
    }

}
    800066b8:	02813083          	ld	ra,40(sp)
    800066bc:	02013403          	ld	s0,32(sp)
    800066c0:	03010113          	addi	sp,sp,48
    800066c4:	00008067          	ret

00000000800066c8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800066c8:	fe010113          	addi	sp,sp,-32
    800066cc:	00113c23          	sd	ra,24(sp)
    800066d0:	00813823          	sd	s0,16(sp)
    800066d4:	00913423          	sd	s1,8(sp)
    800066d8:	01213023          	sd	s2,0(sp)
    800066dc:	02010413          	addi	s0,sp,32
    800066e0:	00050493          	mv	s1,a0
    800066e4:	00058913          	mv	s2,a1
    800066e8:	0015879b          	addiw	a5,a1,1
    800066ec:	0007851b          	sext.w	a0,a5
    800066f0:	00f4a023          	sw	a5,0(s1)
    800066f4:	0004a823          	sw	zero,16(s1)
    800066f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800066fc:	00251513          	slli	a0,a0,0x2
    80006700:	ffffb097          	auipc	ra,0xffffb
    80006704:	a44080e7          	jalr	-1468(ra) # 80001144 <_Z9mem_allocm>
    80006708:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000670c:	00000593          	li	a1,0
    80006710:	02048513          	addi	a0,s1,32
    80006714:	ffffb097          	auipc	ra,0xffffb
    80006718:	b44080e7          	jalr	-1212(ra) # 80001258 <_Z8sem_openPP10KSemaphorej>
    sem_open(&spaceAvailable, _cap);
    8000671c:	00090593          	mv	a1,s2
    80006720:	01848513          	addi	a0,s1,24
    80006724:	ffffb097          	auipc	ra,0xffffb
    80006728:	b34080e7          	jalr	-1228(ra) # 80001258 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexHead, 1);
    8000672c:	00100593          	li	a1,1
    80006730:	02848513          	addi	a0,s1,40
    80006734:	ffffb097          	auipc	ra,0xffffb
    80006738:	b24080e7          	jalr	-1244(ra) # 80001258 <_Z8sem_openPP10KSemaphorej>
    sem_open(&mutexTail, 1);
    8000673c:	00100593          	li	a1,1
    80006740:	03048513          	addi	a0,s1,48
    80006744:	ffffb097          	auipc	ra,0xffffb
    80006748:	b14080e7          	jalr	-1260(ra) # 80001258 <_Z8sem_openPP10KSemaphorej>
}
    8000674c:	01813083          	ld	ra,24(sp)
    80006750:	01013403          	ld	s0,16(sp)
    80006754:	00813483          	ld	s1,8(sp)
    80006758:	00013903          	ld	s2,0(sp)
    8000675c:	02010113          	addi	sp,sp,32
    80006760:	00008067          	ret

0000000080006764 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006764:	fe010113          	addi	sp,sp,-32
    80006768:	00113c23          	sd	ra,24(sp)
    8000676c:	00813823          	sd	s0,16(sp)
    80006770:	00913423          	sd	s1,8(sp)
    80006774:	01213023          	sd	s2,0(sp)
    80006778:	02010413          	addi	s0,sp,32
    8000677c:	00050493          	mv	s1,a0
    80006780:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006784:	01853503          	ld	a0,24(a0)
    80006788:	ffffb097          	auipc	ra,0xffffb
    8000678c:	b2c080e7          	jalr	-1236(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexTail);
    80006790:	0304b503          	ld	a0,48(s1)
    80006794:	ffffb097          	auipc	ra,0xffffb
    80006798:	b20080e7          	jalr	-1248(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>
    buffer[tail] = val;
    8000679c:	0084b783          	ld	a5,8(s1)
    800067a0:	0144a703          	lw	a4,20(s1)
    800067a4:	00271713          	slli	a4,a4,0x2
    800067a8:	00e787b3          	add	a5,a5,a4
    800067ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800067b0:	0144a783          	lw	a5,20(s1)
    800067b4:	0017879b          	addiw	a5,a5,1
    800067b8:	0004a703          	lw	a4,0(s1)
    800067bc:	02e7e7bb          	remw	a5,a5,a4
    800067c0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800067c4:	0304b503          	ld	a0,48(s1)
    800067c8:	ffffb097          	auipc	ra,0xffffb
    800067cc:	b48080e7          	jalr	-1208(ra) # 80001310 <_Z10sem_signalP10KSemaphore>

    sem_signal(itemAvailable);
    800067d0:	0204b503          	ld	a0,32(s1)
    800067d4:	ffffb097          	auipc	ra,0xffffb
    800067d8:	b3c080e7          	jalr	-1220(ra) # 80001310 <_Z10sem_signalP10KSemaphore>

}
    800067dc:	01813083          	ld	ra,24(sp)
    800067e0:	01013403          	ld	s0,16(sp)
    800067e4:	00813483          	ld	s1,8(sp)
    800067e8:	00013903          	ld	s2,0(sp)
    800067ec:	02010113          	addi	sp,sp,32
    800067f0:	00008067          	ret

00000000800067f4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800067f4:	fe010113          	addi	sp,sp,-32
    800067f8:	00113c23          	sd	ra,24(sp)
    800067fc:	00813823          	sd	s0,16(sp)
    80006800:	00913423          	sd	s1,8(sp)
    80006804:	01213023          	sd	s2,0(sp)
    80006808:	02010413          	addi	s0,sp,32
    8000680c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80006810:	02053503          	ld	a0,32(a0)
    80006814:	ffffb097          	auipc	ra,0xffffb
    80006818:	aa0080e7          	jalr	-1376(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>

    sem_wait(mutexHead);
    8000681c:	0284b503          	ld	a0,40(s1)
    80006820:	ffffb097          	auipc	ra,0xffffb
    80006824:	a94080e7          	jalr	-1388(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>

    int ret = buffer[head];
    80006828:	0084b703          	ld	a4,8(s1)
    8000682c:	0104a783          	lw	a5,16(s1)
    80006830:	00279693          	slli	a3,a5,0x2
    80006834:	00d70733          	add	a4,a4,a3
    80006838:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000683c:	0017879b          	addiw	a5,a5,1
    80006840:	0004a703          	lw	a4,0(s1)
    80006844:	02e7e7bb          	remw	a5,a5,a4
    80006848:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000684c:	0284b503          	ld	a0,40(s1)
    80006850:	ffffb097          	auipc	ra,0xffffb
    80006854:	ac0080e7          	jalr	-1344(ra) # 80001310 <_Z10sem_signalP10KSemaphore>

    sem_signal(spaceAvailable);
    80006858:	0184b503          	ld	a0,24(s1)
    8000685c:	ffffb097          	auipc	ra,0xffffb
    80006860:	ab4080e7          	jalr	-1356(ra) # 80001310 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    80006864:	00090513          	mv	a0,s2
    80006868:	01813083          	ld	ra,24(sp)
    8000686c:	01013403          	ld	s0,16(sp)
    80006870:	00813483          	ld	s1,8(sp)
    80006874:	00013903          	ld	s2,0(sp)
    80006878:	02010113          	addi	sp,sp,32
    8000687c:	00008067          	ret

0000000080006880 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006880:	fe010113          	addi	sp,sp,-32
    80006884:	00113c23          	sd	ra,24(sp)
    80006888:	00813823          	sd	s0,16(sp)
    8000688c:	00913423          	sd	s1,8(sp)
    80006890:	01213023          	sd	s2,0(sp)
    80006894:	02010413          	addi	s0,sp,32
    80006898:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000689c:	02853503          	ld	a0,40(a0)
    800068a0:	ffffb097          	auipc	ra,0xffffb
    800068a4:	a14080e7          	jalr	-1516(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>
    sem_wait(mutexTail);
    800068a8:	0304b503          	ld	a0,48(s1)
    800068ac:	ffffb097          	auipc	ra,0xffffb
    800068b0:	a08080e7          	jalr	-1528(ra) # 800012b4 <_Z8sem_waitP10KSemaphore>

    if (tail >= head) {
    800068b4:	0144a783          	lw	a5,20(s1)
    800068b8:	0104a903          	lw	s2,16(s1)
    800068bc:	0327ce63          	blt	a5,s2,800068f8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800068c0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800068c4:	0304b503          	ld	a0,48(s1)
    800068c8:	ffffb097          	auipc	ra,0xffffb
    800068cc:	a48080e7          	jalr	-1464(ra) # 80001310 <_Z10sem_signalP10KSemaphore>
    sem_signal(mutexHead);
    800068d0:	0284b503          	ld	a0,40(s1)
    800068d4:	ffffb097          	auipc	ra,0xffffb
    800068d8:	a3c080e7          	jalr	-1476(ra) # 80001310 <_Z10sem_signalP10KSemaphore>

    return ret;
}
    800068dc:	00090513          	mv	a0,s2
    800068e0:	01813083          	ld	ra,24(sp)
    800068e4:	01013403          	ld	s0,16(sp)
    800068e8:	00813483          	ld	s1,8(sp)
    800068ec:	00013903          	ld	s2,0(sp)
    800068f0:	02010113          	addi	sp,sp,32
    800068f4:	00008067          	ret
        ret = cap - head + tail;
    800068f8:	0004a703          	lw	a4,0(s1)
    800068fc:	4127093b          	subw	s2,a4,s2
    80006900:	00f9093b          	addw	s2,s2,a5
    80006904:	fc1ff06f          	j	800068c4 <_ZN6Buffer6getCntEv+0x44>

0000000080006908 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80006908:	fe010113          	addi	sp,sp,-32
    8000690c:	00113c23          	sd	ra,24(sp)
    80006910:	00813823          	sd	s0,16(sp)
    80006914:	00913423          	sd	s1,8(sp)
    80006918:	02010413          	addi	s0,sp,32
    8000691c:	00050493          	mv	s1,a0
    putc('\n');
    80006920:	00a00513          	li	a0,10
    80006924:	ffffb097          	auipc	ra,0xffffb
    80006928:	a9c080e7          	jalr	-1380(ra) # 800013c0 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000692c:	00003517          	auipc	a0,0x3
    80006930:	a6450513          	addi	a0,a0,-1436 # 80009390 <CONSOLE_STATUS+0x380>
    80006934:	fffff097          	auipc	ra,0xfffff
    80006938:	e64080e7          	jalr	-412(ra) # 80005798 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000693c:	00048513          	mv	a0,s1
    80006940:	00000097          	auipc	ra,0x0
    80006944:	f40080e7          	jalr	-192(ra) # 80006880 <_ZN6Buffer6getCntEv>
    80006948:	02a05c63          	blez	a0,80006980 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000694c:	0084b783          	ld	a5,8(s1)
    80006950:	0104a703          	lw	a4,16(s1)
    80006954:	00271713          	slli	a4,a4,0x2
    80006958:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000695c:	0007c503          	lbu	a0,0(a5)
    80006960:	ffffb097          	auipc	ra,0xffffb
    80006964:	a60080e7          	jalr	-1440(ra) # 800013c0 <_Z4putcc>
        head = (head + 1) % cap;
    80006968:	0104a783          	lw	a5,16(s1)
    8000696c:	0017879b          	addiw	a5,a5,1
    80006970:	0004a703          	lw	a4,0(s1)
    80006974:	02e7e7bb          	remw	a5,a5,a4
    80006978:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000697c:	fc1ff06f          	j	8000693c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006980:	02100513          	li	a0,33
    80006984:	ffffb097          	auipc	ra,0xffffb
    80006988:	a3c080e7          	jalr	-1476(ra) # 800013c0 <_Z4putcc>
    putc('\n');
    8000698c:	00a00513          	li	a0,10
    80006990:	ffffb097          	auipc	ra,0xffffb
    80006994:	a30080e7          	jalr	-1488(ra) # 800013c0 <_Z4putcc>
    mem_free(buffer);
    80006998:	0084b503          	ld	a0,8(s1)
    8000699c:	ffffa097          	auipc	ra,0xffffa
    800069a0:	7d8080e7          	jalr	2008(ra) # 80001174 <_Z8mem_freePv>
    sem_close(itemAvailable);
    800069a4:	0204b503          	ld	a0,32(s1)
    800069a8:	ffffb097          	auipc	ra,0xffffb
    800069ac:	8e0080e7          	jalr	-1824(ra) # 80001288 <_Z9sem_closeP10KSemaphore>
    sem_close(spaceAvailable);
    800069b0:	0184b503          	ld	a0,24(s1)
    800069b4:	ffffb097          	auipc	ra,0xffffb
    800069b8:	8d4080e7          	jalr	-1836(ra) # 80001288 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexTail);
    800069bc:	0304b503          	ld	a0,48(s1)
    800069c0:	ffffb097          	auipc	ra,0xffffb
    800069c4:	8c8080e7          	jalr	-1848(ra) # 80001288 <_Z9sem_closeP10KSemaphore>
    sem_close(mutexHead);
    800069c8:	0284b503          	ld	a0,40(s1)
    800069cc:	ffffb097          	auipc	ra,0xffffb
    800069d0:	8bc080e7          	jalr	-1860(ra) # 80001288 <_Z9sem_closeP10KSemaphore>
}
    800069d4:	01813083          	ld	ra,24(sp)
    800069d8:	01013403          	ld	s0,16(sp)
    800069dc:	00813483          	ld	s1,8(sp)
    800069e0:	02010113          	addi	sp,sp,32
    800069e4:	00008067          	ret

00000000800069e8 <start>:
    800069e8:	ff010113          	addi	sp,sp,-16
    800069ec:	00813423          	sd	s0,8(sp)
    800069f0:	01010413          	addi	s0,sp,16
    800069f4:	300027f3          	csrr	a5,mstatus
    800069f8:	ffffe737          	lui	a4,0xffffe
    800069fc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1a2f>
    80006a00:	00e7f7b3          	and	a5,a5,a4
    80006a04:	00001737          	lui	a4,0x1
    80006a08:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80006a0c:	00e7e7b3          	or	a5,a5,a4
    80006a10:	30079073          	csrw	mstatus,a5
    80006a14:	00000797          	auipc	a5,0x0
    80006a18:	16078793          	addi	a5,a5,352 # 80006b74 <system_main>
    80006a1c:	34179073          	csrw	mepc,a5
    80006a20:	00000793          	li	a5,0
    80006a24:	18079073          	csrw	satp,a5
    80006a28:	000107b7          	lui	a5,0x10
    80006a2c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80006a30:	30279073          	csrw	medeleg,a5
    80006a34:	30379073          	csrw	mideleg,a5
    80006a38:	104027f3          	csrr	a5,sie
    80006a3c:	2227e793          	ori	a5,a5,546
    80006a40:	10479073          	csrw	sie,a5
    80006a44:	fff00793          	li	a5,-1
    80006a48:	00a7d793          	srli	a5,a5,0xa
    80006a4c:	3b079073          	csrw	pmpaddr0,a5
    80006a50:	00f00793          	li	a5,15
    80006a54:	3a079073          	csrw	pmpcfg0,a5
    80006a58:	f14027f3          	csrr	a5,mhartid
    80006a5c:	0200c737          	lui	a4,0x200c
    80006a60:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006a64:	0007869b          	sext.w	a3,a5
    80006a68:	00269713          	slli	a4,a3,0x2
    80006a6c:	000f4637          	lui	a2,0xf4
    80006a70:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006a74:	00d70733          	add	a4,a4,a3
    80006a78:	0037979b          	slliw	a5,a5,0x3
    80006a7c:	020046b7          	lui	a3,0x2004
    80006a80:	00d787b3          	add	a5,a5,a3
    80006a84:	00c585b3          	add	a1,a1,a2
    80006a88:	00371693          	slli	a3,a4,0x3
    80006a8c:	00005717          	auipc	a4,0x5
    80006a90:	0e470713          	addi	a4,a4,228 # 8000bb70 <timer_scratch>
    80006a94:	00b7b023          	sd	a1,0(a5)
    80006a98:	00d70733          	add	a4,a4,a3
    80006a9c:	00f73c23          	sd	a5,24(a4)
    80006aa0:	02c73023          	sd	a2,32(a4)
    80006aa4:	34071073          	csrw	mscratch,a4
    80006aa8:	00000797          	auipc	a5,0x0
    80006aac:	6e878793          	addi	a5,a5,1768 # 80007190 <timervec>
    80006ab0:	30579073          	csrw	mtvec,a5
    80006ab4:	300027f3          	csrr	a5,mstatus
    80006ab8:	0087e793          	ori	a5,a5,8
    80006abc:	30079073          	csrw	mstatus,a5
    80006ac0:	304027f3          	csrr	a5,mie
    80006ac4:	0807e793          	ori	a5,a5,128
    80006ac8:	30479073          	csrw	mie,a5
    80006acc:	f14027f3          	csrr	a5,mhartid
    80006ad0:	0007879b          	sext.w	a5,a5
    80006ad4:	00078213          	mv	tp,a5
    80006ad8:	30200073          	mret
    80006adc:	00813403          	ld	s0,8(sp)
    80006ae0:	01010113          	addi	sp,sp,16
    80006ae4:	00008067          	ret

0000000080006ae8 <timerinit>:
    80006ae8:	ff010113          	addi	sp,sp,-16
    80006aec:	00813423          	sd	s0,8(sp)
    80006af0:	01010413          	addi	s0,sp,16
    80006af4:	f14027f3          	csrr	a5,mhartid
    80006af8:	0200c737          	lui	a4,0x200c
    80006afc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006b00:	0007869b          	sext.w	a3,a5
    80006b04:	00269713          	slli	a4,a3,0x2
    80006b08:	000f4637          	lui	a2,0xf4
    80006b0c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006b10:	00d70733          	add	a4,a4,a3
    80006b14:	0037979b          	slliw	a5,a5,0x3
    80006b18:	020046b7          	lui	a3,0x2004
    80006b1c:	00d787b3          	add	a5,a5,a3
    80006b20:	00c585b3          	add	a1,a1,a2
    80006b24:	00371693          	slli	a3,a4,0x3
    80006b28:	00005717          	auipc	a4,0x5
    80006b2c:	04870713          	addi	a4,a4,72 # 8000bb70 <timer_scratch>
    80006b30:	00b7b023          	sd	a1,0(a5)
    80006b34:	00d70733          	add	a4,a4,a3
    80006b38:	00f73c23          	sd	a5,24(a4)
    80006b3c:	02c73023          	sd	a2,32(a4)
    80006b40:	34071073          	csrw	mscratch,a4
    80006b44:	00000797          	auipc	a5,0x0
    80006b48:	64c78793          	addi	a5,a5,1612 # 80007190 <timervec>
    80006b4c:	30579073          	csrw	mtvec,a5
    80006b50:	300027f3          	csrr	a5,mstatus
    80006b54:	0087e793          	ori	a5,a5,8
    80006b58:	30079073          	csrw	mstatus,a5
    80006b5c:	304027f3          	csrr	a5,mie
    80006b60:	0807e793          	ori	a5,a5,128
    80006b64:	30479073          	csrw	mie,a5
    80006b68:	00813403          	ld	s0,8(sp)
    80006b6c:	01010113          	addi	sp,sp,16
    80006b70:	00008067          	ret

0000000080006b74 <system_main>:
    80006b74:	fe010113          	addi	sp,sp,-32
    80006b78:	00813823          	sd	s0,16(sp)
    80006b7c:	00913423          	sd	s1,8(sp)
    80006b80:	00113c23          	sd	ra,24(sp)
    80006b84:	02010413          	addi	s0,sp,32
    80006b88:	00000097          	auipc	ra,0x0
    80006b8c:	0c4080e7          	jalr	196(ra) # 80006c4c <cpuid>
    80006b90:	00005497          	auipc	s1,0x5
    80006b94:	ef048493          	addi	s1,s1,-272 # 8000ba80 <started>
    80006b98:	02050263          	beqz	a0,80006bbc <system_main+0x48>
    80006b9c:	0004a783          	lw	a5,0(s1)
    80006ba0:	0007879b          	sext.w	a5,a5
    80006ba4:	fe078ce3          	beqz	a5,80006b9c <system_main+0x28>
    80006ba8:	0ff0000f          	fence
    80006bac:	00003517          	auipc	a0,0x3
    80006bb0:	ab450513          	addi	a0,a0,-1356 # 80009660 <CONSOLE_STATUS+0x650>
    80006bb4:	00001097          	auipc	ra,0x1
    80006bb8:	a78080e7          	jalr	-1416(ra) # 8000762c <panic>
    80006bbc:	00001097          	auipc	ra,0x1
    80006bc0:	9cc080e7          	jalr	-1588(ra) # 80007588 <consoleinit>
    80006bc4:	00001097          	auipc	ra,0x1
    80006bc8:	158080e7          	jalr	344(ra) # 80007d1c <printfinit>
    80006bcc:	00003517          	auipc	a0,0x3
    80006bd0:	91c50513          	addi	a0,a0,-1764 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006bd4:	00001097          	auipc	ra,0x1
    80006bd8:	ab4080e7          	jalr	-1356(ra) # 80007688 <__printf>
    80006bdc:	00003517          	auipc	a0,0x3
    80006be0:	a5450513          	addi	a0,a0,-1452 # 80009630 <CONSOLE_STATUS+0x620>
    80006be4:	00001097          	auipc	ra,0x1
    80006be8:	aa4080e7          	jalr	-1372(ra) # 80007688 <__printf>
    80006bec:	00003517          	auipc	a0,0x3
    80006bf0:	8fc50513          	addi	a0,a0,-1796 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80006bf4:	00001097          	auipc	ra,0x1
    80006bf8:	a94080e7          	jalr	-1388(ra) # 80007688 <__printf>
    80006bfc:	00001097          	auipc	ra,0x1
    80006c00:	4ac080e7          	jalr	1196(ra) # 800080a8 <kinit>
    80006c04:	00000097          	auipc	ra,0x0
    80006c08:	148080e7          	jalr	328(ra) # 80006d4c <trapinit>
    80006c0c:	00000097          	auipc	ra,0x0
    80006c10:	16c080e7          	jalr	364(ra) # 80006d78 <trapinithart>
    80006c14:	00000097          	auipc	ra,0x0
    80006c18:	5bc080e7          	jalr	1468(ra) # 800071d0 <plicinit>
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	5dc080e7          	jalr	1500(ra) # 800071f8 <plicinithart>
    80006c24:	00000097          	auipc	ra,0x0
    80006c28:	078080e7          	jalr	120(ra) # 80006c9c <userinit>
    80006c2c:	0ff0000f          	fence
    80006c30:	00100793          	li	a5,1
    80006c34:	00003517          	auipc	a0,0x3
    80006c38:	a1450513          	addi	a0,a0,-1516 # 80009648 <CONSOLE_STATUS+0x638>
    80006c3c:	00f4a023          	sw	a5,0(s1)
    80006c40:	00001097          	auipc	ra,0x1
    80006c44:	a48080e7          	jalr	-1464(ra) # 80007688 <__printf>
    80006c48:	0000006f          	j	80006c48 <system_main+0xd4>

0000000080006c4c <cpuid>:
    80006c4c:	ff010113          	addi	sp,sp,-16
    80006c50:	00813423          	sd	s0,8(sp)
    80006c54:	01010413          	addi	s0,sp,16
    80006c58:	00020513          	mv	a0,tp
    80006c5c:	00813403          	ld	s0,8(sp)
    80006c60:	0005051b          	sext.w	a0,a0
    80006c64:	01010113          	addi	sp,sp,16
    80006c68:	00008067          	ret

0000000080006c6c <mycpu>:
    80006c6c:	ff010113          	addi	sp,sp,-16
    80006c70:	00813423          	sd	s0,8(sp)
    80006c74:	01010413          	addi	s0,sp,16
    80006c78:	00020793          	mv	a5,tp
    80006c7c:	00813403          	ld	s0,8(sp)
    80006c80:	0007879b          	sext.w	a5,a5
    80006c84:	00779793          	slli	a5,a5,0x7
    80006c88:	00006517          	auipc	a0,0x6
    80006c8c:	f1850513          	addi	a0,a0,-232 # 8000cba0 <cpus>
    80006c90:	00f50533          	add	a0,a0,a5
    80006c94:	01010113          	addi	sp,sp,16
    80006c98:	00008067          	ret

0000000080006c9c <userinit>:
    80006c9c:	ff010113          	addi	sp,sp,-16
    80006ca0:	00813423          	sd	s0,8(sp)
    80006ca4:	01010413          	addi	s0,sp,16
    80006ca8:	00813403          	ld	s0,8(sp)
    80006cac:	01010113          	addi	sp,sp,16
    80006cb0:	ffffb317          	auipc	t1,0xffffb
    80006cb4:	36430067          	jr	868(t1) # 80002014 <main>

0000000080006cb8 <either_copyout>:
    80006cb8:	ff010113          	addi	sp,sp,-16
    80006cbc:	00813023          	sd	s0,0(sp)
    80006cc0:	00113423          	sd	ra,8(sp)
    80006cc4:	01010413          	addi	s0,sp,16
    80006cc8:	02051663          	bnez	a0,80006cf4 <either_copyout+0x3c>
    80006ccc:	00058513          	mv	a0,a1
    80006cd0:	00060593          	mv	a1,a2
    80006cd4:	0006861b          	sext.w	a2,a3
    80006cd8:	00002097          	auipc	ra,0x2
    80006cdc:	c5c080e7          	jalr	-932(ra) # 80008934 <__memmove>
    80006ce0:	00813083          	ld	ra,8(sp)
    80006ce4:	00013403          	ld	s0,0(sp)
    80006ce8:	00000513          	li	a0,0
    80006cec:	01010113          	addi	sp,sp,16
    80006cf0:	00008067          	ret
    80006cf4:	00003517          	auipc	a0,0x3
    80006cf8:	99450513          	addi	a0,a0,-1644 # 80009688 <CONSOLE_STATUS+0x678>
    80006cfc:	00001097          	auipc	ra,0x1
    80006d00:	930080e7          	jalr	-1744(ra) # 8000762c <panic>

0000000080006d04 <either_copyin>:
    80006d04:	ff010113          	addi	sp,sp,-16
    80006d08:	00813023          	sd	s0,0(sp)
    80006d0c:	00113423          	sd	ra,8(sp)
    80006d10:	01010413          	addi	s0,sp,16
    80006d14:	02059463          	bnez	a1,80006d3c <either_copyin+0x38>
    80006d18:	00060593          	mv	a1,a2
    80006d1c:	0006861b          	sext.w	a2,a3
    80006d20:	00002097          	auipc	ra,0x2
    80006d24:	c14080e7          	jalr	-1004(ra) # 80008934 <__memmove>
    80006d28:	00813083          	ld	ra,8(sp)
    80006d2c:	00013403          	ld	s0,0(sp)
    80006d30:	00000513          	li	a0,0
    80006d34:	01010113          	addi	sp,sp,16
    80006d38:	00008067          	ret
    80006d3c:	00003517          	auipc	a0,0x3
    80006d40:	97450513          	addi	a0,a0,-1676 # 800096b0 <CONSOLE_STATUS+0x6a0>
    80006d44:	00001097          	auipc	ra,0x1
    80006d48:	8e8080e7          	jalr	-1816(ra) # 8000762c <panic>

0000000080006d4c <trapinit>:
    80006d4c:	ff010113          	addi	sp,sp,-16
    80006d50:	00813423          	sd	s0,8(sp)
    80006d54:	01010413          	addi	s0,sp,16
    80006d58:	00813403          	ld	s0,8(sp)
    80006d5c:	00003597          	auipc	a1,0x3
    80006d60:	97c58593          	addi	a1,a1,-1668 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80006d64:	00006517          	auipc	a0,0x6
    80006d68:	ebc50513          	addi	a0,a0,-324 # 8000cc20 <tickslock>
    80006d6c:	01010113          	addi	sp,sp,16
    80006d70:	00001317          	auipc	t1,0x1
    80006d74:	5c830067          	jr	1480(t1) # 80008338 <initlock>

0000000080006d78 <trapinithart>:
    80006d78:	ff010113          	addi	sp,sp,-16
    80006d7c:	00813423          	sd	s0,8(sp)
    80006d80:	01010413          	addi	s0,sp,16
    80006d84:	00000797          	auipc	a5,0x0
    80006d88:	2fc78793          	addi	a5,a5,764 # 80007080 <kernelvec>
    80006d8c:	10579073          	csrw	stvec,a5
    80006d90:	00813403          	ld	s0,8(sp)
    80006d94:	01010113          	addi	sp,sp,16
    80006d98:	00008067          	ret

0000000080006d9c <usertrap>:
    80006d9c:	ff010113          	addi	sp,sp,-16
    80006da0:	00813423          	sd	s0,8(sp)
    80006da4:	01010413          	addi	s0,sp,16
    80006da8:	00813403          	ld	s0,8(sp)
    80006dac:	01010113          	addi	sp,sp,16
    80006db0:	00008067          	ret

0000000080006db4 <usertrapret>:
    80006db4:	ff010113          	addi	sp,sp,-16
    80006db8:	00813423          	sd	s0,8(sp)
    80006dbc:	01010413          	addi	s0,sp,16
    80006dc0:	00813403          	ld	s0,8(sp)
    80006dc4:	01010113          	addi	sp,sp,16
    80006dc8:	00008067          	ret

0000000080006dcc <kerneltrap>:
    80006dcc:	fe010113          	addi	sp,sp,-32
    80006dd0:	00813823          	sd	s0,16(sp)
    80006dd4:	00113c23          	sd	ra,24(sp)
    80006dd8:	00913423          	sd	s1,8(sp)
    80006ddc:	02010413          	addi	s0,sp,32
    80006de0:	142025f3          	csrr	a1,scause
    80006de4:	100027f3          	csrr	a5,sstatus
    80006de8:	0027f793          	andi	a5,a5,2
    80006dec:	10079c63          	bnez	a5,80006f04 <kerneltrap+0x138>
    80006df0:	142027f3          	csrr	a5,scause
    80006df4:	0207ce63          	bltz	a5,80006e30 <kerneltrap+0x64>
    80006df8:	00003517          	auipc	a0,0x3
    80006dfc:	92850513          	addi	a0,a0,-1752 # 80009720 <CONSOLE_STATUS+0x710>
    80006e00:	00001097          	auipc	ra,0x1
    80006e04:	888080e7          	jalr	-1912(ra) # 80007688 <__printf>
    80006e08:	141025f3          	csrr	a1,sepc
    80006e0c:	14302673          	csrr	a2,stval
    80006e10:	00003517          	auipc	a0,0x3
    80006e14:	92050513          	addi	a0,a0,-1760 # 80009730 <CONSOLE_STATUS+0x720>
    80006e18:	00001097          	auipc	ra,0x1
    80006e1c:	870080e7          	jalr	-1936(ra) # 80007688 <__printf>
    80006e20:	00003517          	auipc	a0,0x3
    80006e24:	92850513          	addi	a0,a0,-1752 # 80009748 <CONSOLE_STATUS+0x738>
    80006e28:	00001097          	auipc	ra,0x1
    80006e2c:	804080e7          	jalr	-2044(ra) # 8000762c <panic>
    80006e30:	0ff7f713          	andi	a4,a5,255
    80006e34:	00900693          	li	a3,9
    80006e38:	04d70063          	beq	a4,a3,80006e78 <kerneltrap+0xac>
    80006e3c:	fff00713          	li	a4,-1
    80006e40:	03f71713          	slli	a4,a4,0x3f
    80006e44:	00170713          	addi	a4,a4,1
    80006e48:	fae798e3          	bne	a5,a4,80006df8 <kerneltrap+0x2c>
    80006e4c:	00000097          	auipc	ra,0x0
    80006e50:	e00080e7          	jalr	-512(ra) # 80006c4c <cpuid>
    80006e54:	06050663          	beqz	a0,80006ec0 <kerneltrap+0xf4>
    80006e58:	144027f3          	csrr	a5,sip
    80006e5c:	ffd7f793          	andi	a5,a5,-3
    80006e60:	14479073          	csrw	sip,a5
    80006e64:	01813083          	ld	ra,24(sp)
    80006e68:	01013403          	ld	s0,16(sp)
    80006e6c:	00813483          	ld	s1,8(sp)
    80006e70:	02010113          	addi	sp,sp,32
    80006e74:	00008067          	ret
    80006e78:	00000097          	auipc	ra,0x0
    80006e7c:	3cc080e7          	jalr	972(ra) # 80007244 <plic_claim>
    80006e80:	00a00793          	li	a5,10
    80006e84:	00050493          	mv	s1,a0
    80006e88:	06f50863          	beq	a0,a5,80006ef8 <kerneltrap+0x12c>
    80006e8c:	fc050ce3          	beqz	a0,80006e64 <kerneltrap+0x98>
    80006e90:	00050593          	mv	a1,a0
    80006e94:	00003517          	auipc	a0,0x3
    80006e98:	86c50513          	addi	a0,a0,-1940 # 80009700 <CONSOLE_STATUS+0x6f0>
    80006e9c:	00000097          	auipc	ra,0x0
    80006ea0:	7ec080e7          	jalr	2028(ra) # 80007688 <__printf>
    80006ea4:	01013403          	ld	s0,16(sp)
    80006ea8:	01813083          	ld	ra,24(sp)
    80006eac:	00048513          	mv	a0,s1
    80006eb0:	00813483          	ld	s1,8(sp)
    80006eb4:	02010113          	addi	sp,sp,32
    80006eb8:	00000317          	auipc	t1,0x0
    80006ebc:	3c430067          	jr	964(t1) # 8000727c <plic_complete>
    80006ec0:	00006517          	auipc	a0,0x6
    80006ec4:	d6050513          	addi	a0,a0,-672 # 8000cc20 <tickslock>
    80006ec8:	00001097          	auipc	ra,0x1
    80006ecc:	494080e7          	jalr	1172(ra) # 8000835c <acquire>
    80006ed0:	00005717          	auipc	a4,0x5
    80006ed4:	bb470713          	addi	a4,a4,-1100 # 8000ba84 <ticks>
    80006ed8:	00072783          	lw	a5,0(a4)
    80006edc:	00006517          	auipc	a0,0x6
    80006ee0:	d4450513          	addi	a0,a0,-700 # 8000cc20 <tickslock>
    80006ee4:	0017879b          	addiw	a5,a5,1
    80006ee8:	00f72023          	sw	a5,0(a4)
    80006eec:	00001097          	auipc	ra,0x1
    80006ef0:	53c080e7          	jalr	1340(ra) # 80008428 <release>
    80006ef4:	f65ff06f          	j	80006e58 <kerneltrap+0x8c>
    80006ef8:	00001097          	auipc	ra,0x1
    80006efc:	098080e7          	jalr	152(ra) # 80007f90 <uartintr>
    80006f00:	fa5ff06f          	j	80006ea4 <kerneltrap+0xd8>
    80006f04:	00002517          	auipc	a0,0x2
    80006f08:	7dc50513          	addi	a0,a0,2012 # 800096e0 <CONSOLE_STATUS+0x6d0>
    80006f0c:	00000097          	auipc	ra,0x0
    80006f10:	720080e7          	jalr	1824(ra) # 8000762c <panic>

0000000080006f14 <clockintr>:
    80006f14:	fe010113          	addi	sp,sp,-32
    80006f18:	00813823          	sd	s0,16(sp)
    80006f1c:	00913423          	sd	s1,8(sp)
    80006f20:	00113c23          	sd	ra,24(sp)
    80006f24:	02010413          	addi	s0,sp,32
    80006f28:	00006497          	auipc	s1,0x6
    80006f2c:	cf848493          	addi	s1,s1,-776 # 8000cc20 <tickslock>
    80006f30:	00048513          	mv	a0,s1
    80006f34:	00001097          	auipc	ra,0x1
    80006f38:	428080e7          	jalr	1064(ra) # 8000835c <acquire>
    80006f3c:	00005717          	auipc	a4,0x5
    80006f40:	b4870713          	addi	a4,a4,-1208 # 8000ba84 <ticks>
    80006f44:	00072783          	lw	a5,0(a4)
    80006f48:	01013403          	ld	s0,16(sp)
    80006f4c:	01813083          	ld	ra,24(sp)
    80006f50:	00048513          	mv	a0,s1
    80006f54:	0017879b          	addiw	a5,a5,1
    80006f58:	00813483          	ld	s1,8(sp)
    80006f5c:	00f72023          	sw	a5,0(a4)
    80006f60:	02010113          	addi	sp,sp,32
    80006f64:	00001317          	auipc	t1,0x1
    80006f68:	4c430067          	jr	1220(t1) # 80008428 <release>

0000000080006f6c <devintr>:
    80006f6c:	142027f3          	csrr	a5,scause
    80006f70:	00000513          	li	a0,0
    80006f74:	0007c463          	bltz	a5,80006f7c <devintr+0x10>
    80006f78:	00008067          	ret
    80006f7c:	fe010113          	addi	sp,sp,-32
    80006f80:	00813823          	sd	s0,16(sp)
    80006f84:	00113c23          	sd	ra,24(sp)
    80006f88:	00913423          	sd	s1,8(sp)
    80006f8c:	02010413          	addi	s0,sp,32
    80006f90:	0ff7f713          	andi	a4,a5,255
    80006f94:	00900693          	li	a3,9
    80006f98:	04d70c63          	beq	a4,a3,80006ff0 <devintr+0x84>
    80006f9c:	fff00713          	li	a4,-1
    80006fa0:	03f71713          	slli	a4,a4,0x3f
    80006fa4:	00170713          	addi	a4,a4,1
    80006fa8:	00e78c63          	beq	a5,a4,80006fc0 <devintr+0x54>
    80006fac:	01813083          	ld	ra,24(sp)
    80006fb0:	01013403          	ld	s0,16(sp)
    80006fb4:	00813483          	ld	s1,8(sp)
    80006fb8:	02010113          	addi	sp,sp,32
    80006fbc:	00008067          	ret
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	c8c080e7          	jalr	-884(ra) # 80006c4c <cpuid>
    80006fc8:	06050663          	beqz	a0,80007034 <devintr+0xc8>
    80006fcc:	144027f3          	csrr	a5,sip
    80006fd0:	ffd7f793          	andi	a5,a5,-3
    80006fd4:	14479073          	csrw	sip,a5
    80006fd8:	01813083          	ld	ra,24(sp)
    80006fdc:	01013403          	ld	s0,16(sp)
    80006fe0:	00813483          	ld	s1,8(sp)
    80006fe4:	00200513          	li	a0,2
    80006fe8:	02010113          	addi	sp,sp,32
    80006fec:	00008067          	ret
    80006ff0:	00000097          	auipc	ra,0x0
    80006ff4:	254080e7          	jalr	596(ra) # 80007244 <plic_claim>
    80006ff8:	00a00793          	li	a5,10
    80006ffc:	00050493          	mv	s1,a0
    80007000:	06f50663          	beq	a0,a5,8000706c <devintr+0x100>
    80007004:	00100513          	li	a0,1
    80007008:	fa0482e3          	beqz	s1,80006fac <devintr+0x40>
    8000700c:	00048593          	mv	a1,s1
    80007010:	00002517          	auipc	a0,0x2
    80007014:	6f050513          	addi	a0,a0,1776 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007018:	00000097          	auipc	ra,0x0
    8000701c:	670080e7          	jalr	1648(ra) # 80007688 <__printf>
    80007020:	00048513          	mv	a0,s1
    80007024:	00000097          	auipc	ra,0x0
    80007028:	258080e7          	jalr	600(ra) # 8000727c <plic_complete>
    8000702c:	00100513          	li	a0,1
    80007030:	f7dff06f          	j	80006fac <devintr+0x40>
    80007034:	00006517          	auipc	a0,0x6
    80007038:	bec50513          	addi	a0,a0,-1044 # 8000cc20 <tickslock>
    8000703c:	00001097          	auipc	ra,0x1
    80007040:	320080e7          	jalr	800(ra) # 8000835c <acquire>
    80007044:	00005717          	auipc	a4,0x5
    80007048:	a4070713          	addi	a4,a4,-1472 # 8000ba84 <ticks>
    8000704c:	00072783          	lw	a5,0(a4)
    80007050:	00006517          	auipc	a0,0x6
    80007054:	bd050513          	addi	a0,a0,-1072 # 8000cc20 <tickslock>
    80007058:	0017879b          	addiw	a5,a5,1
    8000705c:	00f72023          	sw	a5,0(a4)
    80007060:	00001097          	auipc	ra,0x1
    80007064:	3c8080e7          	jalr	968(ra) # 80008428 <release>
    80007068:	f65ff06f          	j	80006fcc <devintr+0x60>
    8000706c:	00001097          	auipc	ra,0x1
    80007070:	f24080e7          	jalr	-220(ra) # 80007f90 <uartintr>
    80007074:	fadff06f          	j	80007020 <devintr+0xb4>
	...

0000000080007080 <kernelvec>:
    80007080:	f0010113          	addi	sp,sp,-256
    80007084:	00113023          	sd	ra,0(sp)
    80007088:	00213423          	sd	sp,8(sp)
    8000708c:	00313823          	sd	gp,16(sp)
    80007090:	00413c23          	sd	tp,24(sp)
    80007094:	02513023          	sd	t0,32(sp)
    80007098:	02613423          	sd	t1,40(sp)
    8000709c:	02713823          	sd	t2,48(sp)
    800070a0:	02813c23          	sd	s0,56(sp)
    800070a4:	04913023          	sd	s1,64(sp)
    800070a8:	04a13423          	sd	a0,72(sp)
    800070ac:	04b13823          	sd	a1,80(sp)
    800070b0:	04c13c23          	sd	a2,88(sp)
    800070b4:	06d13023          	sd	a3,96(sp)
    800070b8:	06e13423          	sd	a4,104(sp)
    800070bc:	06f13823          	sd	a5,112(sp)
    800070c0:	07013c23          	sd	a6,120(sp)
    800070c4:	09113023          	sd	a7,128(sp)
    800070c8:	09213423          	sd	s2,136(sp)
    800070cc:	09313823          	sd	s3,144(sp)
    800070d0:	09413c23          	sd	s4,152(sp)
    800070d4:	0b513023          	sd	s5,160(sp)
    800070d8:	0b613423          	sd	s6,168(sp)
    800070dc:	0b713823          	sd	s7,176(sp)
    800070e0:	0b813c23          	sd	s8,184(sp)
    800070e4:	0d913023          	sd	s9,192(sp)
    800070e8:	0da13423          	sd	s10,200(sp)
    800070ec:	0db13823          	sd	s11,208(sp)
    800070f0:	0dc13c23          	sd	t3,216(sp)
    800070f4:	0fd13023          	sd	t4,224(sp)
    800070f8:	0fe13423          	sd	t5,232(sp)
    800070fc:	0ff13823          	sd	t6,240(sp)
    80007100:	ccdff0ef          	jal	ra,80006dcc <kerneltrap>
    80007104:	00013083          	ld	ra,0(sp)
    80007108:	00813103          	ld	sp,8(sp)
    8000710c:	01013183          	ld	gp,16(sp)
    80007110:	02013283          	ld	t0,32(sp)
    80007114:	02813303          	ld	t1,40(sp)
    80007118:	03013383          	ld	t2,48(sp)
    8000711c:	03813403          	ld	s0,56(sp)
    80007120:	04013483          	ld	s1,64(sp)
    80007124:	04813503          	ld	a0,72(sp)
    80007128:	05013583          	ld	a1,80(sp)
    8000712c:	05813603          	ld	a2,88(sp)
    80007130:	06013683          	ld	a3,96(sp)
    80007134:	06813703          	ld	a4,104(sp)
    80007138:	07013783          	ld	a5,112(sp)
    8000713c:	07813803          	ld	a6,120(sp)
    80007140:	08013883          	ld	a7,128(sp)
    80007144:	08813903          	ld	s2,136(sp)
    80007148:	09013983          	ld	s3,144(sp)
    8000714c:	09813a03          	ld	s4,152(sp)
    80007150:	0a013a83          	ld	s5,160(sp)
    80007154:	0a813b03          	ld	s6,168(sp)
    80007158:	0b013b83          	ld	s7,176(sp)
    8000715c:	0b813c03          	ld	s8,184(sp)
    80007160:	0c013c83          	ld	s9,192(sp)
    80007164:	0c813d03          	ld	s10,200(sp)
    80007168:	0d013d83          	ld	s11,208(sp)
    8000716c:	0d813e03          	ld	t3,216(sp)
    80007170:	0e013e83          	ld	t4,224(sp)
    80007174:	0e813f03          	ld	t5,232(sp)
    80007178:	0f013f83          	ld	t6,240(sp)
    8000717c:	10010113          	addi	sp,sp,256
    80007180:	10200073          	sret
    80007184:	00000013          	nop
    80007188:	00000013          	nop
    8000718c:	00000013          	nop

0000000080007190 <timervec>:
    80007190:	34051573          	csrrw	a0,mscratch,a0
    80007194:	00b53023          	sd	a1,0(a0)
    80007198:	00c53423          	sd	a2,8(a0)
    8000719c:	00d53823          	sd	a3,16(a0)
    800071a0:	01853583          	ld	a1,24(a0)
    800071a4:	02053603          	ld	a2,32(a0)
    800071a8:	0005b683          	ld	a3,0(a1)
    800071ac:	00c686b3          	add	a3,a3,a2
    800071b0:	00d5b023          	sd	a3,0(a1)
    800071b4:	00200593          	li	a1,2
    800071b8:	14459073          	csrw	sip,a1
    800071bc:	01053683          	ld	a3,16(a0)
    800071c0:	00853603          	ld	a2,8(a0)
    800071c4:	00053583          	ld	a1,0(a0)
    800071c8:	34051573          	csrrw	a0,mscratch,a0
    800071cc:	30200073          	mret

00000000800071d0 <plicinit>:
    800071d0:	ff010113          	addi	sp,sp,-16
    800071d4:	00813423          	sd	s0,8(sp)
    800071d8:	01010413          	addi	s0,sp,16
    800071dc:	00813403          	ld	s0,8(sp)
    800071e0:	0c0007b7          	lui	a5,0xc000
    800071e4:	00100713          	li	a4,1
    800071e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800071ec:	00e7a223          	sw	a4,4(a5)
    800071f0:	01010113          	addi	sp,sp,16
    800071f4:	00008067          	ret

00000000800071f8 <plicinithart>:
    800071f8:	ff010113          	addi	sp,sp,-16
    800071fc:	00813023          	sd	s0,0(sp)
    80007200:	00113423          	sd	ra,8(sp)
    80007204:	01010413          	addi	s0,sp,16
    80007208:	00000097          	auipc	ra,0x0
    8000720c:	a44080e7          	jalr	-1468(ra) # 80006c4c <cpuid>
    80007210:	0085171b          	slliw	a4,a0,0x8
    80007214:	0c0027b7          	lui	a5,0xc002
    80007218:	00e787b3          	add	a5,a5,a4
    8000721c:	40200713          	li	a4,1026
    80007220:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007224:	00813083          	ld	ra,8(sp)
    80007228:	00013403          	ld	s0,0(sp)
    8000722c:	00d5151b          	slliw	a0,a0,0xd
    80007230:	0c2017b7          	lui	a5,0xc201
    80007234:	00a78533          	add	a0,a5,a0
    80007238:	00052023          	sw	zero,0(a0)
    8000723c:	01010113          	addi	sp,sp,16
    80007240:	00008067          	ret

0000000080007244 <plic_claim>:
    80007244:	ff010113          	addi	sp,sp,-16
    80007248:	00813023          	sd	s0,0(sp)
    8000724c:	00113423          	sd	ra,8(sp)
    80007250:	01010413          	addi	s0,sp,16
    80007254:	00000097          	auipc	ra,0x0
    80007258:	9f8080e7          	jalr	-1544(ra) # 80006c4c <cpuid>
    8000725c:	00813083          	ld	ra,8(sp)
    80007260:	00013403          	ld	s0,0(sp)
    80007264:	00d5151b          	slliw	a0,a0,0xd
    80007268:	0c2017b7          	lui	a5,0xc201
    8000726c:	00a78533          	add	a0,a5,a0
    80007270:	00452503          	lw	a0,4(a0)
    80007274:	01010113          	addi	sp,sp,16
    80007278:	00008067          	ret

000000008000727c <plic_complete>:
    8000727c:	fe010113          	addi	sp,sp,-32
    80007280:	00813823          	sd	s0,16(sp)
    80007284:	00913423          	sd	s1,8(sp)
    80007288:	00113c23          	sd	ra,24(sp)
    8000728c:	02010413          	addi	s0,sp,32
    80007290:	00050493          	mv	s1,a0
    80007294:	00000097          	auipc	ra,0x0
    80007298:	9b8080e7          	jalr	-1608(ra) # 80006c4c <cpuid>
    8000729c:	01813083          	ld	ra,24(sp)
    800072a0:	01013403          	ld	s0,16(sp)
    800072a4:	00d5179b          	slliw	a5,a0,0xd
    800072a8:	0c201737          	lui	a4,0xc201
    800072ac:	00f707b3          	add	a5,a4,a5
    800072b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800072b4:	00813483          	ld	s1,8(sp)
    800072b8:	02010113          	addi	sp,sp,32
    800072bc:	00008067          	ret

00000000800072c0 <consolewrite>:
    800072c0:	fb010113          	addi	sp,sp,-80
    800072c4:	04813023          	sd	s0,64(sp)
    800072c8:	04113423          	sd	ra,72(sp)
    800072cc:	02913c23          	sd	s1,56(sp)
    800072d0:	03213823          	sd	s2,48(sp)
    800072d4:	03313423          	sd	s3,40(sp)
    800072d8:	03413023          	sd	s4,32(sp)
    800072dc:	01513c23          	sd	s5,24(sp)
    800072e0:	05010413          	addi	s0,sp,80
    800072e4:	06c05c63          	blez	a2,8000735c <consolewrite+0x9c>
    800072e8:	00060993          	mv	s3,a2
    800072ec:	00050a13          	mv	s4,a0
    800072f0:	00058493          	mv	s1,a1
    800072f4:	00000913          	li	s2,0
    800072f8:	fff00a93          	li	s5,-1
    800072fc:	01c0006f          	j	80007318 <consolewrite+0x58>
    80007300:	fbf44503          	lbu	a0,-65(s0)
    80007304:	0019091b          	addiw	s2,s2,1
    80007308:	00148493          	addi	s1,s1,1
    8000730c:	00001097          	auipc	ra,0x1
    80007310:	a9c080e7          	jalr	-1380(ra) # 80007da8 <uartputc>
    80007314:	03298063          	beq	s3,s2,80007334 <consolewrite+0x74>
    80007318:	00048613          	mv	a2,s1
    8000731c:	00100693          	li	a3,1
    80007320:	000a0593          	mv	a1,s4
    80007324:	fbf40513          	addi	a0,s0,-65
    80007328:	00000097          	auipc	ra,0x0
    8000732c:	9dc080e7          	jalr	-1572(ra) # 80006d04 <either_copyin>
    80007330:	fd5518e3          	bne	a0,s5,80007300 <consolewrite+0x40>
    80007334:	04813083          	ld	ra,72(sp)
    80007338:	04013403          	ld	s0,64(sp)
    8000733c:	03813483          	ld	s1,56(sp)
    80007340:	02813983          	ld	s3,40(sp)
    80007344:	02013a03          	ld	s4,32(sp)
    80007348:	01813a83          	ld	s5,24(sp)
    8000734c:	00090513          	mv	a0,s2
    80007350:	03013903          	ld	s2,48(sp)
    80007354:	05010113          	addi	sp,sp,80
    80007358:	00008067          	ret
    8000735c:	00000913          	li	s2,0
    80007360:	fd5ff06f          	j	80007334 <consolewrite+0x74>

0000000080007364 <consoleread>:
    80007364:	f9010113          	addi	sp,sp,-112
    80007368:	06813023          	sd	s0,96(sp)
    8000736c:	04913c23          	sd	s1,88(sp)
    80007370:	05213823          	sd	s2,80(sp)
    80007374:	05313423          	sd	s3,72(sp)
    80007378:	05413023          	sd	s4,64(sp)
    8000737c:	03513c23          	sd	s5,56(sp)
    80007380:	03613823          	sd	s6,48(sp)
    80007384:	03713423          	sd	s7,40(sp)
    80007388:	03813023          	sd	s8,32(sp)
    8000738c:	06113423          	sd	ra,104(sp)
    80007390:	01913c23          	sd	s9,24(sp)
    80007394:	07010413          	addi	s0,sp,112
    80007398:	00060b93          	mv	s7,a2
    8000739c:	00050913          	mv	s2,a0
    800073a0:	00058c13          	mv	s8,a1
    800073a4:	00060b1b          	sext.w	s6,a2
    800073a8:	00006497          	auipc	s1,0x6
    800073ac:	8a048493          	addi	s1,s1,-1888 # 8000cc48 <cons>
    800073b0:	00400993          	li	s3,4
    800073b4:	fff00a13          	li	s4,-1
    800073b8:	00a00a93          	li	s5,10
    800073bc:	05705e63          	blez	s7,80007418 <consoleread+0xb4>
    800073c0:	09c4a703          	lw	a4,156(s1)
    800073c4:	0984a783          	lw	a5,152(s1)
    800073c8:	0007071b          	sext.w	a4,a4
    800073cc:	08e78463          	beq	a5,a4,80007454 <consoleread+0xf0>
    800073d0:	07f7f713          	andi	a4,a5,127
    800073d4:	00e48733          	add	a4,s1,a4
    800073d8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    800073dc:	0017869b          	addiw	a3,a5,1
    800073e0:	08d4ac23          	sw	a3,152(s1)
    800073e4:	00070c9b          	sext.w	s9,a4
    800073e8:	0b370663          	beq	a4,s3,80007494 <consoleread+0x130>
    800073ec:	00100693          	li	a3,1
    800073f0:	f9f40613          	addi	a2,s0,-97
    800073f4:	000c0593          	mv	a1,s8
    800073f8:	00090513          	mv	a0,s2
    800073fc:	f8e40fa3          	sb	a4,-97(s0)
    80007400:	00000097          	auipc	ra,0x0
    80007404:	8b8080e7          	jalr	-1864(ra) # 80006cb8 <either_copyout>
    80007408:	01450863          	beq	a0,s4,80007418 <consoleread+0xb4>
    8000740c:	001c0c13          	addi	s8,s8,1
    80007410:	fffb8b9b          	addiw	s7,s7,-1
    80007414:	fb5c94e3          	bne	s9,s5,800073bc <consoleread+0x58>
    80007418:	000b851b          	sext.w	a0,s7
    8000741c:	06813083          	ld	ra,104(sp)
    80007420:	06013403          	ld	s0,96(sp)
    80007424:	05813483          	ld	s1,88(sp)
    80007428:	05013903          	ld	s2,80(sp)
    8000742c:	04813983          	ld	s3,72(sp)
    80007430:	04013a03          	ld	s4,64(sp)
    80007434:	03813a83          	ld	s5,56(sp)
    80007438:	02813b83          	ld	s7,40(sp)
    8000743c:	02013c03          	ld	s8,32(sp)
    80007440:	01813c83          	ld	s9,24(sp)
    80007444:	40ab053b          	subw	a0,s6,a0
    80007448:	03013b03          	ld	s6,48(sp)
    8000744c:	07010113          	addi	sp,sp,112
    80007450:	00008067          	ret
    80007454:	00001097          	auipc	ra,0x1
    80007458:	1d8080e7          	jalr	472(ra) # 8000862c <push_on>
    8000745c:	0984a703          	lw	a4,152(s1)
    80007460:	09c4a783          	lw	a5,156(s1)
    80007464:	0007879b          	sext.w	a5,a5
    80007468:	fef70ce3          	beq	a4,a5,80007460 <consoleread+0xfc>
    8000746c:	00001097          	auipc	ra,0x1
    80007470:	234080e7          	jalr	564(ra) # 800086a0 <pop_on>
    80007474:	0984a783          	lw	a5,152(s1)
    80007478:	07f7f713          	andi	a4,a5,127
    8000747c:	00e48733          	add	a4,s1,a4
    80007480:	01874703          	lbu	a4,24(a4)
    80007484:	0017869b          	addiw	a3,a5,1
    80007488:	08d4ac23          	sw	a3,152(s1)
    8000748c:	00070c9b          	sext.w	s9,a4
    80007490:	f5371ee3          	bne	a4,s3,800073ec <consoleread+0x88>
    80007494:	000b851b          	sext.w	a0,s7
    80007498:	f96bf2e3          	bgeu	s7,s6,8000741c <consoleread+0xb8>
    8000749c:	08f4ac23          	sw	a5,152(s1)
    800074a0:	f7dff06f          	j	8000741c <consoleread+0xb8>

00000000800074a4 <consputc>:
    800074a4:	10000793          	li	a5,256
    800074a8:	00f50663          	beq	a0,a5,800074b4 <consputc+0x10>
    800074ac:	00001317          	auipc	t1,0x1
    800074b0:	9f430067          	jr	-1548(t1) # 80007ea0 <uartputc_sync>
    800074b4:	ff010113          	addi	sp,sp,-16
    800074b8:	00113423          	sd	ra,8(sp)
    800074bc:	00813023          	sd	s0,0(sp)
    800074c0:	01010413          	addi	s0,sp,16
    800074c4:	00800513          	li	a0,8
    800074c8:	00001097          	auipc	ra,0x1
    800074cc:	9d8080e7          	jalr	-1576(ra) # 80007ea0 <uartputc_sync>
    800074d0:	02000513          	li	a0,32
    800074d4:	00001097          	auipc	ra,0x1
    800074d8:	9cc080e7          	jalr	-1588(ra) # 80007ea0 <uartputc_sync>
    800074dc:	00013403          	ld	s0,0(sp)
    800074e0:	00813083          	ld	ra,8(sp)
    800074e4:	00800513          	li	a0,8
    800074e8:	01010113          	addi	sp,sp,16
    800074ec:	00001317          	auipc	t1,0x1
    800074f0:	9b430067          	jr	-1612(t1) # 80007ea0 <uartputc_sync>

00000000800074f4 <consoleintr>:
    800074f4:	fe010113          	addi	sp,sp,-32
    800074f8:	00813823          	sd	s0,16(sp)
    800074fc:	00913423          	sd	s1,8(sp)
    80007500:	01213023          	sd	s2,0(sp)
    80007504:	00113c23          	sd	ra,24(sp)
    80007508:	02010413          	addi	s0,sp,32
    8000750c:	00005917          	auipc	s2,0x5
    80007510:	73c90913          	addi	s2,s2,1852 # 8000cc48 <cons>
    80007514:	00050493          	mv	s1,a0
    80007518:	00090513          	mv	a0,s2
    8000751c:	00001097          	auipc	ra,0x1
    80007520:	e40080e7          	jalr	-448(ra) # 8000835c <acquire>
    80007524:	02048c63          	beqz	s1,8000755c <consoleintr+0x68>
    80007528:	0a092783          	lw	a5,160(s2)
    8000752c:	09892703          	lw	a4,152(s2)
    80007530:	07f00693          	li	a3,127
    80007534:	40e7873b          	subw	a4,a5,a4
    80007538:	02e6e263          	bltu	a3,a4,8000755c <consoleintr+0x68>
    8000753c:	00d00713          	li	a4,13
    80007540:	04e48063          	beq	s1,a4,80007580 <consoleintr+0x8c>
    80007544:	07f7f713          	andi	a4,a5,127
    80007548:	00e90733          	add	a4,s2,a4
    8000754c:	0017879b          	addiw	a5,a5,1
    80007550:	0af92023          	sw	a5,160(s2)
    80007554:	00970c23          	sb	s1,24(a4)
    80007558:	08f92e23          	sw	a5,156(s2)
    8000755c:	01013403          	ld	s0,16(sp)
    80007560:	01813083          	ld	ra,24(sp)
    80007564:	00813483          	ld	s1,8(sp)
    80007568:	00013903          	ld	s2,0(sp)
    8000756c:	00005517          	auipc	a0,0x5
    80007570:	6dc50513          	addi	a0,a0,1756 # 8000cc48 <cons>
    80007574:	02010113          	addi	sp,sp,32
    80007578:	00001317          	auipc	t1,0x1
    8000757c:	eb030067          	jr	-336(t1) # 80008428 <release>
    80007580:	00a00493          	li	s1,10
    80007584:	fc1ff06f          	j	80007544 <consoleintr+0x50>

0000000080007588 <consoleinit>:
    80007588:	fe010113          	addi	sp,sp,-32
    8000758c:	00113c23          	sd	ra,24(sp)
    80007590:	00813823          	sd	s0,16(sp)
    80007594:	00913423          	sd	s1,8(sp)
    80007598:	02010413          	addi	s0,sp,32
    8000759c:	00005497          	auipc	s1,0x5
    800075a0:	6ac48493          	addi	s1,s1,1708 # 8000cc48 <cons>
    800075a4:	00048513          	mv	a0,s1
    800075a8:	00002597          	auipc	a1,0x2
    800075ac:	1b058593          	addi	a1,a1,432 # 80009758 <CONSOLE_STATUS+0x748>
    800075b0:	00001097          	auipc	ra,0x1
    800075b4:	d88080e7          	jalr	-632(ra) # 80008338 <initlock>
    800075b8:	00000097          	auipc	ra,0x0
    800075bc:	7ac080e7          	jalr	1964(ra) # 80007d64 <uartinit>
    800075c0:	01813083          	ld	ra,24(sp)
    800075c4:	01013403          	ld	s0,16(sp)
    800075c8:	00000797          	auipc	a5,0x0
    800075cc:	d9c78793          	addi	a5,a5,-612 # 80007364 <consoleread>
    800075d0:	0af4bc23          	sd	a5,184(s1)
    800075d4:	00000797          	auipc	a5,0x0
    800075d8:	cec78793          	addi	a5,a5,-788 # 800072c0 <consolewrite>
    800075dc:	0cf4b023          	sd	a5,192(s1)
    800075e0:	00813483          	ld	s1,8(sp)
    800075e4:	02010113          	addi	sp,sp,32
    800075e8:	00008067          	ret

00000000800075ec <console_read>:
    800075ec:	ff010113          	addi	sp,sp,-16
    800075f0:	00813423          	sd	s0,8(sp)
    800075f4:	01010413          	addi	s0,sp,16
    800075f8:	00813403          	ld	s0,8(sp)
    800075fc:	00005317          	auipc	t1,0x5
    80007600:	70433303          	ld	t1,1796(t1) # 8000cd00 <devsw+0x10>
    80007604:	01010113          	addi	sp,sp,16
    80007608:	00030067          	jr	t1

000000008000760c <console_write>:
    8000760c:	ff010113          	addi	sp,sp,-16
    80007610:	00813423          	sd	s0,8(sp)
    80007614:	01010413          	addi	s0,sp,16
    80007618:	00813403          	ld	s0,8(sp)
    8000761c:	00005317          	auipc	t1,0x5
    80007620:	6ec33303          	ld	t1,1772(t1) # 8000cd08 <devsw+0x18>
    80007624:	01010113          	addi	sp,sp,16
    80007628:	00030067          	jr	t1

000000008000762c <panic>:
    8000762c:	fe010113          	addi	sp,sp,-32
    80007630:	00113c23          	sd	ra,24(sp)
    80007634:	00813823          	sd	s0,16(sp)
    80007638:	00913423          	sd	s1,8(sp)
    8000763c:	02010413          	addi	s0,sp,32
    80007640:	00050493          	mv	s1,a0
    80007644:	00002517          	auipc	a0,0x2
    80007648:	11c50513          	addi	a0,a0,284 # 80009760 <CONSOLE_STATUS+0x750>
    8000764c:	00005797          	auipc	a5,0x5
    80007650:	7407ae23          	sw	zero,1884(a5) # 8000cda8 <pr+0x18>
    80007654:	00000097          	auipc	ra,0x0
    80007658:	034080e7          	jalr	52(ra) # 80007688 <__printf>
    8000765c:	00048513          	mv	a0,s1
    80007660:	00000097          	auipc	ra,0x0
    80007664:	028080e7          	jalr	40(ra) # 80007688 <__printf>
    80007668:	00002517          	auipc	a0,0x2
    8000766c:	e8050513          	addi	a0,a0,-384 # 800094e8 <CONSOLE_STATUS+0x4d8>
    80007670:	00000097          	auipc	ra,0x0
    80007674:	018080e7          	jalr	24(ra) # 80007688 <__printf>
    80007678:	00100793          	li	a5,1
    8000767c:	00004717          	auipc	a4,0x4
    80007680:	40f72623          	sw	a5,1036(a4) # 8000ba88 <panicked>
    80007684:	0000006f          	j	80007684 <panic+0x58>

0000000080007688 <__printf>:
    80007688:	f3010113          	addi	sp,sp,-208
    8000768c:	08813023          	sd	s0,128(sp)
    80007690:	07313423          	sd	s3,104(sp)
    80007694:	09010413          	addi	s0,sp,144
    80007698:	05813023          	sd	s8,64(sp)
    8000769c:	08113423          	sd	ra,136(sp)
    800076a0:	06913c23          	sd	s1,120(sp)
    800076a4:	07213823          	sd	s2,112(sp)
    800076a8:	07413023          	sd	s4,96(sp)
    800076ac:	05513c23          	sd	s5,88(sp)
    800076b0:	05613823          	sd	s6,80(sp)
    800076b4:	05713423          	sd	s7,72(sp)
    800076b8:	03913c23          	sd	s9,56(sp)
    800076bc:	03a13823          	sd	s10,48(sp)
    800076c0:	03b13423          	sd	s11,40(sp)
    800076c4:	00005317          	auipc	t1,0x5
    800076c8:	6cc30313          	addi	t1,t1,1740 # 8000cd90 <pr>
    800076cc:	01832c03          	lw	s8,24(t1)
    800076d0:	00b43423          	sd	a1,8(s0)
    800076d4:	00c43823          	sd	a2,16(s0)
    800076d8:	00d43c23          	sd	a3,24(s0)
    800076dc:	02e43023          	sd	a4,32(s0)
    800076e0:	02f43423          	sd	a5,40(s0)
    800076e4:	03043823          	sd	a6,48(s0)
    800076e8:	03143c23          	sd	a7,56(s0)
    800076ec:	00050993          	mv	s3,a0
    800076f0:	4a0c1663          	bnez	s8,80007b9c <__printf+0x514>
    800076f4:	60098c63          	beqz	s3,80007d0c <__printf+0x684>
    800076f8:	0009c503          	lbu	a0,0(s3)
    800076fc:	00840793          	addi	a5,s0,8
    80007700:	f6f43c23          	sd	a5,-136(s0)
    80007704:	00000493          	li	s1,0
    80007708:	22050063          	beqz	a0,80007928 <__printf+0x2a0>
    8000770c:	00002a37          	lui	s4,0x2
    80007710:	00018ab7          	lui	s5,0x18
    80007714:	000f4b37          	lui	s6,0xf4
    80007718:	00989bb7          	lui	s7,0x989
    8000771c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80007720:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80007724:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80007728:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000772c:	00148c9b          	addiw	s9,s1,1
    80007730:	02500793          	li	a5,37
    80007734:	01998933          	add	s2,s3,s9
    80007738:	38f51263          	bne	a0,a5,80007abc <__printf+0x434>
    8000773c:	00094783          	lbu	a5,0(s2)
    80007740:	00078c9b          	sext.w	s9,a5
    80007744:	1e078263          	beqz	a5,80007928 <__printf+0x2a0>
    80007748:	0024849b          	addiw	s1,s1,2
    8000774c:	07000713          	li	a4,112
    80007750:	00998933          	add	s2,s3,s1
    80007754:	38e78a63          	beq	a5,a4,80007ae8 <__printf+0x460>
    80007758:	20f76863          	bltu	a4,a5,80007968 <__printf+0x2e0>
    8000775c:	42a78863          	beq	a5,a0,80007b8c <__printf+0x504>
    80007760:	06400713          	li	a4,100
    80007764:	40e79663          	bne	a5,a4,80007b70 <__printf+0x4e8>
    80007768:	f7843783          	ld	a5,-136(s0)
    8000776c:	0007a603          	lw	a2,0(a5)
    80007770:	00878793          	addi	a5,a5,8
    80007774:	f6f43c23          	sd	a5,-136(s0)
    80007778:	42064a63          	bltz	a2,80007bac <__printf+0x524>
    8000777c:	00a00713          	li	a4,10
    80007780:	02e677bb          	remuw	a5,a2,a4
    80007784:	00002d97          	auipc	s11,0x2
    80007788:	004d8d93          	addi	s11,s11,4 # 80009788 <digits>
    8000778c:	00900593          	li	a1,9
    80007790:	0006051b          	sext.w	a0,a2
    80007794:	00000c93          	li	s9,0
    80007798:	02079793          	slli	a5,a5,0x20
    8000779c:	0207d793          	srli	a5,a5,0x20
    800077a0:	00fd87b3          	add	a5,s11,a5
    800077a4:	0007c783          	lbu	a5,0(a5)
    800077a8:	02e656bb          	divuw	a3,a2,a4
    800077ac:	f8f40023          	sb	a5,-128(s0)
    800077b0:	14c5d863          	bge	a1,a2,80007900 <__printf+0x278>
    800077b4:	06300593          	li	a1,99
    800077b8:	00100c93          	li	s9,1
    800077bc:	02e6f7bb          	remuw	a5,a3,a4
    800077c0:	02079793          	slli	a5,a5,0x20
    800077c4:	0207d793          	srli	a5,a5,0x20
    800077c8:	00fd87b3          	add	a5,s11,a5
    800077cc:	0007c783          	lbu	a5,0(a5)
    800077d0:	02e6d73b          	divuw	a4,a3,a4
    800077d4:	f8f400a3          	sb	a5,-127(s0)
    800077d8:	12a5f463          	bgeu	a1,a0,80007900 <__printf+0x278>
    800077dc:	00a00693          	li	a3,10
    800077e0:	00900593          	li	a1,9
    800077e4:	02d777bb          	remuw	a5,a4,a3
    800077e8:	02079793          	slli	a5,a5,0x20
    800077ec:	0207d793          	srli	a5,a5,0x20
    800077f0:	00fd87b3          	add	a5,s11,a5
    800077f4:	0007c503          	lbu	a0,0(a5)
    800077f8:	02d757bb          	divuw	a5,a4,a3
    800077fc:	f8a40123          	sb	a0,-126(s0)
    80007800:	48e5f263          	bgeu	a1,a4,80007c84 <__printf+0x5fc>
    80007804:	06300513          	li	a0,99
    80007808:	02d7f5bb          	remuw	a1,a5,a3
    8000780c:	02059593          	slli	a1,a1,0x20
    80007810:	0205d593          	srli	a1,a1,0x20
    80007814:	00bd85b3          	add	a1,s11,a1
    80007818:	0005c583          	lbu	a1,0(a1)
    8000781c:	02d7d7bb          	divuw	a5,a5,a3
    80007820:	f8b401a3          	sb	a1,-125(s0)
    80007824:	48e57263          	bgeu	a0,a4,80007ca8 <__printf+0x620>
    80007828:	3e700513          	li	a0,999
    8000782c:	02d7f5bb          	remuw	a1,a5,a3
    80007830:	02059593          	slli	a1,a1,0x20
    80007834:	0205d593          	srli	a1,a1,0x20
    80007838:	00bd85b3          	add	a1,s11,a1
    8000783c:	0005c583          	lbu	a1,0(a1)
    80007840:	02d7d7bb          	divuw	a5,a5,a3
    80007844:	f8b40223          	sb	a1,-124(s0)
    80007848:	46e57663          	bgeu	a0,a4,80007cb4 <__printf+0x62c>
    8000784c:	02d7f5bb          	remuw	a1,a5,a3
    80007850:	02059593          	slli	a1,a1,0x20
    80007854:	0205d593          	srli	a1,a1,0x20
    80007858:	00bd85b3          	add	a1,s11,a1
    8000785c:	0005c583          	lbu	a1,0(a1)
    80007860:	02d7d7bb          	divuw	a5,a5,a3
    80007864:	f8b402a3          	sb	a1,-123(s0)
    80007868:	46ea7863          	bgeu	s4,a4,80007cd8 <__printf+0x650>
    8000786c:	02d7f5bb          	remuw	a1,a5,a3
    80007870:	02059593          	slli	a1,a1,0x20
    80007874:	0205d593          	srli	a1,a1,0x20
    80007878:	00bd85b3          	add	a1,s11,a1
    8000787c:	0005c583          	lbu	a1,0(a1)
    80007880:	02d7d7bb          	divuw	a5,a5,a3
    80007884:	f8b40323          	sb	a1,-122(s0)
    80007888:	3eeaf863          	bgeu	s5,a4,80007c78 <__printf+0x5f0>
    8000788c:	02d7f5bb          	remuw	a1,a5,a3
    80007890:	02059593          	slli	a1,a1,0x20
    80007894:	0205d593          	srli	a1,a1,0x20
    80007898:	00bd85b3          	add	a1,s11,a1
    8000789c:	0005c583          	lbu	a1,0(a1)
    800078a0:	02d7d7bb          	divuw	a5,a5,a3
    800078a4:	f8b403a3          	sb	a1,-121(s0)
    800078a8:	42eb7e63          	bgeu	s6,a4,80007ce4 <__printf+0x65c>
    800078ac:	02d7f5bb          	remuw	a1,a5,a3
    800078b0:	02059593          	slli	a1,a1,0x20
    800078b4:	0205d593          	srli	a1,a1,0x20
    800078b8:	00bd85b3          	add	a1,s11,a1
    800078bc:	0005c583          	lbu	a1,0(a1)
    800078c0:	02d7d7bb          	divuw	a5,a5,a3
    800078c4:	f8b40423          	sb	a1,-120(s0)
    800078c8:	42ebfc63          	bgeu	s7,a4,80007d00 <__printf+0x678>
    800078cc:	02079793          	slli	a5,a5,0x20
    800078d0:	0207d793          	srli	a5,a5,0x20
    800078d4:	00fd8db3          	add	s11,s11,a5
    800078d8:	000dc703          	lbu	a4,0(s11)
    800078dc:	00a00793          	li	a5,10
    800078e0:	00900c93          	li	s9,9
    800078e4:	f8e404a3          	sb	a4,-119(s0)
    800078e8:	00065c63          	bgez	a2,80007900 <__printf+0x278>
    800078ec:	f9040713          	addi	a4,s0,-112
    800078f0:	00f70733          	add	a4,a4,a5
    800078f4:	02d00693          	li	a3,45
    800078f8:	fed70823          	sb	a3,-16(a4)
    800078fc:	00078c93          	mv	s9,a5
    80007900:	f8040793          	addi	a5,s0,-128
    80007904:	01978cb3          	add	s9,a5,s9
    80007908:	f7f40d13          	addi	s10,s0,-129
    8000790c:	000cc503          	lbu	a0,0(s9)
    80007910:	fffc8c93          	addi	s9,s9,-1
    80007914:	00000097          	auipc	ra,0x0
    80007918:	b90080e7          	jalr	-1136(ra) # 800074a4 <consputc>
    8000791c:	ffac98e3          	bne	s9,s10,8000790c <__printf+0x284>
    80007920:	00094503          	lbu	a0,0(s2)
    80007924:	e00514e3          	bnez	a0,8000772c <__printf+0xa4>
    80007928:	1a0c1663          	bnez	s8,80007ad4 <__printf+0x44c>
    8000792c:	08813083          	ld	ra,136(sp)
    80007930:	08013403          	ld	s0,128(sp)
    80007934:	07813483          	ld	s1,120(sp)
    80007938:	07013903          	ld	s2,112(sp)
    8000793c:	06813983          	ld	s3,104(sp)
    80007940:	06013a03          	ld	s4,96(sp)
    80007944:	05813a83          	ld	s5,88(sp)
    80007948:	05013b03          	ld	s6,80(sp)
    8000794c:	04813b83          	ld	s7,72(sp)
    80007950:	04013c03          	ld	s8,64(sp)
    80007954:	03813c83          	ld	s9,56(sp)
    80007958:	03013d03          	ld	s10,48(sp)
    8000795c:	02813d83          	ld	s11,40(sp)
    80007960:	0d010113          	addi	sp,sp,208
    80007964:	00008067          	ret
    80007968:	07300713          	li	a4,115
    8000796c:	1ce78a63          	beq	a5,a4,80007b40 <__printf+0x4b8>
    80007970:	07800713          	li	a4,120
    80007974:	1ee79e63          	bne	a5,a4,80007b70 <__printf+0x4e8>
    80007978:	f7843783          	ld	a5,-136(s0)
    8000797c:	0007a703          	lw	a4,0(a5)
    80007980:	00878793          	addi	a5,a5,8
    80007984:	f6f43c23          	sd	a5,-136(s0)
    80007988:	28074263          	bltz	a4,80007c0c <__printf+0x584>
    8000798c:	00002d97          	auipc	s11,0x2
    80007990:	dfcd8d93          	addi	s11,s11,-516 # 80009788 <digits>
    80007994:	00f77793          	andi	a5,a4,15
    80007998:	00fd87b3          	add	a5,s11,a5
    8000799c:	0007c683          	lbu	a3,0(a5)
    800079a0:	00f00613          	li	a2,15
    800079a4:	0007079b          	sext.w	a5,a4
    800079a8:	f8d40023          	sb	a3,-128(s0)
    800079ac:	0047559b          	srliw	a1,a4,0x4
    800079b0:	0047569b          	srliw	a3,a4,0x4
    800079b4:	00000c93          	li	s9,0
    800079b8:	0ee65063          	bge	a2,a4,80007a98 <__printf+0x410>
    800079bc:	00f6f693          	andi	a3,a3,15
    800079c0:	00dd86b3          	add	a3,s11,a3
    800079c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800079c8:	0087d79b          	srliw	a5,a5,0x8
    800079cc:	00100c93          	li	s9,1
    800079d0:	f8d400a3          	sb	a3,-127(s0)
    800079d4:	0cb67263          	bgeu	a2,a1,80007a98 <__printf+0x410>
    800079d8:	00f7f693          	andi	a3,a5,15
    800079dc:	00dd86b3          	add	a3,s11,a3
    800079e0:	0006c583          	lbu	a1,0(a3)
    800079e4:	00f00613          	li	a2,15
    800079e8:	0047d69b          	srliw	a3,a5,0x4
    800079ec:	f8b40123          	sb	a1,-126(s0)
    800079f0:	0047d593          	srli	a1,a5,0x4
    800079f4:	28f67e63          	bgeu	a2,a5,80007c90 <__printf+0x608>
    800079f8:	00f6f693          	andi	a3,a3,15
    800079fc:	00dd86b3          	add	a3,s11,a3
    80007a00:	0006c503          	lbu	a0,0(a3)
    80007a04:	0087d813          	srli	a6,a5,0x8
    80007a08:	0087d69b          	srliw	a3,a5,0x8
    80007a0c:	f8a401a3          	sb	a0,-125(s0)
    80007a10:	28b67663          	bgeu	a2,a1,80007c9c <__printf+0x614>
    80007a14:	00f6f693          	andi	a3,a3,15
    80007a18:	00dd86b3          	add	a3,s11,a3
    80007a1c:	0006c583          	lbu	a1,0(a3)
    80007a20:	00c7d513          	srli	a0,a5,0xc
    80007a24:	00c7d69b          	srliw	a3,a5,0xc
    80007a28:	f8b40223          	sb	a1,-124(s0)
    80007a2c:	29067a63          	bgeu	a2,a6,80007cc0 <__printf+0x638>
    80007a30:	00f6f693          	andi	a3,a3,15
    80007a34:	00dd86b3          	add	a3,s11,a3
    80007a38:	0006c583          	lbu	a1,0(a3)
    80007a3c:	0107d813          	srli	a6,a5,0x10
    80007a40:	0107d69b          	srliw	a3,a5,0x10
    80007a44:	f8b402a3          	sb	a1,-123(s0)
    80007a48:	28a67263          	bgeu	a2,a0,80007ccc <__printf+0x644>
    80007a4c:	00f6f693          	andi	a3,a3,15
    80007a50:	00dd86b3          	add	a3,s11,a3
    80007a54:	0006c683          	lbu	a3,0(a3)
    80007a58:	0147d79b          	srliw	a5,a5,0x14
    80007a5c:	f8d40323          	sb	a3,-122(s0)
    80007a60:	21067663          	bgeu	a2,a6,80007c6c <__printf+0x5e4>
    80007a64:	02079793          	slli	a5,a5,0x20
    80007a68:	0207d793          	srli	a5,a5,0x20
    80007a6c:	00fd8db3          	add	s11,s11,a5
    80007a70:	000dc683          	lbu	a3,0(s11)
    80007a74:	00800793          	li	a5,8
    80007a78:	00700c93          	li	s9,7
    80007a7c:	f8d403a3          	sb	a3,-121(s0)
    80007a80:	00075c63          	bgez	a4,80007a98 <__printf+0x410>
    80007a84:	f9040713          	addi	a4,s0,-112
    80007a88:	00f70733          	add	a4,a4,a5
    80007a8c:	02d00693          	li	a3,45
    80007a90:	fed70823          	sb	a3,-16(a4)
    80007a94:	00078c93          	mv	s9,a5
    80007a98:	f8040793          	addi	a5,s0,-128
    80007a9c:	01978cb3          	add	s9,a5,s9
    80007aa0:	f7f40d13          	addi	s10,s0,-129
    80007aa4:	000cc503          	lbu	a0,0(s9)
    80007aa8:	fffc8c93          	addi	s9,s9,-1
    80007aac:	00000097          	auipc	ra,0x0
    80007ab0:	9f8080e7          	jalr	-1544(ra) # 800074a4 <consputc>
    80007ab4:	ff9d18e3          	bne	s10,s9,80007aa4 <__printf+0x41c>
    80007ab8:	0100006f          	j	80007ac8 <__printf+0x440>
    80007abc:	00000097          	auipc	ra,0x0
    80007ac0:	9e8080e7          	jalr	-1560(ra) # 800074a4 <consputc>
    80007ac4:	000c8493          	mv	s1,s9
    80007ac8:	00094503          	lbu	a0,0(s2)
    80007acc:	c60510e3          	bnez	a0,8000772c <__printf+0xa4>
    80007ad0:	e40c0ee3          	beqz	s8,8000792c <__printf+0x2a4>
    80007ad4:	00005517          	auipc	a0,0x5
    80007ad8:	2bc50513          	addi	a0,a0,700 # 8000cd90 <pr>
    80007adc:	00001097          	auipc	ra,0x1
    80007ae0:	94c080e7          	jalr	-1716(ra) # 80008428 <release>
    80007ae4:	e49ff06f          	j	8000792c <__printf+0x2a4>
    80007ae8:	f7843783          	ld	a5,-136(s0)
    80007aec:	03000513          	li	a0,48
    80007af0:	01000d13          	li	s10,16
    80007af4:	00878713          	addi	a4,a5,8
    80007af8:	0007bc83          	ld	s9,0(a5)
    80007afc:	f6e43c23          	sd	a4,-136(s0)
    80007b00:	00000097          	auipc	ra,0x0
    80007b04:	9a4080e7          	jalr	-1628(ra) # 800074a4 <consputc>
    80007b08:	07800513          	li	a0,120
    80007b0c:	00000097          	auipc	ra,0x0
    80007b10:	998080e7          	jalr	-1640(ra) # 800074a4 <consputc>
    80007b14:	00002d97          	auipc	s11,0x2
    80007b18:	c74d8d93          	addi	s11,s11,-908 # 80009788 <digits>
    80007b1c:	03ccd793          	srli	a5,s9,0x3c
    80007b20:	00fd87b3          	add	a5,s11,a5
    80007b24:	0007c503          	lbu	a0,0(a5)
    80007b28:	fffd0d1b          	addiw	s10,s10,-1
    80007b2c:	004c9c93          	slli	s9,s9,0x4
    80007b30:	00000097          	auipc	ra,0x0
    80007b34:	974080e7          	jalr	-1676(ra) # 800074a4 <consputc>
    80007b38:	fe0d12e3          	bnez	s10,80007b1c <__printf+0x494>
    80007b3c:	f8dff06f          	j	80007ac8 <__printf+0x440>
    80007b40:	f7843783          	ld	a5,-136(s0)
    80007b44:	0007bc83          	ld	s9,0(a5)
    80007b48:	00878793          	addi	a5,a5,8
    80007b4c:	f6f43c23          	sd	a5,-136(s0)
    80007b50:	000c9a63          	bnez	s9,80007b64 <__printf+0x4dc>
    80007b54:	1080006f          	j	80007c5c <__printf+0x5d4>
    80007b58:	001c8c93          	addi	s9,s9,1
    80007b5c:	00000097          	auipc	ra,0x0
    80007b60:	948080e7          	jalr	-1720(ra) # 800074a4 <consputc>
    80007b64:	000cc503          	lbu	a0,0(s9)
    80007b68:	fe0518e3          	bnez	a0,80007b58 <__printf+0x4d0>
    80007b6c:	f5dff06f          	j	80007ac8 <__printf+0x440>
    80007b70:	02500513          	li	a0,37
    80007b74:	00000097          	auipc	ra,0x0
    80007b78:	930080e7          	jalr	-1744(ra) # 800074a4 <consputc>
    80007b7c:	000c8513          	mv	a0,s9
    80007b80:	00000097          	auipc	ra,0x0
    80007b84:	924080e7          	jalr	-1756(ra) # 800074a4 <consputc>
    80007b88:	f41ff06f          	j	80007ac8 <__printf+0x440>
    80007b8c:	02500513          	li	a0,37
    80007b90:	00000097          	auipc	ra,0x0
    80007b94:	914080e7          	jalr	-1772(ra) # 800074a4 <consputc>
    80007b98:	f31ff06f          	j	80007ac8 <__printf+0x440>
    80007b9c:	00030513          	mv	a0,t1
    80007ba0:	00000097          	auipc	ra,0x0
    80007ba4:	7bc080e7          	jalr	1980(ra) # 8000835c <acquire>
    80007ba8:	b4dff06f          	j	800076f4 <__printf+0x6c>
    80007bac:	40c0053b          	negw	a0,a2
    80007bb0:	00a00713          	li	a4,10
    80007bb4:	02e576bb          	remuw	a3,a0,a4
    80007bb8:	00002d97          	auipc	s11,0x2
    80007bbc:	bd0d8d93          	addi	s11,s11,-1072 # 80009788 <digits>
    80007bc0:	ff700593          	li	a1,-9
    80007bc4:	02069693          	slli	a3,a3,0x20
    80007bc8:	0206d693          	srli	a3,a3,0x20
    80007bcc:	00dd86b3          	add	a3,s11,a3
    80007bd0:	0006c683          	lbu	a3,0(a3)
    80007bd4:	02e557bb          	divuw	a5,a0,a4
    80007bd8:	f8d40023          	sb	a3,-128(s0)
    80007bdc:	10b65e63          	bge	a2,a1,80007cf8 <__printf+0x670>
    80007be0:	06300593          	li	a1,99
    80007be4:	02e7f6bb          	remuw	a3,a5,a4
    80007be8:	02069693          	slli	a3,a3,0x20
    80007bec:	0206d693          	srli	a3,a3,0x20
    80007bf0:	00dd86b3          	add	a3,s11,a3
    80007bf4:	0006c683          	lbu	a3,0(a3)
    80007bf8:	02e7d73b          	divuw	a4,a5,a4
    80007bfc:	00200793          	li	a5,2
    80007c00:	f8d400a3          	sb	a3,-127(s0)
    80007c04:	bca5ece3          	bltu	a1,a0,800077dc <__printf+0x154>
    80007c08:	ce5ff06f          	j	800078ec <__printf+0x264>
    80007c0c:	40e007bb          	negw	a5,a4
    80007c10:	00002d97          	auipc	s11,0x2
    80007c14:	b78d8d93          	addi	s11,s11,-1160 # 80009788 <digits>
    80007c18:	00f7f693          	andi	a3,a5,15
    80007c1c:	00dd86b3          	add	a3,s11,a3
    80007c20:	0006c583          	lbu	a1,0(a3)
    80007c24:	ff100613          	li	a2,-15
    80007c28:	0047d69b          	srliw	a3,a5,0x4
    80007c2c:	f8b40023          	sb	a1,-128(s0)
    80007c30:	0047d59b          	srliw	a1,a5,0x4
    80007c34:	0ac75e63          	bge	a4,a2,80007cf0 <__printf+0x668>
    80007c38:	00f6f693          	andi	a3,a3,15
    80007c3c:	00dd86b3          	add	a3,s11,a3
    80007c40:	0006c603          	lbu	a2,0(a3)
    80007c44:	00f00693          	li	a3,15
    80007c48:	0087d79b          	srliw	a5,a5,0x8
    80007c4c:	f8c400a3          	sb	a2,-127(s0)
    80007c50:	d8b6e4e3          	bltu	a3,a1,800079d8 <__printf+0x350>
    80007c54:	00200793          	li	a5,2
    80007c58:	e2dff06f          	j	80007a84 <__printf+0x3fc>
    80007c5c:	00002c97          	auipc	s9,0x2
    80007c60:	b0cc8c93          	addi	s9,s9,-1268 # 80009768 <CONSOLE_STATUS+0x758>
    80007c64:	02800513          	li	a0,40
    80007c68:	ef1ff06f          	j	80007b58 <__printf+0x4d0>
    80007c6c:	00700793          	li	a5,7
    80007c70:	00600c93          	li	s9,6
    80007c74:	e0dff06f          	j	80007a80 <__printf+0x3f8>
    80007c78:	00700793          	li	a5,7
    80007c7c:	00600c93          	li	s9,6
    80007c80:	c69ff06f          	j	800078e8 <__printf+0x260>
    80007c84:	00300793          	li	a5,3
    80007c88:	00200c93          	li	s9,2
    80007c8c:	c5dff06f          	j	800078e8 <__printf+0x260>
    80007c90:	00300793          	li	a5,3
    80007c94:	00200c93          	li	s9,2
    80007c98:	de9ff06f          	j	80007a80 <__printf+0x3f8>
    80007c9c:	00400793          	li	a5,4
    80007ca0:	00300c93          	li	s9,3
    80007ca4:	dddff06f          	j	80007a80 <__printf+0x3f8>
    80007ca8:	00400793          	li	a5,4
    80007cac:	00300c93          	li	s9,3
    80007cb0:	c39ff06f          	j	800078e8 <__printf+0x260>
    80007cb4:	00500793          	li	a5,5
    80007cb8:	00400c93          	li	s9,4
    80007cbc:	c2dff06f          	j	800078e8 <__printf+0x260>
    80007cc0:	00500793          	li	a5,5
    80007cc4:	00400c93          	li	s9,4
    80007cc8:	db9ff06f          	j	80007a80 <__printf+0x3f8>
    80007ccc:	00600793          	li	a5,6
    80007cd0:	00500c93          	li	s9,5
    80007cd4:	dadff06f          	j	80007a80 <__printf+0x3f8>
    80007cd8:	00600793          	li	a5,6
    80007cdc:	00500c93          	li	s9,5
    80007ce0:	c09ff06f          	j	800078e8 <__printf+0x260>
    80007ce4:	00800793          	li	a5,8
    80007ce8:	00700c93          	li	s9,7
    80007cec:	bfdff06f          	j	800078e8 <__printf+0x260>
    80007cf0:	00100793          	li	a5,1
    80007cf4:	d91ff06f          	j	80007a84 <__printf+0x3fc>
    80007cf8:	00100793          	li	a5,1
    80007cfc:	bf1ff06f          	j	800078ec <__printf+0x264>
    80007d00:	00900793          	li	a5,9
    80007d04:	00800c93          	li	s9,8
    80007d08:	be1ff06f          	j	800078e8 <__printf+0x260>
    80007d0c:	00002517          	auipc	a0,0x2
    80007d10:	a6450513          	addi	a0,a0,-1436 # 80009770 <CONSOLE_STATUS+0x760>
    80007d14:	00000097          	auipc	ra,0x0
    80007d18:	918080e7          	jalr	-1768(ra) # 8000762c <panic>

0000000080007d1c <printfinit>:
    80007d1c:	fe010113          	addi	sp,sp,-32
    80007d20:	00813823          	sd	s0,16(sp)
    80007d24:	00913423          	sd	s1,8(sp)
    80007d28:	00113c23          	sd	ra,24(sp)
    80007d2c:	02010413          	addi	s0,sp,32
    80007d30:	00005497          	auipc	s1,0x5
    80007d34:	06048493          	addi	s1,s1,96 # 8000cd90 <pr>
    80007d38:	00048513          	mv	a0,s1
    80007d3c:	00002597          	auipc	a1,0x2
    80007d40:	a4458593          	addi	a1,a1,-1468 # 80009780 <CONSOLE_STATUS+0x770>
    80007d44:	00000097          	auipc	ra,0x0
    80007d48:	5f4080e7          	jalr	1524(ra) # 80008338 <initlock>
    80007d4c:	01813083          	ld	ra,24(sp)
    80007d50:	01013403          	ld	s0,16(sp)
    80007d54:	0004ac23          	sw	zero,24(s1)
    80007d58:	00813483          	ld	s1,8(sp)
    80007d5c:	02010113          	addi	sp,sp,32
    80007d60:	00008067          	ret

0000000080007d64 <uartinit>:
    80007d64:	ff010113          	addi	sp,sp,-16
    80007d68:	00813423          	sd	s0,8(sp)
    80007d6c:	01010413          	addi	s0,sp,16
    80007d70:	100007b7          	lui	a5,0x10000
    80007d74:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007d78:	f8000713          	li	a4,-128
    80007d7c:	00e781a3          	sb	a4,3(a5)
    80007d80:	00300713          	li	a4,3
    80007d84:	00e78023          	sb	a4,0(a5)
    80007d88:	000780a3          	sb	zero,1(a5)
    80007d8c:	00e781a3          	sb	a4,3(a5)
    80007d90:	00700693          	li	a3,7
    80007d94:	00d78123          	sb	a3,2(a5)
    80007d98:	00e780a3          	sb	a4,1(a5)
    80007d9c:	00813403          	ld	s0,8(sp)
    80007da0:	01010113          	addi	sp,sp,16
    80007da4:	00008067          	ret

0000000080007da8 <uartputc>:
    80007da8:	00004797          	auipc	a5,0x4
    80007dac:	ce07a783          	lw	a5,-800(a5) # 8000ba88 <panicked>
    80007db0:	00078463          	beqz	a5,80007db8 <uartputc+0x10>
    80007db4:	0000006f          	j	80007db4 <uartputc+0xc>
    80007db8:	fd010113          	addi	sp,sp,-48
    80007dbc:	02813023          	sd	s0,32(sp)
    80007dc0:	00913c23          	sd	s1,24(sp)
    80007dc4:	01213823          	sd	s2,16(sp)
    80007dc8:	01313423          	sd	s3,8(sp)
    80007dcc:	02113423          	sd	ra,40(sp)
    80007dd0:	03010413          	addi	s0,sp,48
    80007dd4:	00004917          	auipc	s2,0x4
    80007dd8:	cbc90913          	addi	s2,s2,-836 # 8000ba90 <uart_tx_r>
    80007ddc:	00093783          	ld	a5,0(s2)
    80007de0:	00004497          	auipc	s1,0x4
    80007de4:	cb848493          	addi	s1,s1,-840 # 8000ba98 <uart_tx_w>
    80007de8:	0004b703          	ld	a4,0(s1)
    80007dec:	02078693          	addi	a3,a5,32
    80007df0:	00050993          	mv	s3,a0
    80007df4:	02e69c63          	bne	a3,a4,80007e2c <uartputc+0x84>
    80007df8:	00001097          	auipc	ra,0x1
    80007dfc:	834080e7          	jalr	-1996(ra) # 8000862c <push_on>
    80007e00:	00093783          	ld	a5,0(s2)
    80007e04:	0004b703          	ld	a4,0(s1)
    80007e08:	02078793          	addi	a5,a5,32
    80007e0c:	00e79463          	bne	a5,a4,80007e14 <uartputc+0x6c>
    80007e10:	0000006f          	j	80007e10 <uartputc+0x68>
    80007e14:	00001097          	auipc	ra,0x1
    80007e18:	88c080e7          	jalr	-1908(ra) # 800086a0 <pop_on>
    80007e1c:	00093783          	ld	a5,0(s2)
    80007e20:	0004b703          	ld	a4,0(s1)
    80007e24:	02078693          	addi	a3,a5,32
    80007e28:	fce688e3          	beq	a3,a4,80007df8 <uartputc+0x50>
    80007e2c:	01f77693          	andi	a3,a4,31
    80007e30:	00005597          	auipc	a1,0x5
    80007e34:	f8058593          	addi	a1,a1,-128 # 8000cdb0 <uart_tx_buf>
    80007e38:	00d586b3          	add	a3,a1,a3
    80007e3c:	00170713          	addi	a4,a4,1
    80007e40:	01368023          	sb	s3,0(a3)
    80007e44:	00e4b023          	sd	a4,0(s1)
    80007e48:	10000637          	lui	a2,0x10000
    80007e4c:	02f71063          	bne	a4,a5,80007e6c <uartputc+0xc4>
    80007e50:	0340006f          	j	80007e84 <uartputc+0xdc>
    80007e54:	00074703          	lbu	a4,0(a4)
    80007e58:	00f93023          	sd	a5,0(s2)
    80007e5c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007e60:	00093783          	ld	a5,0(s2)
    80007e64:	0004b703          	ld	a4,0(s1)
    80007e68:	00f70e63          	beq	a4,a5,80007e84 <uartputc+0xdc>
    80007e6c:	00564683          	lbu	a3,5(a2)
    80007e70:	01f7f713          	andi	a4,a5,31
    80007e74:	00e58733          	add	a4,a1,a4
    80007e78:	0206f693          	andi	a3,a3,32
    80007e7c:	00178793          	addi	a5,a5,1
    80007e80:	fc069ae3          	bnez	a3,80007e54 <uartputc+0xac>
    80007e84:	02813083          	ld	ra,40(sp)
    80007e88:	02013403          	ld	s0,32(sp)
    80007e8c:	01813483          	ld	s1,24(sp)
    80007e90:	01013903          	ld	s2,16(sp)
    80007e94:	00813983          	ld	s3,8(sp)
    80007e98:	03010113          	addi	sp,sp,48
    80007e9c:	00008067          	ret

0000000080007ea0 <uartputc_sync>:
    80007ea0:	ff010113          	addi	sp,sp,-16
    80007ea4:	00813423          	sd	s0,8(sp)
    80007ea8:	01010413          	addi	s0,sp,16
    80007eac:	00004717          	auipc	a4,0x4
    80007eb0:	bdc72703          	lw	a4,-1060(a4) # 8000ba88 <panicked>
    80007eb4:	02071663          	bnez	a4,80007ee0 <uartputc_sync+0x40>
    80007eb8:	00050793          	mv	a5,a0
    80007ebc:	100006b7          	lui	a3,0x10000
    80007ec0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007ec4:	02077713          	andi	a4,a4,32
    80007ec8:	fe070ce3          	beqz	a4,80007ec0 <uartputc_sync+0x20>
    80007ecc:	0ff7f793          	andi	a5,a5,255
    80007ed0:	00f68023          	sb	a5,0(a3)
    80007ed4:	00813403          	ld	s0,8(sp)
    80007ed8:	01010113          	addi	sp,sp,16
    80007edc:	00008067          	ret
    80007ee0:	0000006f          	j	80007ee0 <uartputc_sync+0x40>

0000000080007ee4 <uartstart>:
    80007ee4:	ff010113          	addi	sp,sp,-16
    80007ee8:	00813423          	sd	s0,8(sp)
    80007eec:	01010413          	addi	s0,sp,16
    80007ef0:	00004617          	auipc	a2,0x4
    80007ef4:	ba060613          	addi	a2,a2,-1120 # 8000ba90 <uart_tx_r>
    80007ef8:	00004517          	auipc	a0,0x4
    80007efc:	ba050513          	addi	a0,a0,-1120 # 8000ba98 <uart_tx_w>
    80007f00:	00063783          	ld	a5,0(a2)
    80007f04:	00053703          	ld	a4,0(a0)
    80007f08:	04f70263          	beq	a4,a5,80007f4c <uartstart+0x68>
    80007f0c:	100005b7          	lui	a1,0x10000
    80007f10:	00005817          	auipc	a6,0x5
    80007f14:	ea080813          	addi	a6,a6,-352 # 8000cdb0 <uart_tx_buf>
    80007f18:	01c0006f          	j	80007f34 <uartstart+0x50>
    80007f1c:	0006c703          	lbu	a4,0(a3)
    80007f20:	00f63023          	sd	a5,0(a2)
    80007f24:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007f28:	00063783          	ld	a5,0(a2)
    80007f2c:	00053703          	ld	a4,0(a0)
    80007f30:	00f70e63          	beq	a4,a5,80007f4c <uartstart+0x68>
    80007f34:	01f7f713          	andi	a4,a5,31
    80007f38:	00e806b3          	add	a3,a6,a4
    80007f3c:	0055c703          	lbu	a4,5(a1)
    80007f40:	00178793          	addi	a5,a5,1
    80007f44:	02077713          	andi	a4,a4,32
    80007f48:	fc071ae3          	bnez	a4,80007f1c <uartstart+0x38>
    80007f4c:	00813403          	ld	s0,8(sp)
    80007f50:	01010113          	addi	sp,sp,16
    80007f54:	00008067          	ret

0000000080007f58 <uartgetc>:
    80007f58:	ff010113          	addi	sp,sp,-16
    80007f5c:	00813423          	sd	s0,8(sp)
    80007f60:	01010413          	addi	s0,sp,16
    80007f64:	10000737          	lui	a4,0x10000
    80007f68:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007f6c:	0017f793          	andi	a5,a5,1
    80007f70:	00078c63          	beqz	a5,80007f88 <uartgetc+0x30>
    80007f74:	00074503          	lbu	a0,0(a4)
    80007f78:	0ff57513          	andi	a0,a0,255
    80007f7c:	00813403          	ld	s0,8(sp)
    80007f80:	01010113          	addi	sp,sp,16
    80007f84:	00008067          	ret
    80007f88:	fff00513          	li	a0,-1
    80007f8c:	ff1ff06f          	j	80007f7c <uartgetc+0x24>

0000000080007f90 <uartintr>:
    80007f90:	100007b7          	lui	a5,0x10000
    80007f94:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007f98:	0017f793          	andi	a5,a5,1
    80007f9c:	0a078463          	beqz	a5,80008044 <uartintr+0xb4>
    80007fa0:	fe010113          	addi	sp,sp,-32
    80007fa4:	00813823          	sd	s0,16(sp)
    80007fa8:	00913423          	sd	s1,8(sp)
    80007fac:	00113c23          	sd	ra,24(sp)
    80007fb0:	02010413          	addi	s0,sp,32
    80007fb4:	100004b7          	lui	s1,0x10000
    80007fb8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007fbc:	0ff57513          	andi	a0,a0,255
    80007fc0:	fffff097          	auipc	ra,0xfffff
    80007fc4:	534080e7          	jalr	1332(ra) # 800074f4 <consoleintr>
    80007fc8:	0054c783          	lbu	a5,5(s1)
    80007fcc:	0017f793          	andi	a5,a5,1
    80007fd0:	fe0794e3          	bnez	a5,80007fb8 <uartintr+0x28>
    80007fd4:	00004617          	auipc	a2,0x4
    80007fd8:	abc60613          	addi	a2,a2,-1348 # 8000ba90 <uart_tx_r>
    80007fdc:	00004517          	auipc	a0,0x4
    80007fe0:	abc50513          	addi	a0,a0,-1348 # 8000ba98 <uart_tx_w>
    80007fe4:	00063783          	ld	a5,0(a2)
    80007fe8:	00053703          	ld	a4,0(a0)
    80007fec:	04f70263          	beq	a4,a5,80008030 <uartintr+0xa0>
    80007ff0:	100005b7          	lui	a1,0x10000
    80007ff4:	00005817          	auipc	a6,0x5
    80007ff8:	dbc80813          	addi	a6,a6,-580 # 8000cdb0 <uart_tx_buf>
    80007ffc:	01c0006f          	j	80008018 <uartintr+0x88>
    80008000:	0006c703          	lbu	a4,0(a3)
    80008004:	00f63023          	sd	a5,0(a2)
    80008008:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000800c:	00063783          	ld	a5,0(a2)
    80008010:	00053703          	ld	a4,0(a0)
    80008014:	00f70e63          	beq	a4,a5,80008030 <uartintr+0xa0>
    80008018:	01f7f713          	andi	a4,a5,31
    8000801c:	00e806b3          	add	a3,a6,a4
    80008020:	0055c703          	lbu	a4,5(a1)
    80008024:	00178793          	addi	a5,a5,1
    80008028:	02077713          	andi	a4,a4,32
    8000802c:	fc071ae3          	bnez	a4,80008000 <uartintr+0x70>
    80008030:	01813083          	ld	ra,24(sp)
    80008034:	01013403          	ld	s0,16(sp)
    80008038:	00813483          	ld	s1,8(sp)
    8000803c:	02010113          	addi	sp,sp,32
    80008040:	00008067          	ret
    80008044:	00004617          	auipc	a2,0x4
    80008048:	a4c60613          	addi	a2,a2,-1460 # 8000ba90 <uart_tx_r>
    8000804c:	00004517          	auipc	a0,0x4
    80008050:	a4c50513          	addi	a0,a0,-1460 # 8000ba98 <uart_tx_w>
    80008054:	00063783          	ld	a5,0(a2)
    80008058:	00053703          	ld	a4,0(a0)
    8000805c:	04f70263          	beq	a4,a5,800080a0 <uartintr+0x110>
    80008060:	100005b7          	lui	a1,0x10000
    80008064:	00005817          	auipc	a6,0x5
    80008068:	d4c80813          	addi	a6,a6,-692 # 8000cdb0 <uart_tx_buf>
    8000806c:	01c0006f          	j	80008088 <uartintr+0xf8>
    80008070:	0006c703          	lbu	a4,0(a3)
    80008074:	00f63023          	sd	a5,0(a2)
    80008078:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000807c:	00063783          	ld	a5,0(a2)
    80008080:	00053703          	ld	a4,0(a0)
    80008084:	02f70063          	beq	a4,a5,800080a4 <uartintr+0x114>
    80008088:	01f7f713          	andi	a4,a5,31
    8000808c:	00e806b3          	add	a3,a6,a4
    80008090:	0055c703          	lbu	a4,5(a1)
    80008094:	00178793          	addi	a5,a5,1
    80008098:	02077713          	andi	a4,a4,32
    8000809c:	fc071ae3          	bnez	a4,80008070 <uartintr+0xe0>
    800080a0:	00008067          	ret
    800080a4:	00008067          	ret

00000000800080a8 <kinit>:
    800080a8:	fc010113          	addi	sp,sp,-64
    800080ac:	02913423          	sd	s1,40(sp)
    800080b0:	fffff7b7          	lui	a5,0xfffff
    800080b4:	00006497          	auipc	s1,0x6
    800080b8:	d1b48493          	addi	s1,s1,-741 # 8000ddcf <end+0xfff>
    800080bc:	02813823          	sd	s0,48(sp)
    800080c0:	01313c23          	sd	s3,24(sp)
    800080c4:	00f4f4b3          	and	s1,s1,a5
    800080c8:	02113c23          	sd	ra,56(sp)
    800080cc:	03213023          	sd	s2,32(sp)
    800080d0:	01413823          	sd	s4,16(sp)
    800080d4:	01513423          	sd	s5,8(sp)
    800080d8:	04010413          	addi	s0,sp,64
    800080dc:	000017b7          	lui	a5,0x1
    800080e0:	01100993          	li	s3,17
    800080e4:	00f487b3          	add	a5,s1,a5
    800080e8:	01b99993          	slli	s3,s3,0x1b
    800080ec:	06f9e063          	bltu	s3,a5,8000814c <kinit+0xa4>
    800080f0:	00005a97          	auipc	s5,0x5
    800080f4:	ce0a8a93          	addi	s5,s5,-800 # 8000cdd0 <end>
    800080f8:	0754ec63          	bltu	s1,s5,80008170 <kinit+0xc8>
    800080fc:	0734fa63          	bgeu	s1,s3,80008170 <kinit+0xc8>
    80008100:	00088a37          	lui	s4,0x88
    80008104:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008108:	00004917          	auipc	s2,0x4
    8000810c:	99890913          	addi	s2,s2,-1640 # 8000baa0 <kmem>
    80008110:	00ca1a13          	slli	s4,s4,0xc
    80008114:	0140006f          	j	80008128 <kinit+0x80>
    80008118:	000017b7          	lui	a5,0x1
    8000811c:	00f484b3          	add	s1,s1,a5
    80008120:	0554e863          	bltu	s1,s5,80008170 <kinit+0xc8>
    80008124:	0534f663          	bgeu	s1,s3,80008170 <kinit+0xc8>
    80008128:	00001637          	lui	a2,0x1
    8000812c:	00100593          	li	a1,1
    80008130:	00048513          	mv	a0,s1
    80008134:	00000097          	auipc	ra,0x0
    80008138:	5e4080e7          	jalr	1508(ra) # 80008718 <__memset>
    8000813c:	00093783          	ld	a5,0(s2)
    80008140:	00f4b023          	sd	a5,0(s1)
    80008144:	00993023          	sd	s1,0(s2)
    80008148:	fd4498e3          	bne	s1,s4,80008118 <kinit+0x70>
    8000814c:	03813083          	ld	ra,56(sp)
    80008150:	03013403          	ld	s0,48(sp)
    80008154:	02813483          	ld	s1,40(sp)
    80008158:	02013903          	ld	s2,32(sp)
    8000815c:	01813983          	ld	s3,24(sp)
    80008160:	01013a03          	ld	s4,16(sp)
    80008164:	00813a83          	ld	s5,8(sp)
    80008168:	04010113          	addi	sp,sp,64
    8000816c:	00008067          	ret
    80008170:	00001517          	auipc	a0,0x1
    80008174:	63050513          	addi	a0,a0,1584 # 800097a0 <digits+0x18>
    80008178:	fffff097          	auipc	ra,0xfffff
    8000817c:	4b4080e7          	jalr	1204(ra) # 8000762c <panic>

0000000080008180 <freerange>:
    80008180:	fc010113          	addi	sp,sp,-64
    80008184:	000017b7          	lui	a5,0x1
    80008188:	02913423          	sd	s1,40(sp)
    8000818c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008190:	009504b3          	add	s1,a0,s1
    80008194:	fffff537          	lui	a0,0xfffff
    80008198:	02813823          	sd	s0,48(sp)
    8000819c:	02113c23          	sd	ra,56(sp)
    800081a0:	03213023          	sd	s2,32(sp)
    800081a4:	01313c23          	sd	s3,24(sp)
    800081a8:	01413823          	sd	s4,16(sp)
    800081ac:	01513423          	sd	s5,8(sp)
    800081b0:	01613023          	sd	s6,0(sp)
    800081b4:	04010413          	addi	s0,sp,64
    800081b8:	00a4f4b3          	and	s1,s1,a0
    800081bc:	00f487b3          	add	a5,s1,a5
    800081c0:	06f5e463          	bltu	a1,a5,80008228 <freerange+0xa8>
    800081c4:	00005a97          	auipc	s5,0x5
    800081c8:	c0ca8a93          	addi	s5,s5,-1012 # 8000cdd0 <end>
    800081cc:	0954e263          	bltu	s1,s5,80008250 <freerange+0xd0>
    800081d0:	01100993          	li	s3,17
    800081d4:	01b99993          	slli	s3,s3,0x1b
    800081d8:	0734fc63          	bgeu	s1,s3,80008250 <freerange+0xd0>
    800081dc:	00058a13          	mv	s4,a1
    800081e0:	00004917          	auipc	s2,0x4
    800081e4:	8c090913          	addi	s2,s2,-1856 # 8000baa0 <kmem>
    800081e8:	00002b37          	lui	s6,0x2
    800081ec:	0140006f          	j	80008200 <freerange+0x80>
    800081f0:	000017b7          	lui	a5,0x1
    800081f4:	00f484b3          	add	s1,s1,a5
    800081f8:	0554ec63          	bltu	s1,s5,80008250 <freerange+0xd0>
    800081fc:	0534fa63          	bgeu	s1,s3,80008250 <freerange+0xd0>
    80008200:	00001637          	lui	a2,0x1
    80008204:	00100593          	li	a1,1
    80008208:	00048513          	mv	a0,s1
    8000820c:	00000097          	auipc	ra,0x0
    80008210:	50c080e7          	jalr	1292(ra) # 80008718 <__memset>
    80008214:	00093703          	ld	a4,0(s2)
    80008218:	016487b3          	add	a5,s1,s6
    8000821c:	00e4b023          	sd	a4,0(s1)
    80008220:	00993023          	sd	s1,0(s2)
    80008224:	fcfa76e3          	bgeu	s4,a5,800081f0 <freerange+0x70>
    80008228:	03813083          	ld	ra,56(sp)
    8000822c:	03013403          	ld	s0,48(sp)
    80008230:	02813483          	ld	s1,40(sp)
    80008234:	02013903          	ld	s2,32(sp)
    80008238:	01813983          	ld	s3,24(sp)
    8000823c:	01013a03          	ld	s4,16(sp)
    80008240:	00813a83          	ld	s5,8(sp)
    80008244:	00013b03          	ld	s6,0(sp)
    80008248:	04010113          	addi	sp,sp,64
    8000824c:	00008067          	ret
    80008250:	00001517          	auipc	a0,0x1
    80008254:	55050513          	addi	a0,a0,1360 # 800097a0 <digits+0x18>
    80008258:	fffff097          	auipc	ra,0xfffff
    8000825c:	3d4080e7          	jalr	980(ra) # 8000762c <panic>

0000000080008260 <kfree>:
    80008260:	fe010113          	addi	sp,sp,-32
    80008264:	00813823          	sd	s0,16(sp)
    80008268:	00113c23          	sd	ra,24(sp)
    8000826c:	00913423          	sd	s1,8(sp)
    80008270:	02010413          	addi	s0,sp,32
    80008274:	03451793          	slli	a5,a0,0x34
    80008278:	04079c63          	bnez	a5,800082d0 <kfree+0x70>
    8000827c:	00005797          	auipc	a5,0x5
    80008280:	b5478793          	addi	a5,a5,-1196 # 8000cdd0 <end>
    80008284:	00050493          	mv	s1,a0
    80008288:	04f56463          	bltu	a0,a5,800082d0 <kfree+0x70>
    8000828c:	01100793          	li	a5,17
    80008290:	01b79793          	slli	a5,a5,0x1b
    80008294:	02f57e63          	bgeu	a0,a5,800082d0 <kfree+0x70>
    80008298:	00001637          	lui	a2,0x1
    8000829c:	00100593          	li	a1,1
    800082a0:	00000097          	auipc	ra,0x0
    800082a4:	478080e7          	jalr	1144(ra) # 80008718 <__memset>
    800082a8:	00003797          	auipc	a5,0x3
    800082ac:	7f878793          	addi	a5,a5,2040 # 8000baa0 <kmem>
    800082b0:	0007b703          	ld	a4,0(a5)
    800082b4:	01813083          	ld	ra,24(sp)
    800082b8:	01013403          	ld	s0,16(sp)
    800082bc:	00e4b023          	sd	a4,0(s1)
    800082c0:	0097b023          	sd	s1,0(a5)
    800082c4:	00813483          	ld	s1,8(sp)
    800082c8:	02010113          	addi	sp,sp,32
    800082cc:	00008067          	ret
    800082d0:	00001517          	auipc	a0,0x1
    800082d4:	4d050513          	addi	a0,a0,1232 # 800097a0 <digits+0x18>
    800082d8:	fffff097          	auipc	ra,0xfffff
    800082dc:	354080e7          	jalr	852(ra) # 8000762c <panic>

00000000800082e0 <kalloc>:
    800082e0:	fe010113          	addi	sp,sp,-32
    800082e4:	00813823          	sd	s0,16(sp)
    800082e8:	00913423          	sd	s1,8(sp)
    800082ec:	00113c23          	sd	ra,24(sp)
    800082f0:	02010413          	addi	s0,sp,32
    800082f4:	00003797          	auipc	a5,0x3
    800082f8:	7ac78793          	addi	a5,a5,1964 # 8000baa0 <kmem>
    800082fc:	0007b483          	ld	s1,0(a5)
    80008300:	02048063          	beqz	s1,80008320 <kalloc+0x40>
    80008304:	0004b703          	ld	a4,0(s1)
    80008308:	00001637          	lui	a2,0x1
    8000830c:	00500593          	li	a1,5
    80008310:	00048513          	mv	a0,s1
    80008314:	00e7b023          	sd	a4,0(a5)
    80008318:	00000097          	auipc	ra,0x0
    8000831c:	400080e7          	jalr	1024(ra) # 80008718 <__memset>
    80008320:	01813083          	ld	ra,24(sp)
    80008324:	01013403          	ld	s0,16(sp)
    80008328:	00048513          	mv	a0,s1
    8000832c:	00813483          	ld	s1,8(sp)
    80008330:	02010113          	addi	sp,sp,32
    80008334:	00008067          	ret

0000000080008338 <initlock>:
    80008338:	ff010113          	addi	sp,sp,-16
    8000833c:	00813423          	sd	s0,8(sp)
    80008340:	01010413          	addi	s0,sp,16
    80008344:	00813403          	ld	s0,8(sp)
    80008348:	00b53423          	sd	a1,8(a0)
    8000834c:	00052023          	sw	zero,0(a0)
    80008350:	00053823          	sd	zero,16(a0)
    80008354:	01010113          	addi	sp,sp,16
    80008358:	00008067          	ret

000000008000835c <acquire>:
    8000835c:	fe010113          	addi	sp,sp,-32
    80008360:	00813823          	sd	s0,16(sp)
    80008364:	00913423          	sd	s1,8(sp)
    80008368:	00113c23          	sd	ra,24(sp)
    8000836c:	01213023          	sd	s2,0(sp)
    80008370:	02010413          	addi	s0,sp,32
    80008374:	00050493          	mv	s1,a0
    80008378:	10002973          	csrr	s2,sstatus
    8000837c:	100027f3          	csrr	a5,sstatus
    80008380:	ffd7f793          	andi	a5,a5,-3
    80008384:	10079073          	csrw	sstatus,a5
    80008388:	fffff097          	auipc	ra,0xfffff
    8000838c:	8e4080e7          	jalr	-1820(ra) # 80006c6c <mycpu>
    80008390:	07852783          	lw	a5,120(a0)
    80008394:	06078e63          	beqz	a5,80008410 <acquire+0xb4>
    80008398:	fffff097          	auipc	ra,0xfffff
    8000839c:	8d4080e7          	jalr	-1836(ra) # 80006c6c <mycpu>
    800083a0:	07852783          	lw	a5,120(a0)
    800083a4:	0004a703          	lw	a4,0(s1)
    800083a8:	0017879b          	addiw	a5,a5,1
    800083ac:	06f52c23          	sw	a5,120(a0)
    800083b0:	04071063          	bnez	a4,800083f0 <acquire+0x94>
    800083b4:	00100713          	li	a4,1
    800083b8:	00070793          	mv	a5,a4
    800083bc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    800083c0:	0007879b          	sext.w	a5,a5
    800083c4:	fe079ae3          	bnez	a5,800083b8 <acquire+0x5c>
    800083c8:	0ff0000f          	fence
    800083cc:	fffff097          	auipc	ra,0xfffff
    800083d0:	8a0080e7          	jalr	-1888(ra) # 80006c6c <mycpu>
    800083d4:	01813083          	ld	ra,24(sp)
    800083d8:	01013403          	ld	s0,16(sp)
    800083dc:	00a4b823          	sd	a0,16(s1)
    800083e0:	00013903          	ld	s2,0(sp)
    800083e4:	00813483          	ld	s1,8(sp)
    800083e8:	02010113          	addi	sp,sp,32
    800083ec:	00008067          	ret
    800083f0:	0104b903          	ld	s2,16(s1)
    800083f4:	fffff097          	auipc	ra,0xfffff
    800083f8:	878080e7          	jalr	-1928(ra) # 80006c6c <mycpu>
    800083fc:	faa91ce3          	bne	s2,a0,800083b4 <acquire+0x58>
    80008400:	00001517          	auipc	a0,0x1
    80008404:	3a850513          	addi	a0,a0,936 # 800097a8 <digits+0x20>
    80008408:	fffff097          	auipc	ra,0xfffff
    8000840c:	224080e7          	jalr	548(ra) # 8000762c <panic>
    80008410:	00195913          	srli	s2,s2,0x1
    80008414:	fffff097          	auipc	ra,0xfffff
    80008418:	858080e7          	jalr	-1960(ra) # 80006c6c <mycpu>
    8000841c:	00197913          	andi	s2,s2,1
    80008420:	07252e23          	sw	s2,124(a0)
    80008424:	f75ff06f          	j	80008398 <acquire+0x3c>

0000000080008428 <release>:
    80008428:	fe010113          	addi	sp,sp,-32
    8000842c:	00813823          	sd	s0,16(sp)
    80008430:	00113c23          	sd	ra,24(sp)
    80008434:	00913423          	sd	s1,8(sp)
    80008438:	01213023          	sd	s2,0(sp)
    8000843c:	02010413          	addi	s0,sp,32
    80008440:	00052783          	lw	a5,0(a0)
    80008444:	00079a63          	bnez	a5,80008458 <release+0x30>
    80008448:	00001517          	auipc	a0,0x1
    8000844c:	36850513          	addi	a0,a0,872 # 800097b0 <digits+0x28>
    80008450:	fffff097          	auipc	ra,0xfffff
    80008454:	1dc080e7          	jalr	476(ra) # 8000762c <panic>
    80008458:	01053903          	ld	s2,16(a0)
    8000845c:	00050493          	mv	s1,a0
    80008460:	fffff097          	auipc	ra,0xfffff
    80008464:	80c080e7          	jalr	-2036(ra) # 80006c6c <mycpu>
    80008468:	fea910e3          	bne	s2,a0,80008448 <release+0x20>
    8000846c:	0004b823          	sd	zero,16(s1)
    80008470:	0ff0000f          	fence
    80008474:	0f50000f          	fence	iorw,ow
    80008478:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000847c:	ffffe097          	auipc	ra,0xffffe
    80008480:	7f0080e7          	jalr	2032(ra) # 80006c6c <mycpu>
    80008484:	100027f3          	csrr	a5,sstatus
    80008488:	0027f793          	andi	a5,a5,2
    8000848c:	04079a63          	bnez	a5,800084e0 <release+0xb8>
    80008490:	07852783          	lw	a5,120(a0)
    80008494:	02f05e63          	blez	a5,800084d0 <release+0xa8>
    80008498:	fff7871b          	addiw	a4,a5,-1
    8000849c:	06e52c23          	sw	a4,120(a0)
    800084a0:	00071c63          	bnez	a4,800084b8 <release+0x90>
    800084a4:	07c52783          	lw	a5,124(a0)
    800084a8:	00078863          	beqz	a5,800084b8 <release+0x90>
    800084ac:	100027f3          	csrr	a5,sstatus
    800084b0:	0027e793          	ori	a5,a5,2
    800084b4:	10079073          	csrw	sstatus,a5
    800084b8:	01813083          	ld	ra,24(sp)
    800084bc:	01013403          	ld	s0,16(sp)
    800084c0:	00813483          	ld	s1,8(sp)
    800084c4:	00013903          	ld	s2,0(sp)
    800084c8:	02010113          	addi	sp,sp,32
    800084cc:	00008067          	ret
    800084d0:	00001517          	auipc	a0,0x1
    800084d4:	30050513          	addi	a0,a0,768 # 800097d0 <digits+0x48>
    800084d8:	fffff097          	auipc	ra,0xfffff
    800084dc:	154080e7          	jalr	340(ra) # 8000762c <panic>
    800084e0:	00001517          	auipc	a0,0x1
    800084e4:	2d850513          	addi	a0,a0,728 # 800097b8 <digits+0x30>
    800084e8:	fffff097          	auipc	ra,0xfffff
    800084ec:	144080e7          	jalr	324(ra) # 8000762c <panic>

00000000800084f0 <holding>:
    800084f0:	00052783          	lw	a5,0(a0)
    800084f4:	00079663          	bnez	a5,80008500 <holding+0x10>
    800084f8:	00000513          	li	a0,0
    800084fc:	00008067          	ret
    80008500:	fe010113          	addi	sp,sp,-32
    80008504:	00813823          	sd	s0,16(sp)
    80008508:	00913423          	sd	s1,8(sp)
    8000850c:	00113c23          	sd	ra,24(sp)
    80008510:	02010413          	addi	s0,sp,32
    80008514:	01053483          	ld	s1,16(a0)
    80008518:	ffffe097          	auipc	ra,0xffffe
    8000851c:	754080e7          	jalr	1876(ra) # 80006c6c <mycpu>
    80008520:	01813083          	ld	ra,24(sp)
    80008524:	01013403          	ld	s0,16(sp)
    80008528:	40a48533          	sub	a0,s1,a0
    8000852c:	00153513          	seqz	a0,a0
    80008530:	00813483          	ld	s1,8(sp)
    80008534:	02010113          	addi	sp,sp,32
    80008538:	00008067          	ret

000000008000853c <push_off>:
    8000853c:	fe010113          	addi	sp,sp,-32
    80008540:	00813823          	sd	s0,16(sp)
    80008544:	00113c23          	sd	ra,24(sp)
    80008548:	00913423          	sd	s1,8(sp)
    8000854c:	02010413          	addi	s0,sp,32
    80008550:	100024f3          	csrr	s1,sstatus
    80008554:	100027f3          	csrr	a5,sstatus
    80008558:	ffd7f793          	andi	a5,a5,-3
    8000855c:	10079073          	csrw	sstatus,a5
    80008560:	ffffe097          	auipc	ra,0xffffe
    80008564:	70c080e7          	jalr	1804(ra) # 80006c6c <mycpu>
    80008568:	07852783          	lw	a5,120(a0)
    8000856c:	02078663          	beqz	a5,80008598 <push_off+0x5c>
    80008570:	ffffe097          	auipc	ra,0xffffe
    80008574:	6fc080e7          	jalr	1788(ra) # 80006c6c <mycpu>
    80008578:	07852783          	lw	a5,120(a0)
    8000857c:	01813083          	ld	ra,24(sp)
    80008580:	01013403          	ld	s0,16(sp)
    80008584:	0017879b          	addiw	a5,a5,1
    80008588:	06f52c23          	sw	a5,120(a0)
    8000858c:	00813483          	ld	s1,8(sp)
    80008590:	02010113          	addi	sp,sp,32
    80008594:	00008067          	ret
    80008598:	0014d493          	srli	s1,s1,0x1
    8000859c:	ffffe097          	auipc	ra,0xffffe
    800085a0:	6d0080e7          	jalr	1744(ra) # 80006c6c <mycpu>
    800085a4:	0014f493          	andi	s1,s1,1
    800085a8:	06952e23          	sw	s1,124(a0)
    800085ac:	fc5ff06f          	j	80008570 <push_off+0x34>

00000000800085b0 <pop_off>:
    800085b0:	ff010113          	addi	sp,sp,-16
    800085b4:	00813023          	sd	s0,0(sp)
    800085b8:	00113423          	sd	ra,8(sp)
    800085bc:	01010413          	addi	s0,sp,16
    800085c0:	ffffe097          	auipc	ra,0xffffe
    800085c4:	6ac080e7          	jalr	1708(ra) # 80006c6c <mycpu>
    800085c8:	100027f3          	csrr	a5,sstatus
    800085cc:	0027f793          	andi	a5,a5,2
    800085d0:	04079663          	bnez	a5,8000861c <pop_off+0x6c>
    800085d4:	07852783          	lw	a5,120(a0)
    800085d8:	02f05a63          	blez	a5,8000860c <pop_off+0x5c>
    800085dc:	fff7871b          	addiw	a4,a5,-1
    800085e0:	06e52c23          	sw	a4,120(a0)
    800085e4:	00071c63          	bnez	a4,800085fc <pop_off+0x4c>
    800085e8:	07c52783          	lw	a5,124(a0)
    800085ec:	00078863          	beqz	a5,800085fc <pop_off+0x4c>
    800085f0:	100027f3          	csrr	a5,sstatus
    800085f4:	0027e793          	ori	a5,a5,2
    800085f8:	10079073          	csrw	sstatus,a5
    800085fc:	00813083          	ld	ra,8(sp)
    80008600:	00013403          	ld	s0,0(sp)
    80008604:	01010113          	addi	sp,sp,16
    80008608:	00008067          	ret
    8000860c:	00001517          	auipc	a0,0x1
    80008610:	1c450513          	addi	a0,a0,452 # 800097d0 <digits+0x48>
    80008614:	fffff097          	auipc	ra,0xfffff
    80008618:	018080e7          	jalr	24(ra) # 8000762c <panic>
    8000861c:	00001517          	auipc	a0,0x1
    80008620:	19c50513          	addi	a0,a0,412 # 800097b8 <digits+0x30>
    80008624:	fffff097          	auipc	ra,0xfffff
    80008628:	008080e7          	jalr	8(ra) # 8000762c <panic>

000000008000862c <push_on>:
    8000862c:	fe010113          	addi	sp,sp,-32
    80008630:	00813823          	sd	s0,16(sp)
    80008634:	00113c23          	sd	ra,24(sp)
    80008638:	00913423          	sd	s1,8(sp)
    8000863c:	02010413          	addi	s0,sp,32
    80008640:	100024f3          	csrr	s1,sstatus
    80008644:	100027f3          	csrr	a5,sstatus
    80008648:	0027e793          	ori	a5,a5,2
    8000864c:	10079073          	csrw	sstatus,a5
    80008650:	ffffe097          	auipc	ra,0xffffe
    80008654:	61c080e7          	jalr	1564(ra) # 80006c6c <mycpu>
    80008658:	07852783          	lw	a5,120(a0)
    8000865c:	02078663          	beqz	a5,80008688 <push_on+0x5c>
    80008660:	ffffe097          	auipc	ra,0xffffe
    80008664:	60c080e7          	jalr	1548(ra) # 80006c6c <mycpu>
    80008668:	07852783          	lw	a5,120(a0)
    8000866c:	01813083          	ld	ra,24(sp)
    80008670:	01013403          	ld	s0,16(sp)
    80008674:	0017879b          	addiw	a5,a5,1
    80008678:	06f52c23          	sw	a5,120(a0)
    8000867c:	00813483          	ld	s1,8(sp)
    80008680:	02010113          	addi	sp,sp,32
    80008684:	00008067          	ret
    80008688:	0014d493          	srli	s1,s1,0x1
    8000868c:	ffffe097          	auipc	ra,0xffffe
    80008690:	5e0080e7          	jalr	1504(ra) # 80006c6c <mycpu>
    80008694:	0014f493          	andi	s1,s1,1
    80008698:	06952e23          	sw	s1,124(a0)
    8000869c:	fc5ff06f          	j	80008660 <push_on+0x34>

00000000800086a0 <pop_on>:
    800086a0:	ff010113          	addi	sp,sp,-16
    800086a4:	00813023          	sd	s0,0(sp)
    800086a8:	00113423          	sd	ra,8(sp)
    800086ac:	01010413          	addi	s0,sp,16
    800086b0:	ffffe097          	auipc	ra,0xffffe
    800086b4:	5bc080e7          	jalr	1468(ra) # 80006c6c <mycpu>
    800086b8:	100027f3          	csrr	a5,sstatus
    800086bc:	0027f793          	andi	a5,a5,2
    800086c0:	04078463          	beqz	a5,80008708 <pop_on+0x68>
    800086c4:	07852783          	lw	a5,120(a0)
    800086c8:	02f05863          	blez	a5,800086f8 <pop_on+0x58>
    800086cc:	fff7879b          	addiw	a5,a5,-1
    800086d0:	06f52c23          	sw	a5,120(a0)
    800086d4:	07853783          	ld	a5,120(a0)
    800086d8:	00079863          	bnez	a5,800086e8 <pop_on+0x48>
    800086dc:	100027f3          	csrr	a5,sstatus
    800086e0:	ffd7f793          	andi	a5,a5,-3
    800086e4:	10079073          	csrw	sstatus,a5
    800086e8:	00813083          	ld	ra,8(sp)
    800086ec:	00013403          	ld	s0,0(sp)
    800086f0:	01010113          	addi	sp,sp,16
    800086f4:	00008067          	ret
    800086f8:	00001517          	auipc	a0,0x1
    800086fc:	10050513          	addi	a0,a0,256 # 800097f8 <digits+0x70>
    80008700:	fffff097          	auipc	ra,0xfffff
    80008704:	f2c080e7          	jalr	-212(ra) # 8000762c <panic>
    80008708:	00001517          	auipc	a0,0x1
    8000870c:	0d050513          	addi	a0,a0,208 # 800097d8 <digits+0x50>
    80008710:	fffff097          	auipc	ra,0xfffff
    80008714:	f1c080e7          	jalr	-228(ra) # 8000762c <panic>

0000000080008718 <__memset>:
    80008718:	ff010113          	addi	sp,sp,-16
    8000871c:	00813423          	sd	s0,8(sp)
    80008720:	01010413          	addi	s0,sp,16
    80008724:	1a060e63          	beqz	a2,800088e0 <__memset+0x1c8>
    80008728:	40a007b3          	neg	a5,a0
    8000872c:	0077f793          	andi	a5,a5,7
    80008730:	00778693          	addi	a3,a5,7
    80008734:	00b00813          	li	a6,11
    80008738:	0ff5f593          	andi	a1,a1,255
    8000873c:	fff6071b          	addiw	a4,a2,-1
    80008740:	1b06e663          	bltu	a3,a6,800088ec <__memset+0x1d4>
    80008744:	1cd76463          	bltu	a4,a3,8000890c <__memset+0x1f4>
    80008748:	1a078e63          	beqz	a5,80008904 <__memset+0x1ec>
    8000874c:	00b50023          	sb	a1,0(a0)
    80008750:	00100713          	li	a4,1
    80008754:	1ae78463          	beq	a5,a4,800088fc <__memset+0x1e4>
    80008758:	00b500a3          	sb	a1,1(a0)
    8000875c:	00200713          	li	a4,2
    80008760:	1ae78a63          	beq	a5,a4,80008914 <__memset+0x1fc>
    80008764:	00b50123          	sb	a1,2(a0)
    80008768:	00300713          	li	a4,3
    8000876c:	18e78463          	beq	a5,a4,800088f4 <__memset+0x1dc>
    80008770:	00b501a3          	sb	a1,3(a0)
    80008774:	00400713          	li	a4,4
    80008778:	1ae78263          	beq	a5,a4,8000891c <__memset+0x204>
    8000877c:	00b50223          	sb	a1,4(a0)
    80008780:	00500713          	li	a4,5
    80008784:	1ae78063          	beq	a5,a4,80008924 <__memset+0x20c>
    80008788:	00b502a3          	sb	a1,5(a0)
    8000878c:	00700713          	li	a4,7
    80008790:	18e79e63          	bne	a5,a4,8000892c <__memset+0x214>
    80008794:	00b50323          	sb	a1,6(a0)
    80008798:	00700e93          	li	t4,7
    8000879c:	00859713          	slli	a4,a1,0x8
    800087a0:	00e5e733          	or	a4,a1,a4
    800087a4:	01059e13          	slli	t3,a1,0x10
    800087a8:	01c76e33          	or	t3,a4,t3
    800087ac:	01859313          	slli	t1,a1,0x18
    800087b0:	006e6333          	or	t1,t3,t1
    800087b4:	02059893          	slli	a7,a1,0x20
    800087b8:	40f60e3b          	subw	t3,a2,a5
    800087bc:	011368b3          	or	a7,t1,a7
    800087c0:	02859813          	slli	a6,a1,0x28
    800087c4:	0108e833          	or	a6,a7,a6
    800087c8:	03059693          	slli	a3,a1,0x30
    800087cc:	003e589b          	srliw	a7,t3,0x3
    800087d0:	00d866b3          	or	a3,a6,a3
    800087d4:	03859713          	slli	a4,a1,0x38
    800087d8:	00389813          	slli	a6,a7,0x3
    800087dc:	00f507b3          	add	a5,a0,a5
    800087e0:	00e6e733          	or	a4,a3,a4
    800087e4:	000e089b          	sext.w	a7,t3
    800087e8:	00f806b3          	add	a3,a6,a5
    800087ec:	00e7b023          	sd	a4,0(a5)
    800087f0:	00878793          	addi	a5,a5,8
    800087f4:	fed79ce3          	bne	a5,a3,800087ec <__memset+0xd4>
    800087f8:	ff8e7793          	andi	a5,t3,-8
    800087fc:	0007871b          	sext.w	a4,a5
    80008800:	01d787bb          	addw	a5,a5,t4
    80008804:	0ce88e63          	beq	a7,a4,800088e0 <__memset+0x1c8>
    80008808:	00f50733          	add	a4,a0,a5
    8000880c:	00b70023          	sb	a1,0(a4)
    80008810:	0017871b          	addiw	a4,a5,1
    80008814:	0cc77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008818:	00e50733          	add	a4,a0,a4
    8000881c:	00b70023          	sb	a1,0(a4)
    80008820:	0027871b          	addiw	a4,a5,2
    80008824:	0ac77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008828:	00e50733          	add	a4,a0,a4
    8000882c:	00b70023          	sb	a1,0(a4)
    80008830:	0037871b          	addiw	a4,a5,3
    80008834:	0ac77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008838:	00e50733          	add	a4,a0,a4
    8000883c:	00b70023          	sb	a1,0(a4)
    80008840:	0047871b          	addiw	a4,a5,4
    80008844:	08c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008848:	00e50733          	add	a4,a0,a4
    8000884c:	00b70023          	sb	a1,0(a4)
    80008850:	0057871b          	addiw	a4,a5,5
    80008854:	08c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008858:	00e50733          	add	a4,a0,a4
    8000885c:	00b70023          	sb	a1,0(a4)
    80008860:	0067871b          	addiw	a4,a5,6
    80008864:	06c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008868:	00e50733          	add	a4,a0,a4
    8000886c:	00b70023          	sb	a1,0(a4)
    80008870:	0077871b          	addiw	a4,a5,7
    80008874:	06c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008878:	00e50733          	add	a4,a0,a4
    8000887c:	00b70023          	sb	a1,0(a4)
    80008880:	0087871b          	addiw	a4,a5,8
    80008884:	04c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008888:	00e50733          	add	a4,a0,a4
    8000888c:	00b70023          	sb	a1,0(a4)
    80008890:	0097871b          	addiw	a4,a5,9
    80008894:	04c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    80008898:	00e50733          	add	a4,a0,a4
    8000889c:	00b70023          	sb	a1,0(a4)
    800088a0:	00a7871b          	addiw	a4,a5,10
    800088a4:	02c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    800088a8:	00e50733          	add	a4,a0,a4
    800088ac:	00b70023          	sb	a1,0(a4)
    800088b0:	00b7871b          	addiw	a4,a5,11
    800088b4:	02c77663          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    800088b8:	00e50733          	add	a4,a0,a4
    800088bc:	00b70023          	sb	a1,0(a4)
    800088c0:	00c7871b          	addiw	a4,a5,12
    800088c4:	00c77e63          	bgeu	a4,a2,800088e0 <__memset+0x1c8>
    800088c8:	00e50733          	add	a4,a0,a4
    800088cc:	00b70023          	sb	a1,0(a4)
    800088d0:	00d7879b          	addiw	a5,a5,13
    800088d4:	00c7f663          	bgeu	a5,a2,800088e0 <__memset+0x1c8>
    800088d8:	00f507b3          	add	a5,a0,a5
    800088dc:	00b78023          	sb	a1,0(a5)
    800088e0:	00813403          	ld	s0,8(sp)
    800088e4:	01010113          	addi	sp,sp,16
    800088e8:	00008067          	ret
    800088ec:	00b00693          	li	a3,11
    800088f0:	e55ff06f          	j	80008744 <__memset+0x2c>
    800088f4:	00300e93          	li	t4,3
    800088f8:	ea5ff06f          	j	8000879c <__memset+0x84>
    800088fc:	00100e93          	li	t4,1
    80008900:	e9dff06f          	j	8000879c <__memset+0x84>
    80008904:	00000e93          	li	t4,0
    80008908:	e95ff06f          	j	8000879c <__memset+0x84>
    8000890c:	00000793          	li	a5,0
    80008910:	ef9ff06f          	j	80008808 <__memset+0xf0>
    80008914:	00200e93          	li	t4,2
    80008918:	e85ff06f          	j	8000879c <__memset+0x84>
    8000891c:	00400e93          	li	t4,4
    80008920:	e7dff06f          	j	8000879c <__memset+0x84>
    80008924:	00500e93          	li	t4,5
    80008928:	e75ff06f          	j	8000879c <__memset+0x84>
    8000892c:	00600e93          	li	t4,6
    80008930:	e6dff06f          	j	8000879c <__memset+0x84>

0000000080008934 <__memmove>:
    80008934:	ff010113          	addi	sp,sp,-16
    80008938:	00813423          	sd	s0,8(sp)
    8000893c:	01010413          	addi	s0,sp,16
    80008940:	0e060863          	beqz	a2,80008a30 <__memmove+0xfc>
    80008944:	fff6069b          	addiw	a3,a2,-1
    80008948:	0006881b          	sext.w	a6,a3
    8000894c:	0ea5e863          	bltu	a1,a0,80008a3c <__memmove+0x108>
    80008950:	00758713          	addi	a4,a1,7
    80008954:	00a5e7b3          	or	a5,a1,a0
    80008958:	40a70733          	sub	a4,a4,a0
    8000895c:	0077f793          	andi	a5,a5,7
    80008960:	00f73713          	sltiu	a4,a4,15
    80008964:	00174713          	xori	a4,a4,1
    80008968:	0017b793          	seqz	a5,a5
    8000896c:	00e7f7b3          	and	a5,a5,a4
    80008970:	10078863          	beqz	a5,80008a80 <__memmove+0x14c>
    80008974:	00900793          	li	a5,9
    80008978:	1107f463          	bgeu	a5,a6,80008a80 <__memmove+0x14c>
    8000897c:	0036581b          	srliw	a6,a2,0x3
    80008980:	fff8081b          	addiw	a6,a6,-1
    80008984:	02081813          	slli	a6,a6,0x20
    80008988:	01d85893          	srli	a7,a6,0x1d
    8000898c:	00858813          	addi	a6,a1,8
    80008990:	00058793          	mv	a5,a1
    80008994:	00050713          	mv	a4,a0
    80008998:	01088833          	add	a6,a7,a6
    8000899c:	0007b883          	ld	a7,0(a5)
    800089a0:	00878793          	addi	a5,a5,8
    800089a4:	00870713          	addi	a4,a4,8
    800089a8:	ff173c23          	sd	a7,-8(a4)
    800089ac:	ff0798e3          	bne	a5,a6,8000899c <__memmove+0x68>
    800089b0:	ff867713          	andi	a4,a2,-8
    800089b4:	02071793          	slli	a5,a4,0x20
    800089b8:	0207d793          	srli	a5,a5,0x20
    800089bc:	00f585b3          	add	a1,a1,a5
    800089c0:	40e686bb          	subw	a3,a3,a4
    800089c4:	00f507b3          	add	a5,a0,a5
    800089c8:	06e60463          	beq	a2,a4,80008a30 <__memmove+0xfc>
    800089cc:	0005c703          	lbu	a4,0(a1)
    800089d0:	00e78023          	sb	a4,0(a5)
    800089d4:	04068e63          	beqz	a3,80008a30 <__memmove+0xfc>
    800089d8:	0015c603          	lbu	a2,1(a1)
    800089dc:	00100713          	li	a4,1
    800089e0:	00c780a3          	sb	a2,1(a5)
    800089e4:	04e68663          	beq	a3,a4,80008a30 <__memmove+0xfc>
    800089e8:	0025c603          	lbu	a2,2(a1)
    800089ec:	00200713          	li	a4,2
    800089f0:	00c78123          	sb	a2,2(a5)
    800089f4:	02e68e63          	beq	a3,a4,80008a30 <__memmove+0xfc>
    800089f8:	0035c603          	lbu	a2,3(a1)
    800089fc:	00300713          	li	a4,3
    80008a00:	00c781a3          	sb	a2,3(a5)
    80008a04:	02e68663          	beq	a3,a4,80008a30 <__memmove+0xfc>
    80008a08:	0045c603          	lbu	a2,4(a1)
    80008a0c:	00400713          	li	a4,4
    80008a10:	00c78223          	sb	a2,4(a5)
    80008a14:	00e68e63          	beq	a3,a4,80008a30 <__memmove+0xfc>
    80008a18:	0055c603          	lbu	a2,5(a1)
    80008a1c:	00500713          	li	a4,5
    80008a20:	00c782a3          	sb	a2,5(a5)
    80008a24:	00e68663          	beq	a3,a4,80008a30 <__memmove+0xfc>
    80008a28:	0065c703          	lbu	a4,6(a1)
    80008a2c:	00e78323          	sb	a4,6(a5)
    80008a30:	00813403          	ld	s0,8(sp)
    80008a34:	01010113          	addi	sp,sp,16
    80008a38:	00008067          	ret
    80008a3c:	02061713          	slli	a4,a2,0x20
    80008a40:	02075713          	srli	a4,a4,0x20
    80008a44:	00e587b3          	add	a5,a1,a4
    80008a48:	f0f574e3          	bgeu	a0,a5,80008950 <__memmove+0x1c>
    80008a4c:	02069613          	slli	a2,a3,0x20
    80008a50:	02065613          	srli	a2,a2,0x20
    80008a54:	fff64613          	not	a2,a2
    80008a58:	00e50733          	add	a4,a0,a4
    80008a5c:	00c78633          	add	a2,a5,a2
    80008a60:	fff7c683          	lbu	a3,-1(a5)
    80008a64:	fff78793          	addi	a5,a5,-1
    80008a68:	fff70713          	addi	a4,a4,-1
    80008a6c:	00d70023          	sb	a3,0(a4)
    80008a70:	fec798e3          	bne	a5,a2,80008a60 <__memmove+0x12c>
    80008a74:	00813403          	ld	s0,8(sp)
    80008a78:	01010113          	addi	sp,sp,16
    80008a7c:	00008067          	ret
    80008a80:	02069713          	slli	a4,a3,0x20
    80008a84:	02075713          	srli	a4,a4,0x20
    80008a88:	00170713          	addi	a4,a4,1
    80008a8c:	00e50733          	add	a4,a0,a4
    80008a90:	00050793          	mv	a5,a0
    80008a94:	0005c683          	lbu	a3,0(a1)
    80008a98:	00178793          	addi	a5,a5,1
    80008a9c:	00158593          	addi	a1,a1,1
    80008aa0:	fed78fa3          	sb	a3,-1(a5)
    80008aa4:	fee798e3          	bne	a5,a4,80008a94 <__memmove+0x160>
    80008aa8:	f89ff06f          	j	80008a30 <__memmove+0xfc>
	...
