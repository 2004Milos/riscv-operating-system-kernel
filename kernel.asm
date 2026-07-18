
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	6c813103          	ld	sp,1736(sp) # 800046c8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	261010ef          	jal	ra,80001a7c <start>

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
    80001084:	154000ef          	jal	ra,800011d8 <_ZN6Kernel21supervisorTrapHandlerEv>

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
    800011a4:	0005051b          	sext.w	a0,a0
    800011a8:	00813403          	ld	s0,8(sp)
    800011ac:	01010113          	addi	sp,sp,16
    800011b0:	00008067          	ret

00000000800011b4 <_ZN6Kernel4initEv>:
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"

void Kernel::init() {
    800011b4:	ff010113          	addi	sp,sp,-16
    800011b8:	00813423          	sd	s0,8(sp)
    800011bc:	01010413          	addi	s0,sp,16
    // set trap routine
    w_stvec((uint64)&supervisorTrap);
    800011c0:	00003797          	auipc	a5,0x3
    800011c4:	5107b783          	ld	a5,1296(a5) # 800046d0 <_GLOBAL_OFFSET_TABLE_+0x18>
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
        return x;
    }

    static inline void w_stvec(uint64 x) {
        __asm__ volatile("csrw stvec, %0" : : "r"(x));
    800011c8:	10579073          	csrw	stvec,a5
    //ms_sstatus(SstatusBits::SSTATUS_SIE);
}
    800011cc:	00813403          	ld	s0,8(sp)
    800011d0:	01010113          	addi	sp,sp,16
    800011d4:	00008067          	ret

00000000800011d8 <_ZN6Kernel21supervisorTrapHandlerEv>:

void Kernel::supervisorTrapHandler()
{
    800011d8:	fa010113          	addi	sp,sp,-96
    800011dc:	04113c23          	sd	ra,88(sp)
    800011e0:	04813823          	sd	s0,80(sp)
    800011e4:	04913423          	sd	s1,72(sp)
    800011e8:	06010413          	addi	s0,sp,96
        __asm__ volatile("csrr %0, scause" : "=r"(x));
    800011ec:	142027f3          	csrr	a5,scause
    800011f0:	fcf43023          	sd	a5,-64(s0)
        return x;
    800011f4:	fc043783          	ld	a5,-64(s0)
    uint32 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800011f8:	ff87879b          	addiw	a5,a5,-8
    800011fc:	00100713          	li	a4,1
    80001200:	00f77c63          	bgeu	a4,a5,80001218 <_ZN6Kernel21supervisorTrapHandlerEv+0x40>
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    
    return;
    80001204:	05813083          	ld	ra,88(sp)
    80001208:	05013403          	ld	s0,80(sp)
    8000120c:	04813483          	ld	s1,72(sp)
    80001210:	06010113          	addi	sp,sp,96
    80001214:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    80001218:	141027f3          	csrr	a5,sepc
    8000121c:	fcf43c23          	sd	a5,-40(s0)
        return x;
    80001220:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001224:	00478793          	addi	a5,a5,4
    80001228:	faf43423          	sd	a5,-88(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    8000122c:	100027f3          	csrr	a5,sstatus
    80001230:	fcf43823          	sd	a5,-48(s0)
        return x;
    80001234:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus =  r_sstatus();
    80001238:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(x));
    8000123c:	00050793          	mv	a5,a0
    80001240:	fcf43423          	sd	a5,-56(s0)
        return x;
    80001244:	fc843783          	ld	a5,-56(s0)
        uint64 volatile opcode = r_a0();
    80001248:	faf43c23          	sd	a5,-72(s0)
        switch (opcode) {
    8000124c:	fb843783          	ld	a5,-72(s0)
    80001250:	02e78063          	beq	a5,a4,80001270 <_ZN6Kernel21supervisorTrapHandlerEv+0x98>
    80001254:	00200713          	li	a4,2
    80001258:	02e78e63          	beq	a5,a4,80001294 <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
        w_sstatus(sstatus);
    8000125c:	fb043783          	ld	a5,-80(s0)
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    80001260:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001264:	fa843783          	ld	a5,-88(s0)
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    80001268:	14179073          	csrw	sepc,a5
    return;
    8000126c:	f99ff06f          	j	80001204 <_ZN6Kernel21supervisorTrapHandlerEv+0x2c>
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001270:	00058493          	mv	s1,a1
                pointer = MemoryAllocator::instance().kmem_alloc(size);
    80001274:	00000097          	auipc	ra,0x0
    80001278:	40c080e7          	jalr	1036(ra) # 80001680 <_ZN15MemoryAllocator8instanceEv>
    8000127c:	00048593          	mv	a1,s1
    80001280:	00000097          	auipc	ra,0x0
    80001284:	48c080e7          	jalr	1164(ra) # 8000170c <_ZN15MemoryAllocator10kmem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(pointer));
    80001288:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    8000128c:	04542823          	sw	t0,80(s0)
                break;
    80001290:	fcdff06f          	j	8000125c <_ZN6Kernel21supervisorTrapHandlerEv+0x84>
                __asm__ volatile("mv %0, a1" : "=r" (pointer));
    80001294:	00058493          	mv	s1,a1
                value = MemoryAllocator::instance().kmem_free(pointer);
    80001298:	00000097          	auipc	ra,0x0
    8000129c:	3e8080e7          	jalr	1000(ra) # 80001680 <_ZN15MemoryAllocator8instanceEv>
    800012a0:	00048593          	mv	a1,s1
    800012a4:	00000097          	auipc	ra,0x0
    800012a8:	5f0080e7          	jalr	1520(ra) # 80001894 <_ZN15MemoryAllocator9kmem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(value));
    800012ac:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    800012b0:	04542823          	sw	t0,80(s0)
                break;
    800012b4:	fa9ff06f          	j	8000125c <_ZN6Kernel21supervisorTrapHandlerEv+0x84>

00000000800012b8 <main>:
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"


void main()
{
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00113423          	sd	ra,8(sp)
    800012c0:	00813023          	sd	s0,0(sp)
    800012c4:	01010413          	addi	s0,sp,16
    Kernel::init();
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	eec080e7          	jalr	-276(ra) # 800011b4 <_ZN6Kernel4initEv>
    Kernel::print_int((long long)MEM_BLOCK_SIZE, 16, 0);
    800012d0:	00000613          	li	a2,0
    800012d4:	01000593          	li	a1,16
    800012d8:	04000513          	li	a0,64
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	080080e7          	jalr	128(ra) # 8000135c <_ZN6Kernel9print_intEiii>
    __putc('\n');
    800012e4:	00a00513          	li	a0,10
    800012e8:	00003097          	auipc	ra,0x3
    800012ec:	854080e7          	jalr	-1964(ra) # 80003b3c <__putc>
    Kernel::print_int((long long)HEAP_START_ADDR, 16, 0);
    800012f0:	00000613          	li	a2,0
    800012f4:	01000593          	li	a1,16
    800012f8:	00003797          	auipc	a5,0x3
    800012fc:	3c87b783          	ld	a5,968(a5) # 800046c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001300:	0007a503          	lw	a0,0(a5)
    80001304:	00000097          	auipc	ra,0x0
    80001308:	058080e7          	jalr	88(ra) # 8000135c <_ZN6Kernel9print_intEiii>
    __putc('\n');
    8000130c:	00a00513          	li	a0,10
    80001310:	00003097          	auipc	ra,0x3
    80001314:	82c080e7          	jalr	-2004(ra) # 80003b3c <__putc>
    Kernel::print_int((long long)HEAP_END_ADDR, 16, 0);
    80001318:	00000613          	li	a2,0
    8000131c:	01000593          	li	a1,16
    80001320:	00003797          	auipc	a5,0x3
    80001324:	3b87b783          	ld	a5,952(a5) # 800046d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001328:	0007a503          	lw	a0,0(a5)
    8000132c:	00000097          	auipc	ra,0x0
    80001330:	030080e7          	jalr	48(ra) # 8000135c <_ZN6Kernel9print_intEiii>
    __putc('\n');
    80001334:	00a00513          	li	a0,10
    80001338:	00003097          	auipc	ra,0x3
    8000133c:	804080e7          	jalr	-2044(ra) # 80003b3c <__putc>
    __putc('\n');
    80001340:	00a00513          	li	a0,10
    80001344:	00002097          	auipc	ra,0x2
    80001348:	7f8080e7          	jalr	2040(ra) # 80003b3c <__putc>

    return;
    8000134c:	00813083          	ld	ra,8(sp)
    80001350:	00013403          	ld	s0,0(sp)
    80001354:	01010113          	addi	sp,sp,16
    80001358:	00008067          	ret

000000008000135c <_ZN6Kernel9print_intEiii>:
    inline static void print_int(int xx, int base, int sgn)
    8000135c:	fb010113          	addi	sp,sp,-80
    80001360:	04113423          	sd	ra,72(sp)
    80001364:	04813023          	sd	s0,64(sp)
    80001368:	02913c23          	sd	s1,56(sp)
    8000136c:	05010413          	addi	s0,sp,80
        char my_digits[] = "0123456789ABCDEF";
    80001370:	00003797          	auipc	a5,0x3
    80001374:	cb078793          	addi	a5,a5,-848 # 80004020 <CONSOLE_STATUS+0x10>
    80001378:	0007b703          	ld	a4,0(a5)
    8000137c:	fce43423          	sd	a4,-56(s0)
    80001380:	0087b703          	ld	a4,8(a5)
    80001384:	fce43823          	sd	a4,-48(s0)
    80001388:	0107c783          	lbu	a5,16(a5)
    8000138c:	fcf40c23          	sb	a5,-40(s0)
        if(sgn && xx < 0){
    80001390:	00060463          	beqz	a2,80001398 <_ZN6Kernel9print_intEiii+0x3c>
    80001394:	08054263          	bltz	a0,80001418 <_ZN6Kernel9print_intEiii+0xbc>
            x = xx;
    80001398:	0005051b          	sext.w	a0,a0
        neg = 0;
    8000139c:	00000813          	li	a6,0
        i = 0;
    800013a0:	00000493          	li	s1,0
            buf[i++] = my_digits[x % base];
    800013a4:	0005871b          	sext.w	a4,a1
    800013a8:	02b577bb          	remuw	a5,a0,a1
    800013ac:	00048693          	mv	a3,s1
    800013b0:	0014849b          	addiw	s1,s1,1
    800013b4:	02079793          	slli	a5,a5,0x20
    800013b8:	0207d793          	srli	a5,a5,0x20
    800013bc:	fe040613          	addi	a2,s0,-32
    800013c0:	00f607b3          	add	a5,a2,a5
    800013c4:	fe87c603          	lbu	a2,-24(a5)
    800013c8:	fe040793          	addi	a5,s0,-32
    800013cc:	00d787b3          	add	a5,a5,a3
    800013d0:	fcc78c23          	sb	a2,-40(a5)
        }while((x /= base) != 0);
    800013d4:	0005061b          	sext.w	a2,a0
    800013d8:	02b5553b          	divuw	a0,a0,a1
    800013dc:	fce674e3          	bgeu	a2,a4,800013a4 <_ZN6Kernel9print_intEiii+0x48>
        if(neg)
    800013e0:	00080c63          	beqz	a6,800013f8 <_ZN6Kernel9print_intEiii+0x9c>
            buf[i++] = '-';
    800013e4:	fe040793          	addi	a5,s0,-32
    800013e8:	009784b3          	add	s1,a5,s1
    800013ec:	02d00793          	li	a5,45
    800013f0:	fcf48c23          	sb	a5,-40(s1)
    800013f4:	0026849b          	addiw	s1,a3,2
        while(--i >= 0)
    800013f8:	fff4849b          	addiw	s1,s1,-1
    800013fc:	0204c463          	bltz	s1,80001424 <_ZN6Kernel9print_intEiii+0xc8>
            __putc(buf[i]);
    80001400:	fe040793          	addi	a5,s0,-32
    80001404:	009787b3          	add	a5,a5,s1
    80001408:	fd87c503          	lbu	a0,-40(a5)
    8000140c:	00002097          	auipc	ra,0x2
    80001410:	730080e7          	jalr	1840(ra) # 80003b3c <__putc>
    80001414:	fe5ff06f          	j	800013f8 <_ZN6Kernel9print_intEiii+0x9c>
            x = -xx;
    80001418:	40a0053b          	negw	a0,a0
            neg = 1;
    8000141c:	00100813          	li	a6,1
            x = -xx;
    80001420:	f81ff06f          	j	800013a0 <_ZN6Kernel9print_intEiii+0x44>
    }
    80001424:	04813083          	ld	ra,72(sp)
    80001428:	04013403          	ld	s0,64(sp)
    8000142c:	03813483          	ld	s1,56(sp)
    80001430:	05010113          	addi	sp,sp,80
    80001434:	00008067          	ret

0000000080001438 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001438:	fe010113          	addi	sp,sp,-32
    8000143c:	00113c23          	sd	ra,24(sp)
    80001440:	00813823          	sd	s0,16(sp)
    80001444:	00913423          	sd	s1,8(sp)
    80001448:	01213023          	sd	s2,0(sp)
    8000144c:	02010413          	addi	s0,sp,32
    80001450:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001454:	03000513          	li	a0,48
    80001458:	00000097          	auipc	ra,0x0
    8000145c:	188080e7          	jalr	392(ra) # 800015e0 <_Znwm>
    80001460:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80001464:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    80001468:	00090a63          	beqz	s2,8000147c <_ZN3TCB12createThreadEPFvvE+0x44>
    8000146c:	00002537          	lui	a0,0x2
    80001470:	00000097          	auipc	ra,0x0
    80001474:	198080e7          	jalr	408(ra) # 80001608 <_Znam>
    80001478:	0080006f          	j	80001480 <_ZN3TCB12createThreadEPFvvE+0x48>
    8000147c:	00000513          	li	a0,0
            finished(false)
    80001480:	00a4b423          	sd	a0,8(s1)
    80001484:	00000797          	auipc	a5,0x0
    80001488:	09878793          	addi	a5,a5,152 # 8000151c <_ZN3TCB13threadWrapperEv>
    8000148c:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001490:	02050863          	beqz	a0,800014c0 <_ZN3TCB12createThreadEPFvvE+0x88>
    80001494:	000027b7          	lui	a5,0x2
    80001498:	00f507b3          	add	a5,a0,a5
            finished(false)
    8000149c:	00f4bc23          	sd	a5,24(s1)
    800014a0:	00200793          	li	a5,2
    800014a4:	02f4b023          	sd	a5,32(s1)
    800014a8:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800014ac:	02090c63          	beqz	s2,800014e4 <_ZN3TCB12createThreadEPFvvE+0xac>
    800014b0:	00048513          	mv	a0,s1
    800014b4:	00000097          	auipc	ra,0x0
    800014b8:	528080e7          	jalr	1320(ra) # 800019dc <_ZN9Scheduler3putEP3TCB>
    800014bc:	0280006f          	j	800014e4 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800014c0:	00000793          	li	a5,0
    800014c4:	fd9ff06f          	j	8000149c <_ZN3TCB12createThreadEPFvvE+0x64>
    800014c8:	00050913          	mv	s2,a0
    800014cc:	00048513          	mv	a0,s1
    800014d0:	00000097          	auipc	ra,0x0
    800014d4:	160080e7          	jalr	352(ra) # 80001630 <_ZdlPv>
    800014d8:	00090513          	mv	a0,s2
    800014dc:	00004097          	auipc	ra,0x4
    800014e0:	34c080e7          	jalr	844(ra) # 80005828 <_Unwind_Resume>
}
    800014e4:	00048513          	mv	a0,s1
    800014e8:	01813083          	ld	ra,24(sp)
    800014ec:	01013403          	ld	s0,16(sp)
    800014f0:	00813483          	ld	s1,8(sp)
    800014f4:	00013903          	ld	s2,0(sp)
    800014f8:	02010113          	addi	sp,sp,32
    800014fc:	00008067          	ret

0000000080001500 <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00813423          	sd	s0,8(sp)
    80001508:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    8000150c:	00000073          	ecall
}
    80001510:	00813403          	ld	s0,8(sp)
    80001514:	01010113          	addi	sp,sp,16
    80001518:	00008067          	ret

000000008000151c <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    8000151c:	fe010113          	addi	sp,sp,-32
    80001520:	00113c23          	sd	ra,24(sp)
    80001524:	00813823          	sd	s0,16(sp)
    80001528:	00913423          	sd	s1,8(sp)
    8000152c:	02010413          	addi	s0,sp,32
        __asm__ volatile("csrc sstatus, %0" : : "r"(mask));
    80001530:	10000793          	li	a5,256
    80001534:	1007b073          	csrc	sstatus,a5
        __asm__ volatile("csrw stval, %0" : : "r"(x));
    }

    static inline void popSppSpie() {
        mc_sstatus(SSTATUS_SPP);
        __asm__ volatile("sret");
    80001538:	10200073          	sret
    Kernel::popSppSpie();
    running->body();
    8000153c:	00003497          	auipc	s1,0x3
    80001540:	1f448493          	addi	s1,s1,500 # 80004730 <_ZN3TCB7runningE>
    80001544:	0004b783          	ld	a5,0(s1)
    80001548:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    8000154c:	000780e7          	jalr	a5
    running->setFinished(true);
    80001550:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80001554:	00100713          	li	a4,1
    80001558:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    8000155c:	00000097          	auipc	ra,0x0
    80001560:	fa4080e7          	jalr	-92(ra) # 80001500 <_ZN3TCB5yieldEv>
}
    80001564:	01813083          	ld	ra,24(sp)
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	00813483          	ld	s1,8(sp)
    80001570:	02010113          	addi	sp,sp,32
    80001574:	00008067          	ret

0000000080001578 <_ZN3TCB8dispatchEv>:
{
    80001578:	fe010113          	addi	sp,sp,-32
    8000157c:	00113c23          	sd	ra,24(sp)
    80001580:	00813823          	sd	s0,16(sp)
    80001584:	00913423          	sd	s1,8(sp)
    80001588:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000158c:	00003497          	auipc	s1,0x3
    80001590:	1a44b483          	ld	s1,420(s1) # 80004730 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80001594:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001598:	02078c63          	beqz	a5,800015d0 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	3d8080e7          	jalr	984(ra) # 80001974 <_ZN9Scheduler3getEv>
    800015a4:	00003797          	auipc	a5,0x3
    800015a8:	18a7b623          	sd	a0,396(a5) # 80004730 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800015ac:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800015b0:	01048513          	addi	a0,s1,16
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	b5c080e7          	jalr	-1188(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800015bc:	01813083          	ld	ra,24(sp)
    800015c0:	01013403          	ld	s0,16(sp)
    800015c4:	00813483          	ld	s1,8(sp)
    800015c8:	02010113          	addi	sp,sp,32
    800015cc:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800015d0:	00048513          	mv	a0,s1
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	408080e7          	jalr	1032(ra) # 800019dc <_ZN9Scheduler3putEP3TCB>
    800015dc:	fc1ff06f          	j	8000159c <_ZN3TCB8dispatchEv+0x24>

00000000800015e0 <_Znwm>:

using size_t = decltype(sizeof(0));


void *operator new(size_t n)
{
    800015e0:	ff010113          	addi	sp,sp,-16
    800015e4:	00113423          	sd	ra,8(sp)
    800015e8:	00813023          	sd	s0,0(sp)
    800015ec:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	b34080e7          	jalr	-1228(ra) # 80001124 <_Z9mem_allocm>
}
    800015f8:	00813083          	ld	ra,8(sp)
    800015fc:	00013403          	ld	s0,0(sp)
    80001600:	01010113          	addi	sp,sp,16
    80001604:	00008067          	ret

0000000080001608 <_Znam>:

void *operator new[](size_t n)
{
    80001608:	ff010113          	addi	sp,sp,-16
    8000160c:	00113423          	sd	ra,8(sp)
    80001610:	00813023          	sd	s0,0(sp)
    80001614:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001618:	00000097          	auipc	ra,0x0
    8000161c:	b0c080e7          	jalr	-1268(ra) # 80001124 <_Z9mem_allocm>
}
    80001620:	00813083          	ld	ra,8(sp)
    80001624:	00013403          	ld	s0,0(sp)
    80001628:	01010113          	addi	sp,sp,16
    8000162c:	00008067          	ret

0000000080001630 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001630:	ff010113          	addi	sp,sp,-16
    80001634:	00113423          	sd	ra,8(sp)
    80001638:	00813023          	sd	s0,0(sp)
    8000163c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001640:	00000097          	auipc	ra,0x0
    80001644:	b14080e7          	jalr	-1260(ra) # 80001154 <_Z8mem_freePv>
}
    80001648:	00813083          	ld	ra,8(sp)
    8000164c:	00013403          	ld	s0,0(sp)
    80001650:	01010113          	addi	sp,sp,16
    80001654:	00008067          	ret

0000000080001658 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001658:	ff010113          	addi	sp,sp,-16
    8000165c:	00113423          	sd	ra,8(sp)
    80001660:	00813023          	sd	s0,0(sp)
    80001664:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	aec080e7          	jalr	-1300(ra) # 80001154 <_Z8mem_freePv>
    80001670:	00813083          	ld	ra,8(sp)
    80001674:	00013403          	ld	s0,0(sp)
    80001678:	01010113          	addi	sp,sp,16
    8000167c:	00008067          	ret

0000000080001680 <_ZN15MemoryAllocator8instanceEv>:
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"

MemoryAllocator& MemoryAllocator::instance() {
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00813423          	sd	s0,8(sp)
    80001688:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    return inst;
}
    8000168c:	00003517          	auipc	a0,0x3
    80001690:	0b450513          	addi	a0,a0,180 # 80004740 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80001694:	00813403          	ld	s0,8(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_ZN15MemoryAllocator9kmem_initEv>:

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    800016a0:	ff010113          	addi	sp,sp,-16
    800016a4:	00813423          	sd	s0,8(sp)
    800016a8:	01010413          	addi	s0,sp,16
    head = (ChunkHeader*) HEAP_START_ADDR;
    800016ac:	00003797          	auipc	a5,0x3
    800016b0:	0147b783          	ld	a5,20(a5) # 800046c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800016b4:	0007b703          	ld	a4,0(a5)
    800016b8:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    800016bc:	00073c23          	sd	zero,24(a4)
    head->prev = nullptr;
    800016c0:	00053783          	ld	a5,0(a0)
    800016c4:	0007b823          	sd	zero,16(a5)
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    800016c8:	00003797          	auipc	a5,0x3
    800016cc:	0107b783          	ld	a5,16(a5) # 800046d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800016d0:	0007b783          	ld	a5,0(a5)
    800016d4:	40e787b3          	sub	a5,a5,a4
    800016d8:	00053703          	ld	a4,0(a0)
    800016dc:	fd878793          	addi	a5,a5,-40
    800016e0:	00f73423          	sd	a5,8(a4)
    head->free = true;
    800016e4:	00053783          	ld	a5,0(a0)
    800016e8:	00100713          	li	a4,1
    800016ec:	02e78023          	sb	a4,32(a5)
    head->magic = MAGIC;
    800016f0:	00053703          	ld	a4,0(a0)
    800016f4:	abcdf7b7          	lui	a5,0xabcdf
    800016f8:	f017879b          	addiw	a5,a5,-255
    800016fc:	00f72023          	sw	a5,0(a4)
    return;
} 
    80001700:	00813403          	ld	s0,8(sp)
    80001704:	01010113          	addi	sp,sp,16
    80001708:	00008067          	ret

000000008000170c <_ZN15MemoryAllocator10kmem_allocEm>:
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;
    8000170c:	0c058863          	beqz	a1,800017dc <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
void* MemoryAllocator::kmem_alloc(size_t size) {
    80001710:	fe010113          	addi	sp,sp,-32
    80001714:	00113c23          	sd	ra,24(sp)
    80001718:	00813823          	sd	s0,16(sp)
    8000171c:	00913423          	sd	s1,8(sp)
    80001720:	01213023          	sd	s2,0(sp)
    80001724:	02010413          	addi	s0,sp,32
    80001728:	00050913          	mv	s2,a0

    // aligned size in bytes
    size_t aligned = size * MEM_BLOCK_SIZE;
    8000172c:	00659493          	slli	s1,a1,0x6

    if (!head) kmem_init();
    80001730:	00053783          	ld	a5,0(a0)
    80001734:	00078663          	beqz	a5,80001740 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    
    ChunkHeader* curr = head;
    80001738:	00093503          	ld	a0,0(s2)
    8000173c:	0340006f          	j	80001770 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    if (!head) kmem_init();
    80001740:	00000097          	auipc	ra,0x0
    80001744:	f60080e7          	jalr	-160(ra) # 800016a0 <_ZN15MemoryAllocator9kmem_initEv>
    80001748:	ff1ff06f          	j	80001738 <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;
    8000174c:	02050023          	sb	zero,32(a0)

                return (void*)((char*)curr + sizeof(ChunkHeader));
    80001750:	02850513          	addi	a0,a0,40

        curr = curr->next;
    }

    return nullptr;
}
    80001754:	01813083          	ld	ra,24(sp)
    80001758:	01013403          	ld	s0,16(sp)
    8000175c:	00813483          	ld	s1,8(sp)
    80001760:	00013903          	ld	s2,0(sp)
    80001764:	02010113          	addi	sp,sp,32
    80001768:	00008067          	ret
        curr = curr->next;
    8000176c:	01853503          	ld	a0,24(a0)
    while (curr) {
    80001770:	fe0502e3          	beqz	a0,80001754 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
        if (curr->free){
    80001774:	02054783          	lbu	a5,32(a0)
    80001778:	fe078ae3          	beqz	a5,8000176c <_ZN15MemoryAllocator10kmem_allocEm+0x60>
            if (curr->size == aligned){
    8000177c:	00853783          	ld	a5,8(a0)
    80001780:	fc9786e3          	beq	a5,s1,8000174c <_ZN15MemoryAllocator10kmem_allocEm+0x40>
            else if (curr->size > aligned + sizeof(ChunkHeader)){
    80001784:	02848713          	addi	a4,s1,40
    80001788:	fef772e3          	bgeu	a4,a5,8000176c <_ZN15MemoryAllocator10kmem_allocEm+0x60>
                size_t remaining = curr->size - aligned;
    8000178c:	409787b3          	sub	a5,a5,s1
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
    80001790:	00e50733          	add	a4,a0,a4
                newChunk->free = true;
    80001794:	00100693          	li	a3,1
    80001798:	02d70023          	sb	a3,32(a4)
                newChunk->size = remaining - sizeof(ChunkHeader);
    8000179c:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd9618>
    800017a0:	00f73423          	sd	a5,8(a4)
                newChunk->next = curr->next;
    800017a4:	01853783          	ld	a5,24(a0)
    800017a8:	00f73c23          	sd	a5,24(a4)
                newChunk->prev = curr;
    800017ac:	00a73823          	sd	a0,16(a4)
                newChunk->magic = MAGIC;
    800017b0:	abcdf7b7          	lui	a5,0xabcdf
    800017b4:	f017879b          	addiw	a5,a5,-255
    800017b8:	00f72023          	sw	a5,0(a4)
                if(curr->next) curr->next->prev = newChunk;
    800017bc:	01853783          	ld	a5,24(a0)
    800017c0:	00078463          	beqz	a5,800017c8 <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    800017c4:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd9650>
                curr->next = newChunk;
    800017c8:	00e53c23          	sd	a4,24(a0)
                curr->size = aligned;
    800017cc:	00953423          	sd	s1,8(a0)
                curr->free = false;
    800017d0:	02050023          	sb	zero,32(a0)
                return (void*)((char*)curr + sizeof(ChunkHeader));
    800017d4:	02850513          	addi	a0,a0,40
    800017d8:	f7dff06f          	j	80001754 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    if (size == 0) return nullptr;
    800017dc:	00000513          	li	a0,0
}
    800017e0:	00008067          	ret

00000000800017e4 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    800017e4:	ff010113          	addi	sp,sp,-16
    800017e8:	00813423          	sd	s0,8(sp)
    800017ec:	01010413          	addi	s0,sp,16
    if(!chunk->free) return;
    800017f0:	0205c783          	lbu	a5,32(a1)
    800017f4:	04078263          	beqz	a5,80001838 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

    //join with next
    if(chunk->next){
    800017f8:	0185b783          	ld	a5,24(a1)
    800017fc:	00078e63          	beqz	a5,80001818 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
    80001800:	0207c703          	lbu	a4,32(a5)
    80001804:	00070a63          	beqz	a4,80001818 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    80001808:	0085b683          	ld	a3,8(a1)
    8000180c:	02868713          	addi	a4,a3,40
    80001810:	00e58733          	add	a4,a1,a4
    80001814:	02e78863          	beq	a5,a4,80001844 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
    80001818:	0105b783          	ld	a5,16(a1)
    8000181c:	00078e63          	beqz	a5,80001838 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
    80001820:	0207c703          	lbu	a4,32(a5)
    80001824:	00070a63          	beqz	a4,80001838 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    80001828:	0087b683          	ld	a3,8(a5)
    8000182c:	02868713          	addi	a4,a3,40
    80001830:	00e78733          	add	a4,a5,a4
    80001834:	02b70a63          	beq	a4,a1,80001868 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
    80001838:	00813403          	ld	s0,8(sp)
    8000183c:	01010113          	addi	sp,sp,16
    80001840:	00008067          	ret
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
    80001844:	0087b703          	ld	a4,8(a5)
    80001848:	00e686b3          	add	a3,a3,a4
    8000184c:	02868693          	addi	a3,a3,40
    80001850:	00d5b423          	sd	a3,8(a1)
            chunk->next = chunk->next->next;
    80001854:	0187b783          	ld	a5,24(a5)
    80001858:	00f5bc23          	sd	a5,24(a1)
            if (chunk->next)
    8000185c:	fa078ee3          	beqz	a5,80001818 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
                chunk->next->prev = chunk;
    80001860:	00b7b823          	sd	a1,16(a5)
    80001864:	fb5ff06f          	j	80001818 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
    80001868:	0085b703          	ld	a4,8(a1)
    8000186c:	00e686b3          	add	a3,a3,a4
    80001870:	02868693          	addi	a3,a3,40
    80001874:	00d7b423          	sd	a3,8(a5)
            chunk->prev->next = chunk->next;
    80001878:	0105b703          	ld	a4,16(a1)
    8000187c:	0185b783          	ld	a5,24(a1)
    80001880:	00f73c23          	sd	a5,24(a4)
            if (chunk->next)
    80001884:	fa078ae3          	beqz	a5,80001838 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
                chunk->next->prev = chunk->prev;
    80001888:	0105b703          	ld	a4,16(a1)
    8000188c:	00e7b823          	sd	a4,16(a5)
            chunk = chunk->prev;
    80001890:	fa9ff06f          	j	80001838 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080001894 <_ZN15MemoryAllocator9kmem_freeEPv>:
    if (!ptr) return -1;
    80001894:	06058c63          	beqz	a1,8000190c <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    80001898:	00058793          	mv	a5,a1
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    8000189c:	00003717          	auipc	a4,0x3
    800018a0:	e2473703          	ld	a4,-476(a4) # 800046c0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800018a4:	00073703          	ld	a4,0(a4)
    800018a8:	06e5e663          	bltu	a1,a4,80001914 <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    800018ac:	00003717          	auipc	a4,0x3
    800018b0:	e2c73703          	ld	a4,-468(a4) # 800046d8 <_GLOBAL_OFFSET_TABLE_+0x20>
    800018b4:	00073703          	ld	a4,0(a4)
    800018b8:	06b76263          	bltu	a4,a1,8000191c <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    800018bc:	fd858593          	addi	a1,a1,-40
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    800018c0:	fd87a683          	lw	a3,-40(a5)
    800018c4:	abcdf737          	lui	a4,0xabcdf
    800018c8:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd9541>
    800018cc:	04e69c63          	bne	a3,a4,80001924 <_ZN15MemoryAllocator9kmem_freeEPv+0x90>
    800018d0:	ff87c703          	lbu	a4,-8(a5)
    800018d4:	04071c63          	bnez	a4,8000192c <_ZN15MemoryAllocator9kmem_freeEPv+0x98>
int MemoryAllocator::kmem_free(void* ptr) {
    800018d8:	ff010113          	addi	sp,sp,-16
    800018dc:	00113423          	sd	ra,8(sp)
    800018e0:	00813023          	sd	s0,0(sp)
    800018e4:	01010413          	addi	s0,sp,16
    chunkHeader->free = true;
    800018e8:	00100713          	li	a4,1
    800018ec:	fee78c23          	sb	a4,-8(a5)
    try_join(chunkHeader);
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	ef4080e7          	jalr	-268(ra) # 800017e4 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    return 0;
    800018f8:	00000513          	li	a0,0
}
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	01010113          	addi	sp,sp,16
    80001908:	00008067          	ret
    if (!ptr) return -1;
    8000190c:	fff00513          	li	a0,-1
    80001910:	00008067          	ret
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80001914:	ffe00513          	li	a0,-2
    80001918:	00008067          	ret
    8000191c:	ffe00513          	li	a0,-2
    80001920:	00008067          	ret
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80001924:	ffd00513          	li	a0,-3
    80001928:	00008067          	ret
    8000192c:	ffd00513          	li	a0,-3
}
    80001930:	00008067          	ret

0000000080001934 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(TCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80001934:	ff010113          	addi	sp,sp,-16
    80001938:	00813423          	sd	s0,8(sp)
    8000193c:	01010413          	addi	s0,sp,16
    80001940:	00100793          	li	a5,1
    80001944:	00f50863          	beq	a0,a5,80001954 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001948:	00813403          	ld	s0,8(sp)
    8000194c:	01010113          	addi	sp,sp,16
    80001950:	00008067          	ret
    80001954:	000107b7          	lui	a5,0x10
    80001958:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000195c:	fef596e3          	bne	a1,a5,80001948 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001960:	00003797          	auipc	a5,0x3
    80001964:	de878793          	addi	a5,a5,-536 # 80004748 <_ZN9Scheduler16readyThreadQueueE>
    80001968:	0007b023          	sd	zero,0(a5)
    8000196c:	0007b423          	sd	zero,8(a5)
    80001970:	fd9ff06f          	j	80001948 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001974 <_ZN9Scheduler3getEv>:
{
    80001974:	fe010113          	addi	sp,sp,-32
    80001978:	00113c23          	sd	ra,24(sp)
    8000197c:	00813823          	sd	s0,16(sp)
    80001980:	00913423          	sd	s1,8(sp)
    80001984:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001988:	00003517          	auipc	a0,0x3
    8000198c:	dc053503          	ld	a0,-576(a0) # 80004748 <_ZN9Scheduler16readyThreadQueueE>
    80001990:	04050263          	beqz	a0,800019d4 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001994:	00853783          	ld	a5,8(a0)
    80001998:	00003717          	auipc	a4,0x3
    8000199c:	daf73823          	sd	a5,-592(a4) # 80004748 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800019a0:	02078463          	beqz	a5,800019c8 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    800019a4:	00053483          	ld	s1,0(a0)
        delete elem;
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	c88080e7          	jalr	-888(ra) # 80001630 <_ZdlPv>
}
    800019b0:	00048513          	mv	a0,s1
    800019b4:	01813083          	ld	ra,24(sp)
    800019b8:	01013403          	ld	s0,16(sp)
    800019bc:	00813483          	ld	s1,8(sp)
    800019c0:	02010113          	addi	sp,sp,32
    800019c4:	00008067          	ret
        if (!head) { tail = 0; }
    800019c8:	00003797          	auipc	a5,0x3
    800019cc:	d807b423          	sd	zero,-632(a5) # 80004750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800019d0:	fd5ff06f          	j	800019a4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800019d4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800019d8:	fd9ff06f          	j	800019b0 <_ZN9Scheduler3getEv+0x3c>

00000000800019dc <_ZN9Scheduler3putEP3TCB>:
{
    800019dc:	fe010113          	addi	sp,sp,-32
    800019e0:	00113c23          	sd	ra,24(sp)
    800019e4:	00813823          	sd	s0,16(sp)
    800019e8:	00913423          	sd	s1,8(sp)
    800019ec:	02010413          	addi	s0,sp,32
    800019f0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800019f4:	01000513          	li	a0,16
    800019f8:	00000097          	auipc	ra,0x0
    800019fc:	be8080e7          	jalr	-1048(ra) # 800015e0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001a00:	00953023          	sd	s1,0(a0)
    80001a04:	00053423          	sd	zero,8(a0)
        if (tail)
    80001a08:	00003797          	auipc	a5,0x3
    80001a0c:	d487b783          	ld	a5,-696(a5) # 80004750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001a10:	02078263          	beqz	a5,80001a34 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80001a14:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001a18:	00003797          	auipc	a5,0x3
    80001a1c:	d2a7bc23          	sd	a0,-712(a5) # 80004750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001a20:	01813083          	ld	ra,24(sp)
    80001a24:	01013403          	ld	s0,16(sp)
    80001a28:	00813483          	ld	s1,8(sp)
    80001a2c:	02010113          	addi	sp,sp,32
    80001a30:	00008067          	ret
            head = tail = elem;
    80001a34:	00003797          	auipc	a5,0x3
    80001a38:	d1478793          	addi	a5,a5,-748 # 80004748 <_ZN9Scheduler16readyThreadQueueE>
    80001a3c:	00a7b423          	sd	a0,8(a5)
    80001a40:	00a7b023          	sd	a0,0(a5)
    80001a44:	fddff06f          	j	80001a20 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080001a48 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001a48:	ff010113          	addi	sp,sp,-16
    80001a4c:	00113423          	sd	ra,8(sp)
    80001a50:	00813023          	sd	s0,0(sp)
    80001a54:	01010413          	addi	s0,sp,16
    80001a58:	000105b7          	lui	a1,0x10
    80001a5c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001a60:	00100513          	li	a0,1
    80001a64:	00000097          	auipc	ra,0x0
    80001a68:	ed0080e7          	jalr	-304(ra) # 80001934 <_Z41__static_initialization_and_destruction_0ii>
    80001a6c:	00813083          	ld	ra,8(sp)
    80001a70:	00013403          	ld	s0,0(sp)
    80001a74:	01010113          	addi	sp,sp,16
    80001a78:	00008067          	ret

0000000080001a7c <start>:
    80001a7c:	ff010113          	addi	sp,sp,-16
    80001a80:	00813423          	sd	s0,8(sp)
    80001a84:	01010413          	addi	s0,sp,16
    80001a88:	300027f3          	csrr	a5,mstatus
    80001a8c:	ffffe737          	lui	a4,0xffffe
    80001a90:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8e3f>
    80001a94:	00e7f7b3          	and	a5,a5,a4
    80001a98:	00001737          	lui	a4,0x1
    80001a9c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80001aa0:	00e7e7b3          	or	a5,a5,a4
    80001aa4:	30079073          	csrw	mstatus,a5
    80001aa8:	00000797          	auipc	a5,0x0
    80001aac:	16078793          	addi	a5,a5,352 # 80001c08 <system_main>
    80001ab0:	34179073          	csrw	mepc,a5
    80001ab4:	00000793          	li	a5,0
    80001ab8:	18079073          	csrw	satp,a5
    80001abc:	000107b7          	lui	a5,0x10
    80001ac0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001ac4:	30279073          	csrw	medeleg,a5
    80001ac8:	30379073          	csrw	mideleg,a5
    80001acc:	104027f3          	csrr	a5,sie
    80001ad0:	2227e793          	ori	a5,a5,546
    80001ad4:	10479073          	csrw	sie,a5
    80001ad8:	fff00793          	li	a5,-1
    80001adc:	00a7d793          	srli	a5,a5,0xa
    80001ae0:	3b079073          	csrw	pmpaddr0,a5
    80001ae4:	00f00793          	li	a5,15
    80001ae8:	3a079073          	csrw	pmpcfg0,a5
    80001aec:	f14027f3          	csrr	a5,mhartid
    80001af0:	0200c737          	lui	a4,0x200c
    80001af4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001af8:	0007869b          	sext.w	a3,a5
    80001afc:	00269713          	slli	a4,a3,0x2
    80001b00:	000f4637          	lui	a2,0xf4
    80001b04:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001b08:	00d70733          	add	a4,a4,a3
    80001b0c:	0037979b          	slliw	a5,a5,0x3
    80001b10:	020046b7          	lui	a3,0x2004
    80001b14:	00d787b3          	add	a5,a5,a3
    80001b18:	00c585b3          	add	a1,a1,a2
    80001b1c:	00371693          	slli	a3,a4,0x3
    80001b20:	00003717          	auipc	a4,0x3
    80001b24:	c4070713          	addi	a4,a4,-960 # 80004760 <timer_scratch>
    80001b28:	00b7b023          	sd	a1,0(a5)
    80001b2c:	00d70733          	add	a4,a4,a3
    80001b30:	00f73c23          	sd	a5,24(a4)
    80001b34:	02c73023          	sd	a2,32(a4)
    80001b38:	34071073          	csrw	mscratch,a4
    80001b3c:	00000797          	auipc	a5,0x0
    80001b40:	6e478793          	addi	a5,a5,1764 # 80002220 <timervec>
    80001b44:	30579073          	csrw	mtvec,a5
    80001b48:	300027f3          	csrr	a5,mstatus
    80001b4c:	0087e793          	ori	a5,a5,8
    80001b50:	30079073          	csrw	mstatus,a5
    80001b54:	304027f3          	csrr	a5,mie
    80001b58:	0807e793          	ori	a5,a5,128
    80001b5c:	30479073          	csrw	mie,a5
    80001b60:	f14027f3          	csrr	a5,mhartid
    80001b64:	0007879b          	sext.w	a5,a5
    80001b68:	00078213          	mv	tp,a5
    80001b6c:	30200073          	mret
    80001b70:	00813403          	ld	s0,8(sp)
    80001b74:	01010113          	addi	sp,sp,16
    80001b78:	00008067          	ret

0000000080001b7c <timerinit>:
    80001b7c:	ff010113          	addi	sp,sp,-16
    80001b80:	00813423          	sd	s0,8(sp)
    80001b84:	01010413          	addi	s0,sp,16
    80001b88:	f14027f3          	csrr	a5,mhartid
    80001b8c:	0200c737          	lui	a4,0x200c
    80001b90:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001b94:	0007869b          	sext.w	a3,a5
    80001b98:	00269713          	slli	a4,a3,0x2
    80001b9c:	000f4637          	lui	a2,0xf4
    80001ba0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001ba4:	00d70733          	add	a4,a4,a3
    80001ba8:	0037979b          	slliw	a5,a5,0x3
    80001bac:	020046b7          	lui	a3,0x2004
    80001bb0:	00d787b3          	add	a5,a5,a3
    80001bb4:	00c585b3          	add	a1,a1,a2
    80001bb8:	00371693          	slli	a3,a4,0x3
    80001bbc:	00003717          	auipc	a4,0x3
    80001bc0:	ba470713          	addi	a4,a4,-1116 # 80004760 <timer_scratch>
    80001bc4:	00b7b023          	sd	a1,0(a5)
    80001bc8:	00d70733          	add	a4,a4,a3
    80001bcc:	00f73c23          	sd	a5,24(a4)
    80001bd0:	02c73023          	sd	a2,32(a4)
    80001bd4:	34071073          	csrw	mscratch,a4
    80001bd8:	00000797          	auipc	a5,0x0
    80001bdc:	64878793          	addi	a5,a5,1608 # 80002220 <timervec>
    80001be0:	30579073          	csrw	mtvec,a5
    80001be4:	300027f3          	csrr	a5,mstatus
    80001be8:	0087e793          	ori	a5,a5,8
    80001bec:	30079073          	csrw	mstatus,a5
    80001bf0:	304027f3          	csrr	a5,mie
    80001bf4:	0807e793          	ori	a5,a5,128
    80001bf8:	30479073          	csrw	mie,a5
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <system_main>:
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00813823          	sd	s0,16(sp)
    80001c10:	00913423          	sd	s1,8(sp)
    80001c14:	00113c23          	sd	ra,24(sp)
    80001c18:	02010413          	addi	s0,sp,32
    80001c1c:	00000097          	auipc	ra,0x0
    80001c20:	0c4080e7          	jalr	196(ra) # 80001ce0 <cpuid>
    80001c24:	00003497          	auipc	s1,0x3
    80001c28:	adc48493          	addi	s1,s1,-1316 # 80004700 <started>
    80001c2c:	02050263          	beqz	a0,80001c50 <system_main+0x48>
    80001c30:	0004a783          	lw	a5,0(s1)
    80001c34:	0007879b          	sext.w	a5,a5
    80001c38:	fe078ce3          	beqz	a5,80001c30 <system_main+0x28>
    80001c3c:	0ff0000f          	fence
    80001c40:	00002517          	auipc	a0,0x2
    80001c44:	42850513          	addi	a0,a0,1064 # 80004068 <CONSOLE_STATUS+0x58>
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	a74080e7          	jalr	-1420(ra) # 800026bc <panic>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	9c8080e7          	jalr	-1592(ra) # 80002618 <consoleinit>
    80001c58:	00001097          	auipc	ra,0x1
    80001c5c:	154080e7          	jalr	340(ra) # 80002dac <printfinit>
    80001c60:	00002517          	auipc	a0,0x2
    80001c64:	4e850513          	addi	a0,a0,1256 # 80004148 <CONSOLE_STATUS+0x138>
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	ab0080e7          	jalr	-1360(ra) # 80002718 <__printf>
    80001c70:	00002517          	auipc	a0,0x2
    80001c74:	3c850513          	addi	a0,a0,968 # 80004038 <CONSOLE_STATUS+0x28>
    80001c78:	00001097          	auipc	ra,0x1
    80001c7c:	aa0080e7          	jalr	-1376(ra) # 80002718 <__printf>
    80001c80:	00002517          	auipc	a0,0x2
    80001c84:	4c850513          	addi	a0,a0,1224 # 80004148 <CONSOLE_STATUS+0x138>
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	a90080e7          	jalr	-1392(ra) # 80002718 <__printf>
    80001c90:	00001097          	auipc	ra,0x1
    80001c94:	4a8080e7          	jalr	1192(ra) # 80003138 <kinit>
    80001c98:	00000097          	auipc	ra,0x0
    80001c9c:	148080e7          	jalr	328(ra) # 80001de0 <trapinit>
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	16c080e7          	jalr	364(ra) # 80001e0c <trapinithart>
    80001ca8:	00000097          	auipc	ra,0x0
    80001cac:	5b8080e7          	jalr	1464(ra) # 80002260 <plicinit>
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	5d8080e7          	jalr	1496(ra) # 80002288 <plicinithart>
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	078080e7          	jalr	120(ra) # 80001d30 <userinit>
    80001cc0:	0ff0000f          	fence
    80001cc4:	00100793          	li	a5,1
    80001cc8:	00002517          	auipc	a0,0x2
    80001ccc:	38850513          	addi	a0,a0,904 # 80004050 <CONSOLE_STATUS+0x40>
    80001cd0:	00f4a023          	sw	a5,0(s1)
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	a44080e7          	jalr	-1468(ra) # 80002718 <__printf>
    80001cdc:	0000006f          	j	80001cdc <system_main+0xd4>

0000000080001ce0 <cpuid>:
    80001ce0:	ff010113          	addi	sp,sp,-16
    80001ce4:	00813423          	sd	s0,8(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    80001cec:	00020513          	mv	a0,tp
    80001cf0:	00813403          	ld	s0,8(sp)
    80001cf4:	0005051b          	sext.w	a0,a0
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <mycpu>:
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00813423          	sd	s0,8(sp)
    80001d08:	01010413          	addi	s0,sp,16
    80001d0c:	00020793          	mv	a5,tp
    80001d10:	00813403          	ld	s0,8(sp)
    80001d14:	0007879b          	sext.w	a5,a5
    80001d18:	00779793          	slli	a5,a5,0x7
    80001d1c:	00004517          	auipc	a0,0x4
    80001d20:	a7450513          	addi	a0,a0,-1420 # 80005790 <cpus>
    80001d24:	00f50533          	add	a0,a0,a5
    80001d28:	01010113          	addi	sp,sp,16
    80001d2c:	00008067          	ret

0000000080001d30 <userinit>:
    80001d30:	ff010113          	addi	sp,sp,-16
    80001d34:	00813423          	sd	s0,8(sp)
    80001d38:	01010413          	addi	s0,sp,16
    80001d3c:	00813403          	ld	s0,8(sp)
    80001d40:	01010113          	addi	sp,sp,16
    80001d44:	fffff317          	auipc	t1,0xfffff
    80001d48:	57430067          	jr	1396(t1) # 800012b8 <main>

0000000080001d4c <either_copyout>:
    80001d4c:	ff010113          	addi	sp,sp,-16
    80001d50:	00813023          	sd	s0,0(sp)
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	01010413          	addi	s0,sp,16
    80001d5c:	02051663          	bnez	a0,80001d88 <either_copyout+0x3c>
    80001d60:	00058513          	mv	a0,a1
    80001d64:	00060593          	mv	a1,a2
    80001d68:	0006861b          	sext.w	a2,a3
    80001d6c:	00002097          	auipc	ra,0x2
    80001d70:	c58080e7          	jalr	-936(ra) # 800039c4 <__memmove>
    80001d74:	00813083          	ld	ra,8(sp)
    80001d78:	00013403          	ld	s0,0(sp)
    80001d7c:	00000513          	li	a0,0
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret
    80001d88:	00002517          	auipc	a0,0x2
    80001d8c:	30850513          	addi	a0,a0,776 # 80004090 <CONSOLE_STATUS+0x80>
    80001d90:	00001097          	auipc	ra,0x1
    80001d94:	92c080e7          	jalr	-1748(ra) # 800026bc <panic>

0000000080001d98 <either_copyin>:
    80001d98:	ff010113          	addi	sp,sp,-16
    80001d9c:	00813023          	sd	s0,0(sp)
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	01010413          	addi	s0,sp,16
    80001da8:	02059463          	bnez	a1,80001dd0 <either_copyin+0x38>
    80001dac:	00060593          	mv	a1,a2
    80001db0:	0006861b          	sext.w	a2,a3
    80001db4:	00002097          	auipc	ra,0x2
    80001db8:	c10080e7          	jalr	-1008(ra) # 800039c4 <__memmove>
    80001dbc:	00813083          	ld	ra,8(sp)
    80001dc0:	00013403          	ld	s0,0(sp)
    80001dc4:	00000513          	li	a0,0
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret
    80001dd0:	00002517          	auipc	a0,0x2
    80001dd4:	2e850513          	addi	a0,a0,744 # 800040b8 <CONSOLE_STATUS+0xa8>
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	8e4080e7          	jalr	-1820(ra) # 800026bc <panic>

0000000080001de0 <trapinit>:
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00813423          	sd	s0,8(sp)
    80001de8:	01010413          	addi	s0,sp,16
    80001dec:	00813403          	ld	s0,8(sp)
    80001df0:	00002597          	auipc	a1,0x2
    80001df4:	2f058593          	addi	a1,a1,752 # 800040e0 <CONSOLE_STATUS+0xd0>
    80001df8:	00004517          	auipc	a0,0x4
    80001dfc:	a1850513          	addi	a0,a0,-1512 # 80005810 <tickslock>
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00001317          	auipc	t1,0x1
    80001e08:	5c430067          	jr	1476(t1) # 800033c8 <initlock>

0000000080001e0c <trapinithart>:
    80001e0c:	ff010113          	addi	sp,sp,-16
    80001e10:	00813423          	sd	s0,8(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	00000797          	auipc	a5,0x0
    80001e1c:	2f878793          	addi	a5,a5,760 # 80002110 <kernelvec>
    80001e20:	10579073          	csrw	stvec,a5
    80001e24:	00813403          	ld	s0,8(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <usertrap>:
    80001e30:	ff010113          	addi	sp,sp,-16
    80001e34:	00813423          	sd	s0,8(sp)
    80001e38:	01010413          	addi	s0,sp,16
    80001e3c:	00813403          	ld	s0,8(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <usertrapret>:
    80001e48:	ff010113          	addi	sp,sp,-16
    80001e4c:	00813423          	sd	s0,8(sp)
    80001e50:	01010413          	addi	s0,sp,16
    80001e54:	00813403          	ld	s0,8(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <kerneltrap>:
    80001e60:	fe010113          	addi	sp,sp,-32
    80001e64:	00813823          	sd	s0,16(sp)
    80001e68:	00113c23          	sd	ra,24(sp)
    80001e6c:	00913423          	sd	s1,8(sp)
    80001e70:	02010413          	addi	s0,sp,32
    80001e74:	142025f3          	csrr	a1,scause
    80001e78:	100027f3          	csrr	a5,sstatus
    80001e7c:	0027f793          	andi	a5,a5,2
    80001e80:	10079c63          	bnez	a5,80001f98 <kerneltrap+0x138>
    80001e84:	142027f3          	csrr	a5,scause
    80001e88:	0207ce63          	bltz	a5,80001ec4 <kerneltrap+0x64>
    80001e8c:	00002517          	auipc	a0,0x2
    80001e90:	29c50513          	addi	a0,a0,668 # 80004128 <CONSOLE_STATUS+0x118>
    80001e94:	00001097          	auipc	ra,0x1
    80001e98:	884080e7          	jalr	-1916(ra) # 80002718 <__printf>
    80001e9c:	141025f3          	csrr	a1,sepc
    80001ea0:	14302673          	csrr	a2,stval
    80001ea4:	00002517          	auipc	a0,0x2
    80001ea8:	29450513          	addi	a0,a0,660 # 80004138 <CONSOLE_STATUS+0x128>
    80001eac:	00001097          	auipc	ra,0x1
    80001eb0:	86c080e7          	jalr	-1940(ra) # 80002718 <__printf>
    80001eb4:	00002517          	auipc	a0,0x2
    80001eb8:	29c50513          	addi	a0,a0,668 # 80004150 <CONSOLE_STATUS+0x140>
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	800080e7          	jalr	-2048(ra) # 800026bc <panic>
    80001ec4:	0ff7f713          	andi	a4,a5,255
    80001ec8:	00900693          	li	a3,9
    80001ecc:	04d70063          	beq	a4,a3,80001f0c <kerneltrap+0xac>
    80001ed0:	fff00713          	li	a4,-1
    80001ed4:	03f71713          	slli	a4,a4,0x3f
    80001ed8:	00170713          	addi	a4,a4,1
    80001edc:	fae798e3          	bne	a5,a4,80001e8c <kerneltrap+0x2c>
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	e00080e7          	jalr	-512(ra) # 80001ce0 <cpuid>
    80001ee8:	06050663          	beqz	a0,80001f54 <kerneltrap+0xf4>
    80001eec:	144027f3          	csrr	a5,sip
    80001ef0:	ffd7f793          	andi	a5,a5,-3
    80001ef4:	14479073          	csrw	sip,a5
    80001ef8:	01813083          	ld	ra,24(sp)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	00813483          	ld	s1,8(sp)
    80001f04:	02010113          	addi	sp,sp,32
    80001f08:	00008067          	ret
    80001f0c:	00000097          	auipc	ra,0x0
    80001f10:	3c8080e7          	jalr	968(ra) # 800022d4 <plic_claim>
    80001f14:	00a00793          	li	a5,10
    80001f18:	00050493          	mv	s1,a0
    80001f1c:	06f50863          	beq	a0,a5,80001f8c <kerneltrap+0x12c>
    80001f20:	fc050ce3          	beqz	a0,80001ef8 <kerneltrap+0x98>
    80001f24:	00050593          	mv	a1,a0
    80001f28:	00002517          	auipc	a0,0x2
    80001f2c:	1e050513          	addi	a0,a0,480 # 80004108 <CONSOLE_STATUS+0xf8>
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	7e8080e7          	jalr	2024(ra) # 80002718 <__printf>
    80001f38:	01013403          	ld	s0,16(sp)
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	00048513          	mv	a0,s1
    80001f44:	00813483          	ld	s1,8(sp)
    80001f48:	02010113          	addi	sp,sp,32
    80001f4c:	00000317          	auipc	t1,0x0
    80001f50:	3c030067          	jr	960(t1) # 8000230c <plic_complete>
    80001f54:	00004517          	auipc	a0,0x4
    80001f58:	8bc50513          	addi	a0,a0,-1860 # 80005810 <tickslock>
    80001f5c:	00001097          	auipc	ra,0x1
    80001f60:	490080e7          	jalr	1168(ra) # 800033ec <acquire>
    80001f64:	00002717          	auipc	a4,0x2
    80001f68:	7a070713          	addi	a4,a4,1952 # 80004704 <ticks>
    80001f6c:	00072783          	lw	a5,0(a4)
    80001f70:	00004517          	auipc	a0,0x4
    80001f74:	8a050513          	addi	a0,a0,-1888 # 80005810 <tickslock>
    80001f78:	0017879b          	addiw	a5,a5,1
    80001f7c:	00f72023          	sw	a5,0(a4)
    80001f80:	00001097          	auipc	ra,0x1
    80001f84:	538080e7          	jalr	1336(ra) # 800034b8 <release>
    80001f88:	f65ff06f          	j	80001eec <kerneltrap+0x8c>
    80001f8c:	00001097          	auipc	ra,0x1
    80001f90:	094080e7          	jalr	148(ra) # 80003020 <uartintr>
    80001f94:	fa5ff06f          	j	80001f38 <kerneltrap+0xd8>
    80001f98:	00002517          	auipc	a0,0x2
    80001f9c:	15050513          	addi	a0,a0,336 # 800040e8 <CONSOLE_STATUS+0xd8>
    80001fa0:	00000097          	auipc	ra,0x0
    80001fa4:	71c080e7          	jalr	1820(ra) # 800026bc <panic>

0000000080001fa8 <clockintr>:
    80001fa8:	fe010113          	addi	sp,sp,-32
    80001fac:	00813823          	sd	s0,16(sp)
    80001fb0:	00913423          	sd	s1,8(sp)
    80001fb4:	00113c23          	sd	ra,24(sp)
    80001fb8:	02010413          	addi	s0,sp,32
    80001fbc:	00004497          	auipc	s1,0x4
    80001fc0:	85448493          	addi	s1,s1,-1964 # 80005810 <tickslock>
    80001fc4:	00048513          	mv	a0,s1
    80001fc8:	00001097          	auipc	ra,0x1
    80001fcc:	424080e7          	jalr	1060(ra) # 800033ec <acquire>
    80001fd0:	00002717          	auipc	a4,0x2
    80001fd4:	73470713          	addi	a4,a4,1844 # 80004704 <ticks>
    80001fd8:	00072783          	lw	a5,0(a4)
    80001fdc:	01013403          	ld	s0,16(sp)
    80001fe0:	01813083          	ld	ra,24(sp)
    80001fe4:	00048513          	mv	a0,s1
    80001fe8:	0017879b          	addiw	a5,a5,1
    80001fec:	00813483          	ld	s1,8(sp)
    80001ff0:	00f72023          	sw	a5,0(a4)
    80001ff4:	02010113          	addi	sp,sp,32
    80001ff8:	00001317          	auipc	t1,0x1
    80001ffc:	4c030067          	jr	1216(t1) # 800034b8 <release>

0000000080002000 <devintr>:
    80002000:	142027f3          	csrr	a5,scause
    80002004:	00000513          	li	a0,0
    80002008:	0007c463          	bltz	a5,80002010 <devintr+0x10>
    8000200c:	00008067          	ret
    80002010:	fe010113          	addi	sp,sp,-32
    80002014:	00813823          	sd	s0,16(sp)
    80002018:	00113c23          	sd	ra,24(sp)
    8000201c:	00913423          	sd	s1,8(sp)
    80002020:	02010413          	addi	s0,sp,32
    80002024:	0ff7f713          	andi	a4,a5,255
    80002028:	00900693          	li	a3,9
    8000202c:	04d70c63          	beq	a4,a3,80002084 <devintr+0x84>
    80002030:	fff00713          	li	a4,-1
    80002034:	03f71713          	slli	a4,a4,0x3f
    80002038:	00170713          	addi	a4,a4,1
    8000203c:	00e78c63          	beq	a5,a4,80002054 <devintr+0x54>
    80002040:	01813083          	ld	ra,24(sp)
    80002044:	01013403          	ld	s0,16(sp)
    80002048:	00813483          	ld	s1,8(sp)
    8000204c:	02010113          	addi	sp,sp,32
    80002050:	00008067          	ret
    80002054:	00000097          	auipc	ra,0x0
    80002058:	c8c080e7          	jalr	-884(ra) # 80001ce0 <cpuid>
    8000205c:	06050663          	beqz	a0,800020c8 <devintr+0xc8>
    80002060:	144027f3          	csrr	a5,sip
    80002064:	ffd7f793          	andi	a5,a5,-3
    80002068:	14479073          	csrw	sip,a5
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	00200513          	li	a0,2
    8000207c:	02010113          	addi	sp,sp,32
    80002080:	00008067          	ret
    80002084:	00000097          	auipc	ra,0x0
    80002088:	250080e7          	jalr	592(ra) # 800022d4 <plic_claim>
    8000208c:	00a00793          	li	a5,10
    80002090:	00050493          	mv	s1,a0
    80002094:	06f50663          	beq	a0,a5,80002100 <devintr+0x100>
    80002098:	00100513          	li	a0,1
    8000209c:	fa0482e3          	beqz	s1,80002040 <devintr+0x40>
    800020a0:	00048593          	mv	a1,s1
    800020a4:	00002517          	auipc	a0,0x2
    800020a8:	06450513          	addi	a0,a0,100 # 80004108 <CONSOLE_STATUS+0xf8>
    800020ac:	00000097          	auipc	ra,0x0
    800020b0:	66c080e7          	jalr	1644(ra) # 80002718 <__printf>
    800020b4:	00048513          	mv	a0,s1
    800020b8:	00000097          	auipc	ra,0x0
    800020bc:	254080e7          	jalr	596(ra) # 8000230c <plic_complete>
    800020c0:	00100513          	li	a0,1
    800020c4:	f7dff06f          	j	80002040 <devintr+0x40>
    800020c8:	00003517          	auipc	a0,0x3
    800020cc:	74850513          	addi	a0,a0,1864 # 80005810 <tickslock>
    800020d0:	00001097          	auipc	ra,0x1
    800020d4:	31c080e7          	jalr	796(ra) # 800033ec <acquire>
    800020d8:	00002717          	auipc	a4,0x2
    800020dc:	62c70713          	addi	a4,a4,1580 # 80004704 <ticks>
    800020e0:	00072783          	lw	a5,0(a4)
    800020e4:	00003517          	auipc	a0,0x3
    800020e8:	72c50513          	addi	a0,a0,1836 # 80005810 <tickslock>
    800020ec:	0017879b          	addiw	a5,a5,1
    800020f0:	00f72023          	sw	a5,0(a4)
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	3c4080e7          	jalr	964(ra) # 800034b8 <release>
    800020fc:	f65ff06f          	j	80002060 <devintr+0x60>
    80002100:	00001097          	auipc	ra,0x1
    80002104:	f20080e7          	jalr	-224(ra) # 80003020 <uartintr>
    80002108:	fadff06f          	j	800020b4 <devintr+0xb4>
    8000210c:	0000                	unimp
	...

0000000080002110 <kernelvec>:
    80002110:	f0010113          	addi	sp,sp,-256
    80002114:	00113023          	sd	ra,0(sp)
    80002118:	00213423          	sd	sp,8(sp)
    8000211c:	00313823          	sd	gp,16(sp)
    80002120:	00413c23          	sd	tp,24(sp)
    80002124:	02513023          	sd	t0,32(sp)
    80002128:	02613423          	sd	t1,40(sp)
    8000212c:	02713823          	sd	t2,48(sp)
    80002130:	02813c23          	sd	s0,56(sp)
    80002134:	04913023          	sd	s1,64(sp)
    80002138:	04a13423          	sd	a0,72(sp)
    8000213c:	04b13823          	sd	a1,80(sp)
    80002140:	04c13c23          	sd	a2,88(sp)
    80002144:	06d13023          	sd	a3,96(sp)
    80002148:	06e13423          	sd	a4,104(sp)
    8000214c:	06f13823          	sd	a5,112(sp)
    80002150:	07013c23          	sd	a6,120(sp)
    80002154:	09113023          	sd	a7,128(sp)
    80002158:	09213423          	sd	s2,136(sp)
    8000215c:	09313823          	sd	s3,144(sp)
    80002160:	09413c23          	sd	s4,152(sp)
    80002164:	0b513023          	sd	s5,160(sp)
    80002168:	0b613423          	sd	s6,168(sp)
    8000216c:	0b713823          	sd	s7,176(sp)
    80002170:	0b813c23          	sd	s8,184(sp)
    80002174:	0d913023          	sd	s9,192(sp)
    80002178:	0da13423          	sd	s10,200(sp)
    8000217c:	0db13823          	sd	s11,208(sp)
    80002180:	0dc13c23          	sd	t3,216(sp)
    80002184:	0fd13023          	sd	t4,224(sp)
    80002188:	0fe13423          	sd	t5,232(sp)
    8000218c:	0ff13823          	sd	t6,240(sp)
    80002190:	cd1ff0ef          	jal	ra,80001e60 <kerneltrap>
    80002194:	00013083          	ld	ra,0(sp)
    80002198:	00813103          	ld	sp,8(sp)
    8000219c:	01013183          	ld	gp,16(sp)
    800021a0:	02013283          	ld	t0,32(sp)
    800021a4:	02813303          	ld	t1,40(sp)
    800021a8:	03013383          	ld	t2,48(sp)
    800021ac:	03813403          	ld	s0,56(sp)
    800021b0:	04013483          	ld	s1,64(sp)
    800021b4:	04813503          	ld	a0,72(sp)
    800021b8:	05013583          	ld	a1,80(sp)
    800021bc:	05813603          	ld	a2,88(sp)
    800021c0:	06013683          	ld	a3,96(sp)
    800021c4:	06813703          	ld	a4,104(sp)
    800021c8:	07013783          	ld	a5,112(sp)
    800021cc:	07813803          	ld	a6,120(sp)
    800021d0:	08013883          	ld	a7,128(sp)
    800021d4:	08813903          	ld	s2,136(sp)
    800021d8:	09013983          	ld	s3,144(sp)
    800021dc:	09813a03          	ld	s4,152(sp)
    800021e0:	0a013a83          	ld	s5,160(sp)
    800021e4:	0a813b03          	ld	s6,168(sp)
    800021e8:	0b013b83          	ld	s7,176(sp)
    800021ec:	0b813c03          	ld	s8,184(sp)
    800021f0:	0c013c83          	ld	s9,192(sp)
    800021f4:	0c813d03          	ld	s10,200(sp)
    800021f8:	0d013d83          	ld	s11,208(sp)
    800021fc:	0d813e03          	ld	t3,216(sp)
    80002200:	0e013e83          	ld	t4,224(sp)
    80002204:	0e813f03          	ld	t5,232(sp)
    80002208:	0f013f83          	ld	t6,240(sp)
    8000220c:	10010113          	addi	sp,sp,256
    80002210:	10200073          	sret
    80002214:	00000013          	nop
    80002218:	00000013          	nop
    8000221c:	00000013          	nop

0000000080002220 <timervec>:
    80002220:	34051573          	csrrw	a0,mscratch,a0
    80002224:	00b53023          	sd	a1,0(a0)
    80002228:	00c53423          	sd	a2,8(a0)
    8000222c:	00d53823          	sd	a3,16(a0)
    80002230:	01853583          	ld	a1,24(a0)
    80002234:	02053603          	ld	a2,32(a0)
    80002238:	0005b683          	ld	a3,0(a1)
    8000223c:	00c686b3          	add	a3,a3,a2
    80002240:	00d5b023          	sd	a3,0(a1)
    80002244:	00200593          	li	a1,2
    80002248:	14459073          	csrw	sip,a1
    8000224c:	01053683          	ld	a3,16(a0)
    80002250:	00853603          	ld	a2,8(a0)
    80002254:	00053583          	ld	a1,0(a0)
    80002258:	34051573          	csrrw	a0,mscratch,a0
    8000225c:	30200073          	mret

0000000080002260 <plicinit>:
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    8000226c:	00813403          	ld	s0,8(sp)
    80002270:	0c0007b7          	lui	a5,0xc000
    80002274:	00100713          	li	a4,1
    80002278:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000227c:	00e7a223          	sw	a4,4(a5)
    80002280:	01010113          	addi	sp,sp,16
    80002284:	00008067          	ret

0000000080002288 <plicinithart>:
    80002288:	ff010113          	addi	sp,sp,-16
    8000228c:	00813023          	sd	s0,0(sp)
    80002290:	00113423          	sd	ra,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    80002298:	00000097          	auipc	ra,0x0
    8000229c:	a48080e7          	jalr	-1464(ra) # 80001ce0 <cpuid>
    800022a0:	0085171b          	slliw	a4,a0,0x8
    800022a4:	0c0027b7          	lui	a5,0xc002
    800022a8:	00e787b3          	add	a5,a5,a4
    800022ac:	40200713          	li	a4,1026
    800022b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	00d5151b          	slliw	a0,a0,0xd
    800022c0:	0c2017b7          	lui	a5,0xc201
    800022c4:	00a78533          	add	a0,a5,a0
    800022c8:	00052023          	sw	zero,0(a0)
    800022cc:	01010113          	addi	sp,sp,16
    800022d0:	00008067          	ret

00000000800022d4 <plic_claim>:
    800022d4:	ff010113          	addi	sp,sp,-16
    800022d8:	00813023          	sd	s0,0(sp)
    800022dc:	00113423          	sd	ra,8(sp)
    800022e0:	01010413          	addi	s0,sp,16
    800022e4:	00000097          	auipc	ra,0x0
    800022e8:	9fc080e7          	jalr	-1540(ra) # 80001ce0 <cpuid>
    800022ec:	00813083          	ld	ra,8(sp)
    800022f0:	00013403          	ld	s0,0(sp)
    800022f4:	00d5151b          	slliw	a0,a0,0xd
    800022f8:	0c2017b7          	lui	a5,0xc201
    800022fc:	00a78533          	add	a0,a5,a0
    80002300:	00452503          	lw	a0,4(a0)
    80002304:	01010113          	addi	sp,sp,16
    80002308:	00008067          	ret

000000008000230c <plic_complete>:
    8000230c:	fe010113          	addi	sp,sp,-32
    80002310:	00813823          	sd	s0,16(sp)
    80002314:	00913423          	sd	s1,8(sp)
    80002318:	00113c23          	sd	ra,24(sp)
    8000231c:	02010413          	addi	s0,sp,32
    80002320:	00050493          	mv	s1,a0
    80002324:	00000097          	auipc	ra,0x0
    80002328:	9bc080e7          	jalr	-1604(ra) # 80001ce0 <cpuid>
    8000232c:	01813083          	ld	ra,24(sp)
    80002330:	01013403          	ld	s0,16(sp)
    80002334:	00d5179b          	slliw	a5,a0,0xd
    80002338:	0c201737          	lui	a4,0xc201
    8000233c:	00f707b3          	add	a5,a4,a5
    80002340:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80002344:	00813483          	ld	s1,8(sp)
    80002348:	02010113          	addi	sp,sp,32
    8000234c:	00008067          	ret

0000000080002350 <consolewrite>:
    80002350:	fb010113          	addi	sp,sp,-80
    80002354:	04813023          	sd	s0,64(sp)
    80002358:	04113423          	sd	ra,72(sp)
    8000235c:	02913c23          	sd	s1,56(sp)
    80002360:	03213823          	sd	s2,48(sp)
    80002364:	03313423          	sd	s3,40(sp)
    80002368:	03413023          	sd	s4,32(sp)
    8000236c:	01513c23          	sd	s5,24(sp)
    80002370:	05010413          	addi	s0,sp,80
    80002374:	06c05c63          	blez	a2,800023ec <consolewrite+0x9c>
    80002378:	00060993          	mv	s3,a2
    8000237c:	00050a13          	mv	s4,a0
    80002380:	00058493          	mv	s1,a1
    80002384:	00000913          	li	s2,0
    80002388:	fff00a93          	li	s5,-1
    8000238c:	01c0006f          	j	800023a8 <consolewrite+0x58>
    80002390:	fbf44503          	lbu	a0,-65(s0)
    80002394:	0019091b          	addiw	s2,s2,1
    80002398:	00148493          	addi	s1,s1,1
    8000239c:	00001097          	auipc	ra,0x1
    800023a0:	a9c080e7          	jalr	-1380(ra) # 80002e38 <uartputc>
    800023a4:	03298063          	beq	s3,s2,800023c4 <consolewrite+0x74>
    800023a8:	00048613          	mv	a2,s1
    800023ac:	00100693          	li	a3,1
    800023b0:	000a0593          	mv	a1,s4
    800023b4:	fbf40513          	addi	a0,s0,-65
    800023b8:	00000097          	auipc	ra,0x0
    800023bc:	9e0080e7          	jalr	-1568(ra) # 80001d98 <either_copyin>
    800023c0:	fd5518e3          	bne	a0,s5,80002390 <consolewrite+0x40>
    800023c4:	04813083          	ld	ra,72(sp)
    800023c8:	04013403          	ld	s0,64(sp)
    800023cc:	03813483          	ld	s1,56(sp)
    800023d0:	02813983          	ld	s3,40(sp)
    800023d4:	02013a03          	ld	s4,32(sp)
    800023d8:	01813a83          	ld	s5,24(sp)
    800023dc:	00090513          	mv	a0,s2
    800023e0:	03013903          	ld	s2,48(sp)
    800023e4:	05010113          	addi	sp,sp,80
    800023e8:	00008067          	ret
    800023ec:	00000913          	li	s2,0
    800023f0:	fd5ff06f          	j	800023c4 <consolewrite+0x74>

00000000800023f4 <consoleread>:
    800023f4:	f9010113          	addi	sp,sp,-112
    800023f8:	06813023          	sd	s0,96(sp)
    800023fc:	04913c23          	sd	s1,88(sp)
    80002400:	05213823          	sd	s2,80(sp)
    80002404:	05313423          	sd	s3,72(sp)
    80002408:	05413023          	sd	s4,64(sp)
    8000240c:	03513c23          	sd	s5,56(sp)
    80002410:	03613823          	sd	s6,48(sp)
    80002414:	03713423          	sd	s7,40(sp)
    80002418:	03813023          	sd	s8,32(sp)
    8000241c:	06113423          	sd	ra,104(sp)
    80002420:	01913c23          	sd	s9,24(sp)
    80002424:	07010413          	addi	s0,sp,112
    80002428:	00060b93          	mv	s7,a2
    8000242c:	00050913          	mv	s2,a0
    80002430:	00058c13          	mv	s8,a1
    80002434:	00060b1b          	sext.w	s6,a2
    80002438:	00003497          	auipc	s1,0x3
    8000243c:	40048493          	addi	s1,s1,1024 # 80005838 <cons>
    80002440:	00400993          	li	s3,4
    80002444:	fff00a13          	li	s4,-1
    80002448:	00a00a93          	li	s5,10
    8000244c:	05705e63          	blez	s7,800024a8 <consoleread+0xb4>
    80002450:	09c4a703          	lw	a4,156(s1)
    80002454:	0984a783          	lw	a5,152(s1)
    80002458:	0007071b          	sext.w	a4,a4
    8000245c:	08e78463          	beq	a5,a4,800024e4 <consoleread+0xf0>
    80002460:	07f7f713          	andi	a4,a5,127
    80002464:	00e48733          	add	a4,s1,a4
    80002468:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000246c:	0017869b          	addiw	a3,a5,1
    80002470:	08d4ac23          	sw	a3,152(s1)
    80002474:	00070c9b          	sext.w	s9,a4
    80002478:	0b370663          	beq	a4,s3,80002524 <consoleread+0x130>
    8000247c:	00100693          	li	a3,1
    80002480:	f9f40613          	addi	a2,s0,-97
    80002484:	000c0593          	mv	a1,s8
    80002488:	00090513          	mv	a0,s2
    8000248c:	f8e40fa3          	sb	a4,-97(s0)
    80002490:	00000097          	auipc	ra,0x0
    80002494:	8bc080e7          	jalr	-1860(ra) # 80001d4c <either_copyout>
    80002498:	01450863          	beq	a0,s4,800024a8 <consoleread+0xb4>
    8000249c:	001c0c13          	addi	s8,s8,1
    800024a0:	fffb8b9b          	addiw	s7,s7,-1
    800024a4:	fb5c94e3          	bne	s9,s5,8000244c <consoleread+0x58>
    800024a8:	000b851b          	sext.w	a0,s7
    800024ac:	06813083          	ld	ra,104(sp)
    800024b0:	06013403          	ld	s0,96(sp)
    800024b4:	05813483          	ld	s1,88(sp)
    800024b8:	05013903          	ld	s2,80(sp)
    800024bc:	04813983          	ld	s3,72(sp)
    800024c0:	04013a03          	ld	s4,64(sp)
    800024c4:	03813a83          	ld	s5,56(sp)
    800024c8:	02813b83          	ld	s7,40(sp)
    800024cc:	02013c03          	ld	s8,32(sp)
    800024d0:	01813c83          	ld	s9,24(sp)
    800024d4:	40ab053b          	subw	a0,s6,a0
    800024d8:	03013b03          	ld	s6,48(sp)
    800024dc:	07010113          	addi	sp,sp,112
    800024e0:	00008067          	ret
    800024e4:	00001097          	auipc	ra,0x1
    800024e8:	1d8080e7          	jalr	472(ra) # 800036bc <push_on>
    800024ec:	0984a703          	lw	a4,152(s1)
    800024f0:	09c4a783          	lw	a5,156(s1)
    800024f4:	0007879b          	sext.w	a5,a5
    800024f8:	fef70ce3          	beq	a4,a5,800024f0 <consoleread+0xfc>
    800024fc:	00001097          	auipc	ra,0x1
    80002500:	234080e7          	jalr	564(ra) # 80003730 <pop_on>
    80002504:	0984a783          	lw	a5,152(s1)
    80002508:	07f7f713          	andi	a4,a5,127
    8000250c:	00e48733          	add	a4,s1,a4
    80002510:	01874703          	lbu	a4,24(a4)
    80002514:	0017869b          	addiw	a3,a5,1
    80002518:	08d4ac23          	sw	a3,152(s1)
    8000251c:	00070c9b          	sext.w	s9,a4
    80002520:	f5371ee3          	bne	a4,s3,8000247c <consoleread+0x88>
    80002524:	000b851b          	sext.w	a0,s7
    80002528:	f96bf2e3          	bgeu	s7,s6,800024ac <consoleread+0xb8>
    8000252c:	08f4ac23          	sw	a5,152(s1)
    80002530:	f7dff06f          	j	800024ac <consoleread+0xb8>

0000000080002534 <consputc>:
    80002534:	10000793          	li	a5,256
    80002538:	00f50663          	beq	a0,a5,80002544 <consputc+0x10>
    8000253c:	00001317          	auipc	t1,0x1
    80002540:	9f430067          	jr	-1548(t1) # 80002f30 <uartputc_sync>
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00113423          	sd	ra,8(sp)
    8000254c:	00813023          	sd	s0,0(sp)
    80002550:	01010413          	addi	s0,sp,16
    80002554:	00800513          	li	a0,8
    80002558:	00001097          	auipc	ra,0x1
    8000255c:	9d8080e7          	jalr	-1576(ra) # 80002f30 <uartputc_sync>
    80002560:	02000513          	li	a0,32
    80002564:	00001097          	auipc	ra,0x1
    80002568:	9cc080e7          	jalr	-1588(ra) # 80002f30 <uartputc_sync>
    8000256c:	00013403          	ld	s0,0(sp)
    80002570:	00813083          	ld	ra,8(sp)
    80002574:	00800513          	li	a0,8
    80002578:	01010113          	addi	sp,sp,16
    8000257c:	00001317          	auipc	t1,0x1
    80002580:	9b430067          	jr	-1612(t1) # 80002f30 <uartputc_sync>

0000000080002584 <consoleintr>:
    80002584:	fe010113          	addi	sp,sp,-32
    80002588:	00813823          	sd	s0,16(sp)
    8000258c:	00913423          	sd	s1,8(sp)
    80002590:	01213023          	sd	s2,0(sp)
    80002594:	00113c23          	sd	ra,24(sp)
    80002598:	02010413          	addi	s0,sp,32
    8000259c:	00003917          	auipc	s2,0x3
    800025a0:	29c90913          	addi	s2,s2,668 # 80005838 <cons>
    800025a4:	00050493          	mv	s1,a0
    800025a8:	00090513          	mv	a0,s2
    800025ac:	00001097          	auipc	ra,0x1
    800025b0:	e40080e7          	jalr	-448(ra) # 800033ec <acquire>
    800025b4:	02048c63          	beqz	s1,800025ec <consoleintr+0x68>
    800025b8:	0a092783          	lw	a5,160(s2)
    800025bc:	09892703          	lw	a4,152(s2)
    800025c0:	07f00693          	li	a3,127
    800025c4:	40e7873b          	subw	a4,a5,a4
    800025c8:	02e6e263          	bltu	a3,a4,800025ec <consoleintr+0x68>
    800025cc:	00d00713          	li	a4,13
    800025d0:	04e48063          	beq	s1,a4,80002610 <consoleintr+0x8c>
    800025d4:	07f7f713          	andi	a4,a5,127
    800025d8:	00e90733          	add	a4,s2,a4
    800025dc:	0017879b          	addiw	a5,a5,1
    800025e0:	0af92023          	sw	a5,160(s2)
    800025e4:	00970c23          	sb	s1,24(a4)
    800025e8:	08f92e23          	sw	a5,156(s2)
    800025ec:	01013403          	ld	s0,16(sp)
    800025f0:	01813083          	ld	ra,24(sp)
    800025f4:	00813483          	ld	s1,8(sp)
    800025f8:	00013903          	ld	s2,0(sp)
    800025fc:	00003517          	auipc	a0,0x3
    80002600:	23c50513          	addi	a0,a0,572 # 80005838 <cons>
    80002604:	02010113          	addi	sp,sp,32
    80002608:	00001317          	auipc	t1,0x1
    8000260c:	eb030067          	jr	-336(t1) # 800034b8 <release>
    80002610:	00a00493          	li	s1,10
    80002614:	fc1ff06f          	j	800025d4 <consoleintr+0x50>

0000000080002618 <consoleinit>:
    80002618:	fe010113          	addi	sp,sp,-32
    8000261c:	00113c23          	sd	ra,24(sp)
    80002620:	00813823          	sd	s0,16(sp)
    80002624:	00913423          	sd	s1,8(sp)
    80002628:	02010413          	addi	s0,sp,32
    8000262c:	00003497          	auipc	s1,0x3
    80002630:	20c48493          	addi	s1,s1,524 # 80005838 <cons>
    80002634:	00048513          	mv	a0,s1
    80002638:	00002597          	auipc	a1,0x2
    8000263c:	b2858593          	addi	a1,a1,-1240 # 80004160 <CONSOLE_STATUS+0x150>
    80002640:	00001097          	auipc	ra,0x1
    80002644:	d88080e7          	jalr	-632(ra) # 800033c8 <initlock>
    80002648:	00000097          	auipc	ra,0x0
    8000264c:	7ac080e7          	jalr	1964(ra) # 80002df4 <uartinit>
    80002650:	01813083          	ld	ra,24(sp)
    80002654:	01013403          	ld	s0,16(sp)
    80002658:	00000797          	auipc	a5,0x0
    8000265c:	d9c78793          	addi	a5,a5,-612 # 800023f4 <consoleread>
    80002660:	0af4bc23          	sd	a5,184(s1)
    80002664:	00000797          	auipc	a5,0x0
    80002668:	cec78793          	addi	a5,a5,-788 # 80002350 <consolewrite>
    8000266c:	0cf4b023          	sd	a5,192(s1)
    80002670:	00813483          	ld	s1,8(sp)
    80002674:	02010113          	addi	sp,sp,32
    80002678:	00008067          	ret

000000008000267c <console_read>:
    8000267c:	ff010113          	addi	sp,sp,-16
    80002680:	00813423          	sd	s0,8(sp)
    80002684:	01010413          	addi	s0,sp,16
    80002688:	00813403          	ld	s0,8(sp)
    8000268c:	00003317          	auipc	t1,0x3
    80002690:	26433303          	ld	t1,612(t1) # 800058f0 <devsw+0x10>
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00030067          	jr	t1

000000008000269c <console_write>:
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00813423          	sd	s0,8(sp)
    800026a4:	01010413          	addi	s0,sp,16
    800026a8:	00813403          	ld	s0,8(sp)
    800026ac:	00003317          	auipc	t1,0x3
    800026b0:	24c33303          	ld	t1,588(t1) # 800058f8 <devsw+0x18>
    800026b4:	01010113          	addi	sp,sp,16
    800026b8:	00030067          	jr	t1

00000000800026bc <panic>:
    800026bc:	fe010113          	addi	sp,sp,-32
    800026c0:	00113c23          	sd	ra,24(sp)
    800026c4:	00813823          	sd	s0,16(sp)
    800026c8:	00913423          	sd	s1,8(sp)
    800026cc:	02010413          	addi	s0,sp,32
    800026d0:	00050493          	mv	s1,a0
    800026d4:	00002517          	auipc	a0,0x2
    800026d8:	a9450513          	addi	a0,a0,-1388 # 80004168 <CONSOLE_STATUS+0x158>
    800026dc:	00003797          	auipc	a5,0x3
    800026e0:	2a07ae23          	sw	zero,700(a5) # 80005998 <pr+0x18>
    800026e4:	00000097          	auipc	ra,0x0
    800026e8:	034080e7          	jalr	52(ra) # 80002718 <__printf>
    800026ec:	00048513          	mv	a0,s1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	028080e7          	jalr	40(ra) # 80002718 <__printf>
    800026f8:	00002517          	auipc	a0,0x2
    800026fc:	a5050513          	addi	a0,a0,-1456 # 80004148 <CONSOLE_STATUS+0x138>
    80002700:	00000097          	auipc	ra,0x0
    80002704:	018080e7          	jalr	24(ra) # 80002718 <__printf>
    80002708:	00100793          	li	a5,1
    8000270c:	00002717          	auipc	a4,0x2
    80002710:	fef72e23          	sw	a5,-4(a4) # 80004708 <panicked>
    80002714:	0000006f          	j	80002714 <panic+0x58>

0000000080002718 <__printf>:
    80002718:	f3010113          	addi	sp,sp,-208
    8000271c:	08813023          	sd	s0,128(sp)
    80002720:	07313423          	sd	s3,104(sp)
    80002724:	09010413          	addi	s0,sp,144
    80002728:	05813023          	sd	s8,64(sp)
    8000272c:	08113423          	sd	ra,136(sp)
    80002730:	06913c23          	sd	s1,120(sp)
    80002734:	07213823          	sd	s2,112(sp)
    80002738:	07413023          	sd	s4,96(sp)
    8000273c:	05513c23          	sd	s5,88(sp)
    80002740:	05613823          	sd	s6,80(sp)
    80002744:	05713423          	sd	s7,72(sp)
    80002748:	03913c23          	sd	s9,56(sp)
    8000274c:	03a13823          	sd	s10,48(sp)
    80002750:	03b13423          	sd	s11,40(sp)
    80002754:	00003317          	auipc	t1,0x3
    80002758:	22c30313          	addi	t1,t1,556 # 80005980 <pr>
    8000275c:	01832c03          	lw	s8,24(t1)
    80002760:	00b43423          	sd	a1,8(s0)
    80002764:	00c43823          	sd	a2,16(s0)
    80002768:	00d43c23          	sd	a3,24(s0)
    8000276c:	02e43023          	sd	a4,32(s0)
    80002770:	02f43423          	sd	a5,40(s0)
    80002774:	03043823          	sd	a6,48(s0)
    80002778:	03143c23          	sd	a7,56(s0)
    8000277c:	00050993          	mv	s3,a0
    80002780:	4a0c1663          	bnez	s8,80002c2c <__printf+0x514>
    80002784:	60098c63          	beqz	s3,80002d9c <__printf+0x684>
    80002788:	0009c503          	lbu	a0,0(s3)
    8000278c:	00840793          	addi	a5,s0,8
    80002790:	f6f43c23          	sd	a5,-136(s0)
    80002794:	00000493          	li	s1,0
    80002798:	22050063          	beqz	a0,800029b8 <__printf+0x2a0>
    8000279c:	00002a37          	lui	s4,0x2
    800027a0:	00018ab7          	lui	s5,0x18
    800027a4:	000f4b37          	lui	s6,0xf4
    800027a8:	00989bb7          	lui	s7,0x989
    800027ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800027b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800027b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800027b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800027bc:	00148c9b          	addiw	s9,s1,1
    800027c0:	02500793          	li	a5,37
    800027c4:	01998933          	add	s2,s3,s9
    800027c8:	38f51263          	bne	a0,a5,80002b4c <__printf+0x434>
    800027cc:	00094783          	lbu	a5,0(s2)
    800027d0:	00078c9b          	sext.w	s9,a5
    800027d4:	1e078263          	beqz	a5,800029b8 <__printf+0x2a0>
    800027d8:	0024849b          	addiw	s1,s1,2
    800027dc:	07000713          	li	a4,112
    800027e0:	00998933          	add	s2,s3,s1
    800027e4:	38e78a63          	beq	a5,a4,80002b78 <__printf+0x460>
    800027e8:	20f76863          	bltu	a4,a5,800029f8 <__printf+0x2e0>
    800027ec:	42a78863          	beq	a5,a0,80002c1c <__printf+0x504>
    800027f0:	06400713          	li	a4,100
    800027f4:	40e79663          	bne	a5,a4,80002c00 <__printf+0x4e8>
    800027f8:	f7843783          	ld	a5,-136(s0)
    800027fc:	0007a603          	lw	a2,0(a5)
    80002800:	00878793          	addi	a5,a5,8
    80002804:	f6f43c23          	sd	a5,-136(s0)
    80002808:	42064a63          	bltz	a2,80002c3c <__printf+0x524>
    8000280c:	00a00713          	li	a4,10
    80002810:	02e677bb          	remuw	a5,a2,a4
    80002814:	00002d97          	auipc	s11,0x2
    80002818:	97cd8d93          	addi	s11,s11,-1668 # 80004190 <digits>
    8000281c:	00900593          	li	a1,9
    80002820:	0006051b          	sext.w	a0,a2
    80002824:	00000c93          	li	s9,0
    80002828:	02079793          	slli	a5,a5,0x20
    8000282c:	0207d793          	srli	a5,a5,0x20
    80002830:	00fd87b3          	add	a5,s11,a5
    80002834:	0007c783          	lbu	a5,0(a5)
    80002838:	02e656bb          	divuw	a3,a2,a4
    8000283c:	f8f40023          	sb	a5,-128(s0)
    80002840:	14c5d863          	bge	a1,a2,80002990 <__printf+0x278>
    80002844:	06300593          	li	a1,99
    80002848:	00100c93          	li	s9,1
    8000284c:	02e6f7bb          	remuw	a5,a3,a4
    80002850:	02079793          	slli	a5,a5,0x20
    80002854:	0207d793          	srli	a5,a5,0x20
    80002858:	00fd87b3          	add	a5,s11,a5
    8000285c:	0007c783          	lbu	a5,0(a5)
    80002860:	02e6d73b          	divuw	a4,a3,a4
    80002864:	f8f400a3          	sb	a5,-127(s0)
    80002868:	12a5f463          	bgeu	a1,a0,80002990 <__printf+0x278>
    8000286c:	00a00693          	li	a3,10
    80002870:	00900593          	li	a1,9
    80002874:	02d777bb          	remuw	a5,a4,a3
    80002878:	02079793          	slli	a5,a5,0x20
    8000287c:	0207d793          	srli	a5,a5,0x20
    80002880:	00fd87b3          	add	a5,s11,a5
    80002884:	0007c503          	lbu	a0,0(a5)
    80002888:	02d757bb          	divuw	a5,a4,a3
    8000288c:	f8a40123          	sb	a0,-126(s0)
    80002890:	48e5f263          	bgeu	a1,a4,80002d14 <__printf+0x5fc>
    80002894:	06300513          	li	a0,99
    80002898:	02d7f5bb          	remuw	a1,a5,a3
    8000289c:	02059593          	slli	a1,a1,0x20
    800028a0:	0205d593          	srli	a1,a1,0x20
    800028a4:	00bd85b3          	add	a1,s11,a1
    800028a8:	0005c583          	lbu	a1,0(a1)
    800028ac:	02d7d7bb          	divuw	a5,a5,a3
    800028b0:	f8b401a3          	sb	a1,-125(s0)
    800028b4:	48e57263          	bgeu	a0,a4,80002d38 <__printf+0x620>
    800028b8:	3e700513          	li	a0,999
    800028bc:	02d7f5bb          	remuw	a1,a5,a3
    800028c0:	02059593          	slli	a1,a1,0x20
    800028c4:	0205d593          	srli	a1,a1,0x20
    800028c8:	00bd85b3          	add	a1,s11,a1
    800028cc:	0005c583          	lbu	a1,0(a1)
    800028d0:	02d7d7bb          	divuw	a5,a5,a3
    800028d4:	f8b40223          	sb	a1,-124(s0)
    800028d8:	46e57663          	bgeu	a0,a4,80002d44 <__printf+0x62c>
    800028dc:	02d7f5bb          	remuw	a1,a5,a3
    800028e0:	02059593          	slli	a1,a1,0x20
    800028e4:	0205d593          	srli	a1,a1,0x20
    800028e8:	00bd85b3          	add	a1,s11,a1
    800028ec:	0005c583          	lbu	a1,0(a1)
    800028f0:	02d7d7bb          	divuw	a5,a5,a3
    800028f4:	f8b402a3          	sb	a1,-123(s0)
    800028f8:	46ea7863          	bgeu	s4,a4,80002d68 <__printf+0x650>
    800028fc:	02d7f5bb          	remuw	a1,a5,a3
    80002900:	02059593          	slli	a1,a1,0x20
    80002904:	0205d593          	srli	a1,a1,0x20
    80002908:	00bd85b3          	add	a1,s11,a1
    8000290c:	0005c583          	lbu	a1,0(a1)
    80002910:	02d7d7bb          	divuw	a5,a5,a3
    80002914:	f8b40323          	sb	a1,-122(s0)
    80002918:	3eeaf863          	bgeu	s5,a4,80002d08 <__printf+0x5f0>
    8000291c:	02d7f5bb          	remuw	a1,a5,a3
    80002920:	02059593          	slli	a1,a1,0x20
    80002924:	0205d593          	srli	a1,a1,0x20
    80002928:	00bd85b3          	add	a1,s11,a1
    8000292c:	0005c583          	lbu	a1,0(a1)
    80002930:	02d7d7bb          	divuw	a5,a5,a3
    80002934:	f8b403a3          	sb	a1,-121(s0)
    80002938:	42eb7e63          	bgeu	s6,a4,80002d74 <__printf+0x65c>
    8000293c:	02d7f5bb          	remuw	a1,a5,a3
    80002940:	02059593          	slli	a1,a1,0x20
    80002944:	0205d593          	srli	a1,a1,0x20
    80002948:	00bd85b3          	add	a1,s11,a1
    8000294c:	0005c583          	lbu	a1,0(a1)
    80002950:	02d7d7bb          	divuw	a5,a5,a3
    80002954:	f8b40423          	sb	a1,-120(s0)
    80002958:	42ebfc63          	bgeu	s7,a4,80002d90 <__printf+0x678>
    8000295c:	02079793          	slli	a5,a5,0x20
    80002960:	0207d793          	srli	a5,a5,0x20
    80002964:	00fd8db3          	add	s11,s11,a5
    80002968:	000dc703          	lbu	a4,0(s11)
    8000296c:	00a00793          	li	a5,10
    80002970:	00900c93          	li	s9,9
    80002974:	f8e404a3          	sb	a4,-119(s0)
    80002978:	00065c63          	bgez	a2,80002990 <__printf+0x278>
    8000297c:	f9040713          	addi	a4,s0,-112
    80002980:	00f70733          	add	a4,a4,a5
    80002984:	02d00693          	li	a3,45
    80002988:	fed70823          	sb	a3,-16(a4)
    8000298c:	00078c93          	mv	s9,a5
    80002990:	f8040793          	addi	a5,s0,-128
    80002994:	01978cb3          	add	s9,a5,s9
    80002998:	f7f40d13          	addi	s10,s0,-129
    8000299c:	000cc503          	lbu	a0,0(s9)
    800029a0:	fffc8c93          	addi	s9,s9,-1
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	b90080e7          	jalr	-1136(ra) # 80002534 <consputc>
    800029ac:	ffac98e3          	bne	s9,s10,8000299c <__printf+0x284>
    800029b0:	00094503          	lbu	a0,0(s2)
    800029b4:	e00514e3          	bnez	a0,800027bc <__printf+0xa4>
    800029b8:	1a0c1663          	bnez	s8,80002b64 <__printf+0x44c>
    800029bc:	08813083          	ld	ra,136(sp)
    800029c0:	08013403          	ld	s0,128(sp)
    800029c4:	07813483          	ld	s1,120(sp)
    800029c8:	07013903          	ld	s2,112(sp)
    800029cc:	06813983          	ld	s3,104(sp)
    800029d0:	06013a03          	ld	s4,96(sp)
    800029d4:	05813a83          	ld	s5,88(sp)
    800029d8:	05013b03          	ld	s6,80(sp)
    800029dc:	04813b83          	ld	s7,72(sp)
    800029e0:	04013c03          	ld	s8,64(sp)
    800029e4:	03813c83          	ld	s9,56(sp)
    800029e8:	03013d03          	ld	s10,48(sp)
    800029ec:	02813d83          	ld	s11,40(sp)
    800029f0:	0d010113          	addi	sp,sp,208
    800029f4:	00008067          	ret
    800029f8:	07300713          	li	a4,115
    800029fc:	1ce78a63          	beq	a5,a4,80002bd0 <__printf+0x4b8>
    80002a00:	07800713          	li	a4,120
    80002a04:	1ee79e63          	bne	a5,a4,80002c00 <__printf+0x4e8>
    80002a08:	f7843783          	ld	a5,-136(s0)
    80002a0c:	0007a703          	lw	a4,0(a5)
    80002a10:	00878793          	addi	a5,a5,8
    80002a14:	f6f43c23          	sd	a5,-136(s0)
    80002a18:	28074263          	bltz	a4,80002c9c <__printf+0x584>
    80002a1c:	00001d97          	auipc	s11,0x1
    80002a20:	774d8d93          	addi	s11,s11,1908 # 80004190 <digits>
    80002a24:	00f77793          	andi	a5,a4,15
    80002a28:	00fd87b3          	add	a5,s11,a5
    80002a2c:	0007c683          	lbu	a3,0(a5)
    80002a30:	00f00613          	li	a2,15
    80002a34:	0007079b          	sext.w	a5,a4
    80002a38:	f8d40023          	sb	a3,-128(s0)
    80002a3c:	0047559b          	srliw	a1,a4,0x4
    80002a40:	0047569b          	srliw	a3,a4,0x4
    80002a44:	00000c93          	li	s9,0
    80002a48:	0ee65063          	bge	a2,a4,80002b28 <__printf+0x410>
    80002a4c:	00f6f693          	andi	a3,a3,15
    80002a50:	00dd86b3          	add	a3,s11,a3
    80002a54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002a58:	0087d79b          	srliw	a5,a5,0x8
    80002a5c:	00100c93          	li	s9,1
    80002a60:	f8d400a3          	sb	a3,-127(s0)
    80002a64:	0cb67263          	bgeu	a2,a1,80002b28 <__printf+0x410>
    80002a68:	00f7f693          	andi	a3,a5,15
    80002a6c:	00dd86b3          	add	a3,s11,a3
    80002a70:	0006c583          	lbu	a1,0(a3)
    80002a74:	00f00613          	li	a2,15
    80002a78:	0047d69b          	srliw	a3,a5,0x4
    80002a7c:	f8b40123          	sb	a1,-126(s0)
    80002a80:	0047d593          	srli	a1,a5,0x4
    80002a84:	28f67e63          	bgeu	a2,a5,80002d20 <__printf+0x608>
    80002a88:	00f6f693          	andi	a3,a3,15
    80002a8c:	00dd86b3          	add	a3,s11,a3
    80002a90:	0006c503          	lbu	a0,0(a3)
    80002a94:	0087d813          	srli	a6,a5,0x8
    80002a98:	0087d69b          	srliw	a3,a5,0x8
    80002a9c:	f8a401a3          	sb	a0,-125(s0)
    80002aa0:	28b67663          	bgeu	a2,a1,80002d2c <__printf+0x614>
    80002aa4:	00f6f693          	andi	a3,a3,15
    80002aa8:	00dd86b3          	add	a3,s11,a3
    80002aac:	0006c583          	lbu	a1,0(a3)
    80002ab0:	00c7d513          	srli	a0,a5,0xc
    80002ab4:	00c7d69b          	srliw	a3,a5,0xc
    80002ab8:	f8b40223          	sb	a1,-124(s0)
    80002abc:	29067a63          	bgeu	a2,a6,80002d50 <__printf+0x638>
    80002ac0:	00f6f693          	andi	a3,a3,15
    80002ac4:	00dd86b3          	add	a3,s11,a3
    80002ac8:	0006c583          	lbu	a1,0(a3)
    80002acc:	0107d813          	srli	a6,a5,0x10
    80002ad0:	0107d69b          	srliw	a3,a5,0x10
    80002ad4:	f8b402a3          	sb	a1,-123(s0)
    80002ad8:	28a67263          	bgeu	a2,a0,80002d5c <__printf+0x644>
    80002adc:	00f6f693          	andi	a3,a3,15
    80002ae0:	00dd86b3          	add	a3,s11,a3
    80002ae4:	0006c683          	lbu	a3,0(a3)
    80002ae8:	0147d79b          	srliw	a5,a5,0x14
    80002aec:	f8d40323          	sb	a3,-122(s0)
    80002af0:	21067663          	bgeu	a2,a6,80002cfc <__printf+0x5e4>
    80002af4:	02079793          	slli	a5,a5,0x20
    80002af8:	0207d793          	srli	a5,a5,0x20
    80002afc:	00fd8db3          	add	s11,s11,a5
    80002b00:	000dc683          	lbu	a3,0(s11)
    80002b04:	00800793          	li	a5,8
    80002b08:	00700c93          	li	s9,7
    80002b0c:	f8d403a3          	sb	a3,-121(s0)
    80002b10:	00075c63          	bgez	a4,80002b28 <__printf+0x410>
    80002b14:	f9040713          	addi	a4,s0,-112
    80002b18:	00f70733          	add	a4,a4,a5
    80002b1c:	02d00693          	li	a3,45
    80002b20:	fed70823          	sb	a3,-16(a4)
    80002b24:	00078c93          	mv	s9,a5
    80002b28:	f8040793          	addi	a5,s0,-128
    80002b2c:	01978cb3          	add	s9,a5,s9
    80002b30:	f7f40d13          	addi	s10,s0,-129
    80002b34:	000cc503          	lbu	a0,0(s9)
    80002b38:	fffc8c93          	addi	s9,s9,-1
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	9f8080e7          	jalr	-1544(ra) # 80002534 <consputc>
    80002b44:	ff9d18e3          	bne	s10,s9,80002b34 <__printf+0x41c>
    80002b48:	0100006f          	j	80002b58 <__printf+0x440>
    80002b4c:	00000097          	auipc	ra,0x0
    80002b50:	9e8080e7          	jalr	-1560(ra) # 80002534 <consputc>
    80002b54:	000c8493          	mv	s1,s9
    80002b58:	00094503          	lbu	a0,0(s2)
    80002b5c:	c60510e3          	bnez	a0,800027bc <__printf+0xa4>
    80002b60:	e40c0ee3          	beqz	s8,800029bc <__printf+0x2a4>
    80002b64:	00003517          	auipc	a0,0x3
    80002b68:	e1c50513          	addi	a0,a0,-484 # 80005980 <pr>
    80002b6c:	00001097          	auipc	ra,0x1
    80002b70:	94c080e7          	jalr	-1716(ra) # 800034b8 <release>
    80002b74:	e49ff06f          	j	800029bc <__printf+0x2a4>
    80002b78:	f7843783          	ld	a5,-136(s0)
    80002b7c:	03000513          	li	a0,48
    80002b80:	01000d13          	li	s10,16
    80002b84:	00878713          	addi	a4,a5,8
    80002b88:	0007bc83          	ld	s9,0(a5)
    80002b8c:	f6e43c23          	sd	a4,-136(s0)
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	9a4080e7          	jalr	-1628(ra) # 80002534 <consputc>
    80002b98:	07800513          	li	a0,120
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	998080e7          	jalr	-1640(ra) # 80002534 <consputc>
    80002ba4:	00001d97          	auipc	s11,0x1
    80002ba8:	5ecd8d93          	addi	s11,s11,1516 # 80004190 <digits>
    80002bac:	03ccd793          	srli	a5,s9,0x3c
    80002bb0:	00fd87b3          	add	a5,s11,a5
    80002bb4:	0007c503          	lbu	a0,0(a5)
    80002bb8:	fffd0d1b          	addiw	s10,s10,-1
    80002bbc:	004c9c93          	slli	s9,s9,0x4
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	974080e7          	jalr	-1676(ra) # 80002534 <consputc>
    80002bc8:	fe0d12e3          	bnez	s10,80002bac <__printf+0x494>
    80002bcc:	f8dff06f          	j	80002b58 <__printf+0x440>
    80002bd0:	f7843783          	ld	a5,-136(s0)
    80002bd4:	0007bc83          	ld	s9,0(a5)
    80002bd8:	00878793          	addi	a5,a5,8
    80002bdc:	f6f43c23          	sd	a5,-136(s0)
    80002be0:	000c9a63          	bnez	s9,80002bf4 <__printf+0x4dc>
    80002be4:	1080006f          	j	80002cec <__printf+0x5d4>
    80002be8:	001c8c93          	addi	s9,s9,1
    80002bec:	00000097          	auipc	ra,0x0
    80002bf0:	948080e7          	jalr	-1720(ra) # 80002534 <consputc>
    80002bf4:	000cc503          	lbu	a0,0(s9)
    80002bf8:	fe0518e3          	bnez	a0,80002be8 <__printf+0x4d0>
    80002bfc:	f5dff06f          	j	80002b58 <__printf+0x440>
    80002c00:	02500513          	li	a0,37
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	930080e7          	jalr	-1744(ra) # 80002534 <consputc>
    80002c0c:	000c8513          	mv	a0,s9
    80002c10:	00000097          	auipc	ra,0x0
    80002c14:	924080e7          	jalr	-1756(ra) # 80002534 <consputc>
    80002c18:	f41ff06f          	j	80002b58 <__printf+0x440>
    80002c1c:	02500513          	li	a0,37
    80002c20:	00000097          	auipc	ra,0x0
    80002c24:	914080e7          	jalr	-1772(ra) # 80002534 <consputc>
    80002c28:	f31ff06f          	j	80002b58 <__printf+0x440>
    80002c2c:	00030513          	mv	a0,t1
    80002c30:	00000097          	auipc	ra,0x0
    80002c34:	7bc080e7          	jalr	1980(ra) # 800033ec <acquire>
    80002c38:	b4dff06f          	j	80002784 <__printf+0x6c>
    80002c3c:	40c0053b          	negw	a0,a2
    80002c40:	00a00713          	li	a4,10
    80002c44:	02e576bb          	remuw	a3,a0,a4
    80002c48:	00001d97          	auipc	s11,0x1
    80002c4c:	548d8d93          	addi	s11,s11,1352 # 80004190 <digits>
    80002c50:	ff700593          	li	a1,-9
    80002c54:	02069693          	slli	a3,a3,0x20
    80002c58:	0206d693          	srli	a3,a3,0x20
    80002c5c:	00dd86b3          	add	a3,s11,a3
    80002c60:	0006c683          	lbu	a3,0(a3)
    80002c64:	02e557bb          	divuw	a5,a0,a4
    80002c68:	f8d40023          	sb	a3,-128(s0)
    80002c6c:	10b65e63          	bge	a2,a1,80002d88 <__printf+0x670>
    80002c70:	06300593          	li	a1,99
    80002c74:	02e7f6bb          	remuw	a3,a5,a4
    80002c78:	02069693          	slli	a3,a3,0x20
    80002c7c:	0206d693          	srli	a3,a3,0x20
    80002c80:	00dd86b3          	add	a3,s11,a3
    80002c84:	0006c683          	lbu	a3,0(a3)
    80002c88:	02e7d73b          	divuw	a4,a5,a4
    80002c8c:	00200793          	li	a5,2
    80002c90:	f8d400a3          	sb	a3,-127(s0)
    80002c94:	bca5ece3          	bltu	a1,a0,8000286c <__printf+0x154>
    80002c98:	ce5ff06f          	j	8000297c <__printf+0x264>
    80002c9c:	40e007bb          	negw	a5,a4
    80002ca0:	00001d97          	auipc	s11,0x1
    80002ca4:	4f0d8d93          	addi	s11,s11,1264 # 80004190 <digits>
    80002ca8:	00f7f693          	andi	a3,a5,15
    80002cac:	00dd86b3          	add	a3,s11,a3
    80002cb0:	0006c583          	lbu	a1,0(a3)
    80002cb4:	ff100613          	li	a2,-15
    80002cb8:	0047d69b          	srliw	a3,a5,0x4
    80002cbc:	f8b40023          	sb	a1,-128(s0)
    80002cc0:	0047d59b          	srliw	a1,a5,0x4
    80002cc4:	0ac75e63          	bge	a4,a2,80002d80 <__printf+0x668>
    80002cc8:	00f6f693          	andi	a3,a3,15
    80002ccc:	00dd86b3          	add	a3,s11,a3
    80002cd0:	0006c603          	lbu	a2,0(a3)
    80002cd4:	00f00693          	li	a3,15
    80002cd8:	0087d79b          	srliw	a5,a5,0x8
    80002cdc:	f8c400a3          	sb	a2,-127(s0)
    80002ce0:	d8b6e4e3          	bltu	a3,a1,80002a68 <__printf+0x350>
    80002ce4:	00200793          	li	a5,2
    80002ce8:	e2dff06f          	j	80002b14 <__printf+0x3fc>
    80002cec:	00001c97          	auipc	s9,0x1
    80002cf0:	484c8c93          	addi	s9,s9,1156 # 80004170 <CONSOLE_STATUS+0x160>
    80002cf4:	02800513          	li	a0,40
    80002cf8:	ef1ff06f          	j	80002be8 <__printf+0x4d0>
    80002cfc:	00700793          	li	a5,7
    80002d00:	00600c93          	li	s9,6
    80002d04:	e0dff06f          	j	80002b10 <__printf+0x3f8>
    80002d08:	00700793          	li	a5,7
    80002d0c:	00600c93          	li	s9,6
    80002d10:	c69ff06f          	j	80002978 <__printf+0x260>
    80002d14:	00300793          	li	a5,3
    80002d18:	00200c93          	li	s9,2
    80002d1c:	c5dff06f          	j	80002978 <__printf+0x260>
    80002d20:	00300793          	li	a5,3
    80002d24:	00200c93          	li	s9,2
    80002d28:	de9ff06f          	j	80002b10 <__printf+0x3f8>
    80002d2c:	00400793          	li	a5,4
    80002d30:	00300c93          	li	s9,3
    80002d34:	dddff06f          	j	80002b10 <__printf+0x3f8>
    80002d38:	00400793          	li	a5,4
    80002d3c:	00300c93          	li	s9,3
    80002d40:	c39ff06f          	j	80002978 <__printf+0x260>
    80002d44:	00500793          	li	a5,5
    80002d48:	00400c93          	li	s9,4
    80002d4c:	c2dff06f          	j	80002978 <__printf+0x260>
    80002d50:	00500793          	li	a5,5
    80002d54:	00400c93          	li	s9,4
    80002d58:	db9ff06f          	j	80002b10 <__printf+0x3f8>
    80002d5c:	00600793          	li	a5,6
    80002d60:	00500c93          	li	s9,5
    80002d64:	dadff06f          	j	80002b10 <__printf+0x3f8>
    80002d68:	00600793          	li	a5,6
    80002d6c:	00500c93          	li	s9,5
    80002d70:	c09ff06f          	j	80002978 <__printf+0x260>
    80002d74:	00800793          	li	a5,8
    80002d78:	00700c93          	li	s9,7
    80002d7c:	bfdff06f          	j	80002978 <__printf+0x260>
    80002d80:	00100793          	li	a5,1
    80002d84:	d91ff06f          	j	80002b14 <__printf+0x3fc>
    80002d88:	00100793          	li	a5,1
    80002d8c:	bf1ff06f          	j	8000297c <__printf+0x264>
    80002d90:	00900793          	li	a5,9
    80002d94:	00800c93          	li	s9,8
    80002d98:	be1ff06f          	j	80002978 <__printf+0x260>
    80002d9c:	00001517          	auipc	a0,0x1
    80002da0:	3dc50513          	addi	a0,a0,988 # 80004178 <CONSOLE_STATUS+0x168>
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	918080e7          	jalr	-1768(ra) # 800026bc <panic>

0000000080002dac <printfinit>:
    80002dac:	fe010113          	addi	sp,sp,-32
    80002db0:	00813823          	sd	s0,16(sp)
    80002db4:	00913423          	sd	s1,8(sp)
    80002db8:	00113c23          	sd	ra,24(sp)
    80002dbc:	02010413          	addi	s0,sp,32
    80002dc0:	00003497          	auipc	s1,0x3
    80002dc4:	bc048493          	addi	s1,s1,-1088 # 80005980 <pr>
    80002dc8:	00048513          	mv	a0,s1
    80002dcc:	00001597          	auipc	a1,0x1
    80002dd0:	3bc58593          	addi	a1,a1,956 # 80004188 <CONSOLE_STATUS+0x178>
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	5f4080e7          	jalr	1524(ra) # 800033c8 <initlock>
    80002ddc:	01813083          	ld	ra,24(sp)
    80002de0:	01013403          	ld	s0,16(sp)
    80002de4:	0004ac23          	sw	zero,24(s1)
    80002de8:	00813483          	ld	s1,8(sp)
    80002dec:	02010113          	addi	sp,sp,32
    80002df0:	00008067          	ret

0000000080002df4 <uartinit>:
    80002df4:	ff010113          	addi	sp,sp,-16
    80002df8:	00813423          	sd	s0,8(sp)
    80002dfc:	01010413          	addi	s0,sp,16
    80002e00:	100007b7          	lui	a5,0x10000
    80002e04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002e08:	f8000713          	li	a4,-128
    80002e0c:	00e781a3          	sb	a4,3(a5)
    80002e10:	00300713          	li	a4,3
    80002e14:	00e78023          	sb	a4,0(a5)
    80002e18:	000780a3          	sb	zero,1(a5)
    80002e1c:	00e781a3          	sb	a4,3(a5)
    80002e20:	00700693          	li	a3,7
    80002e24:	00d78123          	sb	a3,2(a5)
    80002e28:	00e780a3          	sb	a4,1(a5)
    80002e2c:	00813403          	ld	s0,8(sp)
    80002e30:	01010113          	addi	sp,sp,16
    80002e34:	00008067          	ret

0000000080002e38 <uartputc>:
    80002e38:	00002797          	auipc	a5,0x2
    80002e3c:	8d07a783          	lw	a5,-1840(a5) # 80004708 <panicked>
    80002e40:	00078463          	beqz	a5,80002e48 <uartputc+0x10>
    80002e44:	0000006f          	j	80002e44 <uartputc+0xc>
    80002e48:	fd010113          	addi	sp,sp,-48
    80002e4c:	02813023          	sd	s0,32(sp)
    80002e50:	00913c23          	sd	s1,24(sp)
    80002e54:	01213823          	sd	s2,16(sp)
    80002e58:	01313423          	sd	s3,8(sp)
    80002e5c:	02113423          	sd	ra,40(sp)
    80002e60:	03010413          	addi	s0,sp,48
    80002e64:	00002917          	auipc	s2,0x2
    80002e68:	8ac90913          	addi	s2,s2,-1876 # 80004710 <uart_tx_r>
    80002e6c:	00093783          	ld	a5,0(s2)
    80002e70:	00002497          	auipc	s1,0x2
    80002e74:	8a848493          	addi	s1,s1,-1880 # 80004718 <uart_tx_w>
    80002e78:	0004b703          	ld	a4,0(s1)
    80002e7c:	02078693          	addi	a3,a5,32
    80002e80:	00050993          	mv	s3,a0
    80002e84:	02e69c63          	bne	a3,a4,80002ebc <uartputc+0x84>
    80002e88:	00001097          	auipc	ra,0x1
    80002e8c:	834080e7          	jalr	-1996(ra) # 800036bc <push_on>
    80002e90:	00093783          	ld	a5,0(s2)
    80002e94:	0004b703          	ld	a4,0(s1)
    80002e98:	02078793          	addi	a5,a5,32
    80002e9c:	00e79463          	bne	a5,a4,80002ea4 <uartputc+0x6c>
    80002ea0:	0000006f          	j	80002ea0 <uartputc+0x68>
    80002ea4:	00001097          	auipc	ra,0x1
    80002ea8:	88c080e7          	jalr	-1908(ra) # 80003730 <pop_on>
    80002eac:	00093783          	ld	a5,0(s2)
    80002eb0:	0004b703          	ld	a4,0(s1)
    80002eb4:	02078693          	addi	a3,a5,32
    80002eb8:	fce688e3          	beq	a3,a4,80002e88 <uartputc+0x50>
    80002ebc:	01f77693          	andi	a3,a4,31
    80002ec0:	00003597          	auipc	a1,0x3
    80002ec4:	ae058593          	addi	a1,a1,-1312 # 800059a0 <uart_tx_buf>
    80002ec8:	00d586b3          	add	a3,a1,a3
    80002ecc:	00170713          	addi	a4,a4,1
    80002ed0:	01368023          	sb	s3,0(a3)
    80002ed4:	00e4b023          	sd	a4,0(s1)
    80002ed8:	10000637          	lui	a2,0x10000
    80002edc:	02f71063          	bne	a4,a5,80002efc <uartputc+0xc4>
    80002ee0:	0340006f          	j	80002f14 <uartputc+0xdc>
    80002ee4:	00074703          	lbu	a4,0(a4)
    80002ee8:	00f93023          	sd	a5,0(s2)
    80002eec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002ef0:	00093783          	ld	a5,0(s2)
    80002ef4:	0004b703          	ld	a4,0(s1)
    80002ef8:	00f70e63          	beq	a4,a5,80002f14 <uartputc+0xdc>
    80002efc:	00564683          	lbu	a3,5(a2)
    80002f00:	01f7f713          	andi	a4,a5,31
    80002f04:	00e58733          	add	a4,a1,a4
    80002f08:	0206f693          	andi	a3,a3,32
    80002f0c:	00178793          	addi	a5,a5,1
    80002f10:	fc069ae3          	bnez	a3,80002ee4 <uartputc+0xac>
    80002f14:	02813083          	ld	ra,40(sp)
    80002f18:	02013403          	ld	s0,32(sp)
    80002f1c:	01813483          	ld	s1,24(sp)
    80002f20:	01013903          	ld	s2,16(sp)
    80002f24:	00813983          	ld	s3,8(sp)
    80002f28:	03010113          	addi	sp,sp,48
    80002f2c:	00008067          	ret

0000000080002f30 <uartputc_sync>:
    80002f30:	ff010113          	addi	sp,sp,-16
    80002f34:	00813423          	sd	s0,8(sp)
    80002f38:	01010413          	addi	s0,sp,16
    80002f3c:	00001717          	auipc	a4,0x1
    80002f40:	7cc72703          	lw	a4,1996(a4) # 80004708 <panicked>
    80002f44:	02071663          	bnez	a4,80002f70 <uartputc_sync+0x40>
    80002f48:	00050793          	mv	a5,a0
    80002f4c:	100006b7          	lui	a3,0x10000
    80002f50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002f54:	02077713          	andi	a4,a4,32
    80002f58:	fe070ce3          	beqz	a4,80002f50 <uartputc_sync+0x20>
    80002f5c:	0ff7f793          	andi	a5,a5,255
    80002f60:	00f68023          	sb	a5,0(a3)
    80002f64:	00813403          	ld	s0,8(sp)
    80002f68:	01010113          	addi	sp,sp,16
    80002f6c:	00008067          	ret
    80002f70:	0000006f          	j	80002f70 <uartputc_sync+0x40>

0000000080002f74 <uartstart>:
    80002f74:	ff010113          	addi	sp,sp,-16
    80002f78:	00813423          	sd	s0,8(sp)
    80002f7c:	01010413          	addi	s0,sp,16
    80002f80:	00001617          	auipc	a2,0x1
    80002f84:	79060613          	addi	a2,a2,1936 # 80004710 <uart_tx_r>
    80002f88:	00001517          	auipc	a0,0x1
    80002f8c:	79050513          	addi	a0,a0,1936 # 80004718 <uart_tx_w>
    80002f90:	00063783          	ld	a5,0(a2)
    80002f94:	00053703          	ld	a4,0(a0)
    80002f98:	04f70263          	beq	a4,a5,80002fdc <uartstart+0x68>
    80002f9c:	100005b7          	lui	a1,0x10000
    80002fa0:	00003817          	auipc	a6,0x3
    80002fa4:	a0080813          	addi	a6,a6,-1536 # 800059a0 <uart_tx_buf>
    80002fa8:	01c0006f          	j	80002fc4 <uartstart+0x50>
    80002fac:	0006c703          	lbu	a4,0(a3)
    80002fb0:	00f63023          	sd	a5,0(a2)
    80002fb4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002fb8:	00063783          	ld	a5,0(a2)
    80002fbc:	00053703          	ld	a4,0(a0)
    80002fc0:	00f70e63          	beq	a4,a5,80002fdc <uartstart+0x68>
    80002fc4:	01f7f713          	andi	a4,a5,31
    80002fc8:	00e806b3          	add	a3,a6,a4
    80002fcc:	0055c703          	lbu	a4,5(a1)
    80002fd0:	00178793          	addi	a5,a5,1
    80002fd4:	02077713          	andi	a4,a4,32
    80002fd8:	fc071ae3          	bnez	a4,80002fac <uartstart+0x38>
    80002fdc:	00813403          	ld	s0,8(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret

0000000080002fe8 <uartgetc>:
    80002fe8:	ff010113          	addi	sp,sp,-16
    80002fec:	00813423          	sd	s0,8(sp)
    80002ff0:	01010413          	addi	s0,sp,16
    80002ff4:	10000737          	lui	a4,0x10000
    80002ff8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002ffc:	0017f793          	andi	a5,a5,1
    80003000:	00078c63          	beqz	a5,80003018 <uartgetc+0x30>
    80003004:	00074503          	lbu	a0,0(a4)
    80003008:	0ff57513          	andi	a0,a0,255
    8000300c:	00813403          	ld	s0,8(sp)
    80003010:	01010113          	addi	sp,sp,16
    80003014:	00008067          	ret
    80003018:	fff00513          	li	a0,-1
    8000301c:	ff1ff06f          	j	8000300c <uartgetc+0x24>

0000000080003020 <uartintr>:
    80003020:	100007b7          	lui	a5,0x10000
    80003024:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80003028:	0017f793          	andi	a5,a5,1
    8000302c:	0a078463          	beqz	a5,800030d4 <uartintr+0xb4>
    80003030:	fe010113          	addi	sp,sp,-32
    80003034:	00813823          	sd	s0,16(sp)
    80003038:	00913423          	sd	s1,8(sp)
    8000303c:	00113c23          	sd	ra,24(sp)
    80003040:	02010413          	addi	s0,sp,32
    80003044:	100004b7          	lui	s1,0x10000
    80003048:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000304c:	0ff57513          	andi	a0,a0,255
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	534080e7          	jalr	1332(ra) # 80002584 <consoleintr>
    80003058:	0054c783          	lbu	a5,5(s1)
    8000305c:	0017f793          	andi	a5,a5,1
    80003060:	fe0794e3          	bnez	a5,80003048 <uartintr+0x28>
    80003064:	00001617          	auipc	a2,0x1
    80003068:	6ac60613          	addi	a2,a2,1708 # 80004710 <uart_tx_r>
    8000306c:	00001517          	auipc	a0,0x1
    80003070:	6ac50513          	addi	a0,a0,1708 # 80004718 <uart_tx_w>
    80003074:	00063783          	ld	a5,0(a2)
    80003078:	00053703          	ld	a4,0(a0)
    8000307c:	04f70263          	beq	a4,a5,800030c0 <uartintr+0xa0>
    80003080:	100005b7          	lui	a1,0x10000
    80003084:	00003817          	auipc	a6,0x3
    80003088:	91c80813          	addi	a6,a6,-1764 # 800059a0 <uart_tx_buf>
    8000308c:	01c0006f          	j	800030a8 <uartintr+0x88>
    80003090:	0006c703          	lbu	a4,0(a3)
    80003094:	00f63023          	sd	a5,0(a2)
    80003098:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000309c:	00063783          	ld	a5,0(a2)
    800030a0:	00053703          	ld	a4,0(a0)
    800030a4:	00f70e63          	beq	a4,a5,800030c0 <uartintr+0xa0>
    800030a8:	01f7f713          	andi	a4,a5,31
    800030ac:	00e806b3          	add	a3,a6,a4
    800030b0:	0055c703          	lbu	a4,5(a1)
    800030b4:	00178793          	addi	a5,a5,1
    800030b8:	02077713          	andi	a4,a4,32
    800030bc:	fc071ae3          	bnez	a4,80003090 <uartintr+0x70>
    800030c0:	01813083          	ld	ra,24(sp)
    800030c4:	01013403          	ld	s0,16(sp)
    800030c8:	00813483          	ld	s1,8(sp)
    800030cc:	02010113          	addi	sp,sp,32
    800030d0:	00008067          	ret
    800030d4:	00001617          	auipc	a2,0x1
    800030d8:	63c60613          	addi	a2,a2,1596 # 80004710 <uart_tx_r>
    800030dc:	00001517          	auipc	a0,0x1
    800030e0:	63c50513          	addi	a0,a0,1596 # 80004718 <uart_tx_w>
    800030e4:	00063783          	ld	a5,0(a2)
    800030e8:	00053703          	ld	a4,0(a0)
    800030ec:	04f70263          	beq	a4,a5,80003130 <uartintr+0x110>
    800030f0:	100005b7          	lui	a1,0x10000
    800030f4:	00003817          	auipc	a6,0x3
    800030f8:	8ac80813          	addi	a6,a6,-1876 # 800059a0 <uart_tx_buf>
    800030fc:	01c0006f          	j	80003118 <uartintr+0xf8>
    80003100:	0006c703          	lbu	a4,0(a3)
    80003104:	00f63023          	sd	a5,0(a2)
    80003108:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000310c:	00063783          	ld	a5,0(a2)
    80003110:	00053703          	ld	a4,0(a0)
    80003114:	02f70063          	beq	a4,a5,80003134 <uartintr+0x114>
    80003118:	01f7f713          	andi	a4,a5,31
    8000311c:	00e806b3          	add	a3,a6,a4
    80003120:	0055c703          	lbu	a4,5(a1)
    80003124:	00178793          	addi	a5,a5,1
    80003128:	02077713          	andi	a4,a4,32
    8000312c:	fc071ae3          	bnez	a4,80003100 <uartintr+0xe0>
    80003130:	00008067          	ret
    80003134:	00008067          	ret

0000000080003138 <kinit>:
    80003138:	fc010113          	addi	sp,sp,-64
    8000313c:	02913423          	sd	s1,40(sp)
    80003140:	fffff7b7          	lui	a5,0xfffff
    80003144:	00004497          	auipc	s1,0x4
    80003148:	87b48493          	addi	s1,s1,-1925 # 800069bf <end+0xfff>
    8000314c:	02813823          	sd	s0,48(sp)
    80003150:	01313c23          	sd	s3,24(sp)
    80003154:	00f4f4b3          	and	s1,s1,a5
    80003158:	02113c23          	sd	ra,56(sp)
    8000315c:	03213023          	sd	s2,32(sp)
    80003160:	01413823          	sd	s4,16(sp)
    80003164:	01513423          	sd	s5,8(sp)
    80003168:	04010413          	addi	s0,sp,64
    8000316c:	000017b7          	lui	a5,0x1
    80003170:	01100993          	li	s3,17
    80003174:	00f487b3          	add	a5,s1,a5
    80003178:	01b99993          	slli	s3,s3,0x1b
    8000317c:	06f9e063          	bltu	s3,a5,800031dc <kinit+0xa4>
    80003180:	00003a97          	auipc	s5,0x3
    80003184:	840a8a93          	addi	s5,s5,-1984 # 800059c0 <end>
    80003188:	0754ec63          	bltu	s1,s5,80003200 <kinit+0xc8>
    8000318c:	0734fa63          	bgeu	s1,s3,80003200 <kinit+0xc8>
    80003190:	00088a37          	lui	s4,0x88
    80003194:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80003198:	00001917          	auipc	s2,0x1
    8000319c:	58890913          	addi	s2,s2,1416 # 80004720 <kmem>
    800031a0:	00ca1a13          	slli	s4,s4,0xc
    800031a4:	0140006f          	j	800031b8 <kinit+0x80>
    800031a8:	000017b7          	lui	a5,0x1
    800031ac:	00f484b3          	add	s1,s1,a5
    800031b0:	0554e863          	bltu	s1,s5,80003200 <kinit+0xc8>
    800031b4:	0534f663          	bgeu	s1,s3,80003200 <kinit+0xc8>
    800031b8:	00001637          	lui	a2,0x1
    800031bc:	00100593          	li	a1,1
    800031c0:	00048513          	mv	a0,s1
    800031c4:	00000097          	auipc	ra,0x0
    800031c8:	5e4080e7          	jalr	1508(ra) # 800037a8 <__memset>
    800031cc:	00093783          	ld	a5,0(s2)
    800031d0:	00f4b023          	sd	a5,0(s1)
    800031d4:	00993023          	sd	s1,0(s2)
    800031d8:	fd4498e3          	bne	s1,s4,800031a8 <kinit+0x70>
    800031dc:	03813083          	ld	ra,56(sp)
    800031e0:	03013403          	ld	s0,48(sp)
    800031e4:	02813483          	ld	s1,40(sp)
    800031e8:	02013903          	ld	s2,32(sp)
    800031ec:	01813983          	ld	s3,24(sp)
    800031f0:	01013a03          	ld	s4,16(sp)
    800031f4:	00813a83          	ld	s5,8(sp)
    800031f8:	04010113          	addi	sp,sp,64
    800031fc:	00008067          	ret
    80003200:	00001517          	auipc	a0,0x1
    80003204:	fa850513          	addi	a0,a0,-88 # 800041a8 <digits+0x18>
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	4b4080e7          	jalr	1204(ra) # 800026bc <panic>

0000000080003210 <freerange>:
    80003210:	fc010113          	addi	sp,sp,-64
    80003214:	000017b7          	lui	a5,0x1
    80003218:	02913423          	sd	s1,40(sp)
    8000321c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80003220:	009504b3          	add	s1,a0,s1
    80003224:	fffff537          	lui	a0,0xfffff
    80003228:	02813823          	sd	s0,48(sp)
    8000322c:	02113c23          	sd	ra,56(sp)
    80003230:	03213023          	sd	s2,32(sp)
    80003234:	01313c23          	sd	s3,24(sp)
    80003238:	01413823          	sd	s4,16(sp)
    8000323c:	01513423          	sd	s5,8(sp)
    80003240:	01613023          	sd	s6,0(sp)
    80003244:	04010413          	addi	s0,sp,64
    80003248:	00a4f4b3          	and	s1,s1,a0
    8000324c:	00f487b3          	add	a5,s1,a5
    80003250:	06f5e463          	bltu	a1,a5,800032b8 <freerange+0xa8>
    80003254:	00002a97          	auipc	s5,0x2
    80003258:	76ca8a93          	addi	s5,s5,1900 # 800059c0 <end>
    8000325c:	0954e263          	bltu	s1,s5,800032e0 <freerange+0xd0>
    80003260:	01100993          	li	s3,17
    80003264:	01b99993          	slli	s3,s3,0x1b
    80003268:	0734fc63          	bgeu	s1,s3,800032e0 <freerange+0xd0>
    8000326c:	00058a13          	mv	s4,a1
    80003270:	00001917          	auipc	s2,0x1
    80003274:	4b090913          	addi	s2,s2,1200 # 80004720 <kmem>
    80003278:	00002b37          	lui	s6,0x2
    8000327c:	0140006f          	j	80003290 <freerange+0x80>
    80003280:	000017b7          	lui	a5,0x1
    80003284:	00f484b3          	add	s1,s1,a5
    80003288:	0554ec63          	bltu	s1,s5,800032e0 <freerange+0xd0>
    8000328c:	0534fa63          	bgeu	s1,s3,800032e0 <freerange+0xd0>
    80003290:	00001637          	lui	a2,0x1
    80003294:	00100593          	li	a1,1
    80003298:	00048513          	mv	a0,s1
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	50c080e7          	jalr	1292(ra) # 800037a8 <__memset>
    800032a4:	00093703          	ld	a4,0(s2)
    800032a8:	016487b3          	add	a5,s1,s6
    800032ac:	00e4b023          	sd	a4,0(s1)
    800032b0:	00993023          	sd	s1,0(s2)
    800032b4:	fcfa76e3          	bgeu	s4,a5,80003280 <freerange+0x70>
    800032b8:	03813083          	ld	ra,56(sp)
    800032bc:	03013403          	ld	s0,48(sp)
    800032c0:	02813483          	ld	s1,40(sp)
    800032c4:	02013903          	ld	s2,32(sp)
    800032c8:	01813983          	ld	s3,24(sp)
    800032cc:	01013a03          	ld	s4,16(sp)
    800032d0:	00813a83          	ld	s5,8(sp)
    800032d4:	00013b03          	ld	s6,0(sp)
    800032d8:	04010113          	addi	sp,sp,64
    800032dc:	00008067          	ret
    800032e0:	00001517          	auipc	a0,0x1
    800032e4:	ec850513          	addi	a0,a0,-312 # 800041a8 <digits+0x18>
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	3d4080e7          	jalr	980(ra) # 800026bc <panic>

00000000800032f0 <kfree>:
    800032f0:	fe010113          	addi	sp,sp,-32
    800032f4:	00813823          	sd	s0,16(sp)
    800032f8:	00113c23          	sd	ra,24(sp)
    800032fc:	00913423          	sd	s1,8(sp)
    80003300:	02010413          	addi	s0,sp,32
    80003304:	03451793          	slli	a5,a0,0x34
    80003308:	04079c63          	bnez	a5,80003360 <kfree+0x70>
    8000330c:	00002797          	auipc	a5,0x2
    80003310:	6b478793          	addi	a5,a5,1716 # 800059c0 <end>
    80003314:	00050493          	mv	s1,a0
    80003318:	04f56463          	bltu	a0,a5,80003360 <kfree+0x70>
    8000331c:	01100793          	li	a5,17
    80003320:	01b79793          	slli	a5,a5,0x1b
    80003324:	02f57e63          	bgeu	a0,a5,80003360 <kfree+0x70>
    80003328:	00001637          	lui	a2,0x1
    8000332c:	00100593          	li	a1,1
    80003330:	00000097          	auipc	ra,0x0
    80003334:	478080e7          	jalr	1144(ra) # 800037a8 <__memset>
    80003338:	00001797          	auipc	a5,0x1
    8000333c:	3e878793          	addi	a5,a5,1000 # 80004720 <kmem>
    80003340:	0007b703          	ld	a4,0(a5)
    80003344:	01813083          	ld	ra,24(sp)
    80003348:	01013403          	ld	s0,16(sp)
    8000334c:	00e4b023          	sd	a4,0(s1)
    80003350:	0097b023          	sd	s1,0(a5)
    80003354:	00813483          	ld	s1,8(sp)
    80003358:	02010113          	addi	sp,sp,32
    8000335c:	00008067          	ret
    80003360:	00001517          	auipc	a0,0x1
    80003364:	e4850513          	addi	a0,a0,-440 # 800041a8 <digits+0x18>
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	354080e7          	jalr	852(ra) # 800026bc <panic>

0000000080003370 <kalloc>:
    80003370:	fe010113          	addi	sp,sp,-32
    80003374:	00813823          	sd	s0,16(sp)
    80003378:	00913423          	sd	s1,8(sp)
    8000337c:	00113c23          	sd	ra,24(sp)
    80003380:	02010413          	addi	s0,sp,32
    80003384:	00001797          	auipc	a5,0x1
    80003388:	39c78793          	addi	a5,a5,924 # 80004720 <kmem>
    8000338c:	0007b483          	ld	s1,0(a5)
    80003390:	02048063          	beqz	s1,800033b0 <kalloc+0x40>
    80003394:	0004b703          	ld	a4,0(s1)
    80003398:	00001637          	lui	a2,0x1
    8000339c:	00500593          	li	a1,5
    800033a0:	00048513          	mv	a0,s1
    800033a4:	00e7b023          	sd	a4,0(a5)
    800033a8:	00000097          	auipc	ra,0x0
    800033ac:	400080e7          	jalr	1024(ra) # 800037a8 <__memset>
    800033b0:	01813083          	ld	ra,24(sp)
    800033b4:	01013403          	ld	s0,16(sp)
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00813483          	ld	s1,8(sp)
    800033c0:	02010113          	addi	sp,sp,32
    800033c4:	00008067          	ret

00000000800033c8 <initlock>:
    800033c8:	ff010113          	addi	sp,sp,-16
    800033cc:	00813423          	sd	s0,8(sp)
    800033d0:	01010413          	addi	s0,sp,16
    800033d4:	00813403          	ld	s0,8(sp)
    800033d8:	00b53423          	sd	a1,8(a0)
    800033dc:	00052023          	sw	zero,0(a0)
    800033e0:	00053823          	sd	zero,16(a0)
    800033e4:	01010113          	addi	sp,sp,16
    800033e8:	00008067          	ret

00000000800033ec <acquire>:
    800033ec:	fe010113          	addi	sp,sp,-32
    800033f0:	00813823          	sd	s0,16(sp)
    800033f4:	00913423          	sd	s1,8(sp)
    800033f8:	00113c23          	sd	ra,24(sp)
    800033fc:	01213023          	sd	s2,0(sp)
    80003400:	02010413          	addi	s0,sp,32
    80003404:	00050493          	mv	s1,a0
    80003408:	10002973          	csrr	s2,sstatus
    8000340c:	100027f3          	csrr	a5,sstatus
    80003410:	ffd7f793          	andi	a5,a5,-3
    80003414:	10079073          	csrw	sstatus,a5
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	8e8080e7          	jalr	-1816(ra) # 80001d00 <mycpu>
    80003420:	07852783          	lw	a5,120(a0)
    80003424:	06078e63          	beqz	a5,800034a0 <acquire+0xb4>
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	8d8080e7          	jalr	-1832(ra) # 80001d00 <mycpu>
    80003430:	07852783          	lw	a5,120(a0)
    80003434:	0004a703          	lw	a4,0(s1)
    80003438:	0017879b          	addiw	a5,a5,1
    8000343c:	06f52c23          	sw	a5,120(a0)
    80003440:	04071063          	bnez	a4,80003480 <acquire+0x94>
    80003444:	00100713          	li	a4,1
    80003448:	00070793          	mv	a5,a4
    8000344c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003450:	0007879b          	sext.w	a5,a5
    80003454:	fe079ae3          	bnez	a5,80003448 <acquire+0x5c>
    80003458:	0ff0000f          	fence
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	8a4080e7          	jalr	-1884(ra) # 80001d00 <mycpu>
    80003464:	01813083          	ld	ra,24(sp)
    80003468:	01013403          	ld	s0,16(sp)
    8000346c:	00a4b823          	sd	a0,16(s1)
    80003470:	00013903          	ld	s2,0(sp)
    80003474:	00813483          	ld	s1,8(sp)
    80003478:	02010113          	addi	sp,sp,32
    8000347c:	00008067          	ret
    80003480:	0104b903          	ld	s2,16(s1)
    80003484:	fffff097          	auipc	ra,0xfffff
    80003488:	87c080e7          	jalr	-1924(ra) # 80001d00 <mycpu>
    8000348c:	faa91ce3          	bne	s2,a0,80003444 <acquire+0x58>
    80003490:	00001517          	auipc	a0,0x1
    80003494:	d2050513          	addi	a0,a0,-736 # 800041b0 <digits+0x20>
    80003498:	fffff097          	auipc	ra,0xfffff
    8000349c:	224080e7          	jalr	548(ra) # 800026bc <panic>
    800034a0:	00195913          	srli	s2,s2,0x1
    800034a4:	fffff097          	auipc	ra,0xfffff
    800034a8:	85c080e7          	jalr	-1956(ra) # 80001d00 <mycpu>
    800034ac:	00197913          	andi	s2,s2,1
    800034b0:	07252e23          	sw	s2,124(a0)
    800034b4:	f75ff06f          	j	80003428 <acquire+0x3c>

00000000800034b8 <release>:
    800034b8:	fe010113          	addi	sp,sp,-32
    800034bc:	00813823          	sd	s0,16(sp)
    800034c0:	00113c23          	sd	ra,24(sp)
    800034c4:	00913423          	sd	s1,8(sp)
    800034c8:	01213023          	sd	s2,0(sp)
    800034cc:	02010413          	addi	s0,sp,32
    800034d0:	00052783          	lw	a5,0(a0)
    800034d4:	00079a63          	bnez	a5,800034e8 <release+0x30>
    800034d8:	00001517          	auipc	a0,0x1
    800034dc:	ce050513          	addi	a0,a0,-800 # 800041b8 <digits+0x28>
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	1dc080e7          	jalr	476(ra) # 800026bc <panic>
    800034e8:	01053903          	ld	s2,16(a0)
    800034ec:	00050493          	mv	s1,a0
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	810080e7          	jalr	-2032(ra) # 80001d00 <mycpu>
    800034f8:	fea910e3          	bne	s2,a0,800034d8 <release+0x20>
    800034fc:	0004b823          	sd	zero,16(s1)
    80003500:	0ff0000f          	fence
    80003504:	0f50000f          	fence	iorw,ow
    80003508:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000350c:	ffffe097          	auipc	ra,0xffffe
    80003510:	7f4080e7          	jalr	2036(ra) # 80001d00 <mycpu>
    80003514:	100027f3          	csrr	a5,sstatus
    80003518:	0027f793          	andi	a5,a5,2
    8000351c:	04079a63          	bnez	a5,80003570 <release+0xb8>
    80003520:	07852783          	lw	a5,120(a0)
    80003524:	02f05e63          	blez	a5,80003560 <release+0xa8>
    80003528:	fff7871b          	addiw	a4,a5,-1
    8000352c:	06e52c23          	sw	a4,120(a0)
    80003530:	00071c63          	bnez	a4,80003548 <release+0x90>
    80003534:	07c52783          	lw	a5,124(a0)
    80003538:	00078863          	beqz	a5,80003548 <release+0x90>
    8000353c:	100027f3          	csrr	a5,sstatus
    80003540:	0027e793          	ori	a5,a5,2
    80003544:	10079073          	csrw	sstatus,a5
    80003548:	01813083          	ld	ra,24(sp)
    8000354c:	01013403          	ld	s0,16(sp)
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	00013903          	ld	s2,0(sp)
    80003558:	02010113          	addi	sp,sp,32
    8000355c:	00008067          	ret
    80003560:	00001517          	auipc	a0,0x1
    80003564:	c7850513          	addi	a0,a0,-904 # 800041d8 <digits+0x48>
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	154080e7          	jalr	340(ra) # 800026bc <panic>
    80003570:	00001517          	auipc	a0,0x1
    80003574:	c5050513          	addi	a0,a0,-944 # 800041c0 <digits+0x30>
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	144080e7          	jalr	324(ra) # 800026bc <panic>

0000000080003580 <holding>:
    80003580:	00052783          	lw	a5,0(a0)
    80003584:	00079663          	bnez	a5,80003590 <holding+0x10>
    80003588:	00000513          	li	a0,0
    8000358c:	00008067          	ret
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00813823          	sd	s0,16(sp)
    80003598:	00913423          	sd	s1,8(sp)
    8000359c:	00113c23          	sd	ra,24(sp)
    800035a0:	02010413          	addi	s0,sp,32
    800035a4:	01053483          	ld	s1,16(a0)
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	758080e7          	jalr	1880(ra) # 80001d00 <mycpu>
    800035b0:	01813083          	ld	ra,24(sp)
    800035b4:	01013403          	ld	s0,16(sp)
    800035b8:	40a48533          	sub	a0,s1,a0
    800035bc:	00153513          	seqz	a0,a0
    800035c0:	00813483          	ld	s1,8(sp)
    800035c4:	02010113          	addi	sp,sp,32
    800035c8:	00008067          	ret

00000000800035cc <push_off>:
    800035cc:	fe010113          	addi	sp,sp,-32
    800035d0:	00813823          	sd	s0,16(sp)
    800035d4:	00113c23          	sd	ra,24(sp)
    800035d8:	00913423          	sd	s1,8(sp)
    800035dc:	02010413          	addi	s0,sp,32
    800035e0:	100024f3          	csrr	s1,sstatus
    800035e4:	100027f3          	csrr	a5,sstatus
    800035e8:	ffd7f793          	andi	a5,a5,-3
    800035ec:	10079073          	csrw	sstatus,a5
    800035f0:	ffffe097          	auipc	ra,0xffffe
    800035f4:	710080e7          	jalr	1808(ra) # 80001d00 <mycpu>
    800035f8:	07852783          	lw	a5,120(a0)
    800035fc:	02078663          	beqz	a5,80003628 <push_off+0x5c>
    80003600:	ffffe097          	auipc	ra,0xffffe
    80003604:	700080e7          	jalr	1792(ra) # 80001d00 <mycpu>
    80003608:	07852783          	lw	a5,120(a0)
    8000360c:	01813083          	ld	ra,24(sp)
    80003610:	01013403          	ld	s0,16(sp)
    80003614:	0017879b          	addiw	a5,a5,1
    80003618:	06f52c23          	sw	a5,120(a0)
    8000361c:	00813483          	ld	s1,8(sp)
    80003620:	02010113          	addi	sp,sp,32
    80003624:	00008067          	ret
    80003628:	0014d493          	srli	s1,s1,0x1
    8000362c:	ffffe097          	auipc	ra,0xffffe
    80003630:	6d4080e7          	jalr	1748(ra) # 80001d00 <mycpu>
    80003634:	0014f493          	andi	s1,s1,1
    80003638:	06952e23          	sw	s1,124(a0)
    8000363c:	fc5ff06f          	j	80003600 <push_off+0x34>

0000000080003640 <pop_off>:
    80003640:	ff010113          	addi	sp,sp,-16
    80003644:	00813023          	sd	s0,0(sp)
    80003648:	00113423          	sd	ra,8(sp)
    8000364c:	01010413          	addi	s0,sp,16
    80003650:	ffffe097          	auipc	ra,0xffffe
    80003654:	6b0080e7          	jalr	1712(ra) # 80001d00 <mycpu>
    80003658:	100027f3          	csrr	a5,sstatus
    8000365c:	0027f793          	andi	a5,a5,2
    80003660:	04079663          	bnez	a5,800036ac <pop_off+0x6c>
    80003664:	07852783          	lw	a5,120(a0)
    80003668:	02f05a63          	blez	a5,8000369c <pop_off+0x5c>
    8000366c:	fff7871b          	addiw	a4,a5,-1
    80003670:	06e52c23          	sw	a4,120(a0)
    80003674:	00071c63          	bnez	a4,8000368c <pop_off+0x4c>
    80003678:	07c52783          	lw	a5,124(a0)
    8000367c:	00078863          	beqz	a5,8000368c <pop_off+0x4c>
    80003680:	100027f3          	csrr	a5,sstatus
    80003684:	0027e793          	ori	a5,a5,2
    80003688:	10079073          	csrw	sstatus,a5
    8000368c:	00813083          	ld	ra,8(sp)
    80003690:	00013403          	ld	s0,0(sp)
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret
    8000369c:	00001517          	auipc	a0,0x1
    800036a0:	b3c50513          	addi	a0,a0,-1220 # 800041d8 <digits+0x48>
    800036a4:	fffff097          	auipc	ra,0xfffff
    800036a8:	018080e7          	jalr	24(ra) # 800026bc <panic>
    800036ac:	00001517          	auipc	a0,0x1
    800036b0:	b1450513          	addi	a0,a0,-1260 # 800041c0 <digits+0x30>
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	008080e7          	jalr	8(ra) # 800026bc <panic>

00000000800036bc <push_on>:
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00813823          	sd	s0,16(sp)
    800036c4:	00113c23          	sd	ra,24(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	02010413          	addi	s0,sp,32
    800036d0:	100024f3          	csrr	s1,sstatus
    800036d4:	100027f3          	csrr	a5,sstatus
    800036d8:	0027e793          	ori	a5,a5,2
    800036dc:	10079073          	csrw	sstatus,a5
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	620080e7          	jalr	1568(ra) # 80001d00 <mycpu>
    800036e8:	07852783          	lw	a5,120(a0)
    800036ec:	02078663          	beqz	a5,80003718 <push_on+0x5c>
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	610080e7          	jalr	1552(ra) # 80001d00 <mycpu>
    800036f8:	07852783          	lw	a5,120(a0)
    800036fc:	01813083          	ld	ra,24(sp)
    80003700:	01013403          	ld	s0,16(sp)
    80003704:	0017879b          	addiw	a5,a5,1
    80003708:	06f52c23          	sw	a5,120(a0)
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	02010113          	addi	sp,sp,32
    80003714:	00008067          	ret
    80003718:	0014d493          	srli	s1,s1,0x1
    8000371c:	ffffe097          	auipc	ra,0xffffe
    80003720:	5e4080e7          	jalr	1508(ra) # 80001d00 <mycpu>
    80003724:	0014f493          	andi	s1,s1,1
    80003728:	06952e23          	sw	s1,124(a0)
    8000372c:	fc5ff06f          	j	800036f0 <push_on+0x34>

0000000080003730 <pop_on>:
    80003730:	ff010113          	addi	sp,sp,-16
    80003734:	00813023          	sd	s0,0(sp)
    80003738:	00113423          	sd	ra,8(sp)
    8000373c:	01010413          	addi	s0,sp,16
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	5c0080e7          	jalr	1472(ra) # 80001d00 <mycpu>
    80003748:	100027f3          	csrr	a5,sstatus
    8000374c:	0027f793          	andi	a5,a5,2
    80003750:	04078463          	beqz	a5,80003798 <pop_on+0x68>
    80003754:	07852783          	lw	a5,120(a0)
    80003758:	02f05863          	blez	a5,80003788 <pop_on+0x58>
    8000375c:	fff7879b          	addiw	a5,a5,-1
    80003760:	06f52c23          	sw	a5,120(a0)
    80003764:	07853783          	ld	a5,120(a0)
    80003768:	00079863          	bnez	a5,80003778 <pop_on+0x48>
    8000376c:	100027f3          	csrr	a5,sstatus
    80003770:	ffd7f793          	andi	a5,a5,-3
    80003774:	10079073          	csrw	sstatus,a5
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	01010113          	addi	sp,sp,16
    80003784:	00008067          	ret
    80003788:	00001517          	auipc	a0,0x1
    8000378c:	a7850513          	addi	a0,a0,-1416 # 80004200 <digits+0x70>
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	f2c080e7          	jalr	-212(ra) # 800026bc <panic>
    80003798:	00001517          	auipc	a0,0x1
    8000379c:	a4850513          	addi	a0,a0,-1464 # 800041e0 <digits+0x50>
    800037a0:	fffff097          	auipc	ra,0xfffff
    800037a4:	f1c080e7          	jalr	-228(ra) # 800026bc <panic>

00000000800037a8 <__memset>:
    800037a8:	ff010113          	addi	sp,sp,-16
    800037ac:	00813423          	sd	s0,8(sp)
    800037b0:	01010413          	addi	s0,sp,16
    800037b4:	1a060e63          	beqz	a2,80003970 <__memset+0x1c8>
    800037b8:	40a007b3          	neg	a5,a0
    800037bc:	0077f793          	andi	a5,a5,7
    800037c0:	00778693          	addi	a3,a5,7
    800037c4:	00b00813          	li	a6,11
    800037c8:	0ff5f593          	andi	a1,a1,255
    800037cc:	fff6071b          	addiw	a4,a2,-1
    800037d0:	1b06e663          	bltu	a3,a6,8000397c <__memset+0x1d4>
    800037d4:	1cd76463          	bltu	a4,a3,8000399c <__memset+0x1f4>
    800037d8:	1a078e63          	beqz	a5,80003994 <__memset+0x1ec>
    800037dc:	00b50023          	sb	a1,0(a0)
    800037e0:	00100713          	li	a4,1
    800037e4:	1ae78463          	beq	a5,a4,8000398c <__memset+0x1e4>
    800037e8:	00b500a3          	sb	a1,1(a0)
    800037ec:	00200713          	li	a4,2
    800037f0:	1ae78a63          	beq	a5,a4,800039a4 <__memset+0x1fc>
    800037f4:	00b50123          	sb	a1,2(a0)
    800037f8:	00300713          	li	a4,3
    800037fc:	18e78463          	beq	a5,a4,80003984 <__memset+0x1dc>
    80003800:	00b501a3          	sb	a1,3(a0)
    80003804:	00400713          	li	a4,4
    80003808:	1ae78263          	beq	a5,a4,800039ac <__memset+0x204>
    8000380c:	00b50223          	sb	a1,4(a0)
    80003810:	00500713          	li	a4,5
    80003814:	1ae78063          	beq	a5,a4,800039b4 <__memset+0x20c>
    80003818:	00b502a3          	sb	a1,5(a0)
    8000381c:	00700713          	li	a4,7
    80003820:	18e79e63          	bne	a5,a4,800039bc <__memset+0x214>
    80003824:	00b50323          	sb	a1,6(a0)
    80003828:	00700e93          	li	t4,7
    8000382c:	00859713          	slli	a4,a1,0x8
    80003830:	00e5e733          	or	a4,a1,a4
    80003834:	01059e13          	slli	t3,a1,0x10
    80003838:	01c76e33          	or	t3,a4,t3
    8000383c:	01859313          	slli	t1,a1,0x18
    80003840:	006e6333          	or	t1,t3,t1
    80003844:	02059893          	slli	a7,a1,0x20
    80003848:	40f60e3b          	subw	t3,a2,a5
    8000384c:	011368b3          	or	a7,t1,a7
    80003850:	02859813          	slli	a6,a1,0x28
    80003854:	0108e833          	or	a6,a7,a6
    80003858:	03059693          	slli	a3,a1,0x30
    8000385c:	003e589b          	srliw	a7,t3,0x3
    80003860:	00d866b3          	or	a3,a6,a3
    80003864:	03859713          	slli	a4,a1,0x38
    80003868:	00389813          	slli	a6,a7,0x3
    8000386c:	00f507b3          	add	a5,a0,a5
    80003870:	00e6e733          	or	a4,a3,a4
    80003874:	000e089b          	sext.w	a7,t3
    80003878:	00f806b3          	add	a3,a6,a5
    8000387c:	00e7b023          	sd	a4,0(a5)
    80003880:	00878793          	addi	a5,a5,8
    80003884:	fed79ce3          	bne	a5,a3,8000387c <__memset+0xd4>
    80003888:	ff8e7793          	andi	a5,t3,-8
    8000388c:	0007871b          	sext.w	a4,a5
    80003890:	01d787bb          	addw	a5,a5,t4
    80003894:	0ce88e63          	beq	a7,a4,80003970 <__memset+0x1c8>
    80003898:	00f50733          	add	a4,a0,a5
    8000389c:	00b70023          	sb	a1,0(a4)
    800038a0:	0017871b          	addiw	a4,a5,1
    800038a4:	0cc77663          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    800038a8:	00e50733          	add	a4,a0,a4
    800038ac:	00b70023          	sb	a1,0(a4)
    800038b0:	0027871b          	addiw	a4,a5,2
    800038b4:	0ac77e63          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    800038b8:	00e50733          	add	a4,a0,a4
    800038bc:	00b70023          	sb	a1,0(a4)
    800038c0:	0037871b          	addiw	a4,a5,3
    800038c4:	0ac77663          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    800038c8:	00e50733          	add	a4,a0,a4
    800038cc:	00b70023          	sb	a1,0(a4)
    800038d0:	0047871b          	addiw	a4,a5,4
    800038d4:	08c77e63          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    800038d8:	00e50733          	add	a4,a0,a4
    800038dc:	00b70023          	sb	a1,0(a4)
    800038e0:	0057871b          	addiw	a4,a5,5
    800038e4:	08c77663          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    800038e8:	00e50733          	add	a4,a0,a4
    800038ec:	00b70023          	sb	a1,0(a4)
    800038f0:	0067871b          	addiw	a4,a5,6
    800038f4:	06c77e63          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    800038f8:	00e50733          	add	a4,a0,a4
    800038fc:	00b70023          	sb	a1,0(a4)
    80003900:	0077871b          	addiw	a4,a5,7
    80003904:	06c77663          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    80003908:	00e50733          	add	a4,a0,a4
    8000390c:	00b70023          	sb	a1,0(a4)
    80003910:	0087871b          	addiw	a4,a5,8
    80003914:	04c77e63          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    80003918:	00e50733          	add	a4,a0,a4
    8000391c:	00b70023          	sb	a1,0(a4)
    80003920:	0097871b          	addiw	a4,a5,9
    80003924:	04c77663          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    80003928:	00e50733          	add	a4,a0,a4
    8000392c:	00b70023          	sb	a1,0(a4)
    80003930:	00a7871b          	addiw	a4,a5,10
    80003934:	02c77e63          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    80003938:	00e50733          	add	a4,a0,a4
    8000393c:	00b70023          	sb	a1,0(a4)
    80003940:	00b7871b          	addiw	a4,a5,11
    80003944:	02c77663          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    80003948:	00e50733          	add	a4,a0,a4
    8000394c:	00b70023          	sb	a1,0(a4)
    80003950:	00c7871b          	addiw	a4,a5,12
    80003954:	00c77e63          	bgeu	a4,a2,80003970 <__memset+0x1c8>
    80003958:	00e50733          	add	a4,a0,a4
    8000395c:	00b70023          	sb	a1,0(a4)
    80003960:	00d7879b          	addiw	a5,a5,13
    80003964:	00c7f663          	bgeu	a5,a2,80003970 <__memset+0x1c8>
    80003968:	00f507b3          	add	a5,a0,a5
    8000396c:	00b78023          	sb	a1,0(a5)
    80003970:	00813403          	ld	s0,8(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret
    8000397c:	00b00693          	li	a3,11
    80003980:	e55ff06f          	j	800037d4 <__memset+0x2c>
    80003984:	00300e93          	li	t4,3
    80003988:	ea5ff06f          	j	8000382c <__memset+0x84>
    8000398c:	00100e93          	li	t4,1
    80003990:	e9dff06f          	j	8000382c <__memset+0x84>
    80003994:	00000e93          	li	t4,0
    80003998:	e95ff06f          	j	8000382c <__memset+0x84>
    8000399c:	00000793          	li	a5,0
    800039a0:	ef9ff06f          	j	80003898 <__memset+0xf0>
    800039a4:	00200e93          	li	t4,2
    800039a8:	e85ff06f          	j	8000382c <__memset+0x84>
    800039ac:	00400e93          	li	t4,4
    800039b0:	e7dff06f          	j	8000382c <__memset+0x84>
    800039b4:	00500e93          	li	t4,5
    800039b8:	e75ff06f          	j	8000382c <__memset+0x84>
    800039bc:	00600e93          	li	t4,6
    800039c0:	e6dff06f          	j	8000382c <__memset+0x84>

00000000800039c4 <__memmove>:
    800039c4:	ff010113          	addi	sp,sp,-16
    800039c8:	00813423          	sd	s0,8(sp)
    800039cc:	01010413          	addi	s0,sp,16
    800039d0:	0e060863          	beqz	a2,80003ac0 <__memmove+0xfc>
    800039d4:	fff6069b          	addiw	a3,a2,-1
    800039d8:	0006881b          	sext.w	a6,a3
    800039dc:	0ea5e863          	bltu	a1,a0,80003acc <__memmove+0x108>
    800039e0:	00758713          	addi	a4,a1,7
    800039e4:	00a5e7b3          	or	a5,a1,a0
    800039e8:	40a70733          	sub	a4,a4,a0
    800039ec:	0077f793          	andi	a5,a5,7
    800039f0:	00f73713          	sltiu	a4,a4,15
    800039f4:	00174713          	xori	a4,a4,1
    800039f8:	0017b793          	seqz	a5,a5
    800039fc:	00e7f7b3          	and	a5,a5,a4
    80003a00:	10078863          	beqz	a5,80003b10 <__memmove+0x14c>
    80003a04:	00900793          	li	a5,9
    80003a08:	1107f463          	bgeu	a5,a6,80003b10 <__memmove+0x14c>
    80003a0c:	0036581b          	srliw	a6,a2,0x3
    80003a10:	fff8081b          	addiw	a6,a6,-1
    80003a14:	02081813          	slli	a6,a6,0x20
    80003a18:	01d85893          	srli	a7,a6,0x1d
    80003a1c:	00858813          	addi	a6,a1,8
    80003a20:	00058793          	mv	a5,a1
    80003a24:	00050713          	mv	a4,a0
    80003a28:	01088833          	add	a6,a7,a6
    80003a2c:	0007b883          	ld	a7,0(a5)
    80003a30:	00878793          	addi	a5,a5,8
    80003a34:	00870713          	addi	a4,a4,8
    80003a38:	ff173c23          	sd	a7,-8(a4)
    80003a3c:	ff0798e3          	bne	a5,a6,80003a2c <__memmove+0x68>
    80003a40:	ff867713          	andi	a4,a2,-8
    80003a44:	02071793          	slli	a5,a4,0x20
    80003a48:	0207d793          	srli	a5,a5,0x20
    80003a4c:	00f585b3          	add	a1,a1,a5
    80003a50:	40e686bb          	subw	a3,a3,a4
    80003a54:	00f507b3          	add	a5,a0,a5
    80003a58:	06e60463          	beq	a2,a4,80003ac0 <__memmove+0xfc>
    80003a5c:	0005c703          	lbu	a4,0(a1)
    80003a60:	00e78023          	sb	a4,0(a5)
    80003a64:	04068e63          	beqz	a3,80003ac0 <__memmove+0xfc>
    80003a68:	0015c603          	lbu	a2,1(a1)
    80003a6c:	00100713          	li	a4,1
    80003a70:	00c780a3          	sb	a2,1(a5)
    80003a74:	04e68663          	beq	a3,a4,80003ac0 <__memmove+0xfc>
    80003a78:	0025c603          	lbu	a2,2(a1)
    80003a7c:	00200713          	li	a4,2
    80003a80:	00c78123          	sb	a2,2(a5)
    80003a84:	02e68e63          	beq	a3,a4,80003ac0 <__memmove+0xfc>
    80003a88:	0035c603          	lbu	a2,3(a1)
    80003a8c:	00300713          	li	a4,3
    80003a90:	00c781a3          	sb	a2,3(a5)
    80003a94:	02e68663          	beq	a3,a4,80003ac0 <__memmove+0xfc>
    80003a98:	0045c603          	lbu	a2,4(a1)
    80003a9c:	00400713          	li	a4,4
    80003aa0:	00c78223          	sb	a2,4(a5)
    80003aa4:	00e68e63          	beq	a3,a4,80003ac0 <__memmove+0xfc>
    80003aa8:	0055c603          	lbu	a2,5(a1)
    80003aac:	00500713          	li	a4,5
    80003ab0:	00c782a3          	sb	a2,5(a5)
    80003ab4:	00e68663          	beq	a3,a4,80003ac0 <__memmove+0xfc>
    80003ab8:	0065c703          	lbu	a4,6(a1)
    80003abc:	00e78323          	sb	a4,6(a5)
    80003ac0:	00813403          	ld	s0,8(sp)
    80003ac4:	01010113          	addi	sp,sp,16
    80003ac8:	00008067          	ret
    80003acc:	02061713          	slli	a4,a2,0x20
    80003ad0:	02075713          	srli	a4,a4,0x20
    80003ad4:	00e587b3          	add	a5,a1,a4
    80003ad8:	f0f574e3          	bgeu	a0,a5,800039e0 <__memmove+0x1c>
    80003adc:	02069613          	slli	a2,a3,0x20
    80003ae0:	02065613          	srli	a2,a2,0x20
    80003ae4:	fff64613          	not	a2,a2
    80003ae8:	00e50733          	add	a4,a0,a4
    80003aec:	00c78633          	add	a2,a5,a2
    80003af0:	fff7c683          	lbu	a3,-1(a5)
    80003af4:	fff78793          	addi	a5,a5,-1
    80003af8:	fff70713          	addi	a4,a4,-1
    80003afc:	00d70023          	sb	a3,0(a4)
    80003b00:	fec798e3          	bne	a5,a2,80003af0 <__memmove+0x12c>
    80003b04:	00813403          	ld	s0,8(sp)
    80003b08:	01010113          	addi	sp,sp,16
    80003b0c:	00008067          	ret
    80003b10:	02069713          	slli	a4,a3,0x20
    80003b14:	02075713          	srli	a4,a4,0x20
    80003b18:	00170713          	addi	a4,a4,1
    80003b1c:	00e50733          	add	a4,a0,a4
    80003b20:	00050793          	mv	a5,a0
    80003b24:	0005c683          	lbu	a3,0(a1)
    80003b28:	00178793          	addi	a5,a5,1
    80003b2c:	00158593          	addi	a1,a1,1
    80003b30:	fed78fa3          	sb	a3,-1(a5)
    80003b34:	fee798e3          	bne	a5,a4,80003b24 <__memmove+0x160>
    80003b38:	f89ff06f          	j	80003ac0 <__memmove+0xfc>

0000000080003b3c <__putc>:
    80003b3c:	fe010113          	addi	sp,sp,-32
    80003b40:	00813823          	sd	s0,16(sp)
    80003b44:	00113c23          	sd	ra,24(sp)
    80003b48:	02010413          	addi	s0,sp,32
    80003b4c:	00050793          	mv	a5,a0
    80003b50:	fef40593          	addi	a1,s0,-17
    80003b54:	00100613          	li	a2,1
    80003b58:	00000513          	li	a0,0
    80003b5c:	fef407a3          	sb	a5,-17(s0)
    80003b60:	fffff097          	auipc	ra,0xfffff
    80003b64:	b3c080e7          	jalr	-1220(ra) # 8000269c <console_write>
    80003b68:	01813083          	ld	ra,24(sp)
    80003b6c:	01013403          	ld	s0,16(sp)
    80003b70:	02010113          	addi	sp,sp,32
    80003b74:	00008067          	ret

0000000080003b78 <__getc>:
    80003b78:	fe010113          	addi	sp,sp,-32
    80003b7c:	00813823          	sd	s0,16(sp)
    80003b80:	00113c23          	sd	ra,24(sp)
    80003b84:	02010413          	addi	s0,sp,32
    80003b88:	fe840593          	addi	a1,s0,-24
    80003b8c:	00100613          	li	a2,1
    80003b90:	00000513          	li	a0,0
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	ae8080e7          	jalr	-1304(ra) # 8000267c <console_read>
    80003b9c:	fe844503          	lbu	a0,-24(s0)
    80003ba0:	01813083          	ld	ra,24(sp)
    80003ba4:	01013403          	ld	s0,16(sp)
    80003ba8:	02010113          	addi	sp,sp,32
    80003bac:	00008067          	ret

0000000080003bb0 <console_handler>:
    80003bb0:	fe010113          	addi	sp,sp,-32
    80003bb4:	00813823          	sd	s0,16(sp)
    80003bb8:	00113c23          	sd	ra,24(sp)
    80003bbc:	00913423          	sd	s1,8(sp)
    80003bc0:	02010413          	addi	s0,sp,32
    80003bc4:	14202773          	csrr	a4,scause
    80003bc8:	100027f3          	csrr	a5,sstatus
    80003bcc:	0027f793          	andi	a5,a5,2
    80003bd0:	06079e63          	bnez	a5,80003c4c <console_handler+0x9c>
    80003bd4:	00074c63          	bltz	a4,80003bec <console_handler+0x3c>
    80003bd8:	01813083          	ld	ra,24(sp)
    80003bdc:	01013403          	ld	s0,16(sp)
    80003be0:	00813483          	ld	s1,8(sp)
    80003be4:	02010113          	addi	sp,sp,32
    80003be8:	00008067          	ret
    80003bec:	0ff77713          	andi	a4,a4,255
    80003bf0:	00900793          	li	a5,9
    80003bf4:	fef712e3          	bne	a4,a5,80003bd8 <console_handler+0x28>
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	6dc080e7          	jalr	1756(ra) # 800022d4 <plic_claim>
    80003c00:	00a00793          	li	a5,10
    80003c04:	00050493          	mv	s1,a0
    80003c08:	02f50c63          	beq	a0,a5,80003c40 <console_handler+0x90>
    80003c0c:	fc0506e3          	beqz	a0,80003bd8 <console_handler+0x28>
    80003c10:	00050593          	mv	a1,a0
    80003c14:	00000517          	auipc	a0,0x0
    80003c18:	4f450513          	addi	a0,a0,1268 # 80004108 <CONSOLE_STATUS+0xf8>
    80003c1c:	fffff097          	auipc	ra,0xfffff
    80003c20:	afc080e7          	jalr	-1284(ra) # 80002718 <__printf>
    80003c24:	01013403          	ld	s0,16(sp)
    80003c28:	01813083          	ld	ra,24(sp)
    80003c2c:	00048513          	mv	a0,s1
    80003c30:	00813483          	ld	s1,8(sp)
    80003c34:	02010113          	addi	sp,sp,32
    80003c38:	ffffe317          	auipc	t1,0xffffe
    80003c3c:	6d430067          	jr	1748(t1) # 8000230c <plic_complete>
    80003c40:	fffff097          	auipc	ra,0xfffff
    80003c44:	3e0080e7          	jalr	992(ra) # 80003020 <uartintr>
    80003c48:	fddff06f          	j	80003c24 <console_handler+0x74>
    80003c4c:	00000517          	auipc	a0,0x0
    80003c50:	5bc50513          	addi	a0,a0,1468 # 80004208 <digits+0x78>
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	a68080e7          	jalr	-1432(ra) # 800026bc <panic>
	...
