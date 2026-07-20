
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	7a813103          	ld	sp,1960(sp) # 800047a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	421010ef          	jal	ra,80001c3c <start>

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
    80001084:	174000ef          	jal	ra,800011f8 <_ZN6Kernel21supervisorTrapHandlerEv>

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

00000000800011b4 <_Z15thread_dispatchv>:

/**
 * C API function to potentially switch to another thread
 */
void thread_dispatch (){
    800011b4:	ff010113          	addi	sp,sp,-16
    800011b8:	00813423          	sd	s0,8(sp)
    800011bc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800011c0:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800011c4:	00000073          	ecall
    800011c8:	00813403          	ld	s0,8(sp)
    800011cc:	01010113          	addi	sp,sp,16
    800011d0:	00008067          	ret

00000000800011d4 <_ZN6Kernel4initEv>:
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"
#include "../h/tcb.hpp"

void Kernel::init() {
    800011d4:	ff010113          	addi	sp,sp,-16
    800011d8:	00813423          	sd	s0,8(sp)
    800011dc:	01010413          	addi	s0,sp,16
    // set trap routine
    w_stvec((uint64)&supervisorTrap);
    800011e0:	00003797          	auipc	a5,0x3
    800011e4:	5d07b783          	ld	a5,1488(a5) # 800047b0 <_GLOBAL_OFFSET_TABLE_+0x18>
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
        return x;
    }

    static inline void w_stvec(uint64 x) {
        __asm__ volatile("csrw stvec, %0" : : "r"(x));
    800011e8:	10579073          	csrw	stvec,a5
    //ms_sstatus(SstatusBits::SSTATUS_SIE);
}
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret

00000000800011f8 <_ZN6Kernel21supervisorTrapHandlerEv>:

using Body = void (*)(void*);

void Kernel::supervisorTrapHandler()
{
    800011f8:	fa010113          	addi	sp,sp,-96
    800011fc:	04113c23          	sd	ra,88(sp)
    80001200:	04813823          	sd	s0,80(sp)
    80001204:	04913423          	sd	s1,72(sp)
    80001208:	06010413          	addi	s0,sp,96
        __asm__ volatile("csrr %0, scause" : "=r"(x));
    8000120c:	142027f3          	csrr	a5,scause
    80001210:	fcf43023          	sd	a5,-64(s0)
        return x;
    80001214:	fc043783          	ld	a5,-64(s0)
    uint32 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001218:	ff87879b          	addiw	a5,a5,-8
    8000121c:	00100713          	li	a4,1
    80001220:	00f77c63          	bgeu	a4,a5,80001238 <_ZN6Kernel21supervisorTrapHandlerEv+0x40>
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    
    return;
    80001224:	05813083          	ld	ra,88(sp)
    80001228:	05013403          	ld	s0,80(sp)
    8000122c:	04813483          	ld	s1,72(sp)
    80001230:	06010113          	addi	sp,sp,96
    80001234:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    80001238:	141027f3          	csrr	a5,sepc
    8000123c:	fcf43c23          	sd	a5,-40(s0)
        return x;
    80001240:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001244:	00478793          	addi	a5,a5,4
    80001248:	faf43423          	sd	a5,-88(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    8000124c:	100027f3          	csrr	a5,sstatus
    80001250:	fcf43823          	sd	a5,-48(s0)
        return x;
    80001254:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus =  r_sstatus();
    80001258:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(x));
    8000125c:	00050793          	mv	a5,a0
    80001260:	fcf43423          	sd	a5,-56(s0)
        return x;
    80001264:	fc843783          	ld	a5,-56(s0)
        uint64 volatile opcode = r_a0();
    80001268:	faf43c23          	sd	a5,-72(s0)
        switch (opcode) {
    8000126c:	fb843783          	ld	a5,-72(s0)
    80001270:	01400713          	li	a4,20
    80001274:	04f76063          	bltu	a4,a5,800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
    80001278:	00279793          	slli	a5,a5,0x2
    8000127c:	00003717          	auipc	a4,0x3
    80001280:	da470713          	addi	a4,a4,-604 # 80004020 <CONSOLE_STATUS+0x10>
    80001284:	00e787b3          	add	a5,a5,a4
    80001288:	0007a783          	lw	a5,0(a5)
    8000128c:	00e787b3          	add	a5,a5,a4
    80001290:	00078067          	jr	a5
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001294:	00058493          	mv	s1,a1
                pointer = MemoryAllocator::instance().kmem_alloc(size);
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	5a8080e7          	jalr	1448(ra) # 80001840 <_ZN15MemoryAllocator8instanceEv>
    800012a0:	00048593          	mv	a1,s1
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	628080e7          	jalr	1576(ra) # 800018cc <_ZN15MemoryAllocator10kmem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(pointer));
    800012ac:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800012b0:	04542823          	sw	t0,80(s0)
        w_sstatus(sstatus);
    800012b4:	fb043783          	ld	a5,-80(s0)
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    800012b8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    800012bc:	fa843783          	ld	a5,-88(s0)
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    800012c0:	14179073          	csrw	sepc,a5
    return;
    800012c4:	f61ff06f          	j	80001224 <_ZN6Kernel21supervisorTrapHandlerEv+0x2c>
                __asm__ volatile("mv %0, a1" : "=r" (pointer));
    800012c8:	00058493          	mv	s1,a1
                value = MemoryAllocator::instance().kmem_free(pointer);
    800012cc:	00000097          	auipc	ra,0x0
    800012d0:	574080e7          	jalr	1396(ra) # 80001840 <_ZN15MemoryAllocator8instanceEv>
    800012d4:	00048593          	mv	a1,s1
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	77c080e7          	jalr	1916(ra) # 80001a54 <_ZN15MemoryAllocator9kmem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(value));
    800012e0:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800012e4:	04542823          	sw	t0,80(s0)
                break;
    800012e8:	fcdff06f          	j	800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
                __asm__ volatile ("mv %0, a1" : "=r" (tcb));
    800012ec:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r" (body));
    800012f0:	00060513          	mv	a0,a2
                __asm__ volatile ("mv %0, a7" : "=r" (arg));
    800012f4:	00088593          	mv	a1,a7
                *tcb = TCB::createThread(body, arg);
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	1f4080e7          	jalr	500(ra) # 800014ec <_ZN3TCB12createThreadEPFvPvES0_>
    80001300:	00a4b023          	sd	a0,0(s1)
                if(*tcb != nullptr) {
    80001304:	00050863          	beqz	a0,80001314 <_ZN6Kernel21supervisorTrapHandlerEv+0x11c>
                    __asm__ volatile ("li t0, 0"); //load immediate 0 into t0 (success)
    80001308:	00000293          	li	t0,0
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    8000130c:	04542823          	sw	t0,80(s0)
    80001310:	fa5ff06f          	j	800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
                    __asm__ volatile ("li t0, -1"); //-1 = error
    80001314:	fff00293          	li	t0,-1
                    __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001318:	04542823          	sw	t0,80(s0)
    8000131c:	f99ff06f          	j	800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
                TCB::running->setFinished(true);
    80001320:	00003797          	auipc	a5,0x3
    80001324:	4987b783          	ld	a5,1176(a5) # 800047b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001328:	0007b783          	ld	a5,0(a5)
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    8000132c:	00100713          	li	a4,1
    80001330:	02e78423          	sb	a4,40(a5)
                TCB::dispatch();
    80001334:	00000097          	auipc	ra,0x0
    80001338:	2a4080e7          	jalr	676(ra) # 800015d8 <_ZN3TCB8dispatchEv>
                __asm__ volatile ("li t0, 0");
    8000133c:	00000293          	li	t0,0
                __asm__ volatile ("sw t0, 80(x8)");
    80001340:	04542823          	sw	t0,80(s0)
                break;
    80001344:	f71ff06f          	j	800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
                TCB::dispatch();
    80001348:	00000097          	auipc	ra,0x0
    8000134c:	290080e7          	jalr	656(ra) # 800015d8 <_ZN3TCB8dispatchEv>
                break;
    80001350:	f65ff06f          	j	800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
                __asm__ volatile ("mv %0, a1" : "=r" (handle));
    80001354:	00058513          	mv	a0,a1
                TCB::join(handle);
    80001358:	00000097          	auipc	ra,0x0
    8000135c:	3c8080e7          	jalr	968(ra) # 80001720 <_ZN3TCB4joinEPS_>
                TCB::dispatch();
    80001360:	00000097          	auipc	ra,0x0
    80001364:	278080e7          	jalr	632(ra) # 800015d8 <_ZN3TCB8dispatchEv>
                break;
    80001368:	f4dff06f          	j	800012b4 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>

000000008000136c <main>:
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00113423          	sd	ra,8(sp)
    80001374:	00813023          	sd	s0,0(sp)
    80001378:	01010413          	addi	s0,sp,16
    8000137c:	00000097          	auipc	ra,0x0
    80001380:	e58080e7          	jalr	-424(ra) # 800011d4 <_ZN6Kernel4initEv>
    80001384:	00000613          	li	a2,0
    80001388:	01000593          	li	a1,16
    8000138c:	04000513          	li	a0,64
    80001390:	00000097          	auipc	ra,0x0
    80001394:	080080e7          	jalr	128(ra) # 80001410 <_ZN6Kernel9print_intEiii>
    80001398:	00a00513          	li	a0,10
    8000139c:	00003097          	auipc	ra,0x3
    800013a0:	960080e7          	jalr	-1696(ra) # 80003cfc <__putc>
    800013a4:	00000613          	li	a2,0
    800013a8:	01000593          	li	a1,16
    800013ac:	00003797          	auipc	a5,0x3
    800013b0:	3f47b783          	ld	a5,1012(a5) # 800047a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800013b4:	0007a503          	lw	a0,0(a5)
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	058080e7          	jalr	88(ra) # 80001410 <_ZN6Kernel9print_intEiii>
    800013c0:	00a00513          	li	a0,10
    800013c4:	00003097          	auipc	ra,0x3
    800013c8:	938080e7          	jalr	-1736(ra) # 80003cfc <__putc>
    800013cc:	00000613          	li	a2,0
    800013d0:	01000593          	li	a1,16
    800013d4:	00003797          	auipc	a5,0x3
    800013d8:	3ec7b783          	ld	a5,1004(a5) # 800047c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800013dc:	0007a503          	lw	a0,0(a5)
    800013e0:	00000097          	auipc	ra,0x0
    800013e4:	030080e7          	jalr	48(ra) # 80001410 <_ZN6Kernel9print_intEiii>
    800013e8:	00a00513          	li	a0,10
    800013ec:	00003097          	auipc	ra,0x3
    800013f0:	910080e7          	jalr	-1776(ra) # 80003cfc <__putc>
    800013f4:	00a00513          	li	a0,10
    800013f8:	00003097          	auipc	ra,0x3
    800013fc:	904080e7          	jalr	-1788(ra) # 80003cfc <__putc>
    80001400:	00813083          	ld	ra,8(sp)
    80001404:	00013403          	ld	s0,0(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_ZN6Kernel9print_intEiii>:
    80001410:	fb010113          	addi	sp,sp,-80
    80001414:	04113423          	sd	ra,72(sp)
    80001418:	04813023          	sd	s0,64(sp)
    8000141c:	02913c23          	sd	s1,56(sp)
    80001420:	05010413          	addi	s0,sp,80
    80001424:	00003797          	auipc	a5,0x3
    80001428:	c5478793          	addi	a5,a5,-940 # 80004078 <CONSOLE_STATUS+0x68>
    8000142c:	0007b703          	ld	a4,0(a5)
    80001430:	fce43423          	sd	a4,-56(s0)
    80001434:	0087b703          	ld	a4,8(a5)
    80001438:	fce43823          	sd	a4,-48(s0)
    8000143c:	0107c783          	lbu	a5,16(a5)
    80001440:	fcf40c23          	sb	a5,-40(s0)
    80001444:	00060463          	beqz	a2,8000144c <_ZN6Kernel9print_intEiii+0x3c>
    80001448:	08054263          	bltz	a0,800014cc <_ZN6Kernel9print_intEiii+0xbc>
    8000144c:	0005051b          	sext.w	a0,a0
    80001450:	00000813          	li	a6,0
    80001454:	00000493          	li	s1,0
    80001458:	0005871b          	sext.w	a4,a1
    8000145c:	02b577bb          	remuw	a5,a0,a1
    80001460:	00048693          	mv	a3,s1
    80001464:	0014849b          	addiw	s1,s1,1
    80001468:	02079793          	slli	a5,a5,0x20
    8000146c:	0207d793          	srli	a5,a5,0x20
    80001470:	fe040613          	addi	a2,s0,-32
    80001474:	00f607b3          	add	a5,a2,a5
    80001478:	fe87c603          	lbu	a2,-24(a5)
    8000147c:	fe040793          	addi	a5,s0,-32
    80001480:	00d787b3          	add	a5,a5,a3
    80001484:	fcc78c23          	sb	a2,-40(a5)
    80001488:	0005061b          	sext.w	a2,a0
    8000148c:	02b5553b          	divuw	a0,a0,a1
    80001490:	fce674e3          	bgeu	a2,a4,80001458 <_ZN6Kernel9print_intEiii+0x48>
    80001494:	00080c63          	beqz	a6,800014ac <_ZN6Kernel9print_intEiii+0x9c>
    80001498:	fe040793          	addi	a5,s0,-32
    8000149c:	009784b3          	add	s1,a5,s1
    800014a0:	02d00793          	li	a5,45
    800014a4:	fcf48c23          	sb	a5,-40(s1)
    800014a8:	0026849b          	addiw	s1,a3,2
    800014ac:	fff4849b          	addiw	s1,s1,-1
    800014b0:	0204c463          	bltz	s1,800014d8 <_ZN6Kernel9print_intEiii+0xc8>
    800014b4:	fe040793          	addi	a5,s0,-32
    800014b8:	009787b3          	add	a5,a5,s1
    800014bc:	fd87c503          	lbu	a0,-40(a5)
    800014c0:	00003097          	auipc	ra,0x3
    800014c4:	83c080e7          	jalr	-1988(ra) # 80003cfc <__putc>
    800014c8:	fe5ff06f          	j	800014ac <_ZN6Kernel9print_intEiii+0x9c>
    800014cc:	40a0053b          	negw	a0,a0
    800014d0:	00100813          	li	a6,1
    800014d4:	f81ff06f          	j	80001454 <_ZN6Kernel9print_intEiii+0x44>
    800014d8:	04813083          	ld	ra,72(sp)
    800014dc:	04013403          	ld	s0,64(sp)
    800014e0:	03813483          	ld	s1,56(sp)
    800014e4:	05010113          	addi	sp,sp,80
    800014e8:	00008067          	ret

00000000800014ec <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    800014ec:	fe010113          	addi	sp,sp,-32
    800014f0:	00113c23          	sd	ra,24(sp)
    800014f4:	00813823          	sd	s0,16(sp)
    800014f8:	00913423          	sd	s1,8(sp)
    800014fc:	01213023          	sd	s2,0(sp)
    80001500:	02010413          	addi	s0,sp,32
    80001504:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001508:	04800513          	li	a0,72
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	294080e7          	jalr	660(ra) # 800017a0 <_Znwm>
    80001514:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001518:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    8000151c:	00090a63          	beqz	s2,80001530 <_ZN3TCB12createThreadEPFvPvES0_+0x44>
    80001520:	00002537          	lui	a0,0x2
    80001524:	00000097          	auipc	ra,0x0
    80001528:	2a4080e7          	jalr	676(ra) # 800017c8 <_Znam>
    8000152c:	0080006f          	j	80001534 <_ZN3TCB12createThreadEPFvPvES0_+0x48>
    80001530:	00000513          	li	a0,0
            finished(false)
    80001534:	00a4b423          	sd	a0,8(s1)
    80001538:	00000797          	auipc	a5,0x0
    8000153c:	18078793          	addi	a5,a5,384 # 800016b8 <_ZN3TCB13threadWrapperEv>
    80001540:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001544:	02050c63          	beqz	a0,8000157c <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    80001548:	000027b7          	lui	a5,0x2
    8000154c:	00f507b3          	add	a5,a0,a5
            finished(false)
    80001550:	00f4bc23          	sd	a5,24(s1)
    80001554:	00200793          	li	a5,2
    80001558:	02f4b023          	sd	a5,32(s1)
    8000155c:	02048423          	sb	zero,40(s1)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001560:	0204bc23          	sd	zero,56(s1)
    80001564:	0404b023          	sd	zero,64(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001568:	02090c63          	beqz	s2,800015a0 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
    8000156c:	00048513          	mv	a0,s1
    80001570:	00000097          	auipc	ra,0x0
    80001574:	62c080e7          	jalr	1580(ra) # 80001b9c <_ZN9Scheduler3putEP3TCB>
    80001578:	0280006f          	j	800015a0 <_ZN3TCB12createThreadEPFvPvES0_+0xb4>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    8000157c:	00000793          	li	a5,0
    80001580:	fd1ff06f          	j	80001550 <_ZN3TCB12createThreadEPFvPvES0_+0x64>
    80001584:	00050913          	mv	s2,a0
    80001588:	00048513          	mv	a0,s1
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	264080e7          	jalr	612(ra) # 800017f0 <_ZdlPv>
    80001594:	00090513          	mv	a0,s2
    80001598:	00004097          	auipc	ra,0x4
    8000159c:	370080e7          	jalr	880(ra) # 80005908 <_Unwind_Resume>
}
    800015a0:	00048513          	mv	a0,s1
    800015a4:	01813083          	ld	ra,24(sp)
    800015a8:	01013403          	ld	s0,16(sp)
    800015ac:	00813483          	ld	s1,8(sp)
    800015b0:	00013903          	ld	s2,0(sp)
    800015b4:	02010113          	addi	sp,sp,32
    800015b8:	00008067          	ret

00000000800015bc <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    800015bc:	ff010113          	addi	sp,sp,-16
    800015c0:	00813423          	sd	s0,8(sp)
    800015c4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    800015c8:	00000073          	ecall
}
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN3TCB8dispatchEv>:

void TCB::dispatch()
{
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	00913423          	sd	s1,8(sp)
    800015e8:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800015ec:	00003497          	auipc	s1,0x3
    800015f0:	2244b483          	ld	s1,548(s1) # 80004810 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800015f4:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800015f8:	02078c63          	beqz	a5,80001630 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	538080e7          	jalr	1336(ra) # 80001b34 <_ZN9Scheduler3getEv>
    80001604:	00003797          	auipc	a5,0x3
    80001608:	20a7b623          	sd	a0,524(a5) # 80004810 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    8000160c:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    80001610:	01048513          	addi	a0,s1,16
    80001614:	00000097          	auipc	ra,0x0
    80001618:	afc080e7          	jalr	-1284(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000161c:	01813083          	ld	ra,24(sp)
    80001620:	01013403          	ld	s0,16(sp)
    80001624:	00813483          	ld	s1,8(sp)
    80001628:	02010113          	addi	sp,sp,32
    8000162c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001630:	00048513          	mv	a0,s1
    80001634:	00000097          	auipc	ra,0x0
    80001638:	568080e7          	jalr	1384(ra) # 80001b9c <_ZN9Scheduler3putEP3TCB>
    8000163c:	fc1ff06f          	j	800015fc <_ZN3TCB8dispatchEv+0x24>

0000000080001640 <_ZN3TCB10releaseAllEv>:

void TCB::releaseAll() {
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00113c23          	sd	ra,24(sp)
    80001648:	00813823          	sd	s0,16(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	01213023          	sd	s2,0(sp)
    80001654:	02010413          	addi	s0,sp,32
    80001658:	00050913          	mv	s2,a0
    8000165c:	0240006f          	j	80001680 <_ZN3TCB10releaseAllEv+0x40>
    {
        if (!head) { return 0; }

        Elem *elem = head;
        head = head->next;
        if (!head) { tail = 0; }
    80001660:	04093023          	sd	zero,64(s2)

        T *ret = elem->data;
    80001664:	00053483          	ld	s1,0(a0)
        delete elem;
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	188080e7          	jalr	392(ra) # 800017f0 <_ZdlPv>
    void setBlocked(bool value) { this->blocked = value; }
    80001670:	020484a3          	sb	zero,41(s1)
    while (this->joined.peekFirst()) {
        TCB* tcb = this->joined.removeFirst();
        tcb->setBlocked(false);
        Scheduler::put(tcb);
    80001674:	00048513          	mv	a0,s1
    80001678:	00000097          	auipc	ra,0x0
    8000167c:	524080e7          	jalr	1316(ra) # 80001b9c <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001680:	03893503          	ld	a0,56(s2)
    80001684:	00050e63          	beqz	a0,800016a0 <_ZN3TCB10releaseAllEv+0x60>
        return head->data;
    80001688:	00053783          	ld	a5,0(a0)
    while (this->joined.peekFirst()) {
    8000168c:	00078a63          	beqz	a5,800016a0 <_ZN3TCB10releaseAllEv+0x60>
        head = head->next;
    80001690:	00853783          	ld	a5,8(a0)
    80001694:	02f93c23          	sd	a5,56(s2)
        if (!head) { tail = 0; }
    80001698:	fc0796e3          	bnez	a5,80001664 <_ZN3TCB10releaseAllEv+0x24>
    8000169c:	fc5ff06f          	j	80001660 <_ZN3TCB10releaseAllEv+0x20>
    }
}
    800016a0:	01813083          	ld	ra,24(sp)
    800016a4:	01013403          	ld	s0,16(sp)
    800016a8:	00813483          	ld	s1,8(sp)
    800016ac:	00013903          	ld	s2,0(sp)
    800016b0:	02010113          	addi	sp,sp,32
    800016b4:	00008067          	ret

00000000800016b8 <_ZN3TCB13threadWrapperEv>:
        handle->joined.addLast(running);
    }
}

void TCB::threadWrapper()
{
    800016b8:	fe010113          	addi	sp,sp,-32
    800016bc:	00113c23          	sd	ra,24(sp)
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00913423          	sd	s1,8(sp)
    800016c8:	02010413          	addi	s0,sp,32
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    800016cc:	10000793          	li	a5,256
    800016d0:	1007b073          	csrc	sstatus,a5
        __asm__ volatile("csrw stval, %0" : : "r"(x));
    }

    static inline void popSppSpie() { //Kada se vratiš iz trap-a, vrati se u User mode. (spp je prethodni privilegovani režim i treba ga pregaziti)
        mc_sstatus(SSTATUS_SPP);
        __asm__ volatile("sret"); //vrati se iz trap-a
    800016d4:	10200073          	sret
    Kernel::popSppSpie();
    running->body(running->arg);
    800016d8:	00003497          	auipc	s1,0x3
    800016dc:	13848493          	addi	s1,s1,312 # 80004810 <_ZN3TCB7runningE>
    800016e0:	0004b783          	ld	a5,0(s1)
    800016e4:	0007b703          	ld	a4,0(a5)
    800016e8:	0307b503          	ld	a0,48(a5)
    800016ec:	000700e7          	jalr	a4
    running->setFinished(true);
    800016f0:	0004b503          	ld	a0,0(s1)
    void setFinished(bool value) { finished = value; }
    800016f4:	00100793          	li	a5,1
    800016f8:	02f50423          	sb	a5,40(a0)
    running->releaseAll();
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	f44080e7          	jalr	-188(ra) # 80001640 <_ZN3TCB10releaseAllEv>
    thread_dispatch();
    80001704:	00000097          	auipc	ra,0x0
    80001708:	ab0080e7          	jalr	-1360(ra) # 800011b4 <_Z15thread_dispatchv>
}
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret

0000000080001720 <_ZN3TCB4joinEPS_>:
    bool isFinished() const { return finished; }
    80001720:	02854783          	lbu	a5,40(a0)
    if(!handle->isFinished()) {
    80001724:	00078463          	beqz	a5,8000172c <_ZN3TCB4joinEPS_+0xc>
    80001728:	00008067          	ret
void TCB::join(TCB* handle) {
    8000172c:	fe010113          	addi	sp,sp,-32
    80001730:	00113c23          	sd	ra,24(sp)
    80001734:	00813823          	sd	s0,16(sp)
    80001738:	00913423          	sd	s1,8(sp)
    8000173c:	01213023          	sd	s2,0(sp)
    80001740:	02010413          	addi	s0,sp,32
    80001744:	00050493          	mv	s1,a0
        running->setBlocked(true);
    80001748:	00003917          	auipc	s2,0x3
    8000174c:	0c893903          	ld	s2,200(s2) # 80004810 <_ZN3TCB7runningE>
    void setBlocked(bool value) { this->blocked = value; }
    80001750:	00100793          	li	a5,1
    80001754:	02f904a3          	sb	a5,41(s2)
        Elem *elem = new Elem(data, 0);
    80001758:	01000513          	li	a0,16
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	044080e7          	jalr	68(ra) # 800017a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001764:	01253023          	sd	s2,0(a0)
    80001768:	00053423          	sd	zero,8(a0)
        if (tail)
    8000176c:	0404b783          	ld	a5,64(s1)
    80001770:	02078263          	beqz	a5,80001794 <_ZN3TCB4joinEPS_+0x74>
            tail->next = elem;
    80001774:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001778:	04a4b023          	sd	a0,64(s1)
}
    8000177c:	01813083          	ld	ra,24(sp)
    80001780:	01013403          	ld	s0,16(sp)
    80001784:	00813483          	ld	s1,8(sp)
    80001788:	00013903          	ld	s2,0(sp)
    8000178c:	02010113          	addi	sp,sp,32
    80001790:	00008067          	ret
            head = tail = elem;
    80001794:	04a4b023          	sd	a0,64(s1)
    80001798:	02a4bc23          	sd	a0,56(s1)
    8000179c:	fe1ff06f          	j	8000177c <_ZN3TCB4joinEPS_+0x5c>

00000000800017a0 <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    800017a0:	ff010113          	addi	sp,sp,-16
    800017a4:	00113423          	sd	ra,8(sp)
    800017a8:	00813023          	sd	s0,0(sp)
    800017ac:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017b0:	00000097          	auipc	ra,0x0
    800017b4:	974080e7          	jalr	-1676(ra) # 80001124 <_Z9mem_allocm>
}
    800017b8:	00813083          	ld	ra,8(sp)
    800017bc:	00013403          	ld	s0,0(sp)
    800017c0:	01010113          	addi	sp,sp,16
    800017c4:	00008067          	ret

00000000800017c8 <_Znam>:

void *operator new[](size_t n)
{
    800017c8:	ff010113          	addi	sp,sp,-16
    800017cc:	00113423          	sd	ra,8(sp)
    800017d0:	00813023          	sd	s0,0(sp)
    800017d4:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	94c080e7          	jalr	-1716(ra) # 80001124 <_Z9mem_allocm>
}
    800017e0:	00813083          	ld	ra,8(sp)
    800017e4:	00013403          	ld	s0,0(sp)
    800017e8:	01010113          	addi	sp,sp,16
    800017ec:	00008067          	ret

00000000800017f0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800017f0:	ff010113          	addi	sp,sp,-16
    800017f4:	00113423          	sd	ra,8(sp)
    800017f8:	00813023          	sd	s0,0(sp)
    800017fc:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001800:	00000097          	auipc	ra,0x0
    80001804:	954080e7          	jalr	-1708(ra) # 80001154 <_Z8mem_freePv>
}
    80001808:	00813083          	ld	ra,8(sp)
    8000180c:	00013403          	ld	s0,0(sp)
    80001810:	01010113          	addi	sp,sp,16
    80001814:	00008067          	ret

0000000080001818 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00113423          	sd	ra,8(sp)
    80001820:	00813023          	sd	s0,0(sp)
    80001824:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	92c080e7          	jalr	-1748(ra) # 80001154 <_Z8mem_freePv>
    80001830:	00813083          	ld	ra,8(sp)
    80001834:	00013403          	ld	s0,0(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_ZN15MemoryAllocator8instanceEv>:
    80001840:	ff010113          	addi	sp,sp,-16
    80001844:	00813423          	sd	s0,8(sp)
    80001848:	01010413          	addi	s0,sp,16
    8000184c:	00003517          	auipc	a0,0x3
    80001850:	fd450513          	addi	a0,a0,-44 # 80004820 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80001854:	00813403          	ld	s0,8(sp)
    80001858:	01010113          	addi	sp,sp,16
    8000185c:	00008067          	ret

0000000080001860 <_ZN15MemoryAllocator9kmem_initEv>:
    80001860:	ff010113          	addi	sp,sp,-16
    80001864:	00813423          	sd	s0,8(sp)
    80001868:	01010413          	addi	s0,sp,16
    8000186c:	00003797          	auipc	a5,0x3
    80001870:	f347b783          	ld	a5,-204(a5) # 800047a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001874:	0007b703          	ld	a4,0(a5)
    80001878:	00e53023          	sd	a4,0(a0)
    8000187c:	00073c23          	sd	zero,24(a4)
    80001880:	00053783          	ld	a5,0(a0)
    80001884:	0007b823          	sd	zero,16(a5)
    80001888:	00003797          	auipc	a5,0x3
    8000188c:	f387b783          	ld	a5,-200(a5) # 800047c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001890:	0007b783          	ld	a5,0(a5)
    80001894:	40e787b3          	sub	a5,a5,a4
    80001898:	00053703          	ld	a4,0(a0)
    8000189c:	fd878793          	addi	a5,a5,-40
    800018a0:	00f73423          	sd	a5,8(a4)
    800018a4:	00053783          	ld	a5,0(a0)
    800018a8:	00100713          	li	a4,1
    800018ac:	02e78023          	sb	a4,32(a5)
    800018b0:	00053703          	ld	a4,0(a0)
    800018b4:	abcdf7b7          	lui	a5,0xabcdf
    800018b8:	f017879b          	addiw	a5,a5,-255
    800018bc:	00f72023          	sw	a5,0(a4)
    800018c0:	00813403          	ld	s0,8(sp)
    800018c4:	01010113          	addi	sp,sp,16
    800018c8:	00008067          	ret

00000000800018cc <_ZN15MemoryAllocator10kmem_allocEm>:
    800018cc:	0c058863          	beqz	a1,8000199c <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
    800018d0:	fe010113          	addi	sp,sp,-32
    800018d4:	00113c23          	sd	ra,24(sp)
    800018d8:	00813823          	sd	s0,16(sp)
    800018dc:	00913423          	sd	s1,8(sp)
    800018e0:	01213023          	sd	s2,0(sp)
    800018e4:	02010413          	addi	s0,sp,32
    800018e8:	00050913          	mv	s2,a0
    800018ec:	00659493          	slli	s1,a1,0x6
    800018f0:	00053783          	ld	a5,0(a0)
    800018f4:	00078663          	beqz	a5,80001900 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    800018f8:	00093503          	ld	a0,0(s2)
    800018fc:	0340006f          	j	80001930 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    80001900:	00000097          	auipc	ra,0x0
    80001904:	f60080e7          	jalr	-160(ra) # 80001860 <_ZN15MemoryAllocator9kmem_initEv>
    80001908:	ff1ff06f          	j	800018f8 <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    8000190c:	02050023          	sb	zero,32(a0)
    80001910:	02850513          	addi	a0,a0,40
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	00813483          	ld	s1,8(sp)
    80001920:	00013903          	ld	s2,0(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret
    8000192c:	01853503          	ld	a0,24(a0)
    80001930:	fe0502e3          	beqz	a0,80001914 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    80001934:	02054783          	lbu	a5,32(a0)
    80001938:	fe078ae3          	beqz	a5,8000192c <_ZN15MemoryAllocator10kmem_allocEm+0x60>
    8000193c:	00853783          	ld	a5,8(a0)
    80001940:	fc9786e3          	beq	a5,s1,8000190c <_ZN15MemoryAllocator10kmem_allocEm+0x40>
    80001944:	02848713          	addi	a4,s1,40
    80001948:	fef772e3          	bgeu	a4,a5,8000192c <_ZN15MemoryAllocator10kmem_allocEm+0x60>
    8000194c:	409787b3          	sub	a5,a5,s1
    80001950:	00e50733          	add	a4,a0,a4
    80001954:	00100693          	li	a3,1
    80001958:	02d70023          	sb	a3,32(a4)
    8000195c:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd9538>
    80001960:	00f73423          	sd	a5,8(a4)
    80001964:	01853783          	ld	a5,24(a0)
    80001968:	00f73c23          	sd	a5,24(a4)
    8000196c:	00a73823          	sd	a0,16(a4)
    80001970:	abcdf7b7          	lui	a5,0xabcdf
    80001974:	f017879b          	addiw	a5,a5,-255
    80001978:	00f72023          	sw	a5,0(a4)
    8000197c:	01853783          	ld	a5,24(a0)
    80001980:	00078463          	beqz	a5,80001988 <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    80001984:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd9570>
    80001988:	00e53c23          	sd	a4,24(a0)
    8000198c:	00953423          	sd	s1,8(a0)
    80001990:	02050023          	sb	zero,32(a0)
    80001994:	02850513          	addi	a0,a0,40
    80001998:	f7dff06f          	j	80001914 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    8000199c:	00000513          	li	a0,0
    800019a0:	00008067          	ret

00000000800019a4 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:
    800019a4:	ff010113          	addi	sp,sp,-16
    800019a8:	00813423          	sd	s0,8(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	0205c783          	lbu	a5,32(a1)
    800019b4:	04078263          	beqz	a5,800019f8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    800019b8:	0185b783          	ld	a5,24(a1)
    800019bc:	00078e63          	beqz	a5,800019d8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    800019c0:	0207c703          	lbu	a4,32(a5)
    800019c4:	00070a63          	beqz	a4,800019d8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    800019c8:	0085b683          	ld	a3,8(a1)
    800019cc:	02868713          	addi	a4,a3,40
    800019d0:	00e58733          	add	a4,a1,a4
    800019d4:	02e78863          	beq	a5,a4,80001a04 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
    800019d8:	0105b783          	ld	a5,16(a1)
    800019dc:	00078e63          	beqz	a5,800019f8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    800019e0:	0207c703          	lbu	a4,32(a5)
    800019e4:	00070a63          	beqz	a4,800019f8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    800019e8:	0087b683          	ld	a3,8(a5)
    800019ec:	02868713          	addi	a4,a3,40
    800019f0:	00e78733          	add	a4,a5,a4
    800019f4:	02b70a63          	beq	a4,a1,80001a28 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
    800019f8:	00813403          	ld	s0,8(sp)
    800019fc:	01010113          	addi	sp,sp,16
    80001a00:	00008067          	ret
    80001a04:	0087b703          	ld	a4,8(a5)
    80001a08:	00e686b3          	add	a3,a3,a4
    80001a0c:	02868693          	addi	a3,a3,40
    80001a10:	00d5b423          	sd	a3,8(a1)
    80001a14:	0187b783          	ld	a5,24(a5)
    80001a18:	00f5bc23          	sd	a5,24(a1)
    80001a1c:	fa078ee3          	beqz	a5,800019d8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    80001a20:	00b7b823          	sd	a1,16(a5)
    80001a24:	fb5ff06f          	j	800019d8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    80001a28:	0085b703          	ld	a4,8(a1)
    80001a2c:	00e686b3          	add	a3,a3,a4
    80001a30:	02868693          	addi	a3,a3,40
    80001a34:	00d7b423          	sd	a3,8(a5)
    80001a38:	0105b703          	ld	a4,16(a1)
    80001a3c:	0185b783          	ld	a5,24(a1)
    80001a40:	00f73c23          	sd	a5,24(a4)
    80001a44:	fa078ae3          	beqz	a5,800019f8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    80001a48:	0105b703          	ld	a4,16(a1)
    80001a4c:	00e7b823          	sd	a4,16(a5)
    80001a50:	fa9ff06f          	j	800019f8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080001a54 <_ZN15MemoryAllocator9kmem_freeEPv>:
    80001a54:	06058c63          	beqz	a1,80001acc <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    80001a58:	00058793          	mv	a5,a1
    80001a5c:	00003717          	auipc	a4,0x3
    80001a60:	d4473703          	ld	a4,-700(a4) # 800047a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001a64:	00073703          	ld	a4,0(a4)
    80001a68:	06e5e663          	bltu	a1,a4,80001ad4 <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    80001a6c:	00003717          	auipc	a4,0x3
    80001a70:	d5473703          	ld	a4,-684(a4) # 800047c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001a74:	00073703          	ld	a4,0(a4)
    80001a78:	06b76263          	bltu	a4,a1,80001adc <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    80001a7c:	fd858593          	addi	a1,a1,-40
    80001a80:	fd87a683          	lw	a3,-40(a5)
    80001a84:	abcdf737          	lui	a4,0xabcdf
    80001a88:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd9461>
    80001a8c:	04e69c63          	bne	a3,a4,80001ae4 <_ZN15MemoryAllocator9kmem_freeEPv+0x90>
    80001a90:	ff87c703          	lbu	a4,-8(a5)
    80001a94:	04071c63          	bnez	a4,80001aec <_ZN15MemoryAllocator9kmem_freeEPv+0x98>
    80001a98:	ff010113          	addi	sp,sp,-16
    80001a9c:	00113423          	sd	ra,8(sp)
    80001aa0:	00813023          	sd	s0,0(sp)
    80001aa4:	01010413          	addi	s0,sp,16
    80001aa8:	00100713          	li	a4,1
    80001aac:	fee78c23          	sb	a4,-8(a5)
    80001ab0:	00000097          	auipc	ra,0x0
    80001ab4:	ef4080e7          	jalr	-268(ra) # 800019a4 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    80001ab8:	00000513          	li	a0,0
    80001abc:	00813083          	ld	ra,8(sp)
    80001ac0:	00013403          	ld	s0,0(sp)
    80001ac4:	01010113          	addi	sp,sp,16
    80001ac8:	00008067          	ret
    80001acc:	fff00513          	li	a0,-1
    80001ad0:	00008067          	ret
    80001ad4:	ffe00513          	li	a0,-2
    80001ad8:	00008067          	ret
    80001adc:	ffe00513          	li	a0,-2
    80001ae0:	00008067          	ret
    80001ae4:	ffd00513          	li	a0,-3
    80001ae8:	00008067          	ret
    80001aec:	ffd00513          	li	a0,-3
    80001af0:	00008067          	ret

0000000080001af4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00813423          	sd	s0,8(sp)
    80001afc:	01010413          	addi	s0,sp,16
    80001b00:	00100793          	li	a5,1
    80001b04:	00f50863          	beq	a0,a5,80001b14 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001b08:	00813403          	ld	s0,8(sp)
    80001b0c:	01010113          	addi	sp,sp,16
    80001b10:	00008067          	ret
    80001b14:	000107b7          	lui	a5,0x10
    80001b18:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001b1c:	fef596e3          	bne	a1,a5,80001b08 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    80001b20:	00003797          	auipc	a5,0x3
    80001b24:	d0878793          	addi	a5,a5,-760 # 80004828 <_ZN9Scheduler16readyThreadQueueE>
    80001b28:	0007b023          	sd	zero,0(a5)
    80001b2c:	0007b423          	sd	zero,8(a5)
    80001b30:	fd9ff06f          	j	80001b08 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001b34 <_ZN9Scheduler3getEv>:
{
    80001b34:	fe010113          	addi	sp,sp,-32
    80001b38:	00113c23          	sd	ra,24(sp)
    80001b3c:	00813823          	sd	s0,16(sp)
    80001b40:	00913423          	sd	s1,8(sp)
    80001b44:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80001b48:	00003517          	auipc	a0,0x3
    80001b4c:	ce053503          	ld	a0,-800(a0) # 80004828 <_ZN9Scheduler16readyThreadQueueE>
    80001b50:	04050263          	beqz	a0,80001b94 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80001b54:	00853783          	ld	a5,8(a0)
    80001b58:	00003717          	auipc	a4,0x3
    80001b5c:	ccf73823          	sd	a5,-816(a4) # 80004828 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001b60:	02078463          	beqz	a5,80001b88 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80001b64:	00053483          	ld	s1,0(a0)
        delete elem;
    80001b68:	00000097          	auipc	ra,0x0
    80001b6c:	c88080e7          	jalr	-888(ra) # 800017f0 <_ZdlPv>
}
    80001b70:	00048513          	mv	a0,s1
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	02010113          	addi	sp,sp,32
    80001b84:	00008067          	ret
        if (!head) { tail = 0; }
    80001b88:	00003797          	auipc	a5,0x3
    80001b8c:	ca07b423          	sd	zero,-856(a5) # 80004830 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001b90:	fd5ff06f          	j	80001b64 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001b94:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80001b98:	fd9ff06f          	j	80001b70 <_ZN9Scheduler3getEv+0x3c>

0000000080001b9c <_ZN9Scheduler3putEP3TCB>:
{
    80001b9c:	fe010113          	addi	sp,sp,-32
    80001ba0:	00113c23          	sd	ra,24(sp)
    80001ba4:	00813823          	sd	s0,16(sp)
    80001ba8:	00913423          	sd	s1,8(sp)
    80001bac:	02010413          	addi	s0,sp,32
    80001bb0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001bb4:	01000513          	li	a0,16
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	be8080e7          	jalr	-1048(ra) # 800017a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001bc0:	00953023          	sd	s1,0(a0)
    80001bc4:	00053423          	sd	zero,8(a0)
        if (tail)
    80001bc8:	00003797          	auipc	a5,0x3
    80001bcc:	c687b783          	ld	a5,-920(a5) # 80004830 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001bd0:	02078263          	beqz	a5,80001bf4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001bd4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001bd8:	00003797          	auipc	a5,0x3
    80001bdc:	c4a7bc23          	sd	a0,-936(a5) # 80004830 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001be0:	01813083          	ld	ra,24(sp)
    80001be4:	01013403          	ld	s0,16(sp)
    80001be8:	00813483          	ld	s1,8(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret
            head = tail = elem;
    80001bf4:	00003797          	auipc	a5,0x3
    80001bf8:	c3478793          	addi	a5,a5,-972 # 80004828 <_ZN9Scheduler16readyThreadQueueE>
    80001bfc:	00a7b423          	sd	a0,8(a5)
    80001c00:	00a7b023          	sd	a0,0(a5)
    80001c04:	fddff06f          	j	80001be0 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001c08 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00113423          	sd	ra,8(sp)
    80001c10:	00813023          	sd	s0,0(sp)
    80001c14:	01010413          	addi	s0,sp,16
    80001c18:	000105b7          	lui	a1,0x10
    80001c1c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001c20:	00100513          	li	a0,1
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	ed0080e7          	jalr	-304(ra) # 80001af4 <_Z41__static_initialization_and_destruction_0ii>
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <start>:
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00813423          	sd	s0,8(sp)
    80001c44:	01010413          	addi	s0,sp,16
    80001c48:	300027f3          	csrr	a5,mstatus
    80001c4c:	ffffe737          	lui	a4,0xffffe
    80001c50:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8d5f>
    80001c54:	00e7f7b3          	and	a5,a5,a4
    80001c58:	00001737          	lui	a4,0x1
    80001c5c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001c60:	00e7e7b3          	or	a5,a5,a4
    80001c64:	30079073          	csrw	mstatus,a5
    80001c68:	00000797          	auipc	a5,0x0
    80001c6c:	16078793          	addi	a5,a5,352 # 80001dc8 <system_main>
    80001c70:	34179073          	csrw	mepc,a5
    80001c74:	00000793          	li	a5,0
    80001c78:	18079073          	csrw	satp,a5
    80001c7c:	000107b7          	lui	a5,0x10
    80001c80:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001c84:	30279073          	csrw	medeleg,a5
    80001c88:	30379073          	csrw	mideleg,a5
    80001c8c:	104027f3          	csrr	a5,sie
    80001c90:	2227e793          	ori	a5,a5,546
    80001c94:	10479073          	csrw	sie,a5
    80001c98:	fff00793          	li	a5,-1
    80001c9c:	00a7d793          	srli	a5,a5,0xa
    80001ca0:	3b079073          	csrw	pmpaddr0,a5
    80001ca4:	00f00793          	li	a5,15
    80001ca8:	3a079073          	csrw	pmpcfg0,a5
    80001cac:	f14027f3          	csrr	a5,mhartid
    80001cb0:	0200c737          	lui	a4,0x200c
    80001cb4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001cb8:	0007869b          	sext.w	a3,a5
    80001cbc:	00269713          	slli	a4,a3,0x2
    80001cc0:	000f4637          	lui	a2,0xf4
    80001cc4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001cc8:	00d70733          	add	a4,a4,a3
    80001ccc:	0037979b          	slliw	a5,a5,0x3
    80001cd0:	020046b7          	lui	a3,0x2004
    80001cd4:	00d787b3          	add	a5,a5,a3
    80001cd8:	00c585b3          	add	a1,a1,a2
    80001cdc:	00371693          	slli	a3,a4,0x3
    80001ce0:	00003717          	auipc	a4,0x3
    80001ce4:	b6070713          	addi	a4,a4,-1184 # 80004840 <timer_scratch>
    80001ce8:	00b7b023          	sd	a1,0(a5)
    80001cec:	00d70733          	add	a4,a4,a3
    80001cf0:	00f73c23          	sd	a5,24(a4)
    80001cf4:	02c73023          	sd	a2,32(a4)
    80001cf8:	34071073          	csrw	mscratch,a4
    80001cfc:	00000797          	auipc	a5,0x0
    80001d00:	6e478793          	addi	a5,a5,1764 # 800023e0 <timervec>
    80001d04:	30579073          	csrw	mtvec,a5
    80001d08:	300027f3          	csrr	a5,mstatus
    80001d0c:	0087e793          	ori	a5,a5,8
    80001d10:	30079073          	csrw	mstatus,a5
    80001d14:	304027f3          	csrr	a5,mie
    80001d18:	0807e793          	ori	a5,a5,128
    80001d1c:	30479073          	csrw	mie,a5
    80001d20:	f14027f3          	csrr	a5,mhartid
    80001d24:	0007879b          	sext.w	a5,a5
    80001d28:	00078213          	mv	tp,a5
    80001d2c:	30200073          	mret
    80001d30:	00813403          	ld	s0,8(sp)
    80001d34:	01010113          	addi	sp,sp,16
    80001d38:	00008067          	ret

0000000080001d3c <timerinit>:
    80001d3c:	ff010113          	addi	sp,sp,-16
    80001d40:	00813423          	sd	s0,8(sp)
    80001d44:	01010413          	addi	s0,sp,16
    80001d48:	f14027f3          	csrr	a5,mhartid
    80001d4c:	0200c737          	lui	a4,0x200c
    80001d50:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001d54:	0007869b          	sext.w	a3,a5
    80001d58:	00269713          	slli	a4,a3,0x2
    80001d5c:	000f4637          	lui	a2,0xf4
    80001d60:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001d64:	00d70733          	add	a4,a4,a3
    80001d68:	0037979b          	slliw	a5,a5,0x3
    80001d6c:	020046b7          	lui	a3,0x2004
    80001d70:	00d787b3          	add	a5,a5,a3
    80001d74:	00c585b3          	add	a1,a1,a2
    80001d78:	00371693          	slli	a3,a4,0x3
    80001d7c:	00003717          	auipc	a4,0x3
    80001d80:	ac470713          	addi	a4,a4,-1340 # 80004840 <timer_scratch>
    80001d84:	00b7b023          	sd	a1,0(a5)
    80001d88:	00d70733          	add	a4,a4,a3
    80001d8c:	00f73c23          	sd	a5,24(a4)
    80001d90:	02c73023          	sd	a2,32(a4)
    80001d94:	34071073          	csrw	mscratch,a4
    80001d98:	00000797          	auipc	a5,0x0
    80001d9c:	64878793          	addi	a5,a5,1608 # 800023e0 <timervec>
    80001da0:	30579073          	csrw	mtvec,a5
    80001da4:	300027f3          	csrr	a5,mstatus
    80001da8:	0087e793          	ori	a5,a5,8
    80001dac:	30079073          	csrw	mstatus,a5
    80001db0:	304027f3          	csrr	a5,mie
    80001db4:	0807e793          	ori	a5,a5,128
    80001db8:	30479073          	csrw	mie,a5
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <system_main>:
    80001dc8:	fe010113          	addi	sp,sp,-32
    80001dcc:	00813823          	sd	s0,16(sp)
    80001dd0:	00913423          	sd	s1,8(sp)
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	02010413          	addi	s0,sp,32
    80001ddc:	00000097          	auipc	ra,0x0
    80001de0:	0c4080e7          	jalr	196(ra) # 80001ea0 <cpuid>
    80001de4:	00003497          	auipc	s1,0x3
    80001de8:	9fc48493          	addi	s1,s1,-1540 # 800047e0 <started>
    80001dec:	02050263          	beqz	a0,80001e10 <system_main+0x48>
    80001df0:	0004a783          	lw	a5,0(s1)
    80001df4:	0007879b          	sext.w	a5,a5
    80001df8:	fe078ce3          	beqz	a5,80001df0 <system_main+0x28>
    80001dfc:	0ff0000f          	fence
    80001e00:	00002517          	auipc	a0,0x2
    80001e04:	2c050513          	addi	a0,a0,704 # 800040c0 <CONSOLE_STATUS+0xb0>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	a74080e7          	jalr	-1420(ra) # 8000287c <panic>
    80001e10:	00001097          	auipc	ra,0x1
    80001e14:	9c8080e7          	jalr	-1592(ra) # 800027d8 <consoleinit>
    80001e18:	00001097          	auipc	ra,0x1
    80001e1c:	154080e7          	jalr	340(ra) # 80002f6c <printfinit>
    80001e20:	00002517          	auipc	a0,0x2
    80001e24:	38050513          	addi	a0,a0,896 # 800041a0 <CONSOLE_STATUS+0x190>
    80001e28:	00001097          	auipc	ra,0x1
    80001e2c:	ab0080e7          	jalr	-1360(ra) # 800028d8 <__printf>
    80001e30:	00002517          	auipc	a0,0x2
    80001e34:	26050513          	addi	a0,a0,608 # 80004090 <CONSOLE_STATUS+0x80>
    80001e38:	00001097          	auipc	ra,0x1
    80001e3c:	aa0080e7          	jalr	-1376(ra) # 800028d8 <__printf>
    80001e40:	00002517          	auipc	a0,0x2
    80001e44:	36050513          	addi	a0,a0,864 # 800041a0 <CONSOLE_STATUS+0x190>
    80001e48:	00001097          	auipc	ra,0x1
    80001e4c:	a90080e7          	jalr	-1392(ra) # 800028d8 <__printf>
    80001e50:	00001097          	auipc	ra,0x1
    80001e54:	4a8080e7          	jalr	1192(ra) # 800032f8 <kinit>
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	148080e7          	jalr	328(ra) # 80001fa0 <trapinit>
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	16c080e7          	jalr	364(ra) # 80001fcc <trapinithart>
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	5b8080e7          	jalr	1464(ra) # 80002420 <plicinit>
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	5d8080e7          	jalr	1496(ra) # 80002448 <plicinithart>
    80001e78:	00000097          	auipc	ra,0x0
    80001e7c:	078080e7          	jalr	120(ra) # 80001ef0 <userinit>
    80001e80:	0ff0000f          	fence
    80001e84:	00100793          	li	a5,1
    80001e88:	00002517          	auipc	a0,0x2
    80001e8c:	22050513          	addi	a0,a0,544 # 800040a8 <CONSOLE_STATUS+0x98>
    80001e90:	00f4a023          	sw	a5,0(s1)
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	a44080e7          	jalr	-1468(ra) # 800028d8 <__printf>
    80001e9c:	0000006f          	j	80001e9c <system_main+0xd4>

0000000080001ea0 <cpuid>:
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00813423          	sd	s0,8(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    80001eac:	00020513          	mv	a0,tp
    80001eb0:	00813403          	ld	s0,8(sp)
    80001eb4:	0005051b          	sext.w	a0,a0
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <mycpu>:
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00813423          	sd	s0,8(sp)
    80001ec8:	01010413          	addi	s0,sp,16
    80001ecc:	00020793          	mv	a5,tp
    80001ed0:	00813403          	ld	s0,8(sp)
    80001ed4:	0007879b          	sext.w	a5,a5
    80001ed8:	00779793          	slli	a5,a5,0x7
    80001edc:	00004517          	auipc	a0,0x4
    80001ee0:	99450513          	addi	a0,a0,-1644 # 80005870 <cpus>
    80001ee4:	00f50533          	add	a0,a0,a5
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <userinit>:
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00813423          	sd	s0,8(sp)
    80001ef8:	01010413          	addi	s0,sp,16
    80001efc:	00813403          	ld	s0,8(sp)
    80001f00:	01010113          	addi	sp,sp,16
    80001f04:	fffff317          	auipc	t1,0xfffff
    80001f08:	46830067          	jr	1128(t1) # 8000136c <main>

0000000080001f0c <either_copyout>:
    80001f0c:	ff010113          	addi	sp,sp,-16
    80001f10:	00813023          	sd	s0,0(sp)
    80001f14:	00113423          	sd	ra,8(sp)
    80001f18:	01010413          	addi	s0,sp,16
    80001f1c:	02051663          	bnez	a0,80001f48 <either_copyout+0x3c>
    80001f20:	00058513          	mv	a0,a1
    80001f24:	00060593          	mv	a1,a2
    80001f28:	0006861b          	sext.w	a2,a3
    80001f2c:	00002097          	auipc	ra,0x2
    80001f30:	c58080e7          	jalr	-936(ra) # 80003b84 <__memmove>
    80001f34:	00813083          	ld	ra,8(sp)
    80001f38:	00013403          	ld	s0,0(sp)
    80001f3c:	00000513          	li	a0,0
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret
    80001f48:	00002517          	auipc	a0,0x2
    80001f4c:	1a050513          	addi	a0,a0,416 # 800040e8 <CONSOLE_STATUS+0xd8>
    80001f50:	00001097          	auipc	ra,0x1
    80001f54:	92c080e7          	jalr	-1748(ra) # 8000287c <panic>

0000000080001f58 <either_copyin>:
    80001f58:	ff010113          	addi	sp,sp,-16
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	00113423          	sd	ra,8(sp)
    80001f64:	01010413          	addi	s0,sp,16
    80001f68:	02059463          	bnez	a1,80001f90 <either_copyin+0x38>
    80001f6c:	00060593          	mv	a1,a2
    80001f70:	0006861b          	sext.w	a2,a3
    80001f74:	00002097          	auipc	ra,0x2
    80001f78:	c10080e7          	jalr	-1008(ra) # 80003b84 <__memmove>
    80001f7c:	00813083          	ld	ra,8(sp)
    80001f80:	00013403          	ld	s0,0(sp)
    80001f84:	00000513          	li	a0,0
    80001f88:	01010113          	addi	sp,sp,16
    80001f8c:	00008067          	ret
    80001f90:	00002517          	auipc	a0,0x2
    80001f94:	18050513          	addi	a0,a0,384 # 80004110 <CONSOLE_STATUS+0x100>
    80001f98:	00001097          	auipc	ra,0x1
    80001f9c:	8e4080e7          	jalr	-1820(ra) # 8000287c <panic>

0000000080001fa0 <trapinit>:
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00813423          	sd	s0,8(sp)
    80001fa8:	01010413          	addi	s0,sp,16
    80001fac:	00813403          	ld	s0,8(sp)
    80001fb0:	00002597          	auipc	a1,0x2
    80001fb4:	18858593          	addi	a1,a1,392 # 80004138 <CONSOLE_STATUS+0x128>
    80001fb8:	00004517          	auipc	a0,0x4
    80001fbc:	93850513          	addi	a0,a0,-1736 # 800058f0 <tickslock>
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00001317          	auipc	t1,0x1
    80001fc8:	5c430067          	jr	1476(t1) # 80003588 <initlock>

0000000080001fcc <trapinithart>:
    80001fcc:	ff010113          	addi	sp,sp,-16
    80001fd0:	00813423          	sd	s0,8(sp)
    80001fd4:	01010413          	addi	s0,sp,16
    80001fd8:	00000797          	auipc	a5,0x0
    80001fdc:	2f878793          	addi	a5,a5,760 # 800022d0 <kernelvec>
    80001fe0:	10579073          	csrw	stvec,a5
    80001fe4:	00813403          	ld	s0,8(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <usertrap>:
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00813423          	sd	s0,8(sp)
    80001ff8:	01010413          	addi	s0,sp,16
    80001ffc:	00813403          	ld	s0,8(sp)
    80002000:	01010113          	addi	sp,sp,16
    80002004:	00008067          	ret

0000000080002008 <usertrapret>:
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00813423          	sd	s0,8(sp)
    80002010:	01010413          	addi	s0,sp,16
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <kerneltrap>:
    80002020:	fe010113          	addi	sp,sp,-32
    80002024:	00813823          	sd	s0,16(sp)
    80002028:	00113c23          	sd	ra,24(sp)
    8000202c:	00913423          	sd	s1,8(sp)
    80002030:	02010413          	addi	s0,sp,32
    80002034:	142025f3          	csrr	a1,scause
    80002038:	100027f3          	csrr	a5,sstatus
    8000203c:	0027f793          	andi	a5,a5,2
    80002040:	10079c63          	bnez	a5,80002158 <kerneltrap+0x138>
    80002044:	142027f3          	csrr	a5,scause
    80002048:	0207ce63          	bltz	a5,80002084 <kerneltrap+0x64>
    8000204c:	00002517          	auipc	a0,0x2
    80002050:	13450513          	addi	a0,a0,308 # 80004180 <CONSOLE_STATUS+0x170>
    80002054:	00001097          	auipc	ra,0x1
    80002058:	884080e7          	jalr	-1916(ra) # 800028d8 <__printf>
    8000205c:	141025f3          	csrr	a1,sepc
    80002060:	14302673          	csrr	a2,stval
    80002064:	00002517          	auipc	a0,0x2
    80002068:	12c50513          	addi	a0,a0,300 # 80004190 <CONSOLE_STATUS+0x180>
    8000206c:	00001097          	auipc	ra,0x1
    80002070:	86c080e7          	jalr	-1940(ra) # 800028d8 <__printf>
    80002074:	00002517          	auipc	a0,0x2
    80002078:	13450513          	addi	a0,a0,308 # 800041a8 <CONSOLE_STATUS+0x198>
    8000207c:	00001097          	auipc	ra,0x1
    80002080:	800080e7          	jalr	-2048(ra) # 8000287c <panic>
    80002084:	0ff7f713          	andi	a4,a5,255
    80002088:	00900693          	li	a3,9
    8000208c:	04d70063          	beq	a4,a3,800020cc <kerneltrap+0xac>
    80002090:	fff00713          	li	a4,-1
    80002094:	03f71713          	slli	a4,a4,0x3f
    80002098:	00170713          	addi	a4,a4,1
    8000209c:	fae798e3          	bne	a5,a4,8000204c <kerneltrap+0x2c>
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	e00080e7          	jalr	-512(ra) # 80001ea0 <cpuid>
    800020a8:	06050663          	beqz	a0,80002114 <kerneltrap+0xf4>
    800020ac:	144027f3          	csrr	a5,sip
    800020b0:	ffd7f793          	andi	a5,a5,-3
    800020b4:	14479073          	csrw	sip,a5
    800020b8:	01813083          	ld	ra,24(sp)
    800020bc:	01013403          	ld	s0,16(sp)
    800020c0:	00813483          	ld	s1,8(sp)
    800020c4:	02010113          	addi	sp,sp,32
    800020c8:	00008067          	ret
    800020cc:	00000097          	auipc	ra,0x0
    800020d0:	3c8080e7          	jalr	968(ra) # 80002494 <plic_claim>
    800020d4:	00a00793          	li	a5,10
    800020d8:	00050493          	mv	s1,a0
    800020dc:	06f50863          	beq	a0,a5,8000214c <kerneltrap+0x12c>
    800020e0:	fc050ce3          	beqz	a0,800020b8 <kerneltrap+0x98>
    800020e4:	00050593          	mv	a1,a0
    800020e8:	00002517          	auipc	a0,0x2
    800020ec:	07850513          	addi	a0,a0,120 # 80004160 <CONSOLE_STATUS+0x150>
    800020f0:	00000097          	auipc	ra,0x0
    800020f4:	7e8080e7          	jalr	2024(ra) # 800028d8 <__printf>
    800020f8:	01013403          	ld	s0,16(sp)
    800020fc:	01813083          	ld	ra,24(sp)
    80002100:	00048513          	mv	a0,s1
    80002104:	00813483          	ld	s1,8(sp)
    80002108:	02010113          	addi	sp,sp,32
    8000210c:	00000317          	auipc	t1,0x0
    80002110:	3c030067          	jr	960(t1) # 800024cc <plic_complete>
    80002114:	00003517          	auipc	a0,0x3
    80002118:	7dc50513          	addi	a0,a0,2012 # 800058f0 <tickslock>
    8000211c:	00001097          	auipc	ra,0x1
    80002120:	490080e7          	jalr	1168(ra) # 800035ac <acquire>
    80002124:	00002717          	auipc	a4,0x2
    80002128:	6c070713          	addi	a4,a4,1728 # 800047e4 <ticks>
    8000212c:	00072783          	lw	a5,0(a4)
    80002130:	00003517          	auipc	a0,0x3
    80002134:	7c050513          	addi	a0,a0,1984 # 800058f0 <tickslock>
    80002138:	0017879b          	addiw	a5,a5,1
    8000213c:	00f72023          	sw	a5,0(a4)
    80002140:	00001097          	auipc	ra,0x1
    80002144:	538080e7          	jalr	1336(ra) # 80003678 <release>
    80002148:	f65ff06f          	j	800020ac <kerneltrap+0x8c>
    8000214c:	00001097          	auipc	ra,0x1
    80002150:	094080e7          	jalr	148(ra) # 800031e0 <uartintr>
    80002154:	fa5ff06f          	j	800020f8 <kerneltrap+0xd8>
    80002158:	00002517          	auipc	a0,0x2
    8000215c:	fe850513          	addi	a0,a0,-24 # 80004140 <CONSOLE_STATUS+0x130>
    80002160:	00000097          	auipc	ra,0x0
    80002164:	71c080e7          	jalr	1820(ra) # 8000287c <panic>

0000000080002168 <clockintr>:
    80002168:	fe010113          	addi	sp,sp,-32
    8000216c:	00813823          	sd	s0,16(sp)
    80002170:	00913423          	sd	s1,8(sp)
    80002174:	00113c23          	sd	ra,24(sp)
    80002178:	02010413          	addi	s0,sp,32
    8000217c:	00003497          	auipc	s1,0x3
    80002180:	77448493          	addi	s1,s1,1908 # 800058f0 <tickslock>
    80002184:	00048513          	mv	a0,s1
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	424080e7          	jalr	1060(ra) # 800035ac <acquire>
    80002190:	00002717          	auipc	a4,0x2
    80002194:	65470713          	addi	a4,a4,1620 # 800047e4 <ticks>
    80002198:	00072783          	lw	a5,0(a4)
    8000219c:	01013403          	ld	s0,16(sp)
    800021a0:	01813083          	ld	ra,24(sp)
    800021a4:	00048513          	mv	a0,s1
    800021a8:	0017879b          	addiw	a5,a5,1
    800021ac:	00813483          	ld	s1,8(sp)
    800021b0:	00f72023          	sw	a5,0(a4)
    800021b4:	02010113          	addi	sp,sp,32
    800021b8:	00001317          	auipc	t1,0x1
    800021bc:	4c030067          	jr	1216(t1) # 80003678 <release>

00000000800021c0 <devintr>:
    800021c0:	142027f3          	csrr	a5,scause
    800021c4:	00000513          	li	a0,0
    800021c8:	0007c463          	bltz	a5,800021d0 <devintr+0x10>
    800021cc:	00008067          	ret
    800021d0:	fe010113          	addi	sp,sp,-32
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00113c23          	sd	ra,24(sp)
    800021dc:	00913423          	sd	s1,8(sp)
    800021e0:	02010413          	addi	s0,sp,32
    800021e4:	0ff7f713          	andi	a4,a5,255
    800021e8:	00900693          	li	a3,9
    800021ec:	04d70c63          	beq	a4,a3,80002244 <devintr+0x84>
    800021f0:	fff00713          	li	a4,-1
    800021f4:	03f71713          	slli	a4,a4,0x3f
    800021f8:	00170713          	addi	a4,a4,1
    800021fc:	00e78c63          	beq	a5,a4,80002214 <devintr+0x54>
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	01013403          	ld	s0,16(sp)
    80002208:	00813483          	ld	s1,8(sp)
    8000220c:	02010113          	addi	sp,sp,32
    80002210:	00008067          	ret
    80002214:	00000097          	auipc	ra,0x0
    80002218:	c8c080e7          	jalr	-884(ra) # 80001ea0 <cpuid>
    8000221c:	06050663          	beqz	a0,80002288 <devintr+0xc8>
    80002220:	144027f3          	csrr	a5,sip
    80002224:	ffd7f793          	andi	a5,a5,-3
    80002228:	14479073          	csrw	sip,a5
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	00200513          	li	a0,2
    8000223c:	02010113          	addi	sp,sp,32
    80002240:	00008067          	ret
    80002244:	00000097          	auipc	ra,0x0
    80002248:	250080e7          	jalr	592(ra) # 80002494 <plic_claim>
    8000224c:	00a00793          	li	a5,10
    80002250:	00050493          	mv	s1,a0
    80002254:	06f50663          	beq	a0,a5,800022c0 <devintr+0x100>
    80002258:	00100513          	li	a0,1
    8000225c:	fa0482e3          	beqz	s1,80002200 <devintr+0x40>
    80002260:	00048593          	mv	a1,s1
    80002264:	00002517          	auipc	a0,0x2
    80002268:	efc50513          	addi	a0,a0,-260 # 80004160 <CONSOLE_STATUS+0x150>
    8000226c:	00000097          	auipc	ra,0x0
    80002270:	66c080e7          	jalr	1644(ra) # 800028d8 <__printf>
    80002274:	00048513          	mv	a0,s1
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	254080e7          	jalr	596(ra) # 800024cc <plic_complete>
    80002280:	00100513          	li	a0,1
    80002284:	f7dff06f          	j	80002200 <devintr+0x40>
    80002288:	00003517          	auipc	a0,0x3
    8000228c:	66850513          	addi	a0,a0,1640 # 800058f0 <tickslock>
    80002290:	00001097          	auipc	ra,0x1
    80002294:	31c080e7          	jalr	796(ra) # 800035ac <acquire>
    80002298:	00002717          	auipc	a4,0x2
    8000229c:	54c70713          	addi	a4,a4,1356 # 800047e4 <ticks>
    800022a0:	00072783          	lw	a5,0(a4)
    800022a4:	00003517          	auipc	a0,0x3
    800022a8:	64c50513          	addi	a0,a0,1612 # 800058f0 <tickslock>
    800022ac:	0017879b          	addiw	a5,a5,1
    800022b0:	00f72023          	sw	a5,0(a4)
    800022b4:	00001097          	auipc	ra,0x1
    800022b8:	3c4080e7          	jalr	964(ra) # 80003678 <release>
    800022bc:	f65ff06f          	j	80002220 <devintr+0x60>
    800022c0:	00001097          	auipc	ra,0x1
    800022c4:	f20080e7          	jalr	-224(ra) # 800031e0 <uartintr>
    800022c8:	fadff06f          	j	80002274 <devintr+0xb4>
    800022cc:	0000                	unimp
	...

00000000800022d0 <kernelvec>:
    800022d0:	f0010113          	addi	sp,sp,-256
    800022d4:	00113023          	sd	ra,0(sp)
    800022d8:	00213423          	sd	sp,8(sp)
    800022dc:	00313823          	sd	gp,16(sp)
    800022e0:	00413c23          	sd	tp,24(sp)
    800022e4:	02513023          	sd	t0,32(sp)
    800022e8:	02613423          	sd	t1,40(sp)
    800022ec:	02713823          	sd	t2,48(sp)
    800022f0:	02813c23          	sd	s0,56(sp)
    800022f4:	04913023          	sd	s1,64(sp)
    800022f8:	04a13423          	sd	a0,72(sp)
    800022fc:	04b13823          	sd	a1,80(sp)
    80002300:	04c13c23          	sd	a2,88(sp)
    80002304:	06d13023          	sd	a3,96(sp)
    80002308:	06e13423          	sd	a4,104(sp)
    8000230c:	06f13823          	sd	a5,112(sp)
    80002310:	07013c23          	sd	a6,120(sp)
    80002314:	09113023          	sd	a7,128(sp)
    80002318:	09213423          	sd	s2,136(sp)
    8000231c:	09313823          	sd	s3,144(sp)
    80002320:	09413c23          	sd	s4,152(sp)
    80002324:	0b513023          	sd	s5,160(sp)
    80002328:	0b613423          	sd	s6,168(sp)
    8000232c:	0b713823          	sd	s7,176(sp)
    80002330:	0b813c23          	sd	s8,184(sp)
    80002334:	0d913023          	sd	s9,192(sp)
    80002338:	0da13423          	sd	s10,200(sp)
    8000233c:	0db13823          	sd	s11,208(sp)
    80002340:	0dc13c23          	sd	t3,216(sp)
    80002344:	0fd13023          	sd	t4,224(sp)
    80002348:	0fe13423          	sd	t5,232(sp)
    8000234c:	0ff13823          	sd	t6,240(sp)
    80002350:	cd1ff0ef          	jal	ra,80002020 <kerneltrap>
    80002354:	00013083          	ld	ra,0(sp)
    80002358:	00813103          	ld	sp,8(sp)
    8000235c:	01013183          	ld	gp,16(sp)
    80002360:	02013283          	ld	t0,32(sp)
    80002364:	02813303          	ld	t1,40(sp)
    80002368:	03013383          	ld	t2,48(sp)
    8000236c:	03813403          	ld	s0,56(sp)
    80002370:	04013483          	ld	s1,64(sp)
    80002374:	04813503          	ld	a0,72(sp)
    80002378:	05013583          	ld	a1,80(sp)
    8000237c:	05813603          	ld	a2,88(sp)
    80002380:	06013683          	ld	a3,96(sp)
    80002384:	06813703          	ld	a4,104(sp)
    80002388:	07013783          	ld	a5,112(sp)
    8000238c:	07813803          	ld	a6,120(sp)
    80002390:	08013883          	ld	a7,128(sp)
    80002394:	08813903          	ld	s2,136(sp)
    80002398:	09013983          	ld	s3,144(sp)
    8000239c:	09813a03          	ld	s4,152(sp)
    800023a0:	0a013a83          	ld	s5,160(sp)
    800023a4:	0a813b03          	ld	s6,168(sp)
    800023a8:	0b013b83          	ld	s7,176(sp)
    800023ac:	0b813c03          	ld	s8,184(sp)
    800023b0:	0c013c83          	ld	s9,192(sp)
    800023b4:	0c813d03          	ld	s10,200(sp)
    800023b8:	0d013d83          	ld	s11,208(sp)
    800023bc:	0d813e03          	ld	t3,216(sp)
    800023c0:	0e013e83          	ld	t4,224(sp)
    800023c4:	0e813f03          	ld	t5,232(sp)
    800023c8:	0f013f83          	ld	t6,240(sp)
    800023cc:	10010113          	addi	sp,sp,256
    800023d0:	10200073          	sret
    800023d4:	00000013          	nop
    800023d8:	00000013          	nop
    800023dc:	00000013          	nop

00000000800023e0 <timervec>:
    800023e0:	34051573          	csrrw	a0,mscratch,a0
    800023e4:	00b53023          	sd	a1,0(a0)
    800023e8:	00c53423          	sd	a2,8(a0)
    800023ec:	00d53823          	sd	a3,16(a0)
    800023f0:	01853583          	ld	a1,24(a0)
    800023f4:	02053603          	ld	a2,32(a0)
    800023f8:	0005b683          	ld	a3,0(a1)
    800023fc:	00c686b3          	add	a3,a3,a2
    80002400:	00d5b023          	sd	a3,0(a1)
    80002404:	00200593          	li	a1,2
    80002408:	14459073          	csrw	sip,a1
    8000240c:	01053683          	ld	a3,16(a0)
    80002410:	00853603          	ld	a2,8(a0)
    80002414:	00053583          	ld	a1,0(a0)
    80002418:	34051573          	csrrw	a0,mscratch,a0
    8000241c:	30200073          	mret

0000000080002420 <plicinit>:
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    8000242c:	00813403          	ld	s0,8(sp)
    80002430:	0c0007b7          	lui	a5,0xc000
    80002434:	00100713          	li	a4,1
    80002438:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000243c:	00e7a223          	sw	a4,4(a5)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <plicinithart>:
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00813023          	sd	s0,0(sp)
    80002450:	00113423          	sd	ra,8(sp)
    80002454:	01010413          	addi	s0,sp,16
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	a48080e7          	jalr	-1464(ra) # 80001ea0 <cpuid>
    80002460:	0085171b          	slliw	a4,a0,0x8
    80002464:	0c0027b7          	lui	a5,0xc002
    80002468:	00e787b3          	add	a5,a5,a4
    8000246c:	40200713          	li	a4,1026
    80002470:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80002474:	00813083          	ld	ra,8(sp)
    80002478:	00013403          	ld	s0,0(sp)
    8000247c:	00d5151b          	slliw	a0,a0,0xd
    80002480:	0c2017b7          	lui	a5,0xc201
    80002484:	00a78533          	add	a0,a5,a0
    80002488:	00052023          	sw	zero,0(a0)
    8000248c:	01010113          	addi	sp,sp,16
    80002490:	00008067          	ret

0000000080002494 <plic_claim>:
    80002494:	ff010113          	addi	sp,sp,-16
    80002498:	00813023          	sd	s0,0(sp)
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	01010413          	addi	s0,sp,16
    800024a4:	00000097          	auipc	ra,0x0
    800024a8:	9fc080e7          	jalr	-1540(ra) # 80001ea0 <cpuid>
    800024ac:	00813083          	ld	ra,8(sp)
    800024b0:	00013403          	ld	s0,0(sp)
    800024b4:	00d5151b          	slliw	a0,a0,0xd
    800024b8:	0c2017b7          	lui	a5,0xc201
    800024bc:	00a78533          	add	a0,a5,a0
    800024c0:	00452503          	lw	a0,4(a0)
    800024c4:	01010113          	addi	sp,sp,16
    800024c8:	00008067          	ret

00000000800024cc <plic_complete>:
    800024cc:	fe010113          	addi	sp,sp,-32
    800024d0:	00813823          	sd	s0,16(sp)
    800024d4:	00913423          	sd	s1,8(sp)
    800024d8:	00113c23          	sd	ra,24(sp)
    800024dc:	02010413          	addi	s0,sp,32
    800024e0:	00050493          	mv	s1,a0
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	9bc080e7          	jalr	-1604(ra) # 80001ea0 <cpuid>
    800024ec:	01813083          	ld	ra,24(sp)
    800024f0:	01013403          	ld	s0,16(sp)
    800024f4:	00d5179b          	slliw	a5,a0,0xd
    800024f8:	0c201737          	lui	a4,0xc201
    800024fc:	00f707b3          	add	a5,a4,a5
    80002500:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002504:	00813483          	ld	s1,8(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <consolewrite>:
    80002510:	fb010113          	addi	sp,sp,-80
    80002514:	04813023          	sd	s0,64(sp)
    80002518:	04113423          	sd	ra,72(sp)
    8000251c:	02913c23          	sd	s1,56(sp)
    80002520:	03213823          	sd	s2,48(sp)
    80002524:	03313423          	sd	s3,40(sp)
    80002528:	03413023          	sd	s4,32(sp)
    8000252c:	01513c23          	sd	s5,24(sp)
    80002530:	05010413          	addi	s0,sp,80
    80002534:	06c05c63          	blez	a2,800025ac <consolewrite+0x9c>
    80002538:	00060993          	mv	s3,a2
    8000253c:	00050a13          	mv	s4,a0
    80002540:	00058493          	mv	s1,a1
    80002544:	00000913          	li	s2,0
    80002548:	fff00a93          	li	s5,-1
    8000254c:	01c0006f          	j	80002568 <consolewrite+0x58>
    80002550:	fbf44503          	lbu	a0,-65(s0)
    80002554:	0019091b          	addiw	s2,s2,1
    80002558:	00148493          	addi	s1,s1,1
    8000255c:	00001097          	auipc	ra,0x1
    80002560:	a9c080e7          	jalr	-1380(ra) # 80002ff8 <uartputc>
    80002564:	03298063          	beq	s3,s2,80002584 <consolewrite+0x74>
    80002568:	00048613          	mv	a2,s1
    8000256c:	00100693          	li	a3,1
    80002570:	000a0593          	mv	a1,s4
    80002574:	fbf40513          	addi	a0,s0,-65
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	9e0080e7          	jalr	-1568(ra) # 80001f58 <either_copyin>
    80002580:	fd5518e3          	bne	a0,s5,80002550 <consolewrite+0x40>
    80002584:	04813083          	ld	ra,72(sp)
    80002588:	04013403          	ld	s0,64(sp)
    8000258c:	03813483          	ld	s1,56(sp)
    80002590:	02813983          	ld	s3,40(sp)
    80002594:	02013a03          	ld	s4,32(sp)
    80002598:	01813a83          	ld	s5,24(sp)
    8000259c:	00090513          	mv	a0,s2
    800025a0:	03013903          	ld	s2,48(sp)
    800025a4:	05010113          	addi	sp,sp,80
    800025a8:	00008067          	ret
    800025ac:	00000913          	li	s2,0
    800025b0:	fd5ff06f          	j	80002584 <consolewrite+0x74>

00000000800025b4 <consoleread>:
    800025b4:	f9010113          	addi	sp,sp,-112
    800025b8:	06813023          	sd	s0,96(sp)
    800025bc:	04913c23          	sd	s1,88(sp)
    800025c0:	05213823          	sd	s2,80(sp)
    800025c4:	05313423          	sd	s3,72(sp)
    800025c8:	05413023          	sd	s4,64(sp)
    800025cc:	03513c23          	sd	s5,56(sp)
    800025d0:	03613823          	sd	s6,48(sp)
    800025d4:	03713423          	sd	s7,40(sp)
    800025d8:	03813023          	sd	s8,32(sp)
    800025dc:	06113423          	sd	ra,104(sp)
    800025e0:	01913c23          	sd	s9,24(sp)
    800025e4:	07010413          	addi	s0,sp,112
    800025e8:	00060b93          	mv	s7,a2
    800025ec:	00050913          	mv	s2,a0
    800025f0:	00058c13          	mv	s8,a1
    800025f4:	00060b1b          	sext.w	s6,a2
    800025f8:	00003497          	auipc	s1,0x3
    800025fc:	32048493          	addi	s1,s1,800 # 80005918 <cons>
    80002600:	00400993          	li	s3,4
    80002604:	fff00a13          	li	s4,-1
    80002608:	00a00a93          	li	s5,10
    8000260c:	05705e63          	blez	s7,80002668 <consoleread+0xb4>
    80002610:	09c4a703          	lw	a4,156(s1)
    80002614:	0984a783          	lw	a5,152(s1)
    80002618:	0007071b          	sext.w	a4,a4
    8000261c:	08e78463          	beq	a5,a4,800026a4 <consoleread+0xf0>
    80002620:	07f7f713          	andi	a4,a5,127
    80002624:	00e48733          	add	a4,s1,a4
    80002628:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000262c:	0017869b          	addiw	a3,a5,1
    80002630:	08d4ac23          	sw	a3,152(s1)
    80002634:	00070c9b          	sext.w	s9,a4
    80002638:	0b370663          	beq	a4,s3,800026e4 <consoleread+0x130>
    8000263c:	00100693          	li	a3,1
    80002640:	f9f40613          	addi	a2,s0,-97
    80002644:	000c0593          	mv	a1,s8
    80002648:	00090513          	mv	a0,s2
    8000264c:	f8e40fa3          	sb	a4,-97(s0)
    80002650:	00000097          	auipc	ra,0x0
    80002654:	8bc080e7          	jalr	-1860(ra) # 80001f0c <either_copyout>
    80002658:	01450863          	beq	a0,s4,80002668 <consoleread+0xb4>
    8000265c:	001c0c13          	addi	s8,s8,1
    80002660:	fffb8b9b          	addiw	s7,s7,-1
    80002664:	fb5c94e3          	bne	s9,s5,8000260c <consoleread+0x58>
    80002668:	000b851b          	sext.w	a0,s7
    8000266c:	06813083          	ld	ra,104(sp)
    80002670:	06013403          	ld	s0,96(sp)
    80002674:	05813483          	ld	s1,88(sp)
    80002678:	05013903          	ld	s2,80(sp)
    8000267c:	04813983          	ld	s3,72(sp)
    80002680:	04013a03          	ld	s4,64(sp)
    80002684:	03813a83          	ld	s5,56(sp)
    80002688:	02813b83          	ld	s7,40(sp)
    8000268c:	02013c03          	ld	s8,32(sp)
    80002690:	01813c83          	ld	s9,24(sp)
    80002694:	40ab053b          	subw	a0,s6,a0
    80002698:	03013b03          	ld	s6,48(sp)
    8000269c:	07010113          	addi	sp,sp,112
    800026a0:	00008067          	ret
    800026a4:	00001097          	auipc	ra,0x1
    800026a8:	1d8080e7          	jalr	472(ra) # 8000387c <push_on>
    800026ac:	0984a703          	lw	a4,152(s1)
    800026b0:	09c4a783          	lw	a5,156(s1)
    800026b4:	0007879b          	sext.w	a5,a5
    800026b8:	fef70ce3          	beq	a4,a5,800026b0 <consoleread+0xfc>
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	234080e7          	jalr	564(ra) # 800038f0 <pop_on>
    800026c4:	0984a783          	lw	a5,152(s1)
    800026c8:	07f7f713          	andi	a4,a5,127
    800026cc:	00e48733          	add	a4,s1,a4
    800026d0:	01874703          	lbu	a4,24(a4)
    800026d4:	0017869b          	addiw	a3,a5,1
    800026d8:	08d4ac23          	sw	a3,152(s1)
    800026dc:	00070c9b          	sext.w	s9,a4
    800026e0:	f5371ee3          	bne	a4,s3,8000263c <consoleread+0x88>
    800026e4:	000b851b          	sext.w	a0,s7
    800026e8:	f96bf2e3          	bgeu	s7,s6,8000266c <consoleread+0xb8>
    800026ec:	08f4ac23          	sw	a5,152(s1)
    800026f0:	f7dff06f          	j	8000266c <consoleread+0xb8>

00000000800026f4 <consputc>:
    800026f4:	10000793          	li	a5,256
    800026f8:	00f50663          	beq	a0,a5,80002704 <consputc+0x10>
    800026fc:	00001317          	auipc	t1,0x1
    80002700:	9f430067          	jr	-1548(t1) # 800030f0 <uartputc_sync>
    80002704:	ff010113          	addi	sp,sp,-16
    80002708:	00113423          	sd	ra,8(sp)
    8000270c:	00813023          	sd	s0,0(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00800513          	li	a0,8
    80002718:	00001097          	auipc	ra,0x1
    8000271c:	9d8080e7          	jalr	-1576(ra) # 800030f0 <uartputc_sync>
    80002720:	02000513          	li	a0,32
    80002724:	00001097          	auipc	ra,0x1
    80002728:	9cc080e7          	jalr	-1588(ra) # 800030f0 <uartputc_sync>
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	00813083          	ld	ra,8(sp)
    80002734:	00800513          	li	a0,8
    80002738:	01010113          	addi	sp,sp,16
    8000273c:	00001317          	auipc	t1,0x1
    80002740:	9b430067          	jr	-1612(t1) # 800030f0 <uartputc_sync>

0000000080002744 <consoleintr>:
    80002744:	fe010113          	addi	sp,sp,-32
    80002748:	00813823          	sd	s0,16(sp)
    8000274c:	00913423          	sd	s1,8(sp)
    80002750:	01213023          	sd	s2,0(sp)
    80002754:	00113c23          	sd	ra,24(sp)
    80002758:	02010413          	addi	s0,sp,32
    8000275c:	00003917          	auipc	s2,0x3
    80002760:	1bc90913          	addi	s2,s2,444 # 80005918 <cons>
    80002764:	00050493          	mv	s1,a0
    80002768:	00090513          	mv	a0,s2
    8000276c:	00001097          	auipc	ra,0x1
    80002770:	e40080e7          	jalr	-448(ra) # 800035ac <acquire>
    80002774:	02048c63          	beqz	s1,800027ac <consoleintr+0x68>
    80002778:	0a092783          	lw	a5,160(s2)
    8000277c:	09892703          	lw	a4,152(s2)
    80002780:	07f00693          	li	a3,127
    80002784:	40e7873b          	subw	a4,a5,a4
    80002788:	02e6e263          	bltu	a3,a4,800027ac <consoleintr+0x68>
    8000278c:	00d00713          	li	a4,13
    80002790:	04e48063          	beq	s1,a4,800027d0 <consoleintr+0x8c>
    80002794:	07f7f713          	andi	a4,a5,127
    80002798:	00e90733          	add	a4,s2,a4
    8000279c:	0017879b          	addiw	a5,a5,1
    800027a0:	0af92023          	sw	a5,160(s2)
    800027a4:	00970c23          	sb	s1,24(a4)
    800027a8:	08f92e23          	sw	a5,156(s2)
    800027ac:	01013403          	ld	s0,16(sp)
    800027b0:	01813083          	ld	ra,24(sp)
    800027b4:	00813483          	ld	s1,8(sp)
    800027b8:	00013903          	ld	s2,0(sp)
    800027bc:	00003517          	auipc	a0,0x3
    800027c0:	15c50513          	addi	a0,a0,348 # 80005918 <cons>
    800027c4:	02010113          	addi	sp,sp,32
    800027c8:	00001317          	auipc	t1,0x1
    800027cc:	eb030067          	jr	-336(t1) # 80003678 <release>
    800027d0:	00a00493          	li	s1,10
    800027d4:	fc1ff06f          	j	80002794 <consoleintr+0x50>

00000000800027d8 <consoleinit>:
    800027d8:	fe010113          	addi	sp,sp,-32
    800027dc:	00113c23          	sd	ra,24(sp)
    800027e0:	00813823          	sd	s0,16(sp)
    800027e4:	00913423          	sd	s1,8(sp)
    800027e8:	02010413          	addi	s0,sp,32
    800027ec:	00003497          	auipc	s1,0x3
    800027f0:	12c48493          	addi	s1,s1,300 # 80005918 <cons>
    800027f4:	00048513          	mv	a0,s1
    800027f8:	00002597          	auipc	a1,0x2
    800027fc:	9c058593          	addi	a1,a1,-1600 # 800041b8 <CONSOLE_STATUS+0x1a8>
    80002800:	00001097          	auipc	ra,0x1
    80002804:	d88080e7          	jalr	-632(ra) # 80003588 <initlock>
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	7ac080e7          	jalr	1964(ra) # 80002fb4 <uartinit>
    80002810:	01813083          	ld	ra,24(sp)
    80002814:	01013403          	ld	s0,16(sp)
    80002818:	00000797          	auipc	a5,0x0
    8000281c:	d9c78793          	addi	a5,a5,-612 # 800025b4 <consoleread>
    80002820:	0af4bc23          	sd	a5,184(s1)
    80002824:	00000797          	auipc	a5,0x0
    80002828:	cec78793          	addi	a5,a5,-788 # 80002510 <consolewrite>
    8000282c:	0cf4b023          	sd	a5,192(s1)
    80002830:	00813483          	ld	s1,8(sp)
    80002834:	02010113          	addi	sp,sp,32
    80002838:	00008067          	ret

000000008000283c <console_read>:
    8000283c:	ff010113          	addi	sp,sp,-16
    80002840:	00813423          	sd	s0,8(sp)
    80002844:	01010413          	addi	s0,sp,16
    80002848:	00813403          	ld	s0,8(sp)
    8000284c:	00003317          	auipc	t1,0x3
    80002850:	18433303          	ld	t1,388(t1) # 800059d0 <devsw+0x10>
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00030067          	jr	t1

000000008000285c <console_write>:
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00813423          	sd	s0,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    80002868:	00813403          	ld	s0,8(sp)
    8000286c:	00003317          	auipc	t1,0x3
    80002870:	16c33303          	ld	t1,364(t1) # 800059d8 <devsw+0x18>
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00030067          	jr	t1

000000008000287c <panic>:
    8000287c:	fe010113          	addi	sp,sp,-32
    80002880:	00113c23          	sd	ra,24(sp)
    80002884:	00813823          	sd	s0,16(sp)
    80002888:	00913423          	sd	s1,8(sp)
    8000288c:	02010413          	addi	s0,sp,32
    80002890:	00050493          	mv	s1,a0
    80002894:	00002517          	auipc	a0,0x2
    80002898:	92c50513          	addi	a0,a0,-1748 # 800041c0 <CONSOLE_STATUS+0x1b0>
    8000289c:	00003797          	auipc	a5,0x3
    800028a0:	1c07ae23          	sw	zero,476(a5) # 80005a78 <pr+0x18>
    800028a4:	00000097          	auipc	ra,0x0
    800028a8:	034080e7          	jalr	52(ra) # 800028d8 <__printf>
    800028ac:	00048513          	mv	a0,s1
    800028b0:	00000097          	auipc	ra,0x0
    800028b4:	028080e7          	jalr	40(ra) # 800028d8 <__printf>
    800028b8:	00002517          	auipc	a0,0x2
    800028bc:	8e850513          	addi	a0,a0,-1816 # 800041a0 <CONSOLE_STATUS+0x190>
    800028c0:	00000097          	auipc	ra,0x0
    800028c4:	018080e7          	jalr	24(ra) # 800028d8 <__printf>
    800028c8:	00100793          	li	a5,1
    800028cc:	00002717          	auipc	a4,0x2
    800028d0:	f0f72e23          	sw	a5,-228(a4) # 800047e8 <panicked>
    800028d4:	0000006f          	j	800028d4 <panic+0x58>

00000000800028d8 <__printf>:
    800028d8:	f3010113          	addi	sp,sp,-208
    800028dc:	08813023          	sd	s0,128(sp)
    800028e0:	07313423          	sd	s3,104(sp)
    800028e4:	09010413          	addi	s0,sp,144
    800028e8:	05813023          	sd	s8,64(sp)
    800028ec:	08113423          	sd	ra,136(sp)
    800028f0:	06913c23          	sd	s1,120(sp)
    800028f4:	07213823          	sd	s2,112(sp)
    800028f8:	07413023          	sd	s4,96(sp)
    800028fc:	05513c23          	sd	s5,88(sp)
    80002900:	05613823          	sd	s6,80(sp)
    80002904:	05713423          	sd	s7,72(sp)
    80002908:	03913c23          	sd	s9,56(sp)
    8000290c:	03a13823          	sd	s10,48(sp)
    80002910:	03b13423          	sd	s11,40(sp)
    80002914:	00003317          	auipc	t1,0x3
    80002918:	14c30313          	addi	t1,t1,332 # 80005a60 <pr>
    8000291c:	01832c03          	lw	s8,24(t1)
    80002920:	00b43423          	sd	a1,8(s0)
    80002924:	00c43823          	sd	a2,16(s0)
    80002928:	00d43c23          	sd	a3,24(s0)
    8000292c:	02e43023          	sd	a4,32(s0)
    80002930:	02f43423          	sd	a5,40(s0)
    80002934:	03043823          	sd	a6,48(s0)
    80002938:	03143c23          	sd	a7,56(s0)
    8000293c:	00050993          	mv	s3,a0
    80002940:	4a0c1663          	bnez	s8,80002dec <__printf+0x514>
    80002944:	60098c63          	beqz	s3,80002f5c <__printf+0x684>
    80002948:	0009c503          	lbu	a0,0(s3)
    8000294c:	00840793          	addi	a5,s0,8
    80002950:	f6f43c23          	sd	a5,-136(s0)
    80002954:	00000493          	li	s1,0
    80002958:	22050063          	beqz	a0,80002b78 <__printf+0x2a0>
    8000295c:	00002a37          	lui	s4,0x2
    80002960:	00018ab7          	lui	s5,0x18
    80002964:	000f4b37          	lui	s6,0xf4
    80002968:	00989bb7          	lui	s7,0x989
    8000296c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002970:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002974:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002978:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000297c:	00148c9b          	addiw	s9,s1,1
    80002980:	02500793          	li	a5,37
    80002984:	01998933          	add	s2,s3,s9
    80002988:	38f51263          	bne	a0,a5,80002d0c <__printf+0x434>
    8000298c:	00094783          	lbu	a5,0(s2)
    80002990:	00078c9b          	sext.w	s9,a5
    80002994:	1e078263          	beqz	a5,80002b78 <__printf+0x2a0>
    80002998:	0024849b          	addiw	s1,s1,2
    8000299c:	07000713          	li	a4,112
    800029a0:	00998933          	add	s2,s3,s1
    800029a4:	38e78a63          	beq	a5,a4,80002d38 <__printf+0x460>
    800029a8:	20f76863          	bltu	a4,a5,80002bb8 <__printf+0x2e0>
    800029ac:	42a78863          	beq	a5,a0,80002ddc <__printf+0x504>
    800029b0:	06400713          	li	a4,100
    800029b4:	40e79663          	bne	a5,a4,80002dc0 <__printf+0x4e8>
    800029b8:	f7843783          	ld	a5,-136(s0)
    800029bc:	0007a603          	lw	a2,0(a5)
    800029c0:	00878793          	addi	a5,a5,8
    800029c4:	f6f43c23          	sd	a5,-136(s0)
    800029c8:	42064a63          	bltz	a2,80002dfc <__printf+0x524>
    800029cc:	00a00713          	li	a4,10
    800029d0:	02e677bb          	remuw	a5,a2,a4
    800029d4:	00002d97          	auipc	s11,0x2
    800029d8:	814d8d93          	addi	s11,s11,-2028 # 800041e8 <digits>
    800029dc:	00900593          	li	a1,9
    800029e0:	0006051b          	sext.w	a0,a2
    800029e4:	00000c93          	li	s9,0
    800029e8:	02079793          	slli	a5,a5,0x20
    800029ec:	0207d793          	srli	a5,a5,0x20
    800029f0:	00fd87b3          	add	a5,s11,a5
    800029f4:	0007c783          	lbu	a5,0(a5)
    800029f8:	02e656bb          	divuw	a3,a2,a4
    800029fc:	f8f40023          	sb	a5,-128(s0)
    80002a00:	14c5d863          	bge	a1,a2,80002b50 <__printf+0x278>
    80002a04:	06300593          	li	a1,99
    80002a08:	00100c93          	li	s9,1
    80002a0c:	02e6f7bb          	remuw	a5,a3,a4
    80002a10:	02079793          	slli	a5,a5,0x20
    80002a14:	0207d793          	srli	a5,a5,0x20
    80002a18:	00fd87b3          	add	a5,s11,a5
    80002a1c:	0007c783          	lbu	a5,0(a5)
    80002a20:	02e6d73b          	divuw	a4,a3,a4
    80002a24:	f8f400a3          	sb	a5,-127(s0)
    80002a28:	12a5f463          	bgeu	a1,a0,80002b50 <__printf+0x278>
    80002a2c:	00a00693          	li	a3,10
    80002a30:	00900593          	li	a1,9
    80002a34:	02d777bb          	remuw	a5,a4,a3
    80002a38:	02079793          	slli	a5,a5,0x20
    80002a3c:	0207d793          	srli	a5,a5,0x20
    80002a40:	00fd87b3          	add	a5,s11,a5
    80002a44:	0007c503          	lbu	a0,0(a5)
    80002a48:	02d757bb          	divuw	a5,a4,a3
    80002a4c:	f8a40123          	sb	a0,-126(s0)
    80002a50:	48e5f263          	bgeu	a1,a4,80002ed4 <__printf+0x5fc>
    80002a54:	06300513          	li	a0,99
    80002a58:	02d7f5bb          	remuw	a1,a5,a3
    80002a5c:	02059593          	slli	a1,a1,0x20
    80002a60:	0205d593          	srli	a1,a1,0x20
    80002a64:	00bd85b3          	add	a1,s11,a1
    80002a68:	0005c583          	lbu	a1,0(a1)
    80002a6c:	02d7d7bb          	divuw	a5,a5,a3
    80002a70:	f8b401a3          	sb	a1,-125(s0)
    80002a74:	48e57263          	bgeu	a0,a4,80002ef8 <__printf+0x620>
    80002a78:	3e700513          	li	a0,999
    80002a7c:	02d7f5bb          	remuw	a1,a5,a3
    80002a80:	02059593          	slli	a1,a1,0x20
    80002a84:	0205d593          	srli	a1,a1,0x20
    80002a88:	00bd85b3          	add	a1,s11,a1
    80002a8c:	0005c583          	lbu	a1,0(a1)
    80002a90:	02d7d7bb          	divuw	a5,a5,a3
    80002a94:	f8b40223          	sb	a1,-124(s0)
    80002a98:	46e57663          	bgeu	a0,a4,80002f04 <__printf+0x62c>
    80002a9c:	02d7f5bb          	remuw	a1,a5,a3
    80002aa0:	02059593          	slli	a1,a1,0x20
    80002aa4:	0205d593          	srli	a1,a1,0x20
    80002aa8:	00bd85b3          	add	a1,s11,a1
    80002aac:	0005c583          	lbu	a1,0(a1)
    80002ab0:	02d7d7bb          	divuw	a5,a5,a3
    80002ab4:	f8b402a3          	sb	a1,-123(s0)
    80002ab8:	46ea7863          	bgeu	s4,a4,80002f28 <__printf+0x650>
    80002abc:	02d7f5bb          	remuw	a1,a5,a3
    80002ac0:	02059593          	slli	a1,a1,0x20
    80002ac4:	0205d593          	srli	a1,a1,0x20
    80002ac8:	00bd85b3          	add	a1,s11,a1
    80002acc:	0005c583          	lbu	a1,0(a1)
    80002ad0:	02d7d7bb          	divuw	a5,a5,a3
    80002ad4:	f8b40323          	sb	a1,-122(s0)
    80002ad8:	3eeaf863          	bgeu	s5,a4,80002ec8 <__printf+0x5f0>
    80002adc:	02d7f5bb          	remuw	a1,a5,a3
    80002ae0:	02059593          	slli	a1,a1,0x20
    80002ae4:	0205d593          	srli	a1,a1,0x20
    80002ae8:	00bd85b3          	add	a1,s11,a1
    80002aec:	0005c583          	lbu	a1,0(a1)
    80002af0:	02d7d7bb          	divuw	a5,a5,a3
    80002af4:	f8b403a3          	sb	a1,-121(s0)
    80002af8:	42eb7e63          	bgeu	s6,a4,80002f34 <__printf+0x65c>
    80002afc:	02d7f5bb          	remuw	a1,a5,a3
    80002b00:	02059593          	slli	a1,a1,0x20
    80002b04:	0205d593          	srli	a1,a1,0x20
    80002b08:	00bd85b3          	add	a1,s11,a1
    80002b0c:	0005c583          	lbu	a1,0(a1)
    80002b10:	02d7d7bb          	divuw	a5,a5,a3
    80002b14:	f8b40423          	sb	a1,-120(s0)
    80002b18:	42ebfc63          	bgeu	s7,a4,80002f50 <__printf+0x678>
    80002b1c:	02079793          	slli	a5,a5,0x20
    80002b20:	0207d793          	srli	a5,a5,0x20
    80002b24:	00fd8db3          	add	s11,s11,a5
    80002b28:	000dc703          	lbu	a4,0(s11)
    80002b2c:	00a00793          	li	a5,10
    80002b30:	00900c93          	li	s9,9
    80002b34:	f8e404a3          	sb	a4,-119(s0)
    80002b38:	00065c63          	bgez	a2,80002b50 <__printf+0x278>
    80002b3c:	f9040713          	addi	a4,s0,-112
    80002b40:	00f70733          	add	a4,a4,a5
    80002b44:	02d00693          	li	a3,45
    80002b48:	fed70823          	sb	a3,-16(a4)
    80002b4c:	00078c93          	mv	s9,a5
    80002b50:	f8040793          	addi	a5,s0,-128
    80002b54:	01978cb3          	add	s9,a5,s9
    80002b58:	f7f40d13          	addi	s10,s0,-129
    80002b5c:	000cc503          	lbu	a0,0(s9)
    80002b60:	fffc8c93          	addi	s9,s9,-1
    80002b64:	00000097          	auipc	ra,0x0
    80002b68:	b90080e7          	jalr	-1136(ra) # 800026f4 <consputc>
    80002b6c:	ffac98e3          	bne	s9,s10,80002b5c <__printf+0x284>
    80002b70:	00094503          	lbu	a0,0(s2)
    80002b74:	e00514e3          	bnez	a0,8000297c <__printf+0xa4>
    80002b78:	1a0c1663          	bnez	s8,80002d24 <__printf+0x44c>
    80002b7c:	08813083          	ld	ra,136(sp)
    80002b80:	08013403          	ld	s0,128(sp)
    80002b84:	07813483          	ld	s1,120(sp)
    80002b88:	07013903          	ld	s2,112(sp)
    80002b8c:	06813983          	ld	s3,104(sp)
    80002b90:	06013a03          	ld	s4,96(sp)
    80002b94:	05813a83          	ld	s5,88(sp)
    80002b98:	05013b03          	ld	s6,80(sp)
    80002b9c:	04813b83          	ld	s7,72(sp)
    80002ba0:	04013c03          	ld	s8,64(sp)
    80002ba4:	03813c83          	ld	s9,56(sp)
    80002ba8:	03013d03          	ld	s10,48(sp)
    80002bac:	02813d83          	ld	s11,40(sp)
    80002bb0:	0d010113          	addi	sp,sp,208
    80002bb4:	00008067          	ret
    80002bb8:	07300713          	li	a4,115
    80002bbc:	1ce78a63          	beq	a5,a4,80002d90 <__printf+0x4b8>
    80002bc0:	07800713          	li	a4,120
    80002bc4:	1ee79e63          	bne	a5,a4,80002dc0 <__printf+0x4e8>
    80002bc8:	f7843783          	ld	a5,-136(s0)
    80002bcc:	0007a703          	lw	a4,0(a5)
    80002bd0:	00878793          	addi	a5,a5,8
    80002bd4:	f6f43c23          	sd	a5,-136(s0)
    80002bd8:	28074263          	bltz	a4,80002e5c <__printf+0x584>
    80002bdc:	00001d97          	auipc	s11,0x1
    80002be0:	60cd8d93          	addi	s11,s11,1548 # 800041e8 <digits>
    80002be4:	00f77793          	andi	a5,a4,15
    80002be8:	00fd87b3          	add	a5,s11,a5
    80002bec:	0007c683          	lbu	a3,0(a5)
    80002bf0:	00f00613          	li	a2,15
    80002bf4:	0007079b          	sext.w	a5,a4
    80002bf8:	f8d40023          	sb	a3,-128(s0)
    80002bfc:	0047559b          	srliw	a1,a4,0x4
    80002c00:	0047569b          	srliw	a3,a4,0x4
    80002c04:	00000c93          	li	s9,0
    80002c08:	0ee65063          	bge	a2,a4,80002ce8 <__printf+0x410>
    80002c0c:	00f6f693          	andi	a3,a3,15
    80002c10:	00dd86b3          	add	a3,s11,a3
    80002c14:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002c18:	0087d79b          	srliw	a5,a5,0x8
    80002c1c:	00100c93          	li	s9,1
    80002c20:	f8d400a3          	sb	a3,-127(s0)
    80002c24:	0cb67263          	bgeu	a2,a1,80002ce8 <__printf+0x410>
    80002c28:	00f7f693          	andi	a3,a5,15
    80002c2c:	00dd86b3          	add	a3,s11,a3
    80002c30:	0006c583          	lbu	a1,0(a3)
    80002c34:	00f00613          	li	a2,15
    80002c38:	0047d69b          	srliw	a3,a5,0x4
    80002c3c:	f8b40123          	sb	a1,-126(s0)
    80002c40:	0047d593          	srli	a1,a5,0x4
    80002c44:	28f67e63          	bgeu	a2,a5,80002ee0 <__printf+0x608>
    80002c48:	00f6f693          	andi	a3,a3,15
    80002c4c:	00dd86b3          	add	a3,s11,a3
    80002c50:	0006c503          	lbu	a0,0(a3)
    80002c54:	0087d813          	srli	a6,a5,0x8
    80002c58:	0087d69b          	srliw	a3,a5,0x8
    80002c5c:	f8a401a3          	sb	a0,-125(s0)
    80002c60:	28b67663          	bgeu	a2,a1,80002eec <__printf+0x614>
    80002c64:	00f6f693          	andi	a3,a3,15
    80002c68:	00dd86b3          	add	a3,s11,a3
    80002c6c:	0006c583          	lbu	a1,0(a3)
    80002c70:	00c7d513          	srli	a0,a5,0xc
    80002c74:	00c7d69b          	srliw	a3,a5,0xc
    80002c78:	f8b40223          	sb	a1,-124(s0)
    80002c7c:	29067a63          	bgeu	a2,a6,80002f10 <__printf+0x638>
    80002c80:	00f6f693          	andi	a3,a3,15
    80002c84:	00dd86b3          	add	a3,s11,a3
    80002c88:	0006c583          	lbu	a1,0(a3)
    80002c8c:	0107d813          	srli	a6,a5,0x10
    80002c90:	0107d69b          	srliw	a3,a5,0x10
    80002c94:	f8b402a3          	sb	a1,-123(s0)
    80002c98:	28a67263          	bgeu	a2,a0,80002f1c <__printf+0x644>
    80002c9c:	00f6f693          	andi	a3,a3,15
    80002ca0:	00dd86b3          	add	a3,s11,a3
    80002ca4:	0006c683          	lbu	a3,0(a3)
    80002ca8:	0147d79b          	srliw	a5,a5,0x14
    80002cac:	f8d40323          	sb	a3,-122(s0)
    80002cb0:	21067663          	bgeu	a2,a6,80002ebc <__printf+0x5e4>
    80002cb4:	02079793          	slli	a5,a5,0x20
    80002cb8:	0207d793          	srli	a5,a5,0x20
    80002cbc:	00fd8db3          	add	s11,s11,a5
    80002cc0:	000dc683          	lbu	a3,0(s11)
    80002cc4:	00800793          	li	a5,8
    80002cc8:	00700c93          	li	s9,7
    80002ccc:	f8d403a3          	sb	a3,-121(s0)
    80002cd0:	00075c63          	bgez	a4,80002ce8 <__printf+0x410>
    80002cd4:	f9040713          	addi	a4,s0,-112
    80002cd8:	00f70733          	add	a4,a4,a5
    80002cdc:	02d00693          	li	a3,45
    80002ce0:	fed70823          	sb	a3,-16(a4)
    80002ce4:	00078c93          	mv	s9,a5
    80002ce8:	f8040793          	addi	a5,s0,-128
    80002cec:	01978cb3          	add	s9,a5,s9
    80002cf0:	f7f40d13          	addi	s10,s0,-129
    80002cf4:	000cc503          	lbu	a0,0(s9)
    80002cf8:	fffc8c93          	addi	s9,s9,-1
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	9f8080e7          	jalr	-1544(ra) # 800026f4 <consputc>
    80002d04:	ff9d18e3          	bne	s10,s9,80002cf4 <__printf+0x41c>
    80002d08:	0100006f          	j	80002d18 <__printf+0x440>
    80002d0c:	00000097          	auipc	ra,0x0
    80002d10:	9e8080e7          	jalr	-1560(ra) # 800026f4 <consputc>
    80002d14:	000c8493          	mv	s1,s9
    80002d18:	00094503          	lbu	a0,0(s2)
    80002d1c:	c60510e3          	bnez	a0,8000297c <__printf+0xa4>
    80002d20:	e40c0ee3          	beqz	s8,80002b7c <__printf+0x2a4>
    80002d24:	00003517          	auipc	a0,0x3
    80002d28:	d3c50513          	addi	a0,a0,-708 # 80005a60 <pr>
    80002d2c:	00001097          	auipc	ra,0x1
    80002d30:	94c080e7          	jalr	-1716(ra) # 80003678 <release>
    80002d34:	e49ff06f          	j	80002b7c <__printf+0x2a4>
    80002d38:	f7843783          	ld	a5,-136(s0)
    80002d3c:	03000513          	li	a0,48
    80002d40:	01000d13          	li	s10,16
    80002d44:	00878713          	addi	a4,a5,8
    80002d48:	0007bc83          	ld	s9,0(a5)
    80002d4c:	f6e43c23          	sd	a4,-136(s0)
    80002d50:	00000097          	auipc	ra,0x0
    80002d54:	9a4080e7          	jalr	-1628(ra) # 800026f4 <consputc>
    80002d58:	07800513          	li	a0,120
    80002d5c:	00000097          	auipc	ra,0x0
    80002d60:	998080e7          	jalr	-1640(ra) # 800026f4 <consputc>
    80002d64:	00001d97          	auipc	s11,0x1
    80002d68:	484d8d93          	addi	s11,s11,1156 # 800041e8 <digits>
    80002d6c:	03ccd793          	srli	a5,s9,0x3c
    80002d70:	00fd87b3          	add	a5,s11,a5
    80002d74:	0007c503          	lbu	a0,0(a5)
    80002d78:	fffd0d1b          	addiw	s10,s10,-1
    80002d7c:	004c9c93          	slli	s9,s9,0x4
    80002d80:	00000097          	auipc	ra,0x0
    80002d84:	974080e7          	jalr	-1676(ra) # 800026f4 <consputc>
    80002d88:	fe0d12e3          	bnez	s10,80002d6c <__printf+0x494>
    80002d8c:	f8dff06f          	j	80002d18 <__printf+0x440>
    80002d90:	f7843783          	ld	a5,-136(s0)
    80002d94:	0007bc83          	ld	s9,0(a5)
    80002d98:	00878793          	addi	a5,a5,8
    80002d9c:	f6f43c23          	sd	a5,-136(s0)
    80002da0:	000c9a63          	bnez	s9,80002db4 <__printf+0x4dc>
    80002da4:	1080006f          	j	80002eac <__printf+0x5d4>
    80002da8:	001c8c93          	addi	s9,s9,1
    80002dac:	00000097          	auipc	ra,0x0
    80002db0:	948080e7          	jalr	-1720(ra) # 800026f4 <consputc>
    80002db4:	000cc503          	lbu	a0,0(s9)
    80002db8:	fe0518e3          	bnez	a0,80002da8 <__printf+0x4d0>
    80002dbc:	f5dff06f          	j	80002d18 <__printf+0x440>
    80002dc0:	02500513          	li	a0,37
    80002dc4:	00000097          	auipc	ra,0x0
    80002dc8:	930080e7          	jalr	-1744(ra) # 800026f4 <consputc>
    80002dcc:	000c8513          	mv	a0,s9
    80002dd0:	00000097          	auipc	ra,0x0
    80002dd4:	924080e7          	jalr	-1756(ra) # 800026f4 <consputc>
    80002dd8:	f41ff06f          	j	80002d18 <__printf+0x440>
    80002ddc:	02500513          	li	a0,37
    80002de0:	00000097          	auipc	ra,0x0
    80002de4:	914080e7          	jalr	-1772(ra) # 800026f4 <consputc>
    80002de8:	f31ff06f          	j	80002d18 <__printf+0x440>
    80002dec:	00030513          	mv	a0,t1
    80002df0:	00000097          	auipc	ra,0x0
    80002df4:	7bc080e7          	jalr	1980(ra) # 800035ac <acquire>
    80002df8:	b4dff06f          	j	80002944 <__printf+0x6c>
    80002dfc:	40c0053b          	negw	a0,a2
    80002e00:	00a00713          	li	a4,10
    80002e04:	02e576bb          	remuw	a3,a0,a4
    80002e08:	00001d97          	auipc	s11,0x1
    80002e0c:	3e0d8d93          	addi	s11,s11,992 # 800041e8 <digits>
    80002e10:	ff700593          	li	a1,-9
    80002e14:	02069693          	slli	a3,a3,0x20
    80002e18:	0206d693          	srli	a3,a3,0x20
    80002e1c:	00dd86b3          	add	a3,s11,a3
    80002e20:	0006c683          	lbu	a3,0(a3)
    80002e24:	02e557bb          	divuw	a5,a0,a4
    80002e28:	f8d40023          	sb	a3,-128(s0)
    80002e2c:	10b65e63          	bge	a2,a1,80002f48 <__printf+0x670>
    80002e30:	06300593          	li	a1,99
    80002e34:	02e7f6bb          	remuw	a3,a5,a4
    80002e38:	02069693          	slli	a3,a3,0x20
    80002e3c:	0206d693          	srli	a3,a3,0x20
    80002e40:	00dd86b3          	add	a3,s11,a3
    80002e44:	0006c683          	lbu	a3,0(a3)
    80002e48:	02e7d73b          	divuw	a4,a5,a4
    80002e4c:	00200793          	li	a5,2
    80002e50:	f8d400a3          	sb	a3,-127(s0)
    80002e54:	bca5ece3          	bltu	a1,a0,80002a2c <__printf+0x154>
    80002e58:	ce5ff06f          	j	80002b3c <__printf+0x264>
    80002e5c:	40e007bb          	negw	a5,a4
    80002e60:	00001d97          	auipc	s11,0x1
    80002e64:	388d8d93          	addi	s11,s11,904 # 800041e8 <digits>
    80002e68:	00f7f693          	andi	a3,a5,15
    80002e6c:	00dd86b3          	add	a3,s11,a3
    80002e70:	0006c583          	lbu	a1,0(a3)
    80002e74:	ff100613          	li	a2,-15
    80002e78:	0047d69b          	srliw	a3,a5,0x4
    80002e7c:	f8b40023          	sb	a1,-128(s0)
    80002e80:	0047d59b          	srliw	a1,a5,0x4
    80002e84:	0ac75e63          	bge	a4,a2,80002f40 <__printf+0x668>
    80002e88:	00f6f693          	andi	a3,a3,15
    80002e8c:	00dd86b3          	add	a3,s11,a3
    80002e90:	0006c603          	lbu	a2,0(a3)
    80002e94:	00f00693          	li	a3,15
    80002e98:	0087d79b          	srliw	a5,a5,0x8
    80002e9c:	f8c400a3          	sb	a2,-127(s0)
    80002ea0:	d8b6e4e3          	bltu	a3,a1,80002c28 <__printf+0x350>
    80002ea4:	00200793          	li	a5,2
    80002ea8:	e2dff06f          	j	80002cd4 <__printf+0x3fc>
    80002eac:	00001c97          	auipc	s9,0x1
    80002eb0:	31cc8c93          	addi	s9,s9,796 # 800041c8 <CONSOLE_STATUS+0x1b8>
    80002eb4:	02800513          	li	a0,40
    80002eb8:	ef1ff06f          	j	80002da8 <__printf+0x4d0>
    80002ebc:	00700793          	li	a5,7
    80002ec0:	00600c93          	li	s9,6
    80002ec4:	e0dff06f          	j	80002cd0 <__printf+0x3f8>
    80002ec8:	00700793          	li	a5,7
    80002ecc:	00600c93          	li	s9,6
    80002ed0:	c69ff06f          	j	80002b38 <__printf+0x260>
    80002ed4:	00300793          	li	a5,3
    80002ed8:	00200c93          	li	s9,2
    80002edc:	c5dff06f          	j	80002b38 <__printf+0x260>
    80002ee0:	00300793          	li	a5,3
    80002ee4:	00200c93          	li	s9,2
    80002ee8:	de9ff06f          	j	80002cd0 <__printf+0x3f8>
    80002eec:	00400793          	li	a5,4
    80002ef0:	00300c93          	li	s9,3
    80002ef4:	dddff06f          	j	80002cd0 <__printf+0x3f8>
    80002ef8:	00400793          	li	a5,4
    80002efc:	00300c93          	li	s9,3
    80002f00:	c39ff06f          	j	80002b38 <__printf+0x260>
    80002f04:	00500793          	li	a5,5
    80002f08:	00400c93          	li	s9,4
    80002f0c:	c2dff06f          	j	80002b38 <__printf+0x260>
    80002f10:	00500793          	li	a5,5
    80002f14:	00400c93          	li	s9,4
    80002f18:	db9ff06f          	j	80002cd0 <__printf+0x3f8>
    80002f1c:	00600793          	li	a5,6
    80002f20:	00500c93          	li	s9,5
    80002f24:	dadff06f          	j	80002cd0 <__printf+0x3f8>
    80002f28:	00600793          	li	a5,6
    80002f2c:	00500c93          	li	s9,5
    80002f30:	c09ff06f          	j	80002b38 <__printf+0x260>
    80002f34:	00800793          	li	a5,8
    80002f38:	00700c93          	li	s9,7
    80002f3c:	bfdff06f          	j	80002b38 <__printf+0x260>
    80002f40:	00100793          	li	a5,1
    80002f44:	d91ff06f          	j	80002cd4 <__printf+0x3fc>
    80002f48:	00100793          	li	a5,1
    80002f4c:	bf1ff06f          	j	80002b3c <__printf+0x264>
    80002f50:	00900793          	li	a5,9
    80002f54:	00800c93          	li	s9,8
    80002f58:	be1ff06f          	j	80002b38 <__printf+0x260>
    80002f5c:	00001517          	auipc	a0,0x1
    80002f60:	27450513          	addi	a0,a0,628 # 800041d0 <CONSOLE_STATUS+0x1c0>
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	918080e7          	jalr	-1768(ra) # 8000287c <panic>

0000000080002f6c <printfinit>:
    80002f6c:	fe010113          	addi	sp,sp,-32
    80002f70:	00813823          	sd	s0,16(sp)
    80002f74:	00913423          	sd	s1,8(sp)
    80002f78:	00113c23          	sd	ra,24(sp)
    80002f7c:	02010413          	addi	s0,sp,32
    80002f80:	00003497          	auipc	s1,0x3
    80002f84:	ae048493          	addi	s1,s1,-1312 # 80005a60 <pr>
    80002f88:	00048513          	mv	a0,s1
    80002f8c:	00001597          	auipc	a1,0x1
    80002f90:	25458593          	addi	a1,a1,596 # 800041e0 <CONSOLE_STATUS+0x1d0>
    80002f94:	00000097          	auipc	ra,0x0
    80002f98:	5f4080e7          	jalr	1524(ra) # 80003588 <initlock>
    80002f9c:	01813083          	ld	ra,24(sp)
    80002fa0:	01013403          	ld	s0,16(sp)
    80002fa4:	0004ac23          	sw	zero,24(s1)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	02010113          	addi	sp,sp,32
    80002fb0:	00008067          	ret

0000000080002fb4 <uartinit>:
    80002fb4:	ff010113          	addi	sp,sp,-16
    80002fb8:	00813423          	sd	s0,8(sp)
    80002fbc:	01010413          	addi	s0,sp,16
    80002fc0:	100007b7          	lui	a5,0x10000
    80002fc4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002fc8:	f8000713          	li	a4,-128
    80002fcc:	00e781a3          	sb	a4,3(a5)
    80002fd0:	00300713          	li	a4,3
    80002fd4:	00e78023          	sb	a4,0(a5)
    80002fd8:	000780a3          	sb	zero,1(a5)
    80002fdc:	00e781a3          	sb	a4,3(a5)
    80002fe0:	00700693          	li	a3,7
    80002fe4:	00d78123          	sb	a3,2(a5)
    80002fe8:	00e780a3          	sb	a4,1(a5)
    80002fec:	00813403          	ld	s0,8(sp)
    80002ff0:	01010113          	addi	sp,sp,16
    80002ff4:	00008067          	ret

0000000080002ff8 <uartputc>:
    80002ff8:	00001797          	auipc	a5,0x1
    80002ffc:	7f07a783          	lw	a5,2032(a5) # 800047e8 <panicked>
    80003000:	00078463          	beqz	a5,80003008 <uartputc+0x10>
    80003004:	0000006f          	j	80003004 <uartputc+0xc>
    80003008:	fd010113          	addi	sp,sp,-48
    8000300c:	02813023          	sd	s0,32(sp)
    80003010:	00913c23          	sd	s1,24(sp)
    80003014:	01213823          	sd	s2,16(sp)
    80003018:	01313423          	sd	s3,8(sp)
    8000301c:	02113423          	sd	ra,40(sp)
    80003020:	03010413          	addi	s0,sp,48
    80003024:	00001917          	auipc	s2,0x1
    80003028:	7cc90913          	addi	s2,s2,1996 # 800047f0 <uart_tx_r>
    8000302c:	00093783          	ld	a5,0(s2)
    80003030:	00001497          	auipc	s1,0x1
    80003034:	7c848493          	addi	s1,s1,1992 # 800047f8 <uart_tx_w>
    80003038:	0004b703          	ld	a4,0(s1)
    8000303c:	02078693          	addi	a3,a5,32
    80003040:	00050993          	mv	s3,a0
    80003044:	02e69c63          	bne	a3,a4,8000307c <uartputc+0x84>
    80003048:	00001097          	auipc	ra,0x1
    8000304c:	834080e7          	jalr	-1996(ra) # 8000387c <push_on>
    80003050:	00093783          	ld	a5,0(s2)
    80003054:	0004b703          	ld	a4,0(s1)
    80003058:	02078793          	addi	a5,a5,32
    8000305c:	00e79463          	bne	a5,a4,80003064 <uartputc+0x6c>
    80003060:	0000006f          	j	80003060 <uartputc+0x68>
    80003064:	00001097          	auipc	ra,0x1
    80003068:	88c080e7          	jalr	-1908(ra) # 800038f0 <pop_on>
    8000306c:	00093783          	ld	a5,0(s2)
    80003070:	0004b703          	ld	a4,0(s1)
    80003074:	02078693          	addi	a3,a5,32
    80003078:	fce688e3          	beq	a3,a4,80003048 <uartputc+0x50>
    8000307c:	01f77693          	andi	a3,a4,31
    80003080:	00003597          	auipc	a1,0x3
    80003084:	a0058593          	addi	a1,a1,-1536 # 80005a80 <uart_tx_buf>
    80003088:	00d586b3          	add	a3,a1,a3
    8000308c:	00170713          	addi	a4,a4,1
    80003090:	01368023          	sb	s3,0(a3)
    80003094:	00e4b023          	sd	a4,0(s1)
    80003098:	10000637          	lui	a2,0x10000
    8000309c:	02f71063          	bne	a4,a5,800030bc <uartputc+0xc4>
    800030a0:	0340006f          	j	800030d4 <uartputc+0xdc>
    800030a4:	00074703          	lbu	a4,0(a4)
    800030a8:	00f93023          	sd	a5,0(s2)
    800030ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800030b0:	00093783          	ld	a5,0(s2)
    800030b4:	0004b703          	ld	a4,0(s1)
    800030b8:	00f70e63          	beq	a4,a5,800030d4 <uartputc+0xdc>
    800030bc:	00564683          	lbu	a3,5(a2)
    800030c0:	01f7f713          	andi	a4,a5,31
    800030c4:	00e58733          	add	a4,a1,a4
    800030c8:	0206f693          	andi	a3,a3,32
    800030cc:	00178793          	addi	a5,a5,1
    800030d0:	fc069ae3          	bnez	a3,800030a4 <uartputc+0xac>
    800030d4:	02813083          	ld	ra,40(sp)
    800030d8:	02013403          	ld	s0,32(sp)
    800030dc:	01813483          	ld	s1,24(sp)
    800030e0:	01013903          	ld	s2,16(sp)
    800030e4:	00813983          	ld	s3,8(sp)
    800030e8:	03010113          	addi	sp,sp,48
    800030ec:	00008067          	ret

00000000800030f0 <uartputc_sync>:
    800030f0:	ff010113          	addi	sp,sp,-16
    800030f4:	00813423          	sd	s0,8(sp)
    800030f8:	01010413          	addi	s0,sp,16
    800030fc:	00001717          	auipc	a4,0x1
    80003100:	6ec72703          	lw	a4,1772(a4) # 800047e8 <panicked>
    80003104:	02071663          	bnez	a4,80003130 <uartputc_sync+0x40>
    80003108:	00050793          	mv	a5,a0
    8000310c:	100006b7          	lui	a3,0x10000
    80003110:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80003114:	02077713          	andi	a4,a4,32
    80003118:	fe070ce3          	beqz	a4,80003110 <uartputc_sync+0x20>
    8000311c:	0ff7f793          	andi	a5,a5,255
    80003120:	00f68023          	sb	a5,0(a3)
    80003124:	00813403          	ld	s0,8(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret
    80003130:	0000006f          	j	80003130 <uartputc_sync+0x40>

0000000080003134 <uartstart>:
    80003134:	ff010113          	addi	sp,sp,-16
    80003138:	00813423          	sd	s0,8(sp)
    8000313c:	01010413          	addi	s0,sp,16
    80003140:	00001617          	auipc	a2,0x1
    80003144:	6b060613          	addi	a2,a2,1712 # 800047f0 <uart_tx_r>
    80003148:	00001517          	auipc	a0,0x1
    8000314c:	6b050513          	addi	a0,a0,1712 # 800047f8 <uart_tx_w>
    80003150:	00063783          	ld	a5,0(a2)
    80003154:	00053703          	ld	a4,0(a0)
    80003158:	04f70263          	beq	a4,a5,8000319c <uartstart+0x68>
    8000315c:	100005b7          	lui	a1,0x10000
    80003160:	00003817          	auipc	a6,0x3
    80003164:	92080813          	addi	a6,a6,-1760 # 80005a80 <uart_tx_buf>
    80003168:	01c0006f          	j	80003184 <uartstart+0x50>
    8000316c:	0006c703          	lbu	a4,0(a3)
    80003170:	00f63023          	sd	a5,0(a2)
    80003174:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80003178:	00063783          	ld	a5,0(a2)
    8000317c:	00053703          	ld	a4,0(a0)
    80003180:	00f70e63          	beq	a4,a5,8000319c <uartstart+0x68>
    80003184:	01f7f713          	andi	a4,a5,31
    80003188:	00e806b3          	add	a3,a6,a4
    8000318c:	0055c703          	lbu	a4,5(a1)
    80003190:	00178793          	addi	a5,a5,1
    80003194:	02077713          	andi	a4,a4,32
    80003198:	fc071ae3          	bnez	a4,8000316c <uartstart+0x38>
    8000319c:	00813403          	ld	s0,8(sp)
    800031a0:	01010113          	addi	sp,sp,16
    800031a4:	00008067          	ret

00000000800031a8 <uartgetc>:
    800031a8:	ff010113          	addi	sp,sp,-16
    800031ac:	00813423          	sd	s0,8(sp)
    800031b0:	01010413          	addi	s0,sp,16
    800031b4:	10000737          	lui	a4,0x10000
    800031b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800031bc:	0017f793          	andi	a5,a5,1
    800031c0:	00078c63          	beqz	a5,800031d8 <uartgetc+0x30>
    800031c4:	00074503          	lbu	a0,0(a4)
    800031c8:	0ff57513          	andi	a0,a0,255
    800031cc:	00813403          	ld	s0,8(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret
    800031d8:	fff00513          	li	a0,-1
    800031dc:	ff1ff06f          	j	800031cc <uartgetc+0x24>

00000000800031e0 <uartintr>:
    800031e0:	100007b7          	lui	a5,0x10000
    800031e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800031e8:	0017f793          	andi	a5,a5,1
    800031ec:	0a078463          	beqz	a5,80003294 <uartintr+0xb4>
    800031f0:	fe010113          	addi	sp,sp,-32
    800031f4:	00813823          	sd	s0,16(sp)
    800031f8:	00913423          	sd	s1,8(sp)
    800031fc:	00113c23          	sd	ra,24(sp)
    80003200:	02010413          	addi	s0,sp,32
    80003204:	100004b7          	lui	s1,0x10000
    80003208:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000320c:	0ff57513          	andi	a0,a0,255
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	534080e7          	jalr	1332(ra) # 80002744 <consoleintr>
    80003218:	0054c783          	lbu	a5,5(s1)
    8000321c:	0017f793          	andi	a5,a5,1
    80003220:	fe0794e3          	bnez	a5,80003208 <uartintr+0x28>
    80003224:	00001617          	auipc	a2,0x1
    80003228:	5cc60613          	addi	a2,a2,1484 # 800047f0 <uart_tx_r>
    8000322c:	00001517          	auipc	a0,0x1
    80003230:	5cc50513          	addi	a0,a0,1484 # 800047f8 <uart_tx_w>
    80003234:	00063783          	ld	a5,0(a2)
    80003238:	00053703          	ld	a4,0(a0)
    8000323c:	04f70263          	beq	a4,a5,80003280 <uartintr+0xa0>
    80003240:	100005b7          	lui	a1,0x10000
    80003244:	00003817          	auipc	a6,0x3
    80003248:	83c80813          	addi	a6,a6,-1988 # 80005a80 <uart_tx_buf>
    8000324c:	01c0006f          	j	80003268 <uartintr+0x88>
    80003250:	0006c703          	lbu	a4,0(a3)
    80003254:	00f63023          	sd	a5,0(a2)
    80003258:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000325c:	00063783          	ld	a5,0(a2)
    80003260:	00053703          	ld	a4,0(a0)
    80003264:	00f70e63          	beq	a4,a5,80003280 <uartintr+0xa0>
    80003268:	01f7f713          	andi	a4,a5,31
    8000326c:	00e806b3          	add	a3,a6,a4
    80003270:	0055c703          	lbu	a4,5(a1)
    80003274:	00178793          	addi	a5,a5,1
    80003278:	02077713          	andi	a4,a4,32
    8000327c:	fc071ae3          	bnez	a4,80003250 <uartintr+0x70>
    80003280:	01813083          	ld	ra,24(sp)
    80003284:	01013403          	ld	s0,16(sp)
    80003288:	00813483          	ld	s1,8(sp)
    8000328c:	02010113          	addi	sp,sp,32
    80003290:	00008067          	ret
    80003294:	00001617          	auipc	a2,0x1
    80003298:	55c60613          	addi	a2,a2,1372 # 800047f0 <uart_tx_r>
    8000329c:	00001517          	auipc	a0,0x1
    800032a0:	55c50513          	addi	a0,a0,1372 # 800047f8 <uart_tx_w>
    800032a4:	00063783          	ld	a5,0(a2)
    800032a8:	00053703          	ld	a4,0(a0)
    800032ac:	04f70263          	beq	a4,a5,800032f0 <uartintr+0x110>
    800032b0:	100005b7          	lui	a1,0x10000
    800032b4:	00002817          	auipc	a6,0x2
    800032b8:	7cc80813          	addi	a6,a6,1996 # 80005a80 <uart_tx_buf>
    800032bc:	01c0006f          	j	800032d8 <uartintr+0xf8>
    800032c0:	0006c703          	lbu	a4,0(a3)
    800032c4:	00f63023          	sd	a5,0(a2)
    800032c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800032cc:	00063783          	ld	a5,0(a2)
    800032d0:	00053703          	ld	a4,0(a0)
    800032d4:	02f70063          	beq	a4,a5,800032f4 <uartintr+0x114>
    800032d8:	01f7f713          	andi	a4,a5,31
    800032dc:	00e806b3          	add	a3,a6,a4
    800032e0:	0055c703          	lbu	a4,5(a1)
    800032e4:	00178793          	addi	a5,a5,1
    800032e8:	02077713          	andi	a4,a4,32
    800032ec:	fc071ae3          	bnez	a4,800032c0 <uartintr+0xe0>
    800032f0:	00008067          	ret
    800032f4:	00008067          	ret

00000000800032f8 <kinit>:
    800032f8:	fc010113          	addi	sp,sp,-64
    800032fc:	02913423          	sd	s1,40(sp)
    80003300:	fffff7b7          	lui	a5,0xfffff
    80003304:	00003497          	auipc	s1,0x3
    80003308:	79b48493          	addi	s1,s1,1947 # 80006a9f <end+0xfff>
    8000330c:	02813823          	sd	s0,48(sp)
    80003310:	01313c23          	sd	s3,24(sp)
    80003314:	00f4f4b3          	and	s1,s1,a5
    80003318:	02113c23          	sd	ra,56(sp)
    8000331c:	03213023          	sd	s2,32(sp)
    80003320:	01413823          	sd	s4,16(sp)
    80003324:	01513423          	sd	s5,8(sp)
    80003328:	04010413          	addi	s0,sp,64
    8000332c:	000017b7          	lui	a5,0x1
    80003330:	01100993          	li	s3,17
    80003334:	00f487b3          	add	a5,s1,a5
    80003338:	01b99993          	slli	s3,s3,0x1b
    8000333c:	06f9e063          	bltu	s3,a5,8000339c <kinit+0xa4>
    80003340:	00002a97          	auipc	s5,0x2
    80003344:	760a8a93          	addi	s5,s5,1888 # 80005aa0 <end>
    80003348:	0754ec63          	bltu	s1,s5,800033c0 <kinit+0xc8>
    8000334c:	0734fa63          	bgeu	s1,s3,800033c0 <kinit+0xc8>
    80003350:	00088a37          	lui	s4,0x88
    80003354:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003358:	00001917          	auipc	s2,0x1
    8000335c:	4a890913          	addi	s2,s2,1192 # 80004800 <kmem>
    80003360:	00ca1a13          	slli	s4,s4,0xc
    80003364:	0140006f          	j	80003378 <kinit+0x80>
    80003368:	000017b7          	lui	a5,0x1
    8000336c:	00f484b3          	add	s1,s1,a5
    80003370:	0554e863          	bltu	s1,s5,800033c0 <kinit+0xc8>
    80003374:	0534f663          	bgeu	s1,s3,800033c0 <kinit+0xc8>
    80003378:	00001637          	lui	a2,0x1
    8000337c:	00100593          	li	a1,1
    80003380:	00048513          	mv	a0,s1
    80003384:	00000097          	auipc	ra,0x0
    80003388:	5e4080e7          	jalr	1508(ra) # 80003968 <__memset>
    8000338c:	00093783          	ld	a5,0(s2)
    80003390:	00f4b023          	sd	a5,0(s1)
    80003394:	00993023          	sd	s1,0(s2)
    80003398:	fd4498e3          	bne	s1,s4,80003368 <kinit+0x70>
    8000339c:	03813083          	ld	ra,56(sp)
    800033a0:	03013403          	ld	s0,48(sp)
    800033a4:	02813483          	ld	s1,40(sp)
    800033a8:	02013903          	ld	s2,32(sp)
    800033ac:	01813983          	ld	s3,24(sp)
    800033b0:	01013a03          	ld	s4,16(sp)
    800033b4:	00813a83          	ld	s5,8(sp)
    800033b8:	04010113          	addi	sp,sp,64
    800033bc:	00008067          	ret
    800033c0:	00001517          	auipc	a0,0x1
    800033c4:	e4050513          	addi	a0,a0,-448 # 80004200 <digits+0x18>
    800033c8:	fffff097          	auipc	ra,0xfffff
    800033cc:	4b4080e7          	jalr	1204(ra) # 8000287c <panic>

00000000800033d0 <freerange>:
    800033d0:	fc010113          	addi	sp,sp,-64
    800033d4:	000017b7          	lui	a5,0x1
    800033d8:	02913423          	sd	s1,40(sp)
    800033dc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800033e0:	009504b3          	add	s1,a0,s1
    800033e4:	fffff537          	lui	a0,0xfffff
    800033e8:	02813823          	sd	s0,48(sp)
    800033ec:	02113c23          	sd	ra,56(sp)
    800033f0:	03213023          	sd	s2,32(sp)
    800033f4:	01313c23          	sd	s3,24(sp)
    800033f8:	01413823          	sd	s4,16(sp)
    800033fc:	01513423          	sd	s5,8(sp)
    80003400:	01613023          	sd	s6,0(sp)
    80003404:	04010413          	addi	s0,sp,64
    80003408:	00a4f4b3          	and	s1,s1,a0
    8000340c:	00f487b3          	add	a5,s1,a5
    80003410:	06f5e463          	bltu	a1,a5,80003478 <freerange+0xa8>
    80003414:	00002a97          	auipc	s5,0x2
    80003418:	68ca8a93          	addi	s5,s5,1676 # 80005aa0 <end>
    8000341c:	0954e263          	bltu	s1,s5,800034a0 <freerange+0xd0>
    80003420:	01100993          	li	s3,17
    80003424:	01b99993          	slli	s3,s3,0x1b
    80003428:	0734fc63          	bgeu	s1,s3,800034a0 <freerange+0xd0>
    8000342c:	00058a13          	mv	s4,a1
    80003430:	00001917          	auipc	s2,0x1
    80003434:	3d090913          	addi	s2,s2,976 # 80004800 <kmem>
    80003438:	00002b37          	lui	s6,0x2
    8000343c:	0140006f          	j	80003450 <freerange+0x80>
    80003440:	000017b7          	lui	a5,0x1
    80003444:	00f484b3          	add	s1,s1,a5
    80003448:	0554ec63          	bltu	s1,s5,800034a0 <freerange+0xd0>
    8000344c:	0534fa63          	bgeu	s1,s3,800034a0 <freerange+0xd0>
    80003450:	00001637          	lui	a2,0x1
    80003454:	00100593          	li	a1,1
    80003458:	00048513          	mv	a0,s1
    8000345c:	00000097          	auipc	ra,0x0
    80003460:	50c080e7          	jalr	1292(ra) # 80003968 <__memset>
    80003464:	00093703          	ld	a4,0(s2)
    80003468:	016487b3          	add	a5,s1,s6
    8000346c:	00e4b023          	sd	a4,0(s1)
    80003470:	00993023          	sd	s1,0(s2)
    80003474:	fcfa76e3          	bgeu	s4,a5,80003440 <freerange+0x70>
    80003478:	03813083          	ld	ra,56(sp)
    8000347c:	03013403          	ld	s0,48(sp)
    80003480:	02813483          	ld	s1,40(sp)
    80003484:	02013903          	ld	s2,32(sp)
    80003488:	01813983          	ld	s3,24(sp)
    8000348c:	01013a03          	ld	s4,16(sp)
    80003490:	00813a83          	ld	s5,8(sp)
    80003494:	00013b03          	ld	s6,0(sp)
    80003498:	04010113          	addi	sp,sp,64
    8000349c:	00008067          	ret
    800034a0:	00001517          	auipc	a0,0x1
    800034a4:	d6050513          	addi	a0,a0,-672 # 80004200 <digits+0x18>
    800034a8:	fffff097          	auipc	ra,0xfffff
    800034ac:	3d4080e7          	jalr	980(ra) # 8000287c <panic>

00000000800034b0 <kfree>:
    800034b0:	fe010113          	addi	sp,sp,-32
    800034b4:	00813823          	sd	s0,16(sp)
    800034b8:	00113c23          	sd	ra,24(sp)
    800034bc:	00913423          	sd	s1,8(sp)
    800034c0:	02010413          	addi	s0,sp,32
    800034c4:	03451793          	slli	a5,a0,0x34
    800034c8:	04079c63          	bnez	a5,80003520 <kfree+0x70>
    800034cc:	00002797          	auipc	a5,0x2
    800034d0:	5d478793          	addi	a5,a5,1492 # 80005aa0 <end>
    800034d4:	00050493          	mv	s1,a0
    800034d8:	04f56463          	bltu	a0,a5,80003520 <kfree+0x70>
    800034dc:	01100793          	li	a5,17
    800034e0:	01b79793          	slli	a5,a5,0x1b
    800034e4:	02f57e63          	bgeu	a0,a5,80003520 <kfree+0x70>
    800034e8:	00001637          	lui	a2,0x1
    800034ec:	00100593          	li	a1,1
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	478080e7          	jalr	1144(ra) # 80003968 <__memset>
    800034f8:	00001797          	auipc	a5,0x1
    800034fc:	30878793          	addi	a5,a5,776 # 80004800 <kmem>
    80003500:	0007b703          	ld	a4,0(a5)
    80003504:	01813083          	ld	ra,24(sp)
    80003508:	01013403          	ld	s0,16(sp)
    8000350c:	00e4b023          	sd	a4,0(s1)
    80003510:	0097b023          	sd	s1,0(a5)
    80003514:	00813483          	ld	s1,8(sp)
    80003518:	02010113          	addi	sp,sp,32
    8000351c:	00008067          	ret
    80003520:	00001517          	auipc	a0,0x1
    80003524:	ce050513          	addi	a0,a0,-800 # 80004200 <digits+0x18>
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	354080e7          	jalr	852(ra) # 8000287c <panic>

0000000080003530 <kalloc>:
    80003530:	fe010113          	addi	sp,sp,-32
    80003534:	00813823          	sd	s0,16(sp)
    80003538:	00913423          	sd	s1,8(sp)
    8000353c:	00113c23          	sd	ra,24(sp)
    80003540:	02010413          	addi	s0,sp,32
    80003544:	00001797          	auipc	a5,0x1
    80003548:	2bc78793          	addi	a5,a5,700 # 80004800 <kmem>
    8000354c:	0007b483          	ld	s1,0(a5)
    80003550:	02048063          	beqz	s1,80003570 <kalloc+0x40>
    80003554:	0004b703          	ld	a4,0(s1)
    80003558:	00001637          	lui	a2,0x1
    8000355c:	00500593          	li	a1,5
    80003560:	00048513          	mv	a0,s1
    80003564:	00e7b023          	sd	a4,0(a5)
    80003568:	00000097          	auipc	ra,0x0
    8000356c:	400080e7          	jalr	1024(ra) # 80003968 <__memset>
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00048513          	mv	a0,s1
    8000357c:	00813483          	ld	s1,8(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <initlock>:
    80003588:	ff010113          	addi	sp,sp,-16
    8000358c:	00813423          	sd	s0,8(sp)
    80003590:	01010413          	addi	s0,sp,16
    80003594:	00813403          	ld	s0,8(sp)
    80003598:	00b53423          	sd	a1,8(a0)
    8000359c:	00052023          	sw	zero,0(a0)
    800035a0:	00053823          	sd	zero,16(a0)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret

00000000800035ac <acquire>:
    800035ac:	fe010113          	addi	sp,sp,-32
    800035b0:	00813823          	sd	s0,16(sp)
    800035b4:	00913423          	sd	s1,8(sp)
    800035b8:	00113c23          	sd	ra,24(sp)
    800035bc:	01213023          	sd	s2,0(sp)
    800035c0:	02010413          	addi	s0,sp,32
    800035c4:	00050493          	mv	s1,a0
    800035c8:	10002973          	csrr	s2,sstatus
    800035cc:	100027f3          	csrr	a5,sstatus
    800035d0:	ffd7f793          	andi	a5,a5,-3
    800035d4:	10079073          	csrw	sstatus,a5
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	8e8080e7          	jalr	-1816(ra) # 80001ec0 <mycpu>
    800035e0:	07852783          	lw	a5,120(a0)
    800035e4:	06078e63          	beqz	a5,80003660 <acquire+0xb4>
    800035e8:	fffff097          	auipc	ra,0xfffff
    800035ec:	8d8080e7          	jalr	-1832(ra) # 80001ec0 <mycpu>
    800035f0:	07852783          	lw	a5,120(a0)
    800035f4:	0004a703          	lw	a4,0(s1)
    800035f8:	0017879b          	addiw	a5,a5,1
    800035fc:	06f52c23          	sw	a5,120(a0)
    80003600:	04071063          	bnez	a4,80003640 <acquire+0x94>
    80003604:	00100713          	li	a4,1
    80003608:	00070793          	mv	a5,a4
    8000360c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003610:	0007879b          	sext.w	a5,a5
    80003614:	fe079ae3          	bnez	a5,80003608 <acquire+0x5c>
    80003618:	0ff0000f          	fence
    8000361c:	fffff097          	auipc	ra,0xfffff
    80003620:	8a4080e7          	jalr	-1884(ra) # 80001ec0 <mycpu>
    80003624:	01813083          	ld	ra,24(sp)
    80003628:	01013403          	ld	s0,16(sp)
    8000362c:	00a4b823          	sd	a0,16(s1)
    80003630:	00013903          	ld	s2,0(sp)
    80003634:	00813483          	ld	s1,8(sp)
    80003638:	02010113          	addi	sp,sp,32
    8000363c:	00008067          	ret
    80003640:	0104b903          	ld	s2,16(s1)
    80003644:	fffff097          	auipc	ra,0xfffff
    80003648:	87c080e7          	jalr	-1924(ra) # 80001ec0 <mycpu>
    8000364c:	faa91ce3          	bne	s2,a0,80003604 <acquire+0x58>
    80003650:	00001517          	auipc	a0,0x1
    80003654:	bb850513          	addi	a0,a0,-1096 # 80004208 <digits+0x20>
    80003658:	fffff097          	auipc	ra,0xfffff
    8000365c:	224080e7          	jalr	548(ra) # 8000287c <panic>
    80003660:	00195913          	srli	s2,s2,0x1
    80003664:	fffff097          	auipc	ra,0xfffff
    80003668:	85c080e7          	jalr	-1956(ra) # 80001ec0 <mycpu>
    8000366c:	00197913          	andi	s2,s2,1
    80003670:	07252e23          	sw	s2,124(a0)
    80003674:	f75ff06f          	j	800035e8 <acquire+0x3c>

0000000080003678 <release>:
    80003678:	fe010113          	addi	sp,sp,-32
    8000367c:	00813823          	sd	s0,16(sp)
    80003680:	00113c23          	sd	ra,24(sp)
    80003684:	00913423          	sd	s1,8(sp)
    80003688:	01213023          	sd	s2,0(sp)
    8000368c:	02010413          	addi	s0,sp,32
    80003690:	00052783          	lw	a5,0(a0)
    80003694:	00079a63          	bnez	a5,800036a8 <release+0x30>
    80003698:	00001517          	auipc	a0,0x1
    8000369c:	b7850513          	addi	a0,a0,-1160 # 80004210 <digits+0x28>
    800036a0:	fffff097          	auipc	ra,0xfffff
    800036a4:	1dc080e7          	jalr	476(ra) # 8000287c <panic>
    800036a8:	01053903          	ld	s2,16(a0)
    800036ac:	00050493          	mv	s1,a0
    800036b0:	fffff097          	auipc	ra,0xfffff
    800036b4:	810080e7          	jalr	-2032(ra) # 80001ec0 <mycpu>
    800036b8:	fea910e3          	bne	s2,a0,80003698 <release+0x20>
    800036bc:	0004b823          	sd	zero,16(s1)
    800036c0:	0ff0000f          	fence
    800036c4:	0f50000f          	fence	iorw,ow
    800036c8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800036cc:	ffffe097          	auipc	ra,0xffffe
    800036d0:	7f4080e7          	jalr	2036(ra) # 80001ec0 <mycpu>
    800036d4:	100027f3          	csrr	a5,sstatus
    800036d8:	0027f793          	andi	a5,a5,2
    800036dc:	04079a63          	bnez	a5,80003730 <release+0xb8>
    800036e0:	07852783          	lw	a5,120(a0)
    800036e4:	02f05e63          	blez	a5,80003720 <release+0xa8>
    800036e8:	fff7871b          	addiw	a4,a5,-1
    800036ec:	06e52c23          	sw	a4,120(a0)
    800036f0:	00071c63          	bnez	a4,80003708 <release+0x90>
    800036f4:	07c52783          	lw	a5,124(a0)
    800036f8:	00078863          	beqz	a5,80003708 <release+0x90>
    800036fc:	100027f3          	csrr	a5,sstatus
    80003700:	0027e793          	ori	a5,a5,2
    80003704:	10079073          	csrw	sstatus,a5
    80003708:	01813083          	ld	ra,24(sp)
    8000370c:	01013403          	ld	s0,16(sp)
    80003710:	00813483          	ld	s1,8(sp)
    80003714:	00013903          	ld	s2,0(sp)
    80003718:	02010113          	addi	sp,sp,32
    8000371c:	00008067          	ret
    80003720:	00001517          	auipc	a0,0x1
    80003724:	b1050513          	addi	a0,a0,-1264 # 80004230 <digits+0x48>
    80003728:	fffff097          	auipc	ra,0xfffff
    8000372c:	154080e7          	jalr	340(ra) # 8000287c <panic>
    80003730:	00001517          	auipc	a0,0x1
    80003734:	ae850513          	addi	a0,a0,-1304 # 80004218 <digits+0x30>
    80003738:	fffff097          	auipc	ra,0xfffff
    8000373c:	144080e7          	jalr	324(ra) # 8000287c <panic>

0000000080003740 <holding>:
    80003740:	00052783          	lw	a5,0(a0)
    80003744:	00079663          	bnez	a5,80003750 <holding+0x10>
    80003748:	00000513          	li	a0,0
    8000374c:	00008067          	ret
    80003750:	fe010113          	addi	sp,sp,-32
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	00113c23          	sd	ra,24(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	01053483          	ld	s1,16(a0)
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	758080e7          	jalr	1880(ra) # 80001ec0 <mycpu>
    80003770:	01813083          	ld	ra,24(sp)
    80003774:	01013403          	ld	s0,16(sp)
    80003778:	40a48533          	sub	a0,s1,a0
    8000377c:	00153513          	seqz	a0,a0
    80003780:	00813483          	ld	s1,8(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret

000000008000378c <push_off>:
    8000378c:	fe010113          	addi	sp,sp,-32
    80003790:	00813823          	sd	s0,16(sp)
    80003794:	00113c23          	sd	ra,24(sp)
    80003798:	00913423          	sd	s1,8(sp)
    8000379c:	02010413          	addi	s0,sp,32
    800037a0:	100024f3          	csrr	s1,sstatus
    800037a4:	100027f3          	csrr	a5,sstatus
    800037a8:	ffd7f793          	andi	a5,a5,-3
    800037ac:	10079073          	csrw	sstatus,a5
    800037b0:	ffffe097          	auipc	ra,0xffffe
    800037b4:	710080e7          	jalr	1808(ra) # 80001ec0 <mycpu>
    800037b8:	07852783          	lw	a5,120(a0)
    800037bc:	02078663          	beqz	a5,800037e8 <push_off+0x5c>
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	700080e7          	jalr	1792(ra) # 80001ec0 <mycpu>
    800037c8:	07852783          	lw	a5,120(a0)
    800037cc:	01813083          	ld	ra,24(sp)
    800037d0:	01013403          	ld	s0,16(sp)
    800037d4:	0017879b          	addiw	a5,a5,1
    800037d8:	06f52c23          	sw	a5,120(a0)
    800037dc:	00813483          	ld	s1,8(sp)
    800037e0:	02010113          	addi	sp,sp,32
    800037e4:	00008067          	ret
    800037e8:	0014d493          	srli	s1,s1,0x1
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	6d4080e7          	jalr	1748(ra) # 80001ec0 <mycpu>
    800037f4:	0014f493          	andi	s1,s1,1
    800037f8:	06952e23          	sw	s1,124(a0)
    800037fc:	fc5ff06f          	j	800037c0 <push_off+0x34>

0000000080003800 <pop_off>:
    80003800:	ff010113          	addi	sp,sp,-16
    80003804:	00813023          	sd	s0,0(sp)
    80003808:	00113423          	sd	ra,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	6b0080e7          	jalr	1712(ra) # 80001ec0 <mycpu>
    80003818:	100027f3          	csrr	a5,sstatus
    8000381c:	0027f793          	andi	a5,a5,2
    80003820:	04079663          	bnez	a5,8000386c <pop_off+0x6c>
    80003824:	07852783          	lw	a5,120(a0)
    80003828:	02f05a63          	blez	a5,8000385c <pop_off+0x5c>
    8000382c:	fff7871b          	addiw	a4,a5,-1
    80003830:	06e52c23          	sw	a4,120(a0)
    80003834:	00071c63          	bnez	a4,8000384c <pop_off+0x4c>
    80003838:	07c52783          	lw	a5,124(a0)
    8000383c:	00078863          	beqz	a5,8000384c <pop_off+0x4c>
    80003840:	100027f3          	csrr	a5,sstatus
    80003844:	0027e793          	ori	a5,a5,2
    80003848:	10079073          	csrw	sstatus,a5
    8000384c:	00813083          	ld	ra,8(sp)
    80003850:	00013403          	ld	s0,0(sp)
    80003854:	01010113          	addi	sp,sp,16
    80003858:	00008067          	ret
    8000385c:	00001517          	auipc	a0,0x1
    80003860:	9d450513          	addi	a0,a0,-1580 # 80004230 <digits+0x48>
    80003864:	fffff097          	auipc	ra,0xfffff
    80003868:	018080e7          	jalr	24(ra) # 8000287c <panic>
    8000386c:	00001517          	auipc	a0,0x1
    80003870:	9ac50513          	addi	a0,a0,-1620 # 80004218 <digits+0x30>
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	008080e7          	jalr	8(ra) # 8000287c <panic>

000000008000387c <push_on>:
    8000387c:	fe010113          	addi	sp,sp,-32
    80003880:	00813823          	sd	s0,16(sp)
    80003884:	00113c23          	sd	ra,24(sp)
    80003888:	00913423          	sd	s1,8(sp)
    8000388c:	02010413          	addi	s0,sp,32
    80003890:	100024f3          	csrr	s1,sstatus
    80003894:	100027f3          	csrr	a5,sstatus
    80003898:	0027e793          	ori	a5,a5,2
    8000389c:	10079073          	csrw	sstatus,a5
    800038a0:	ffffe097          	auipc	ra,0xffffe
    800038a4:	620080e7          	jalr	1568(ra) # 80001ec0 <mycpu>
    800038a8:	07852783          	lw	a5,120(a0)
    800038ac:	02078663          	beqz	a5,800038d8 <push_on+0x5c>
    800038b0:	ffffe097          	auipc	ra,0xffffe
    800038b4:	610080e7          	jalr	1552(ra) # 80001ec0 <mycpu>
    800038b8:	07852783          	lw	a5,120(a0)
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	0017879b          	addiw	a5,a5,1
    800038c8:	06f52c23          	sw	a5,120(a0)
    800038cc:	00813483          	ld	s1,8(sp)
    800038d0:	02010113          	addi	sp,sp,32
    800038d4:	00008067          	ret
    800038d8:	0014d493          	srli	s1,s1,0x1
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	5e4080e7          	jalr	1508(ra) # 80001ec0 <mycpu>
    800038e4:	0014f493          	andi	s1,s1,1
    800038e8:	06952e23          	sw	s1,124(a0)
    800038ec:	fc5ff06f          	j	800038b0 <push_on+0x34>

00000000800038f0 <pop_on>:
    800038f0:	ff010113          	addi	sp,sp,-16
    800038f4:	00813023          	sd	s0,0(sp)
    800038f8:	00113423          	sd	ra,8(sp)
    800038fc:	01010413          	addi	s0,sp,16
    80003900:	ffffe097          	auipc	ra,0xffffe
    80003904:	5c0080e7          	jalr	1472(ra) # 80001ec0 <mycpu>
    80003908:	100027f3          	csrr	a5,sstatus
    8000390c:	0027f793          	andi	a5,a5,2
    80003910:	04078463          	beqz	a5,80003958 <pop_on+0x68>
    80003914:	07852783          	lw	a5,120(a0)
    80003918:	02f05863          	blez	a5,80003948 <pop_on+0x58>
    8000391c:	fff7879b          	addiw	a5,a5,-1
    80003920:	06f52c23          	sw	a5,120(a0)
    80003924:	07853783          	ld	a5,120(a0)
    80003928:	00079863          	bnez	a5,80003938 <pop_on+0x48>
    8000392c:	100027f3          	csrr	a5,sstatus
    80003930:	ffd7f793          	andi	a5,a5,-3
    80003934:	10079073          	csrw	sstatus,a5
    80003938:	00813083          	ld	ra,8(sp)
    8000393c:	00013403          	ld	s0,0(sp)
    80003940:	01010113          	addi	sp,sp,16
    80003944:	00008067          	ret
    80003948:	00001517          	auipc	a0,0x1
    8000394c:	91050513          	addi	a0,a0,-1776 # 80004258 <digits+0x70>
    80003950:	fffff097          	auipc	ra,0xfffff
    80003954:	f2c080e7          	jalr	-212(ra) # 8000287c <panic>
    80003958:	00001517          	auipc	a0,0x1
    8000395c:	8e050513          	addi	a0,a0,-1824 # 80004238 <digits+0x50>
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	f1c080e7          	jalr	-228(ra) # 8000287c <panic>

0000000080003968 <__memset>:
    80003968:	ff010113          	addi	sp,sp,-16
    8000396c:	00813423          	sd	s0,8(sp)
    80003970:	01010413          	addi	s0,sp,16
    80003974:	1a060e63          	beqz	a2,80003b30 <__memset+0x1c8>
    80003978:	40a007b3          	neg	a5,a0
    8000397c:	0077f793          	andi	a5,a5,7
    80003980:	00778693          	addi	a3,a5,7
    80003984:	00b00813          	li	a6,11
    80003988:	0ff5f593          	andi	a1,a1,255
    8000398c:	fff6071b          	addiw	a4,a2,-1
    80003990:	1b06e663          	bltu	a3,a6,80003b3c <__memset+0x1d4>
    80003994:	1cd76463          	bltu	a4,a3,80003b5c <__memset+0x1f4>
    80003998:	1a078e63          	beqz	a5,80003b54 <__memset+0x1ec>
    8000399c:	00b50023          	sb	a1,0(a0)
    800039a0:	00100713          	li	a4,1
    800039a4:	1ae78463          	beq	a5,a4,80003b4c <__memset+0x1e4>
    800039a8:	00b500a3          	sb	a1,1(a0)
    800039ac:	00200713          	li	a4,2
    800039b0:	1ae78a63          	beq	a5,a4,80003b64 <__memset+0x1fc>
    800039b4:	00b50123          	sb	a1,2(a0)
    800039b8:	00300713          	li	a4,3
    800039bc:	18e78463          	beq	a5,a4,80003b44 <__memset+0x1dc>
    800039c0:	00b501a3          	sb	a1,3(a0)
    800039c4:	00400713          	li	a4,4
    800039c8:	1ae78263          	beq	a5,a4,80003b6c <__memset+0x204>
    800039cc:	00b50223          	sb	a1,4(a0)
    800039d0:	00500713          	li	a4,5
    800039d4:	1ae78063          	beq	a5,a4,80003b74 <__memset+0x20c>
    800039d8:	00b502a3          	sb	a1,5(a0)
    800039dc:	00700713          	li	a4,7
    800039e0:	18e79e63          	bne	a5,a4,80003b7c <__memset+0x214>
    800039e4:	00b50323          	sb	a1,6(a0)
    800039e8:	00700e93          	li	t4,7
    800039ec:	00859713          	slli	a4,a1,0x8
    800039f0:	00e5e733          	or	a4,a1,a4
    800039f4:	01059e13          	slli	t3,a1,0x10
    800039f8:	01c76e33          	or	t3,a4,t3
    800039fc:	01859313          	slli	t1,a1,0x18
    80003a00:	006e6333          	or	t1,t3,t1
    80003a04:	02059893          	slli	a7,a1,0x20
    80003a08:	40f60e3b          	subw	t3,a2,a5
    80003a0c:	011368b3          	or	a7,t1,a7
    80003a10:	02859813          	slli	a6,a1,0x28
    80003a14:	0108e833          	or	a6,a7,a6
    80003a18:	03059693          	slli	a3,a1,0x30
    80003a1c:	003e589b          	srliw	a7,t3,0x3
    80003a20:	00d866b3          	or	a3,a6,a3
    80003a24:	03859713          	slli	a4,a1,0x38
    80003a28:	00389813          	slli	a6,a7,0x3
    80003a2c:	00f507b3          	add	a5,a0,a5
    80003a30:	00e6e733          	or	a4,a3,a4
    80003a34:	000e089b          	sext.w	a7,t3
    80003a38:	00f806b3          	add	a3,a6,a5
    80003a3c:	00e7b023          	sd	a4,0(a5)
    80003a40:	00878793          	addi	a5,a5,8
    80003a44:	fed79ce3          	bne	a5,a3,80003a3c <__memset+0xd4>
    80003a48:	ff8e7793          	andi	a5,t3,-8
    80003a4c:	0007871b          	sext.w	a4,a5
    80003a50:	01d787bb          	addw	a5,a5,t4
    80003a54:	0ce88e63          	beq	a7,a4,80003b30 <__memset+0x1c8>
    80003a58:	00f50733          	add	a4,a0,a5
    80003a5c:	00b70023          	sb	a1,0(a4)
    80003a60:	0017871b          	addiw	a4,a5,1
    80003a64:	0cc77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a68:	00e50733          	add	a4,a0,a4
    80003a6c:	00b70023          	sb	a1,0(a4)
    80003a70:	0027871b          	addiw	a4,a5,2
    80003a74:	0ac77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a78:	00e50733          	add	a4,a0,a4
    80003a7c:	00b70023          	sb	a1,0(a4)
    80003a80:	0037871b          	addiw	a4,a5,3
    80003a84:	0ac77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a88:	00e50733          	add	a4,a0,a4
    80003a8c:	00b70023          	sb	a1,0(a4)
    80003a90:	0047871b          	addiw	a4,a5,4
    80003a94:	08c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003a98:	00e50733          	add	a4,a0,a4
    80003a9c:	00b70023          	sb	a1,0(a4)
    80003aa0:	0057871b          	addiw	a4,a5,5
    80003aa4:	08c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003aa8:	00e50733          	add	a4,a0,a4
    80003aac:	00b70023          	sb	a1,0(a4)
    80003ab0:	0067871b          	addiw	a4,a5,6
    80003ab4:	06c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ab8:	00e50733          	add	a4,a0,a4
    80003abc:	00b70023          	sb	a1,0(a4)
    80003ac0:	0077871b          	addiw	a4,a5,7
    80003ac4:	06c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ac8:	00e50733          	add	a4,a0,a4
    80003acc:	00b70023          	sb	a1,0(a4)
    80003ad0:	0087871b          	addiw	a4,a5,8
    80003ad4:	04c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ad8:	00e50733          	add	a4,a0,a4
    80003adc:	00b70023          	sb	a1,0(a4)
    80003ae0:	0097871b          	addiw	a4,a5,9
    80003ae4:	04c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00b70023          	sb	a1,0(a4)
    80003af0:	00a7871b          	addiw	a4,a5,10
    80003af4:	02c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003af8:	00e50733          	add	a4,a0,a4
    80003afc:	00b70023          	sb	a1,0(a4)
    80003b00:	00b7871b          	addiw	a4,a5,11
    80003b04:	02c77663          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003b08:	00e50733          	add	a4,a0,a4
    80003b0c:	00b70023          	sb	a1,0(a4)
    80003b10:	00c7871b          	addiw	a4,a5,12
    80003b14:	00c77e63          	bgeu	a4,a2,80003b30 <__memset+0x1c8>
    80003b18:	00e50733          	add	a4,a0,a4
    80003b1c:	00b70023          	sb	a1,0(a4)
    80003b20:	00d7879b          	addiw	a5,a5,13
    80003b24:	00c7f663          	bgeu	a5,a2,80003b30 <__memset+0x1c8>
    80003b28:	00f507b3          	add	a5,a0,a5
    80003b2c:	00b78023          	sb	a1,0(a5)
    80003b30:	00813403          	ld	s0,8(sp)
    80003b34:	01010113          	addi	sp,sp,16
    80003b38:	00008067          	ret
    80003b3c:	00b00693          	li	a3,11
    80003b40:	e55ff06f          	j	80003994 <__memset+0x2c>
    80003b44:	00300e93          	li	t4,3
    80003b48:	ea5ff06f          	j	800039ec <__memset+0x84>
    80003b4c:	00100e93          	li	t4,1
    80003b50:	e9dff06f          	j	800039ec <__memset+0x84>
    80003b54:	00000e93          	li	t4,0
    80003b58:	e95ff06f          	j	800039ec <__memset+0x84>
    80003b5c:	00000793          	li	a5,0
    80003b60:	ef9ff06f          	j	80003a58 <__memset+0xf0>
    80003b64:	00200e93          	li	t4,2
    80003b68:	e85ff06f          	j	800039ec <__memset+0x84>
    80003b6c:	00400e93          	li	t4,4
    80003b70:	e7dff06f          	j	800039ec <__memset+0x84>
    80003b74:	00500e93          	li	t4,5
    80003b78:	e75ff06f          	j	800039ec <__memset+0x84>
    80003b7c:	00600e93          	li	t4,6
    80003b80:	e6dff06f          	j	800039ec <__memset+0x84>

0000000080003b84 <__memmove>:
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00813423          	sd	s0,8(sp)
    80003b8c:	01010413          	addi	s0,sp,16
    80003b90:	0e060863          	beqz	a2,80003c80 <__memmove+0xfc>
    80003b94:	fff6069b          	addiw	a3,a2,-1
    80003b98:	0006881b          	sext.w	a6,a3
    80003b9c:	0ea5e863          	bltu	a1,a0,80003c8c <__memmove+0x108>
    80003ba0:	00758713          	addi	a4,a1,7
    80003ba4:	00a5e7b3          	or	a5,a1,a0
    80003ba8:	40a70733          	sub	a4,a4,a0
    80003bac:	0077f793          	andi	a5,a5,7
    80003bb0:	00f73713          	sltiu	a4,a4,15
    80003bb4:	00174713          	xori	a4,a4,1
    80003bb8:	0017b793          	seqz	a5,a5
    80003bbc:	00e7f7b3          	and	a5,a5,a4
    80003bc0:	10078863          	beqz	a5,80003cd0 <__memmove+0x14c>
    80003bc4:	00900793          	li	a5,9
    80003bc8:	1107f463          	bgeu	a5,a6,80003cd0 <__memmove+0x14c>
    80003bcc:	0036581b          	srliw	a6,a2,0x3
    80003bd0:	fff8081b          	addiw	a6,a6,-1
    80003bd4:	02081813          	slli	a6,a6,0x20
    80003bd8:	01d85893          	srli	a7,a6,0x1d
    80003bdc:	00858813          	addi	a6,a1,8
    80003be0:	00058793          	mv	a5,a1
    80003be4:	00050713          	mv	a4,a0
    80003be8:	01088833          	add	a6,a7,a6
    80003bec:	0007b883          	ld	a7,0(a5)
    80003bf0:	00878793          	addi	a5,a5,8
    80003bf4:	00870713          	addi	a4,a4,8
    80003bf8:	ff173c23          	sd	a7,-8(a4)
    80003bfc:	ff0798e3          	bne	a5,a6,80003bec <__memmove+0x68>
    80003c00:	ff867713          	andi	a4,a2,-8
    80003c04:	02071793          	slli	a5,a4,0x20
    80003c08:	0207d793          	srli	a5,a5,0x20
    80003c0c:	00f585b3          	add	a1,a1,a5
    80003c10:	40e686bb          	subw	a3,a3,a4
    80003c14:	00f507b3          	add	a5,a0,a5
    80003c18:	06e60463          	beq	a2,a4,80003c80 <__memmove+0xfc>
    80003c1c:	0005c703          	lbu	a4,0(a1)
    80003c20:	00e78023          	sb	a4,0(a5)
    80003c24:	04068e63          	beqz	a3,80003c80 <__memmove+0xfc>
    80003c28:	0015c603          	lbu	a2,1(a1)
    80003c2c:	00100713          	li	a4,1
    80003c30:	00c780a3          	sb	a2,1(a5)
    80003c34:	04e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c38:	0025c603          	lbu	a2,2(a1)
    80003c3c:	00200713          	li	a4,2
    80003c40:	00c78123          	sb	a2,2(a5)
    80003c44:	02e68e63          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c48:	0035c603          	lbu	a2,3(a1)
    80003c4c:	00300713          	li	a4,3
    80003c50:	00c781a3          	sb	a2,3(a5)
    80003c54:	02e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c58:	0045c603          	lbu	a2,4(a1)
    80003c5c:	00400713          	li	a4,4
    80003c60:	00c78223          	sb	a2,4(a5)
    80003c64:	00e68e63          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c68:	0055c603          	lbu	a2,5(a1)
    80003c6c:	00500713          	li	a4,5
    80003c70:	00c782a3          	sb	a2,5(a5)
    80003c74:	00e68663          	beq	a3,a4,80003c80 <__memmove+0xfc>
    80003c78:	0065c703          	lbu	a4,6(a1)
    80003c7c:	00e78323          	sb	a4,6(a5)
    80003c80:	00813403          	ld	s0,8(sp)
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00008067          	ret
    80003c8c:	02061713          	slli	a4,a2,0x20
    80003c90:	02075713          	srli	a4,a4,0x20
    80003c94:	00e587b3          	add	a5,a1,a4
    80003c98:	f0f574e3          	bgeu	a0,a5,80003ba0 <__memmove+0x1c>
    80003c9c:	02069613          	slli	a2,a3,0x20
    80003ca0:	02065613          	srli	a2,a2,0x20
    80003ca4:	fff64613          	not	a2,a2
    80003ca8:	00e50733          	add	a4,a0,a4
    80003cac:	00c78633          	add	a2,a5,a2
    80003cb0:	fff7c683          	lbu	a3,-1(a5)
    80003cb4:	fff78793          	addi	a5,a5,-1
    80003cb8:	fff70713          	addi	a4,a4,-1
    80003cbc:	00d70023          	sb	a3,0(a4)
    80003cc0:	fec798e3          	bne	a5,a2,80003cb0 <__memmove+0x12c>
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	01010113          	addi	sp,sp,16
    80003ccc:	00008067          	ret
    80003cd0:	02069713          	slli	a4,a3,0x20
    80003cd4:	02075713          	srli	a4,a4,0x20
    80003cd8:	00170713          	addi	a4,a4,1
    80003cdc:	00e50733          	add	a4,a0,a4
    80003ce0:	00050793          	mv	a5,a0
    80003ce4:	0005c683          	lbu	a3,0(a1)
    80003ce8:	00178793          	addi	a5,a5,1
    80003cec:	00158593          	addi	a1,a1,1
    80003cf0:	fed78fa3          	sb	a3,-1(a5)
    80003cf4:	fee798e3          	bne	a5,a4,80003ce4 <__memmove+0x160>
    80003cf8:	f89ff06f          	j	80003c80 <__memmove+0xfc>

0000000080003cfc <__putc>:
    80003cfc:	fe010113          	addi	sp,sp,-32
    80003d00:	00813823          	sd	s0,16(sp)
    80003d04:	00113c23          	sd	ra,24(sp)
    80003d08:	02010413          	addi	s0,sp,32
    80003d0c:	00050793          	mv	a5,a0
    80003d10:	fef40593          	addi	a1,s0,-17
    80003d14:	00100613          	li	a2,1
    80003d18:	00000513          	li	a0,0
    80003d1c:	fef407a3          	sb	a5,-17(s0)
    80003d20:	fffff097          	auipc	ra,0xfffff
    80003d24:	b3c080e7          	jalr	-1220(ra) # 8000285c <console_write>
    80003d28:	01813083          	ld	ra,24(sp)
    80003d2c:	01013403          	ld	s0,16(sp)
    80003d30:	02010113          	addi	sp,sp,32
    80003d34:	00008067          	ret

0000000080003d38 <__getc>:
    80003d38:	fe010113          	addi	sp,sp,-32
    80003d3c:	00813823          	sd	s0,16(sp)
    80003d40:	00113c23          	sd	ra,24(sp)
    80003d44:	02010413          	addi	s0,sp,32
    80003d48:	fe840593          	addi	a1,s0,-24
    80003d4c:	00100613          	li	a2,1
    80003d50:	00000513          	li	a0,0
    80003d54:	fffff097          	auipc	ra,0xfffff
    80003d58:	ae8080e7          	jalr	-1304(ra) # 8000283c <console_read>
    80003d5c:	fe844503          	lbu	a0,-24(s0)
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	02010113          	addi	sp,sp,32
    80003d6c:	00008067          	ret

0000000080003d70 <console_handler>:
    80003d70:	fe010113          	addi	sp,sp,-32
    80003d74:	00813823          	sd	s0,16(sp)
    80003d78:	00113c23          	sd	ra,24(sp)
    80003d7c:	00913423          	sd	s1,8(sp)
    80003d80:	02010413          	addi	s0,sp,32
    80003d84:	14202773          	csrr	a4,scause
    80003d88:	100027f3          	csrr	a5,sstatus
    80003d8c:	0027f793          	andi	a5,a5,2
    80003d90:	06079e63          	bnez	a5,80003e0c <console_handler+0x9c>
    80003d94:	00074c63          	bltz	a4,80003dac <console_handler+0x3c>
    80003d98:	01813083          	ld	ra,24(sp)
    80003d9c:	01013403          	ld	s0,16(sp)
    80003da0:	00813483          	ld	s1,8(sp)
    80003da4:	02010113          	addi	sp,sp,32
    80003da8:	00008067          	ret
    80003dac:	0ff77713          	andi	a4,a4,255
    80003db0:	00900793          	li	a5,9
    80003db4:	fef712e3          	bne	a4,a5,80003d98 <console_handler+0x28>
    80003db8:	ffffe097          	auipc	ra,0xffffe
    80003dbc:	6dc080e7          	jalr	1756(ra) # 80002494 <plic_claim>
    80003dc0:	00a00793          	li	a5,10
    80003dc4:	00050493          	mv	s1,a0
    80003dc8:	02f50c63          	beq	a0,a5,80003e00 <console_handler+0x90>
    80003dcc:	fc0506e3          	beqz	a0,80003d98 <console_handler+0x28>
    80003dd0:	00050593          	mv	a1,a0
    80003dd4:	00000517          	auipc	a0,0x0
    80003dd8:	38c50513          	addi	a0,a0,908 # 80004160 <CONSOLE_STATUS+0x150>
    80003ddc:	fffff097          	auipc	ra,0xfffff
    80003de0:	afc080e7          	jalr	-1284(ra) # 800028d8 <__printf>
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	00048513          	mv	a0,s1
    80003df0:	00813483          	ld	s1,8(sp)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	ffffe317          	auipc	t1,0xffffe
    80003dfc:	6d430067          	jr	1748(t1) # 800024cc <plic_complete>
    80003e00:	fffff097          	auipc	ra,0xfffff
    80003e04:	3e0080e7          	jalr	992(ra) # 800031e0 <uartintr>
    80003e08:	fddff06f          	j	80003de4 <console_handler+0x74>
    80003e0c:	00000517          	auipc	a0,0x0
    80003e10:	45450513          	addi	a0,a0,1108 # 80004260 <digits+0x78>
    80003e14:	fffff097          	auipc	ra,0xfffff
    80003e18:	a68080e7          	jalr	-1432(ra) # 8000287c <panic>
	...
