
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	44013103          	ld	sp,1088(sp) # 80004440 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	688010ef          	jal	ra,800016a4 <start>

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
    80001084:	10c000ef          	jal	ra,80001190 <_ZN6Kernel21supervisorTrapHandlerEv>

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

0000000080001110 <_Z9mem_allocm>:
/**
 * C API function for allocation on heap
 * @param size Size in bytes to be allocated
 * @return pointer to allocated heap space
 */
void* mem_alloc(size_t size) {
    80001110:	ff010113          	addi	sp,sp,-16
    80001114:	00813423          	sd	s0,8(sp)
    80001118:	01010413          	addi	s0,sp,16
    size_t size_in_blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    8000111c:	03f50513          	addi	a0,a0,63 # 103f <_entry-0x7fffefc1>
    80001120:	00655513          	srli	a0,a0,0x6
    
    __asm__ volatile("mv a1, %0" : : "r"(size_in_blocks)); //send size as argument for ecall
    80001124:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01"); //send opcode as second argument (0x01 - mem_alloc)
    80001128:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    8000112c:	00000073          	ecall

    void* ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001130:	00050513          	mv	a0,a0
    return ret;
}
    80001134:	00813403          	ld	s0,8(sp)
    80001138:	01010113          	addi	sp,sp,16
    8000113c:	00008067          	ret

0000000080001140 <_Z8mem_freePv>:
/**
 * C API function to free allocated space
 * @param ptr pointer to heap space allocated by mem_alloc
 * @return negative error code or 0 for successfull free
 */
int mem_free (void* ptr) {
    80001140:	ff010113          	addi	sp,sp,-16
    80001144:	00813423          	sd	s0,8(sp)
    80001148:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" : : "r"(ptr)); //send pointer as argument for ecall
    8000114c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x02"); //send opcode as second argument (0x02 - mem_free)
    80001150:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001154:	00000073          	ecall

    uint64 ret;
    __asm__ volatile("mv %0, a0" : "=r"(ret));
    80001158:	00050513          	mv	a0,a0
    return (int)ret;
    8000115c:	0005051b          	sext.w	a0,a0
    80001160:	00813403          	ld	s0,8(sp)
    80001164:	01010113          	addi	sp,sp,16
    80001168:	00008067          	ret

000000008000116c <_ZN6Kernel4initEv>:
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"


void Kernel::init() {
    8000116c:	ff010113          	addi	sp,sp,-16
    80001170:	00813423          	sd	s0,8(sp)
    80001174:	01010413          	addi	s0,sp,16
    // set trap routine
    w_stvec((uint64)&supervisorTrap);
    80001178:	00003797          	auipc	a5,0x3
    8000117c:	2d07b783          	ld	a5,720(a5) # 80004448 <_GLOBAL_OFFSET_TABLE_+0x18>
        __asm__ volatile("csrr %0, stvec" : "=r"(x));
        return x;
    }

    static inline void w_stvec(uint64 x) {
        __asm__ volatile("csrw stvec, %0" : : "r"(x));
    80001180:	10579073          	csrw	stvec,a5
    //ms_sstatus(SstatusBits::SSTATUS_SIE);
}
    80001184:	00813403          	ld	s0,8(sp)
    80001188:	01010113          	addi	sp,sp,16
    8000118c:	00008067          	ret

0000000080001190 <_ZN6Kernel21supervisorTrapHandlerEv>:


void Kernel::supervisorTrapHandler()
{
    80001190:	fa010113          	addi	sp,sp,-96
    80001194:	04113c23          	sd	ra,88(sp)
    80001198:	04813823          	sd	s0,80(sp)
    8000119c:	04913423          	sd	s1,72(sp)
    800011a0:	06010413          	addi	s0,sp,96
        __asm__ volatile("csrr %0, scause" : "=r"(x));
    800011a4:	142027f3          	csrr	a5,scause
    800011a8:	fcf43023          	sd	a5,-64(s0)
        return x;
    800011ac:	fc043783          	ld	a5,-64(s0)
    uint32 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800011b0:	ff87879b          	addiw	a5,a5,-8
    800011b4:	00100713          	li	a4,1
    800011b8:	00f77c63          	bgeu	a4,a5,800011d0 <_ZN6Kernel21supervisorTrapHandlerEv+0x40>
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    
    return;
    800011bc:	05813083          	ld	ra,88(sp)
    800011c0:	05013403          	ld	s0,80(sp)
    800011c4:	04813483          	ld	s1,72(sp)
    800011c8:	06010113          	addi	sp,sp,96
    800011cc:	00008067          	ret
        __asm__ volatile("csrr %0, sepc" : "=r"(x));
    800011d0:	141027f3          	csrr	a5,sepc
    800011d4:	fcf43c23          	sd	a5,-40(s0)
        return x;
    800011d8:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc() + 4;
    800011dc:	00478793          	addi	a5,a5,4
    800011e0:	faf43423          	sd	a5,-88(s0)
        __asm__ volatile("csrr %0, sstatus" : "=r"(x));
    800011e4:	100027f3          	csrr	a5,sstatus
    800011e8:	fcf43823          	sd	a5,-48(s0)
        return x;
    800011ec:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus =  r_sstatus();
    800011f0:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile("mv %0, a0" : "=r"(x));
    800011f4:	00050793          	mv	a5,a0
    800011f8:	fcf43423          	sd	a5,-56(s0)
        return x;
    800011fc:	fc843783          	ld	a5,-56(s0)
        uint64 volatile opcode = r_a0();
    80001200:	faf43c23          	sd	a5,-72(s0)
        switch (opcode) {
    80001204:	fb843783          	ld	a5,-72(s0)
    80001208:	02e78063          	beq	a5,a4,80001228 <_ZN6Kernel21supervisorTrapHandlerEv+0x98>
    8000120c:	00200713          	li	a4,2
    80001210:	02e78e63          	beq	a5,a4,8000124c <_ZN6Kernel21supervisorTrapHandlerEv+0xbc>
        w_sstatus(sstatus);
    80001214:	fb043783          	ld	a5,-80(s0)
        __asm__ volatile("csrw sstatus, %0" : : "r"(x));
    80001218:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    8000121c:	fa843783          	ld	a5,-88(s0)
        __asm__ volatile("csrw sepc, %0" : : "r"(x));
    80001220:	14179073          	csrw	sepc,a5
    return;
    80001224:	f99ff06f          	j	800011bc <_ZN6Kernel21supervisorTrapHandlerEv+0x2c>
                __asm__ volatile("mv %0, a1" : "=r" (size));
    80001228:	00058493          	mv	s1,a1
                pointer = MemoryAllocator::instance().kmem_alloc(size);
    8000122c:	00000097          	auipc	ra,0x0
    80001230:	1c4080e7          	jalr	452(ra) # 800013f0 <_ZN15MemoryAllocator8instanceEv>
    80001234:	00048593          	mv	a1,s1
    80001238:	00000097          	auipc	ra,0x0
    8000123c:	244080e7          	jalr	580(ra) # 8000147c <_ZN15MemoryAllocator10kmem_allocEm>
                __asm__ volatile("mv t0, %0" : : "r"(pointer));
    80001240:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001244:	04542823          	sw	t0,80(s0)
                break;
    80001248:	fcdff06f          	j	80001214 <_ZN6Kernel21supervisorTrapHandlerEv+0x84>
                __asm__ volatile("mv %0, a1" : "=r" (pointer));
    8000124c:	00058493          	mv	s1,a1
                value = MemoryAllocator::instance().kmem_free(pointer);
    80001250:	00000097          	auipc	ra,0x0
    80001254:	1a0080e7          	jalr	416(ra) # 800013f0 <_ZN15MemoryAllocator8instanceEv>
    80001258:	00048593          	mv	a1,s1
    8000125c:	00000097          	auipc	ra,0x0
    80001260:	3a8080e7          	jalr	936(ra) # 80001604 <_ZN15MemoryAllocator9kmem_freeEPv>
                __asm__ volatile("mv t0, %0" : : "r"(value));
    80001264:	00050293          	mv	t0,a0
                __asm__ volatile ("sw t0, 80(x8)"); //override previously stored a0 in memory to return value
    80001268:	04542823          	sw	t0,80(s0)
                break;
    8000126c:	fa9ff06f          	j	80001214 <_ZN6Kernel21supervisorTrapHandlerEv+0x84>

0000000080001270 <main>:
#include "../h/kernel.hpp"
#include "../h/memory_allocator.hpp"


void main()
{
    80001270:	ff010113          	addi	sp,sp,-16
    80001274:	00113423          	sd	ra,8(sp)
    80001278:	00813023          	sd	s0,0(sp)
    8000127c:	01010413          	addi	s0,sp,16
    Kernel::init();
    80001280:	00000097          	auipc	ra,0x0
    80001284:	eec080e7          	jalr	-276(ra) # 8000116c <_ZN6Kernel4initEv>
    Kernel::print_int((long long)MEM_BLOCK_SIZE, 16, 0);
    80001288:	00000613          	li	a2,0
    8000128c:	01000593          	li	a1,16
    80001290:	04000513          	li	a0,64
    80001294:	00000097          	auipc	ra,0x0
    80001298:	080080e7          	jalr	128(ra) # 80001314 <_ZN6Kernel9print_intEiii>
    __putc('\n');
    8000129c:	00a00513          	li	a0,10
    800012a0:	00002097          	auipc	ra,0x2
    800012a4:	4cc080e7          	jalr	1228(ra) # 8000376c <__putc>
    Kernel::print_int((long long)HEAP_START_ADDR, 16, 0);
    800012a8:	00000613          	li	a2,0
    800012ac:	01000593          	li	a1,16
    800012b0:	00003797          	auipc	a5,0x3
    800012b4:	1887b783          	ld	a5,392(a5) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x8>
    800012b8:	0007a503          	lw	a0,0(a5)
    800012bc:	00000097          	auipc	ra,0x0
    800012c0:	058080e7          	jalr	88(ra) # 80001314 <_ZN6Kernel9print_intEiii>
    __putc('\n');
    800012c4:	00a00513          	li	a0,10
    800012c8:	00002097          	auipc	ra,0x2
    800012cc:	4a4080e7          	jalr	1188(ra) # 8000376c <__putc>
    Kernel::print_int((long long)HEAP_END_ADDR, 16, 0);
    800012d0:	00000613          	li	a2,0
    800012d4:	01000593          	li	a1,16
    800012d8:	00003797          	auipc	a5,0x3
    800012dc:	1787b783          	ld	a5,376(a5) # 80004450 <_GLOBAL_OFFSET_TABLE_+0x20>
    800012e0:	0007a503          	lw	a0,0(a5)
    800012e4:	00000097          	auipc	ra,0x0
    800012e8:	030080e7          	jalr	48(ra) # 80001314 <_ZN6Kernel9print_intEiii>
    __putc('\n');
    800012ec:	00a00513          	li	a0,10
    800012f0:	00002097          	auipc	ra,0x2
    800012f4:	47c080e7          	jalr	1148(ra) # 8000376c <__putc>
    __putc('\n');
    800012f8:	00a00513          	li	a0,10
    800012fc:	00002097          	auipc	ra,0x2
    80001300:	470080e7          	jalr	1136(ra) # 8000376c <__putc>

    return;
    80001304:	00813083          	ld	ra,8(sp)
    80001308:	00013403          	ld	s0,0(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <_ZN6Kernel9print_intEiii>:
    inline static void print_int(int xx, int base, int sgn)
    80001314:	fb010113          	addi	sp,sp,-80
    80001318:	04113423          	sd	ra,72(sp)
    8000131c:	04813023          	sd	s0,64(sp)
    80001320:	02913c23          	sd	s1,56(sp)
    80001324:	05010413          	addi	s0,sp,80
        char my_digits[] = "0123456789ABCDEF";
    80001328:	00003797          	auipc	a5,0x3
    8000132c:	cf878793          	addi	a5,a5,-776 # 80004020 <CONSOLE_STATUS+0x10>
    80001330:	0007b703          	ld	a4,0(a5)
    80001334:	fce43423          	sd	a4,-56(s0)
    80001338:	0087b703          	ld	a4,8(a5)
    8000133c:	fce43823          	sd	a4,-48(s0)
    80001340:	0107c783          	lbu	a5,16(a5)
    80001344:	fcf40c23          	sb	a5,-40(s0)
        if(sgn && xx < 0){
    80001348:	00060463          	beqz	a2,80001350 <_ZN6Kernel9print_intEiii+0x3c>
    8000134c:	08054263          	bltz	a0,800013d0 <_ZN6Kernel9print_intEiii+0xbc>
            x = xx;
    80001350:	0005051b          	sext.w	a0,a0
        neg = 0;
    80001354:	00000813          	li	a6,0
        i = 0;
    80001358:	00000493          	li	s1,0
            buf[i++] = my_digits[x % base];
    8000135c:	0005871b          	sext.w	a4,a1
    80001360:	02b577bb          	remuw	a5,a0,a1
    80001364:	00048693          	mv	a3,s1
    80001368:	0014849b          	addiw	s1,s1,1
    8000136c:	02079793          	slli	a5,a5,0x20
    80001370:	0207d793          	srli	a5,a5,0x20
    80001374:	fe040613          	addi	a2,s0,-32
    80001378:	00f607b3          	add	a5,a2,a5
    8000137c:	fe87c603          	lbu	a2,-24(a5)
    80001380:	fe040793          	addi	a5,s0,-32
    80001384:	00d787b3          	add	a5,a5,a3
    80001388:	fcc78c23          	sb	a2,-40(a5)
        }while((x /= base) != 0);
    8000138c:	0005061b          	sext.w	a2,a0
    80001390:	02b5553b          	divuw	a0,a0,a1
    80001394:	fce674e3          	bgeu	a2,a4,8000135c <_ZN6Kernel9print_intEiii+0x48>
        if(neg)
    80001398:	00080c63          	beqz	a6,800013b0 <_ZN6Kernel9print_intEiii+0x9c>
            buf[i++] = '-';
    8000139c:	fe040793          	addi	a5,s0,-32
    800013a0:	009784b3          	add	s1,a5,s1
    800013a4:	02d00793          	li	a5,45
    800013a8:	fcf48c23          	sb	a5,-40(s1)
    800013ac:	0026849b          	addiw	s1,a3,2
        while(--i >= 0)
    800013b0:	fff4849b          	addiw	s1,s1,-1
    800013b4:	0204c463          	bltz	s1,800013dc <_ZN6Kernel9print_intEiii+0xc8>
            __putc(buf[i]);
    800013b8:	fe040793          	addi	a5,s0,-32
    800013bc:	009787b3          	add	a5,a5,s1
    800013c0:	fd87c503          	lbu	a0,-40(a5)
    800013c4:	00002097          	auipc	ra,0x2
    800013c8:	3a8080e7          	jalr	936(ra) # 8000376c <__putc>
    800013cc:	fe5ff06f          	j	800013b0 <_ZN6Kernel9print_intEiii+0x9c>
            x = -xx;
    800013d0:	40a0053b          	negw	a0,a0
            neg = 1;
    800013d4:	00100813          	li	a6,1
            x = -xx;
    800013d8:	f81ff06f          	j	80001358 <_ZN6Kernel9print_intEiii+0x44>
    }
    800013dc:	04813083          	ld	ra,72(sp)
    800013e0:	04013403          	ld	s0,64(sp)
    800013e4:	03813483          	ld	s1,56(sp)
    800013e8:	05010113          	addi	sp,sp,80
    800013ec:	00008067          	ret

00000000800013f0 <_ZN15MemoryAllocator8instanceEv>:
#include "../h/memory_allocator.hpp"
#include "../lib/console.h"



MemoryAllocator& MemoryAllocator::instance() {
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    return inst;
}
    800013fc:	00003517          	auipc	a0,0x3
    80001400:	0a450513          	addi	a0,a0,164 # 800044a0 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80001404:	00813403          	ld	s0,8(sp)
    80001408:	01010113          	addi	sp,sp,16
    8000140c:	00008067          	ret

0000000080001410 <_ZN15MemoryAllocator9kmem_initEv>:

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    head = (ChunkHeader*) HEAP_START_ADDR;
    8000141c:	00003797          	auipc	a5,0x3
    80001420:	01c7b783          	ld	a5,28(a5) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001424:	0007b703          	ld	a4,0(a5)
    80001428:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    8000142c:	00073c23          	sd	zero,24(a4)
    head->prev = nullptr;
    80001430:	00053783          	ld	a5,0(a0)
    80001434:	0007b823          	sd	zero,16(a5)
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    80001438:	00003797          	auipc	a5,0x3
    8000143c:	0187b783          	ld	a5,24(a5) # 80004450 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001440:	0007b783          	ld	a5,0(a5)
    80001444:	40e787b3          	sub	a5,a5,a4
    80001448:	00053703          	ld	a4,0(a0)
    8000144c:	fd878793          	addi	a5,a5,-40
    80001450:	00f73423          	sd	a5,8(a4)
    head->free = true;
    80001454:	00053783          	ld	a5,0(a0)
    80001458:	00100713          	li	a4,1
    8000145c:	02e78023          	sb	a4,32(a5)
    head->magic = MAGIC;
    80001460:	00053703          	ld	a4,0(a0)
    80001464:	abcdf7b7          	lui	a5,0xabcdf
    80001468:	f017879b          	addiw	a5,a5,-255
    8000146c:	00f72023          	sw	a5,0(a4)
    return;
} 
    80001470:	00813403          	ld	s0,8(sp)
    80001474:	01010113          	addi	sp,sp,16
    80001478:	00008067          	ret

000000008000147c <_ZN15MemoryAllocator10kmem_allocEm>:
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;
    8000147c:	0c058863          	beqz	a1,8000154c <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
void* MemoryAllocator::kmem_alloc(size_t size) {
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	01213023          	sd	s2,0(sp)
    80001494:	02010413          	addi	s0,sp,32
    80001498:	00050913          	mv	s2,a0

    // aligned size in bytes
    size_t aligned = size * MEM_BLOCK_SIZE;
    8000149c:	00659493          	slli	s1,a1,0x6

    if (!head) kmem_init();
    800014a0:	00053783          	ld	a5,0(a0)
    800014a4:	00078663          	beqz	a5,800014b0 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    
    ChunkHeader* curr = head;
    800014a8:	00093503          	ld	a0,0(s2)
    800014ac:	0340006f          	j	800014e0 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    if (!head) kmem_init();
    800014b0:	00000097          	auipc	ra,0x0
    800014b4:	f60080e7          	jalr	-160(ra) # 80001410 <_ZN15MemoryAllocator9kmem_initEv>
    800014b8:	ff1ff06f          	j	800014a8 <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;
    800014bc:	02050023          	sb	zero,32(a0)

                return (void*)((char*)curr + sizeof(ChunkHeader));
    800014c0:	02850513          	addi	a0,a0,40

        curr = curr->next;
    }

    return nullptr;
}
    800014c4:	01813083          	ld	ra,24(sp)
    800014c8:	01013403          	ld	s0,16(sp)
    800014cc:	00813483          	ld	s1,8(sp)
    800014d0:	00013903          	ld	s2,0(sp)
    800014d4:	02010113          	addi	sp,sp,32
    800014d8:	00008067          	ret
        curr = curr->next;
    800014dc:	01853503          	ld	a0,24(a0)
    while (curr) {
    800014e0:	fe0502e3          	beqz	a0,800014c4 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
        if (curr->free){
    800014e4:	02054783          	lbu	a5,32(a0)
    800014e8:	fe078ae3          	beqz	a5,800014dc <_ZN15MemoryAllocator10kmem_allocEm+0x60>
            if (curr->size == aligned){
    800014ec:	00853783          	ld	a5,8(a0)
    800014f0:	fc9786e3          	beq	a5,s1,800014bc <_ZN15MemoryAllocator10kmem_allocEm+0x40>
            else if (curr->size > aligned + sizeof(ChunkHeader)){
    800014f4:	02848713          	addi	a4,s1,40
    800014f8:	fef772e3          	bgeu	a4,a5,800014dc <_ZN15MemoryAllocator10kmem_allocEm+0x60>
                size_t remaining = curr->size - aligned;
    800014fc:	409787b3          	sub	a5,a5,s1
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
    80001500:	00e50733          	add	a4,a0,a4
                newChunk->free = true;
    80001504:	00100693          	li	a3,1
    80001508:	02d70023          	sb	a3,32(a4)
                newChunk->size = remaining - sizeof(ChunkHeader);
    8000150c:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd98d8>
    80001510:	00f73423          	sd	a5,8(a4)
                newChunk->next = curr->next;
    80001514:	01853783          	ld	a5,24(a0)
    80001518:	00f73c23          	sd	a5,24(a4)
                newChunk->prev = curr;
    8000151c:	00a73823          	sd	a0,16(a4)
                newChunk->magic = MAGIC;
    80001520:	abcdf7b7          	lui	a5,0xabcdf
    80001524:	f017879b          	addiw	a5,a5,-255
    80001528:	00f72023          	sw	a5,0(a4)
                if(curr->next) curr->next->prev = newChunk;
    8000152c:	01853783          	ld	a5,24(a0)
    80001530:	00078463          	beqz	a5,80001538 <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    80001534:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd9910>
                curr->next = newChunk;
    80001538:	00e53c23          	sd	a4,24(a0)
                curr->size = aligned;
    8000153c:	00953423          	sd	s1,8(a0)
                curr->free = false;
    80001540:	02050023          	sb	zero,32(a0)
                return (void*)((char*)curr + sizeof(ChunkHeader));
    80001544:	02850513          	addi	a0,a0,40
    80001548:	f7dff06f          	j	800014c4 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    if (size == 0) return nullptr;
    8000154c:	00000513          	li	a0,0
}
    80001550:	00008067          	ret

0000000080001554 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00813423          	sd	s0,8(sp)
    8000155c:	01010413          	addi	s0,sp,16
    if(!chunk->free) return;
    80001560:	0205c783          	lbu	a5,32(a1)
    80001564:	04078263          	beqz	a5,800015a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

    //join with next
    if(chunk->next){
    80001568:	0185b783          	ld	a5,24(a1)
    8000156c:	00078e63          	beqz	a5,80001588 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
    80001570:	0207c703          	lbu	a4,32(a5)
    80001574:	00070a63          	beqz	a4,80001588 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    80001578:	0085b683          	ld	a3,8(a1)
    8000157c:	02868713          	addi	a4,a3,40
    80001580:	00e58733          	add	a4,a1,a4
    80001584:	02e78863          	beq	a5,a4,800015b4 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
    80001588:	0105b783          	ld	a5,16(a1)
    8000158c:	00078e63          	beqz	a5,800015a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
    80001590:	0207c703          	lbu	a4,32(a5)
    80001594:	00070a63          	beqz	a4,800015a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    80001598:	0087b683          	ld	a3,8(a5)
    8000159c:	02868713          	addi	a4,a3,40
    800015a0:	00e78733          	add	a4,a5,a4
    800015a4:	02b70a63          	beq	a4,a1,800015d8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
    800015a8:	00813403          	ld	s0,8(sp)
    800015ac:	01010113          	addi	sp,sp,16
    800015b0:	00008067          	ret
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
    800015b4:	0087b703          	ld	a4,8(a5)
    800015b8:	00e686b3          	add	a3,a3,a4
    800015bc:	02868693          	addi	a3,a3,40
    800015c0:	00d5b423          	sd	a3,8(a1)
            chunk->next = chunk->next->next;
    800015c4:	0187b783          	ld	a5,24(a5)
    800015c8:	00f5bc23          	sd	a5,24(a1)
            if (chunk->next)
    800015cc:	fa078ee3          	beqz	a5,80001588 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
                chunk->next->prev = chunk;
    800015d0:	00b7b823          	sd	a1,16(a5)
    800015d4:	fb5ff06f          	j	80001588 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
    800015d8:	0085b703          	ld	a4,8(a1)
    800015dc:	00e686b3          	add	a3,a3,a4
    800015e0:	02868693          	addi	a3,a3,40
    800015e4:	00d7b423          	sd	a3,8(a5)
            chunk->prev->next = chunk->next;
    800015e8:	0105b703          	ld	a4,16(a1)
    800015ec:	0185b783          	ld	a5,24(a1)
    800015f0:	00f73c23          	sd	a5,24(a4)
            if (chunk->next)
    800015f4:	fa078ae3          	beqz	a5,800015a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
                chunk->next->prev = chunk->prev;
    800015f8:	0105b703          	ld	a4,16(a1)
    800015fc:	00e7b823          	sd	a4,16(a5)
            chunk = chunk->prev;
    80001600:	fa9ff06f          	j	800015a8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080001604 <_ZN15MemoryAllocator9kmem_freeEPv>:
    if (!ptr) return -1;
    80001604:	06058c63          	beqz	a1,8000167c <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    80001608:	00058793          	mv	a5,a1
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    8000160c:	00003717          	auipc	a4,0x3
    80001610:	e2c73703          	ld	a4,-468(a4) # 80004438 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001614:	00073703          	ld	a4,0(a4)
    80001618:	06e5e663          	bltu	a1,a4,80001684 <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    8000161c:	00003717          	auipc	a4,0x3
    80001620:	e3473703          	ld	a4,-460(a4) # 80004450 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001624:	00073703          	ld	a4,0(a4)
    80001628:	06b76263          	bltu	a4,a1,8000168c <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    8000162c:	fd858593          	addi	a1,a1,-40
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80001630:	fd87a683          	lw	a3,-40(a5)
    80001634:	abcdf737          	lui	a4,0xabcdf
    80001638:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd9801>
    8000163c:	04e69c63          	bne	a3,a4,80001694 <_ZN15MemoryAllocator9kmem_freeEPv+0x90>
    80001640:	ff87c703          	lbu	a4,-8(a5)
    80001644:	04071c63          	bnez	a4,8000169c <_ZN15MemoryAllocator9kmem_freeEPv+0x98>
int MemoryAllocator::kmem_free(void* ptr) {
    80001648:	ff010113          	addi	sp,sp,-16
    8000164c:	00113423          	sd	ra,8(sp)
    80001650:	00813023          	sd	s0,0(sp)
    80001654:	01010413          	addi	s0,sp,16
    chunkHeader->free = true;
    80001658:	00100713          	li	a4,1
    8000165c:	fee78c23          	sb	a4,-8(a5)
    try_join(chunkHeader);
    80001660:	00000097          	auipc	ra,0x0
    80001664:	ef4080e7          	jalr	-268(ra) # 80001554 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    return 0;
    80001668:	00000513          	li	a0,0
}
    8000166c:	00813083          	ld	ra,8(sp)
    80001670:	00013403          	ld	s0,0(sp)
    80001674:	01010113          	addi	sp,sp,16
    80001678:	00008067          	ret
    if (!ptr) return -1;
    8000167c:	fff00513          	li	a0,-1
    80001680:	00008067          	ret
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80001684:	ffe00513          	li	a0,-2
    80001688:	00008067          	ret
    8000168c:	ffe00513          	li	a0,-2
    80001690:	00008067          	ret
    if(chunkHeader->magic != MAGIC || chunkHeader->free) return -3;
    80001694:	ffd00513          	li	a0,-3
    80001698:	00008067          	ret
    8000169c:	ffd00513          	li	a0,-3
}
    800016a0:	00008067          	ret

00000000800016a4 <start>:
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00813423          	sd	s0,8(sp)
    800016ac:	01010413          	addi	s0,sp,16
    800016b0:	300027f3          	csrr	a5,mstatus
    800016b4:	ffffe737          	lui	a4,0xffffe
    800016b8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff90ff>
    800016bc:	00e7f7b3          	and	a5,a5,a4
    800016c0:	00001737          	lui	a4,0x1
    800016c4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800016c8:	00e7e7b3          	or	a5,a5,a4
    800016cc:	30079073          	csrw	mstatus,a5
    800016d0:	00000797          	auipc	a5,0x0
    800016d4:	16078793          	addi	a5,a5,352 # 80001830 <system_main>
    800016d8:	34179073          	csrw	mepc,a5
    800016dc:	00000793          	li	a5,0
    800016e0:	18079073          	csrw	satp,a5
    800016e4:	000107b7          	lui	a5,0x10
    800016e8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016ec:	30279073          	csrw	medeleg,a5
    800016f0:	30379073          	csrw	mideleg,a5
    800016f4:	104027f3          	csrr	a5,sie
    800016f8:	2227e793          	ori	a5,a5,546
    800016fc:	10479073          	csrw	sie,a5
    80001700:	fff00793          	li	a5,-1
    80001704:	00a7d793          	srli	a5,a5,0xa
    80001708:	3b079073          	csrw	pmpaddr0,a5
    8000170c:	00f00793          	li	a5,15
    80001710:	3a079073          	csrw	pmpcfg0,a5
    80001714:	f14027f3          	csrr	a5,mhartid
    80001718:	0200c737          	lui	a4,0x200c
    8000171c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001720:	0007869b          	sext.w	a3,a5
    80001724:	00269713          	slli	a4,a3,0x2
    80001728:	000f4637          	lui	a2,0xf4
    8000172c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001730:	00d70733          	add	a4,a4,a3
    80001734:	0037979b          	slliw	a5,a5,0x3
    80001738:	020046b7          	lui	a3,0x2004
    8000173c:	00d787b3          	add	a5,a5,a3
    80001740:	00c585b3          	add	a1,a1,a2
    80001744:	00371693          	slli	a3,a4,0x3
    80001748:	00003717          	auipc	a4,0x3
    8000174c:	d6870713          	addi	a4,a4,-664 # 800044b0 <timer_scratch>
    80001750:	00b7b023          	sd	a1,0(a5)
    80001754:	00d70733          	add	a4,a4,a3
    80001758:	00f73c23          	sd	a5,24(a4)
    8000175c:	02c73023          	sd	a2,32(a4)
    80001760:	34071073          	csrw	mscratch,a4
    80001764:	00000797          	auipc	a5,0x0
    80001768:	6ec78793          	addi	a5,a5,1772 # 80001e50 <timervec>
    8000176c:	30579073          	csrw	mtvec,a5
    80001770:	300027f3          	csrr	a5,mstatus
    80001774:	0087e793          	ori	a5,a5,8
    80001778:	30079073          	csrw	mstatus,a5
    8000177c:	304027f3          	csrr	a5,mie
    80001780:	0807e793          	ori	a5,a5,128
    80001784:	30479073          	csrw	mie,a5
    80001788:	f14027f3          	csrr	a5,mhartid
    8000178c:	0007879b          	sext.w	a5,a5
    80001790:	00078213          	mv	tp,a5
    80001794:	30200073          	mret
    80001798:	00813403          	ld	s0,8(sp)
    8000179c:	01010113          	addi	sp,sp,16
    800017a0:	00008067          	ret

00000000800017a4 <timerinit>:
    800017a4:	ff010113          	addi	sp,sp,-16
    800017a8:	00813423          	sd	s0,8(sp)
    800017ac:	01010413          	addi	s0,sp,16
    800017b0:	f14027f3          	csrr	a5,mhartid
    800017b4:	0200c737          	lui	a4,0x200c
    800017b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800017bc:	0007869b          	sext.w	a3,a5
    800017c0:	00269713          	slli	a4,a3,0x2
    800017c4:	000f4637          	lui	a2,0xf4
    800017c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017cc:	00d70733          	add	a4,a4,a3
    800017d0:	0037979b          	slliw	a5,a5,0x3
    800017d4:	020046b7          	lui	a3,0x2004
    800017d8:	00d787b3          	add	a5,a5,a3
    800017dc:	00c585b3          	add	a1,a1,a2
    800017e0:	00371693          	slli	a3,a4,0x3
    800017e4:	00003717          	auipc	a4,0x3
    800017e8:	ccc70713          	addi	a4,a4,-820 # 800044b0 <timer_scratch>
    800017ec:	00b7b023          	sd	a1,0(a5)
    800017f0:	00d70733          	add	a4,a4,a3
    800017f4:	00f73c23          	sd	a5,24(a4)
    800017f8:	02c73023          	sd	a2,32(a4)
    800017fc:	34071073          	csrw	mscratch,a4
    80001800:	00000797          	auipc	a5,0x0
    80001804:	65078793          	addi	a5,a5,1616 # 80001e50 <timervec>
    80001808:	30579073          	csrw	mtvec,a5
    8000180c:	300027f3          	csrr	a5,mstatus
    80001810:	0087e793          	ori	a5,a5,8
    80001814:	30079073          	csrw	mstatus,a5
    80001818:	304027f3          	csrr	a5,mie
    8000181c:	0807e793          	ori	a5,a5,128
    80001820:	30479073          	csrw	mie,a5
    80001824:	00813403          	ld	s0,8(sp)
    80001828:	01010113          	addi	sp,sp,16
    8000182c:	00008067          	ret

0000000080001830 <system_main>:
    80001830:	fe010113          	addi	sp,sp,-32
    80001834:	00813823          	sd	s0,16(sp)
    80001838:	00913423          	sd	s1,8(sp)
    8000183c:	00113c23          	sd	ra,24(sp)
    80001840:	02010413          	addi	s0,sp,32
    80001844:	00000097          	auipc	ra,0x0
    80001848:	0c4080e7          	jalr	196(ra) # 80001908 <cpuid>
    8000184c:	00003497          	auipc	s1,0x3
    80001850:	c2448493          	addi	s1,s1,-988 # 80004470 <started>
    80001854:	02050263          	beqz	a0,80001878 <system_main+0x48>
    80001858:	0004a783          	lw	a5,0(s1)
    8000185c:	0007879b          	sext.w	a5,a5
    80001860:	fe078ce3          	beqz	a5,80001858 <system_main+0x28>
    80001864:	0ff0000f          	fence
    80001868:	00003517          	auipc	a0,0x3
    8000186c:	80050513          	addi	a0,a0,-2048 # 80004068 <CONSOLE_STATUS+0x58>
    80001870:	00001097          	auipc	ra,0x1
    80001874:	a7c080e7          	jalr	-1412(ra) # 800022ec <panic>
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	9d0080e7          	jalr	-1584(ra) # 80002248 <consoleinit>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	15c080e7          	jalr	348(ra) # 800029dc <printfinit>
    80001888:	00003517          	auipc	a0,0x3
    8000188c:	8c050513          	addi	a0,a0,-1856 # 80004148 <CONSOLE_STATUS+0x138>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	ab8080e7          	jalr	-1352(ra) # 80002348 <__printf>
    80001898:	00002517          	auipc	a0,0x2
    8000189c:	7a050513          	addi	a0,a0,1952 # 80004038 <CONSOLE_STATUS+0x28>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	aa8080e7          	jalr	-1368(ra) # 80002348 <__printf>
    800018a8:	00003517          	auipc	a0,0x3
    800018ac:	8a050513          	addi	a0,a0,-1888 # 80004148 <CONSOLE_STATUS+0x138>
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	a98080e7          	jalr	-1384(ra) # 80002348 <__printf>
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	4b0080e7          	jalr	1200(ra) # 80002d68 <kinit>
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	148080e7          	jalr	328(ra) # 80001a08 <trapinit>
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	16c080e7          	jalr	364(ra) # 80001a34 <trapinithart>
    800018d0:	00000097          	auipc	ra,0x0
    800018d4:	5c0080e7          	jalr	1472(ra) # 80001e90 <plicinit>
    800018d8:	00000097          	auipc	ra,0x0
    800018dc:	5e0080e7          	jalr	1504(ra) # 80001eb8 <plicinithart>
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	078080e7          	jalr	120(ra) # 80001958 <userinit>
    800018e8:	0ff0000f          	fence
    800018ec:	00100793          	li	a5,1
    800018f0:	00002517          	auipc	a0,0x2
    800018f4:	76050513          	addi	a0,a0,1888 # 80004050 <CONSOLE_STATUS+0x40>
    800018f8:	00f4a023          	sw	a5,0(s1)
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	a4c080e7          	jalr	-1460(ra) # 80002348 <__printf>
    80001904:	0000006f          	j	80001904 <system_main+0xd4>

0000000080001908 <cpuid>:
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00813423          	sd	s0,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    80001914:	00020513          	mv	a0,tp
    80001918:	00813403          	ld	s0,8(sp)
    8000191c:	0005051b          	sext.w	a0,a0
    80001920:	01010113          	addi	sp,sp,16
    80001924:	00008067          	ret

0000000080001928 <mycpu>:
    80001928:	ff010113          	addi	sp,sp,-16
    8000192c:	00813423          	sd	s0,8(sp)
    80001930:	01010413          	addi	s0,sp,16
    80001934:	00020793          	mv	a5,tp
    80001938:	00813403          	ld	s0,8(sp)
    8000193c:	0007879b          	sext.w	a5,a5
    80001940:	00779793          	slli	a5,a5,0x7
    80001944:	00004517          	auipc	a0,0x4
    80001948:	b9c50513          	addi	a0,a0,-1124 # 800054e0 <cpus>
    8000194c:	00f50533          	add	a0,a0,a5
    80001950:	01010113          	addi	sp,sp,16
    80001954:	00008067          	ret

0000000080001958 <userinit>:
    80001958:	ff010113          	addi	sp,sp,-16
    8000195c:	00813423          	sd	s0,8(sp)
    80001960:	01010413          	addi	s0,sp,16
    80001964:	00813403          	ld	s0,8(sp)
    80001968:	01010113          	addi	sp,sp,16
    8000196c:	00000317          	auipc	t1,0x0
    80001970:	90430067          	jr	-1788(t1) # 80001270 <main>

0000000080001974 <either_copyout>:
    80001974:	ff010113          	addi	sp,sp,-16
    80001978:	00813023          	sd	s0,0(sp)
    8000197c:	00113423          	sd	ra,8(sp)
    80001980:	01010413          	addi	s0,sp,16
    80001984:	02051663          	bnez	a0,800019b0 <either_copyout+0x3c>
    80001988:	00058513          	mv	a0,a1
    8000198c:	00060593          	mv	a1,a2
    80001990:	0006861b          	sext.w	a2,a3
    80001994:	00002097          	auipc	ra,0x2
    80001998:	c60080e7          	jalr	-928(ra) # 800035f4 <__memmove>
    8000199c:	00813083          	ld	ra,8(sp)
    800019a0:	00013403          	ld	s0,0(sp)
    800019a4:	00000513          	li	a0,0
    800019a8:	01010113          	addi	sp,sp,16
    800019ac:	00008067          	ret
    800019b0:	00002517          	auipc	a0,0x2
    800019b4:	6e050513          	addi	a0,a0,1760 # 80004090 <CONSOLE_STATUS+0x80>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	934080e7          	jalr	-1740(ra) # 800022ec <panic>

00000000800019c0 <either_copyin>:
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00813023          	sd	s0,0(sp)
    800019c8:	00113423          	sd	ra,8(sp)
    800019cc:	01010413          	addi	s0,sp,16
    800019d0:	02059463          	bnez	a1,800019f8 <either_copyin+0x38>
    800019d4:	00060593          	mv	a1,a2
    800019d8:	0006861b          	sext.w	a2,a3
    800019dc:	00002097          	auipc	ra,0x2
    800019e0:	c18080e7          	jalr	-1000(ra) # 800035f4 <__memmove>
    800019e4:	00813083          	ld	ra,8(sp)
    800019e8:	00013403          	ld	s0,0(sp)
    800019ec:	00000513          	li	a0,0
    800019f0:	01010113          	addi	sp,sp,16
    800019f4:	00008067          	ret
    800019f8:	00002517          	auipc	a0,0x2
    800019fc:	6c050513          	addi	a0,a0,1728 # 800040b8 <CONSOLE_STATUS+0xa8>
    80001a00:	00001097          	auipc	ra,0x1
    80001a04:	8ec080e7          	jalr	-1812(ra) # 800022ec <panic>

0000000080001a08 <trapinit>:
    80001a08:	ff010113          	addi	sp,sp,-16
    80001a0c:	00813423          	sd	s0,8(sp)
    80001a10:	01010413          	addi	s0,sp,16
    80001a14:	00813403          	ld	s0,8(sp)
    80001a18:	00002597          	auipc	a1,0x2
    80001a1c:	6c858593          	addi	a1,a1,1736 # 800040e0 <CONSOLE_STATUS+0xd0>
    80001a20:	00004517          	auipc	a0,0x4
    80001a24:	b4050513          	addi	a0,a0,-1216 # 80005560 <tickslock>
    80001a28:	01010113          	addi	sp,sp,16
    80001a2c:	00001317          	auipc	t1,0x1
    80001a30:	5cc30067          	jr	1484(t1) # 80002ff8 <initlock>

0000000080001a34 <trapinithart>:
    80001a34:	ff010113          	addi	sp,sp,-16
    80001a38:	00813423          	sd	s0,8(sp)
    80001a3c:	01010413          	addi	s0,sp,16
    80001a40:	00000797          	auipc	a5,0x0
    80001a44:	30078793          	addi	a5,a5,768 # 80001d40 <kernelvec>
    80001a48:	10579073          	csrw	stvec,a5
    80001a4c:	00813403          	ld	s0,8(sp)
    80001a50:	01010113          	addi	sp,sp,16
    80001a54:	00008067          	ret

0000000080001a58 <usertrap>:
    80001a58:	ff010113          	addi	sp,sp,-16
    80001a5c:	00813423          	sd	s0,8(sp)
    80001a60:	01010413          	addi	s0,sp,16
    80001a64:	00813403          	ld	s0,8(sp)
    80001a68:	01010113          	addi	sp,sp,16
    80001a6c:	00008067          	ret

0000000080001a70 <usertrapret>:
    80001a70:	ff010113          	addi	sp,sp,-16
    80001a74:	00813423          	sd	s0,8(sp)
    80001a78:	01010413          	addi	s0,sp,16
    80001a7c:	00813403          	ld	s0,8(sp)
    80001a80:	01010113          	addi	sp,sp,16
    80001a84:	00008067          	ret

0000000080001a88 <kerneltrap>:
    80001a88:	fe010113          	addi	sp,sp,-32
    80001a8c:	00813823          	sd	s0,16(sp)
    80001a90:	00113c23          	sd	ra,24(sp)
    80001a94:	00913423          	sd	s1,8(sp)
    80001a98:	02010413          	addi	s0,sp,32
    80001a9c:	142025f3          	csrr	a1,scause
    80001aa0:	100027f3          	csrr	a5,sstatus
    80001aa4:	0027f793          	andi	a5,a5,2
    80001aa8:	10079c63          	bnez	a5,80001bc0 <kerneltrap+0x138>
    80001aac:	142027f3          	csrr	a5,scause
    80001ab0:	0207ce63          	bltz	a5,80001aec <kerneltrap+0x64>
    80001ab4:	00002517          	auipc	a0,0x2
    80001ab8:	67450513          	addi	a0,a0,1652 # 80004128 <CONSOLE_STATUS+0x118>
    80001abc:	00001097          	auipc	ra,0x1
    80001ac0:	88c080e7          	jalr	-1908(ra) # 80002348 <__printf>
    80001ac4:	141025f3          	csrr	a1,sepc
    80001ac8:	14302673          	csrr	a2,stval
    80001acc:	00002517          	auipc	a0,0x2
    80001ad0:	66c50513          	addi	a0,a0,1644 # 80004138 <CONSOLE_STATUS+0x128>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	874080e7          	jalr	-1932(ra) # 80002348 <__printf>
    80001adc:	00002517          	auipc	a0,0x2
    80001ae0:	67450513          	addi	a0,a0,1652 # 80004150 <CONSOLE_STATUS+0x140>
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	808080e7          	jalr	-2040(ra) # 800022ec <panic>
    80001aec:	0ff7f713          	andi	a4,a5,255
    80001af0:	00900693          	li	a3,9
    80001af4:	04d70063          	beq	a4,a3,80001b34 <kerneltrap+0xac>
    80001af8:	fff00713          	li	a4,-1
    80001afc:	03f71713          	slli	a4,a4,0x3f
    80001b00:	00170713          	addi	a4,a4,1
    80001b04:	fae798e3          	bne	a5,a4,80001ab4 <kerneltrap+0x2c>
    80001b08:	00000097          	auipc	ra,0x0
    80001b0c:	e00080e7          	jalr	-512(ra) # 80001908 <cpuid>
    80001b10:	06050663          	beqz	a0,80001b7c <kerneltrap+0xf4>
    80001b14:	144027f3          	csrr	a5,sip
    80001b18:	ffd7f793          	andi	a5,a5,-3
    80001b1c:	14479073          	csrw	sip,a5
    80001b20:	01813083          	ld	ra,24(sp)
    80001b24:	01013403          	ld	s0,16(sp)
    80001b28:	00813483          	ld	s1,8(sp)
    80001b2c:	02010113          	addi	sp,sp,32
    80001b30:	00008067          	ret
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	3d0080e7          	jalr	976(ra) # 80001f04 <plic_claim>
    80001b3c:	00a00793          	li	a5,10
    80001b40:	00050493          	mv	s1,a0
    80001b44:	06f50863          	beq	a0,a5,80001bb4 <kerneltrap+0x12c>
    80001b48:	fc050ce3          	beqz	a0,80001b20 <kerneltrap+0x98>
    80001b4c:	00050593          	mv	a1,a0
    80001b50:	00002517          	auipc	a0,0x2
    80001b54:	5b850513          	addi	a0,a0,1464 # 80004108 <CONSOLE_STATUS+0xf8>
    80001b58:	00000097          	auipc	ra,0x0
    80001b5c:	7f0080e7          	jalr	2032(ra) # 80002348 <__printf>
    80001b60:	01013403          	ld	s0,16(sp)
    80001b64:	01813083          	ld	ra,24(sp)
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	00813483          	ld	s1,8(sp)
    80001b70:	02010113          	addi	sp,sp,32
    80001b74:	00000317          	auipc	t1,0x0
    80001b78:	3c830067          	jr	968(t1) # 80001f3c <plic_complete>
    80001b7c:	00004517          	auipc	a0,0x4
    80001b80:	9e450513          	addi	a0,a0,-1564 # 80005560 <tickslock>
    80001b84:	00001097          	auipc	ra,0x1
    80001b88:	498080e7          	jalr	1176(ra) # 8000301c <acquire>
    80001b8c:	00003717          	auipc	a4,0x3
    80001b90:	8e870713          	addi	a4,a4,-1816 # 80004474 <ticks>
    80001b94:	00072783          	lw	a5,0(a4)
    80001b98:	00004517          	auipc	a0,0x4
    80001b9c:	9c850513          	addi	a0,a0,-1592 # 80005560 <tickslock>
    80001ba0:	0017879b          	addiw	a5,a5,1
    80001ba4:	00f72023          	sw	a5,0(a4)
    80001ba8:	00001097          	auipc	ra,0x1
    80001bac:	540080e7          	jalr	1344(ra) # 800030e8 <release>
    80001bb0:	f65ff06f          	j	80001b14 <kerneltrap+0x8c>
    80001bb4:	00001097          	auipc	ra,0x1
    80001bb8:	09c080e7          	jalr	156(ra) # 80002c50 <uartintr>
    80001bbc:	fa5ff06f          	j	80001b60 <kerneltrap+0xd8>
    80001bc0:	00002517          	auipc	a0,0x2
    80001bc4:	52850513          	addi	a0,a0,1320 # 800040e8 <CONSOLE_STATUS+0xd8>
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	724080e7          	jalr	1828(ra) # 800022ec <panic>

0000000080001bd0 <clockintr>:
    80001bd0:	fe010113          	addi	sp,sp,-32
    80001bd4:	00813823          	sd	s0,16(sp)
    80001bd8:	00913423          	sd	s1,8(sp)
    80001bdc:	00113c23          	sd	ra,24(sp)
    80001be0:	02010413          	addi	s0,sp,32
    80001be4:	00004497          	auipc	s1,0x4
    80001be8:	97c48493          	addi	s1,s1,-1668 # 80005560 <tickslock>
    80001bec:	00048513          	mv	a0,s1
    80001bf0:	00001097          	auipc	ra,0x1
    80001bf4:	42c080e7          	jalr	1068(ra) # 8000301c <acquire>
    80001bf8:	00003717          	auipc	a4,0x3
    80001bfc:	87c70713          	addi	a4,a4,-1924 # 80004474 <ticks>
    80001c00:	00072783          	lw	a5,0(a4)
    80001c04:	01013403          	ld	s0,16(sp)
    80001c08:	01813083          	ld	ra,24(sp)
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	0017879b          	addiw	a5,a5,1
    80001c14:	00813483          	ld	s1,8(sp)
    80001c18:	00f72023          	sw	a5,0(a4)
    80001c1c:	02010113          	addi	sp,sp,32
    80001c20:	00001317          	auipc	t1,0x1
    80001c24:	4c830067          	jr	1224(t1) # 800030e8 <release>

0000000080001c28 <devintr>:
    80001c28:	142027f3          	csrr	a5,scause
    80001c2c:	00000513          	li	a0,0
    80001c30:	0007c463          	bltz	a5,80001c38 <devintr+0x10>
    80001c34:	00008067          	ret
    80001c38:	fe010113          	addi	sp,sp,-32
    80001c3c:	00813823          	sd	s0,16(sp)
    80001c40:	00113c23          	sd	ra,24(sp)
    80001c44:	00913423          	sd	s1,8(sp)
    80001c48:	02010413          	addi	s0,sp,32
    80001c4c:	0ff7f713          	andi	a4,a5,255
    80001c50:	00900693          	li	a3,9
    80001c54:	04d70c63          	beq	a4,a3,80001cac <devintr+0x84>
    80001c58:	fff00713          	li	a4,-1
    80001c5c:	03f71713          	slli	a4,a4,0x3f
    80001c60:	00170713          	addi	a4,a4,1
    80001c64:	00e78c63          	beq	a5,a4,80001c7c <devintr+0x54>
    80001c68:	01813083          	ld	ra,24(sp)
    80001c6c:	01013403          	ld	s0,16(sp)
    80001c70:	00813483          	ld	s1,8(sp)
    80001c74:	02010113          	addi	sp,sp,32
    80001c78:	00008067          	ret
    80001c7c:	00000097          	auipc	ra,0x0
    80001c80:	c8c080e7          	jalr	-884(ra) # 80001908 <cpuid>
    80001c84:	06050663          	beqz	a0,80001cf0 <devintr+0xc8>
    80001c88:	144027f3          	csrr	a5,sip
    80001c8c:	ffd7f793          	andi	a5,a5,-3
    80001c90:	14479073          	csrw	sip,a5
    80001c94:	01813083          	ld	ra,24(sp)
    80001c98:	01013403          	ld	s0,16(sp)
    80001c9c:	00813483          	ld	s1,8(sp)
    80001ca0:	00200513          	li	a0,2
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	258080e7          	jalr	600(ra) # 80001f04 <plic_claim>
    80001cb4:	00a00793          	li	a5,10
    80001cb8:	00050493          	mv	s1,a0
    80001cbc:	06f50663          	beq	a0,a5,80001d28 <devintr+0x100>
    80001cc0:	00100513          	li	a0,1
    80001cc4:	fa0482e3          	beqz	s1,80001c68 <devintr+0x40>
    80001cc8:	00048593          	mv	a1,s1
    80001ccc:	00002517          	auipc	a0,0x2
    80001cd0:	43c50513          	addi	a0,a0,1084 # 80004108 <CONSOLE_STATUS+0xf8>
    80001cd4:	00000097          	auipc	ra,0x0
    80001cd8:	674080e7          	jalr	1652(ra) # 80002348 <__printf>
    80001cdc:	00048513          	mv	a0,s1
    80001ce0:	00000097          	auipc	ra,0x0
    80001ce4:	25c080e7          	jalr	604(ra) # 80001f3c <plic_complete>
    80001ce8:	00100513          	li	a0,1
    80001cec:	f7dff06f          	j	80001c68 <devintr+0x40>
    80001cf0:	00004517          	auipc	a0,0x4
    80001cf4:	87050513          	addi	a0,a0,-1936 # 80005560 <tickslock>
    80001cf8:	00001097          	auipc	ra,0x1
    80001cfc:	324080e7          	jalr	804(ra) # 8000301c <acquire>
    80001d00:	00002717          	auipc	a4,0x2
    80001d04:	77470713          	addi	a4,a4,1908 # 80004474 <ticks>
    80001d08:	00072783          	lw	a5,0(a4)
    80001d0c:	00004517          	auipc	a0,0x4
    80001d10:	85450513          	addi	a0,a0,-1964 # 80005560 <tickslock>
    80001d14:	0017879b          	addiw	a5,a5,1
    80001d18:	00f72023          	sw	a5,0(a4)
    80001d1c:	00001097          	auipc	ra,0x1
    80001d20:	3cc080e7          	jalr	972(ra) # 800030e8 <release>
    80001d24:	f65ff06f          	j	80001c88 <devintr+0x60>
    80001d28:	00001097          	auipc	ra,0x1
    80001d2c:	f28080e7          	jalr	-216(ra) # 80002c50 <uartintr>
    80001d30:	fadff06f          	j	80001cdc <devintr+0xb4>
	...

0000000080001d40 <kernelvec>:
    80001d40:	f0010113          	addi	sp,sp,-256
    80001d44:	00113023          	sd	ra,0(sp)
    80001d48:	00213423          	sd	sp,8(sp)
    80001d4c:	00313823          	sd	gp,16(sp)
    80001d50:	00413c23          	sd	tp,24(sp)
    80001d54:	02513023          	sd	t0,32(sp)
    80001d58:	02613423          	sd	t1,40(sp)
    80001d5c:	02713823          	sd	t2,48(sp)
    80001d60:	02813c23          	sd	s0,56(sp)
    80001d64:	04913023          	sd	s1,64(sp)
    80001d68:	04a13423          	sd	a0,72(sp)
    80001d6c:	04b13823          	sd	a1,80(sp)
    80001d70:	04c13c23          	sd	a2,88(sp)
    80001d74:	06d13023          	sd	a3,96(sp)
    80001d78:	06e13423          	sd	a4,104(sp)
    80001d7c:	06f13823          	sd	a5,112(sp)
    80001d80:	07013c23          	sd	a6,120(sp)
    80001d84:	09113023          	sd	a7,128(sp)
    80001d88:	09213423          	sd	s2,136(sp)
    80001d8c:	09313823          	sd	s3,144(sp)
    80001d90:	09413c23          	sd	s4,152(sp)
    80001d94:	0b513023          	sd	s5,160(sp)
    80001d98:	0b613423          	sd	s6,168(sp)
    80001d9c:	0b713823          	sd	s7,176(sp)
    80001da0:	0b813c23          	sd	s8,184(sp)
    80001da4:	0d913023          	sd	s9,192(sp)
    80001da8:	0da13423          	sd	s10,200(sp)
    80001dac:	0db13823          	sd	s11,208(sp)
    80001db0:	0dc13c23          	sd	t3,216(sp)
    80001db4:	0fd13023          	sd	t4,224(sp)
    80001db8:	0fe13423          	sd	t5,232(sp)
    80001dbc:	0ff13823          	sd	t6,240(sp)
    80001dc0:	cc9ff0ef          	jal	ra,80001a88 <kerneltrap>
    80001dc4:	00013083          	ld	ra,0(sp)
    80001dc8:	00813103          	ld	sp,8(sp)
    80001dcc:	01013183          	ld	gp,16(sp)
    80001dd0:	02013283          	ld	t0,32(sp)
    80001dd4:	02813303          	ld	t1,40(sp)
    80001dd8:	03013383          	ld	t2,48(sp)
    80001ddc:	03813403          	ld	s0,56(sp)
    80001de0:	04013483          	ld	s1,64(sp)
    80001de4:	04813503          	ld	a0,72(sp)
    80001de8:	05013583          	ld	a1,80(sp)
    80001dec:	05813603          	ld	a2,88(sp)
    80001df0:	06013683          	ld	a3,96(sp)
    80001df4:	06813703          	ld	a4,104(sp)
    80001df8:	07013783          	ld	a5,112(sp)
    80001dfc:	07813803          	ld	a6,120(sp)
    80001e00:	08013883          	ld	a7,128(sp)
    80001e04:	08813903          	ld	s2,136(sp)
    80001e08:	09013983          	ld	s3,144(sp)
    80001e0c:	09813a03          	ld	s4,152(sp)
    80001e10:	0a013a83          	ld	s5,160(sp)
    80001e14:	0a813b03          	ld	s6,168(sp)
    80001e18:	0b013b83          	ld	s7,176(sp)
    80001e1c:	0b813c03          	ld	s8,184(sp)
    80001e20:	0c013c83          	ld	s9,192(sp)
    80001e24:	0c813d03          	ld	s10,200(sp)
    80001e28:	0d013d83          	ld	s11,208(sp)
    80001e2c:	0d813e03          	ld	t3,216(sp)
    80001e30:	0e013e83          	ld	t4,224(sp)
    80001e34:	0e813f03          	ld	t5,232(sp)
    80001e38:	0f013f83          	ld	t6,240(sp)
    80001e3c:	10010113          	addi	sp,sp,256
    80001e40:	10200073          	sret
    80001e44:	00000013          	nop
    80001e48:	00000013          	nop
    80001e4c:	00000013          	nop

0000000080001e50 <timervec>:
    80001e50:	34051573          	csrrw	a0,mscratch,a0
    80001e54:	00b53023          	sd	a1,0(a0)
    80001e58:	00c53423          	sd	a2,8(a0)
    80001e5c:	00d53823          	sd	a3,16(a0)
    80001e60:	01853583          	ld	a1,24(a0)
    80001e64:	02053603          	ld	a2,32(a0)
    80001e68:	0005b683          	ld	a3,0(a1)
    80001e6c:	00c686b3          	add	a3,a3,a2
    80001e70:	00d5b023          	sd	a3,0(a1)
    80001e74:	00200593          	li	a1,2
    80001e78:	14459073          	csrw	sip,a1
    80001e7c:	01053683          	ld	a3,16(a0)
    80001e80:	00853603          	ld	a2,8(a0)
    80001e84:	00053583          	ld	a1,0(a0)
    80001e88:	34051573          	csrrw	a0,mscratch,a0
    80001e8c:	30200073          	mret

0000000080001e90 <plicinit>:
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
    80001e9c:	00813403          	ld	s0,8(sp)
    80001ea0:	0c0007b7          	lui	a5,0xc000
    80001ea4:	00100713          	li	a4,1
    80001ea8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001eac:	00e7a223          	sw	a4,4(a5)
    80001eb0:	01010113          	addi	sp,sp,16
    80001eb4:	00008067          	ret

0000000080001eb8 <plicinithart>:
    80001eb8:	ff010113          	addi	sp,sp,-16
    80001ebc:	00813023          	sd	s0,0(sp)
    80001ec0:	00113423          	sd	ra,8(sp)
    80001ec4:	01010413          	addi	s0,sp,16
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	a40080e7          	jalr	-1472(ra) # 80001908 <cpuid>
    80001ed0:	0085171b          	slliw	a4,a0,0x8
    80001ed4:	0c0027b7          	lui	a5,0xc002
    80001ed8:	00e787b3          	add	a5,a5,a4
    80001edc:	40200713          	li	a4,1026
    80001ee0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001ee4:	00813083          	ld	ra,8(sp)
    80001ee8:	00013403          	ld	s0,0(sp)
    80001eec:	00d5151b          	slliw	a0,a0,0xd
    80001ef0:	0c2017b7          	lui	a5,0xc201
    80001ef4:	00a78533          	add	a0,a5,a0
    80001ef8:	00052023          	sw	zero,0(a0)
    80001efc:	01010113          	addi	sp,sp,16
    80001f00:	00008067          	ret

0000000080001f04 <plic_claim>:
    80001f04:	ff010113          	addi	sp,sp,-16
    80001f08:	00813023          	sd	s0,0(sp)
    80001f0c:	00113423          	sd	ra,8(sp)
    80001f10:	01010413          	addi	s0,sp,16
    80001f14:	00000097          	auipc	ra,0x0
    80001f18:	9f4080e7          	jalr	-1548(ra) # 80001908 <cpuid>
    80001f1c:	00813083          	ld	ra,8(sp)
    80001f20:	00013403          	ld	s0,0(sp)
    80001f24:	00d5151b          	slliw	a0,a0,0xd
    80001f28:	0c2017b7          	lui	a5,0xc201
    80001f2c:	00a78533          	add	a0,a5,a0
    80001f30:	00452503          	lw	a0,4(a0)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <plic_complete>:
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00813823          	sd	s0,16(sp)
    80001f44:	00913423          	sd	s1,8(sp)
    80001f48:	00113c23          	sd	ra,24(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050493          	mv	s1,a0
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	9b4080e7          	jalr	-1612(ra) # 80001908 <cpuid>
    80001f5c:	01813083          	ld	ra,24(sp)
    80001f60:	01013403          	ld	s0,16(sp)
    80001f64:	00d5179b          	slliw	a5,a0,0xd
    80001f68:	0c201737          	lui	a4,0xc201
    80001f6c:	00f707b3          	add	a5,a4,a5
    80001f70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001f74:	00813483          	ld	s1,8(sp)
    80001f78:	02010113          	addi	sp,sp,32
    80001f7c:	00008067          	ret

0000000080001f80 <consolewrite>:
    80001f80:	fb010113          	addi	sp,sp,-80
    80001f84:	04813023          	sd	s0,64(sp)
    80001f88:	04113423          	sd	ra,72(sp)
    80001f8c:	02913c23          	sd	s1,56(sp)
    80001f90:	03213823          	sd	s2,48(sp)
    80001f94:	03313423          	sd	s3,40(sp)
    80001f98:	03413023          	sd	s4,32(sp)
    80001f9c:	01513c23          	sd	s5,24(sp)
    80001fa0:	05010413          	addi	s0,sp,80
    80001fa4:	06c05c63          	blez	a2,8000201c <consolewrite+0x9c>
    80001fa8:	00060993          	mv	s3,a2
    80001fac:	00050a13          	mv	s4,a0
    80001fb0:	00058493          	mv	s1,a1
    80001fb4:	00000913          	li	s2,0
    80001fb8:	fff00a93          	li	s5,-1
    80001fbc:	01c0006f          	j	80001fd8 <consolewrite+0x58>
    80001fc0:	fbf44503          	lbu	a0,-65(s0)
    80001fc4:	0019091b          	addiw	s2,s2,1
    80001fc8:	00148493          	addi	s1,s1,1
    80001fcc:	00001097          	auipc	ra,0x1
    80001fd0:	a9c080e7          	jalr	-1380(ra) # 80002a68 <uartputc>
    80001fd4:	03298063          	beq	s3,s2,80001ff4 <consolewrite+0x74>
    80001fd8:	00048613          	mv	a2,s1
    80001fdc:	00100693          	li	a3,1
    80001fe0:	000a0593          	mv	a1,s4
    80001fe4:	fbf40513          	addi	a0,s0,-65
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	9d8080e7          	jalr	-1576(ra) # 800019c0 <either_copyin>
    80001ff0:	fd5518e3          	bne	a0,s5,80001fc0 <consolewrite+0x40>
    80001ff4:	04813083          	ld	ra,72(sp)
    80001ff8:	04013403          	ld	s0,64(sp)
    80001ffc:	03813483          	ld	s1,56(sp)
    80002000:	02813983          	ld	s3,40(sp)
    80002004:	02013a03          	ld	s4,32(sp)
    80002008:	01813a83          	ld	s5,24(sp)
    8000200c:	00090513          	mv	a0,s2
    80002010:	03013903          	ld	s2,48(sp)
    80002014:	05010113          	addi	sp,sp,80
    80002018:	00008067          	ret
    8000201c:	00000913          	li	s2,0
    80002020:	fd5ff06f          	j	80001ff4 <consolewrite+0x74>

0000000080002024 <consoleread>:
    80002024:	f9010113          	addi	sp,sp,-112
    80002028:	06813023          	sd	s0,96(sp)
    8000202c:	04913c23          	sd	s1,88(sp)
    80002030:	05213823          	sd	s2,80(sp)
    80002034:	05313423          	sd	s3,72(sp)
    80002038:	05413023          	sd	s4,64(sp)
    8000203c:	03513c23          	sd	s5,56(sp)
    80002040:	03613823          	sd	s6,48(sp)
    80002044:	03713423          	sd	s7,40(sp)
    80002048:	03813023          	sd	s8,32(sp)
    8000204c:	06113423          	sd	ra,104(sp)
    80002050:	01913c23          	sd	s9,24(sp)
    80002054:	07010413          	addi	s0,sp,112
    80002058:	00060b93          	mv	s7,a2
    8000205c:	00050913          	mv	s2,a0
    80002060:	00058c13          	mv	s8,a1
    80002064:	00060b1b          	sext.w	s6,a2
    80002068:	00003497          	auipc	s1,0x3
    8000206c:	51048493          	addi	s1,s1,1296 # 80005578 <cons>
    80002070:	00400993          	li	s3,4
    80002074:	fff00a13          	li	s4,-1
    80002078:	00a00a93          	li	s5,10
    8000207c:	05705e63          	blez	s7,800020d8 <consoleread+0xb4>
    80002080:	09c4a703          	lw	a4,156(s1)
    80002084:	0984a783          	lw	a5,152(s1)
    80002088:	0007071b          	sext.w	a4,a4
    8000208c:	08e78463          	beq	a5,a4,80002114 <consoleread+0xf0>
    80002090:	07f7f713          	andi	a4,a5,127
    80002094:	00e48733          	add	a4,s1,a4
    80002098:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000209c:	0017869b          	addiw	a3,a5,1
    800020a0:	08d4ac23          	sw	a3,152(s1)
    800020a4:	00070c9b          	sext.w	s9,a4
    800020a8:	0b370663          	beq	a4,s3,80002154 <consoleread+0x130>
    800020ac:	00100693          	li	a3,1
    800020b0:	f9f40613          	addi	a2,s0,-97
    800020b4:	000c0593          	mv	a1,s8
    800020b8:	00090513          	mv	a0,s2
    800020bc:	f8e40fa3          	sb	a4,-97(s0)
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	8b4080e7          	jalr	-1868(ra) # 80001974 <either_copyout>
    800020c8:	01450863          	beq	a0,s4,800020d8 <consoleread+0xb4>
    800020cc:	001c0c13          	addi	s8,s8,1
    800020d0:	fffb8b9b          	addiw	s7,s7,-1
    800020d4:	fb5c94e3          	bne	s9,s5,8000207c <consoleread+0x58>
    800020d8:	000b851b          	sext.w	a0,s7
    800020dc:	06813083          	ld	ra,104(sp)
    800020e0:	06013403          	ld	s0,96(sp)
    800020e4:	05813483          	ld	s1,88(sp)
    800020e8:	05013903          	ld	s2,80(sp)
    800020ec:	04813983          	ld	s3,72(sp)
    800020f0:	04013a03          	ld	s4,64(sp)
    800020f4:	03813a83          	ld	s5,56(sp)
    800020f8:	02813b83          	ld	s7,40(sp)
    800020fc:	02013c03          	ld	s8,32(sp)
    80002100:	01813c83          	ld	s9,24(sp)
    80002104:	40ab053b          	subw	a0,s6,a0
    80002108:	03013b03          	ld	s6,48(sp)
    8000210c:	07010113          	addi	sp,sp,112
    80002110:	00008067          	ret
    80002114:	00001097          	auipc	ra,0x1
    80002118:	1d8080e7          	jalr	472(ra) # 800032ec <push_on>
    8000211c:	0984a703          	lw	a4,152(s1)
    80002120:	09c4a783          	lw	a5,156(s1)
    80002124:	0007879b          	sext.w	a5,a5
    80002128:	fef70ce3          	beq	a4,a5,80002120 <consoleread+0xfc>
    8000212c:	00001097          	auipc	ra,0x1
    80002130:	234080e7          	jalr	564(ra) # 80003360 <pop_on>
    80002134:	0984a783          	lw	a5,152(s1)
    80002138:	07f7f713          	andi	a4,a5,127
    8000213c:	00e48733          	add	a4,s1,a4
    80002140:	01874703          	lbu	a4,24(a4)
    80002144:	0017869b          	addiw	a3,a5,1
    80002148:	08d4ac23          	sw	a3,152(s1)
    8000214c:	00070c9b          	sext.w	s9,a4
    80002150:	f5371ee3          	bne	a4,s3,800020ac <consoleread+0x88>
    80002154:	000b851b          	sext.w	a0,s7
    80002158:	f96bf2e3          	bgeu	s7,s6,800020dc <consoleread+0xb8>
    8000215c:	08f4ac23          	sw	a5,152(s1)
    80002160:	f7dff06f          	j	800020dc <consoleread+0xb8>

0000000080002164 <consputc>:
    80002164:	10000793          	li	a5,256
    80002168:	00f50663          	beq	a0,a5,80002174 <consputc+0x10>
    8000216c:	00001317          	auipc	t1,0x1
    80002170:	9f430067          	jr	-1548(t1) # 80002b60 <uartputc_sync>
    80002174:	ff010113          	addi	sp,sp,-16
    80002178:	00113423          	sd	ra,8(sp)
    8000217c:	00813023          	sd	s0,0(sp)
    80002180:	01010413          	addi	s0,sp,16
    80002184:	00800513          	li	a0,8
    80002188:	00001097          	auipc	ra,0x1
    8000218c:	9d8080e7          	jalr	-1576(ra) # 80002b60 <uartputc_sync>
    80002190:	02000513          	li	a0,32
    80002194:	00001097          	auipc	ra,0x1
    80002198:	9cc080e7          	jalr	-1588(ra) # 80002b60 <uartputc_sync>
    8000219c:	00013403          	ld	s0,0(sp)
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00800513          	li	a0,8
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00001317          	auipc	t1,0x1
    800021b0:	9b430067          	jr	-1612(t1) # 80002b60 <uartputc_sync>

00000000800021b4 <consoleintr>:
    800021b4:	fe010113          	addi	sp,sp,-32
    800021b8:	00813823          	sd	s0,16(sp)
    800021bc:	00913423          	sd	s1,8(sp)
    800021c0:	01213023          	sd	s2,0(sp)
    800021c4:	00113c23          	sd	ra,24(sp)
    800021c8:	02010413          	addi	s0,sp,32
    800021cc:	00003917          	auipc	s2,0x3
    800021d0:	3ac90913          	addi	s2,s2,940 # 80005578 <cons>
    800021d4:	00050493          	mv	s1,a0
    800021d8:	00090513          	mv	a0,s2
    800021dc:	00001097          	auipc	ra,0x1
    800021e0:	e40080e7          	jalr	-448(ra) # 8000301c <acquire>
    800021e4:	02048c63          	beqz	s1,8000221c <consoleintr+0x68>
    800021e8:	0a092783          	lw	a5,160(s2)
    800021ec:	09892703          	lw	a4,152(s2)
    800021f0:	07f00693          	li	a3,127
    800021f4:	40e7873b          	subw	a4,a5,a4
    800021f8:	02e6e263          	bltu	a3,a4,8000221c <consoleintr+0x68>
    800021fc:	00d00713          	li	a4,13
    80002200:	04e48063          	beq	s1,a4,80002240 <consoleintr+0x8c>
    80002204:	07f7f713          	andi	a4,a5,127
    80002208:	00e90733          	add	a4,s2,a4
    8000220c:	0017879b          	addiw	a5,a5,1
    80002210:	0af92023          	sw	a5,160(s2)
    80002214:	00970c23          	sb	s1,24(a4)
    80002218:	08f92e23          	sw	a5,156(s2)
    8000221c:	01013403          	ld	s0,16(sp)
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	00813483          	ld	s1,8(sp)
    80002228:	00013903          	ld	s2,0(sp)
    8000222c:	00003517          	auipc	a0,0x3
    80002230:	34c50513          	addi	a0,a0,844 # 80005578 <cons>
    80002234:	02010113          	addi	sp,sp,32
    80002238:	00001317          	auipc	t1,0x1
    8000223c:	eb030067          	jr	-336(t1) # 800030e8 <release>
    80002240:	00a00493          	li	s1,10
    80002244:	fc1ff06f          	j	80002204 <consoleintr+0x50>

0000000080002248 <consoleinit>:
    80002248:	fe010113          	addi	sp,sp,-32
    8000224c:	00113c23          	sd	ra,24(sp)
    80002250:	00813823          	sd	s0,16(sp)
    80002254:	00913423          	sd	s1,8(sp)
    80002258:	02010413          	addi	s0,sp,32
    8000225c:	00003497          	auipc	s1,0x3
    80002260:	31c48493          	addi	s1,s1,796 # 80005578 <cons>
    80002264:	00048513          	mv	a0,s1
    80002268:	00002597          	auipc	a1,0x2
    8000226c:	ef858593          	addi	a1,a1,-264 # 80004160 <CONSOLE_STATUS+0x150>
    80002270:	00001097          	auipc	ra,0x1
    80002274:	d88080e7          	jalr	-632(ra) # 80002ff8 <initlock>
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	7ac080e7          	jalr	1964(ra) # 80002a24 <uartinit>
    80002280:	01813083          	ld	ra,24(sp)
    80002284:	01013403          	ld	s0,16(sp)
    80002288:	00000797          	auipc	a5,0x0
    8000228c:	d9c78793          	addi	a5,a5,-612 # 80002024 <consoleread>
    80002290:	0af4bc23          	sd	a5,184(s1)
    80002294:	00000797          	auipc	a5,0x0
    80002298:	cec78793          	addi	a5,a5,-788 # 80001f80 <consolewrite>
    8000229c:	0cf4b023          	sd	a5,192(s1)
    800022a0:	00813483          	ld	s1,8(sp)
    800022a4:	02010113          	addi	sp,sp,32
    800022a8:	00008067          	ret

00000000800022ac <console_read>:
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    800022b8:	00813403          	ld	s0,8(sp)
    800022bc:	00003317          	auipc	t1,0x3
    800022c0:	37433303          	ld	t1,884(t1) # 80005630 <devsw+0x10>
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00030067          	jr	t1

00000000800022cc <console_write>:
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00813423          	sd	s0,8(sp)
    800022d4:	01010413          	addi	s0,sp,16
    800022d8:	00813403          	ld	s0,8(sp)
    800022dc:	00003317          	auipc	t1,0x3
    800022e0:	35c33303          	ld	t1,860(t1) # 80005638 <devsw+0x18>
    800022e4:	01010113          	addi	sp,sp,16
    800022e8:	00030067          	jr	t1

00000000800022ec <panic>:
    800022ec:	fe010113          	addi	sp,sp,-32
    800022f0:	00113c23          	sd	ra,24(sp)
    800022f4:	00813823          	sd	s0,16(sp)
    800022f8:	00913423          	sd	s1,8(sp)
    800022fc:	02010413          	addi	s0,sp,32
    80002300:	00050493          	mv	s1,a0
    80002304:	00002517          	auipc	a0,0x2
    80002308:	e6450513          	addi	a0,a0,-412 # 80004168 <CONSOLE_STATUS+0x158>
    8000230c:	00003797          	auipc	a5,0x3
    80002310:	3c07a623          	sw	zero,972(a5) # 800056d8 <pr+0x18>
    80002314:	00000097          	auipc	ra,0x0
    80002318:	034080e7          	jalr	52(ra) # 80002348 <__printf>
    8000231c:	00048513          	mv	a0,s1
    80002320:	00000097          	auipc	ra,0x0
    80002324:	028080e7          	jalr	40(ra) # 80002348 <__printf>
    80002328:	00002517          	auipc	a0,0x2
    8000232c:	e2050513          	addi	a0,a0,-480 # 80004148 <CONSOLE_STATUS+0x138>
    80002330:	00000097          	auipc	ra,0x0
    80002334:	018080e7          	jalr	24(ra) # 80002348 <__printf>
    80002338:	00100793          	li	a5,1
    8000233c:	00002717          	auipc	a4,0x2
    80002340:	12f72e23          	sw	a5,316(a4) # 80004478 <panicked>
    80002344:	0000006f          	j	80002344 <panic+0x58>

0000000080002348 <__printf>:
    80002348:	f3010113          	addi	sp,sp,-208
    8000234c:	08813023          	sd	s0,128(sp)
    80002350:	07313423          	sd	s3,104(sp)
    80002354:	09010413          	addi	s0,sp,144
    80002358:	05813023          	sd	s8,64(sp)
    8000235c:	08113423          	sd	ra,136(sp)
    80002360:	06913c23          	sd	s1,120(sp)
    80002364:	07213823          	sd	s2,112(sp)
    80002368:	07413023          	sd	s4,96(sp)
    8000236c:	05513c23          	sd	s5,88(sp)
    80002370:	05613823          	sd	s6,80(sp)
    80002374:	05713423          	sd	s7,72(sp)
    80002378:	03913c23          	sd	s9,56(sp)
    8000237c:	03a13823          	sd	s10,48(sp)
    80002380:	03b13423          	sd	s11,40(sp)
    80002384:	00003317          	auipc	t1,0x3
    80002388:	33c30313          	addi	t1,t1,828 # 800056c0 <pr>
    8000238c:	01832c03          	lw	s8,24(t1)
    80002390:	00b43423          	sd	a1,8(s0)
    80002394:	00c43823          	sd	a2,16(s0)
    80002398:	00d43c23          	sd	a3,24(s0)
    8000239c:	02e43023          	sd	a4,32(s0)
    800023a0:	02f43423          	sd	a5,40(s0)
    800023a4:	03043823          	sd	a6,48(s0)
    800023a8:	03143c23          	sd	a7,56(s0)
    800023ac:	00050993          	mv	s3,a0
    800023b0:	4a0c1663          	bnez	s8,8000285c <__printf+0x514>
    800023b4:	60098c63          	beqz	s3,800029cc <__printf+0x684>
    800023b8:	0009c503          	lbu	a0,0(s3)
    800023bc:	00840793          	addi	a5,s0,8
    800023c0:	f6f43c23          	sd	a5,-136(s0)
    800023c4:	00000493          	li	s1,0
    800023c8:	22050063          	beqz	a0,800025e8 <__printf+0x2a0>
    800023cc:	00002a37          	lui	s4,0x2
    800023d0:	00018ab7          	lui	s5,0x18
    800023d4:	000f4b37          	lui	s6,0xf4
    800023d8:	00989bb7          	lui	s7,0x989
    800023dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800023e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800023e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800023e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800023ec:	00148c9b          	addiw	s9,s1,1
    800023f0:	02500793          	li	a5,37
    800023f4:	01998933          	add	s2,s3,s9
    800023f8:	38f51263          	bne	a0,a5,8000277c <__printf+0x434>
    800023fc:	00094783          	lbu	a5,0(s2)
    80002400:	00078c9b          	sext.w	s9,a5
    80002404:	1e078263          	beqz	a5,800025e8 <__printf+0x2a0>
    80002408:	0024849b          	addiw	s1,s1,2
    8000240c:	07000713          	li	a4,112
    80002410:	00998933          	add	s2,s3,s1
    80002414:	38e78a63          	beq	a5,a4,800027a8 <__printf+0x460>
    80002418:	20f76863          	bltu	a4,a5,80002628 <__printf+0x2e0>
    8000241c:	42a78863          	beq	a5,a0,8000284c <__printf+0x504>
    80002420:	06400713          	li	a4,100
    80002424:	40e79663          	bne	a5,a4,80002830 <__printf+0x4e8>
    80002428:	f7843783          	ld	a5,-136(s0)
    8000242c:	0007a603          	lw	a2,0(a5)
    80002430:	00878793          	addi	a5,a5,8
    80002434:	f6f43c23          	sd	a5,-136(s0)
    80002438:	42064a63          	bltz	a2,8000286c <__printf+0x524>
    8000243c:	00a00713          	li	a4,10
    80002440:	02e677bb          	remuw	a5,a2,a4
    80002444:	00002d97          	auipc	s11,0x2
    80002448:	d4cd8d93          	addi	s11,s11,-692 # 80004190 <digits>
    8000244c:	00900593          	li	a1,9
    80002450:	0006051b          	sext.w	a0,a2
    80002454:	00000c93          	li	s9,0
    80002458:	02079793          	slli	a5,a5,0x20
    8000245c:	0207d793          	srli	a5,a5,0x20
    80002460:	00fd87b3          	add	a5,s11,a5
    80002464:	0007c783          	lbu	a5,0(a5)
    80002468:	02e656bb          	divuw	a3,a2,a4
    8000246c:	f8f40023          	sb	a5,-128(s0)
    80002470:	14c5d863          	bge	a1,a2,800025c0 <__printf+0x278>
    80002474:	06300593          	li	a1,99
    80002478:	00100c93          	li	s9,1
    8000247c:	02e6f7bb          	remuw	a5,a3,a4
    80002480:	02079793          	slli	a5,a5,0x20
    80002484:	0207d793          	srli	a5,a5,0x20
    80002488:	00fd87b3          	add	a5,s11,a5
    8000248c:	0007c783          	lbu	a5,0(a5)
    80002490:	02e6d73b          	divuw	a4,a3,a4
    80002494:	f8f400a3          	sb	a5,-127(s0)
    80002498:	12a5f463          	bgeu	a1,a0,800025c0 <__printf+0x278>
    8000249c:	00a00693          	li	a3,10
    800024a0:	00900593          	li	a1,9
    800024a4:	02d777bb          	remuw	a5,a4,a3
    800024a8:	02079793          	slli	a5,a5,0x20
    800024ac:	0207d793          	srli	a5,a5,0x20
    800024b0:	00fd87b3          	add	a5,s11,a5
    800024b4:	0007c503          	lbu	a0,0(a5)
    800024b8:	02d757bb          	divuw	a5,a4,a3
    800024bc:	f8a40123          	sb	a0,-126(s0)
    800024c0:	48e5f263          	bgeu	a1,a4,80002944 <__printf+0x5fc>
    800024c4:	06300513          	li	a0,99
    800024c8:	02d7f5bb          	remuw	a1,a5,a3
    800024cc:	02059593          	slli	a1,a1,0x20
    800024d0:	0205d593          	srli	a1,a1,0x20
    800024d4:	00bd85b3          	add	a1,s11,a1
    800024d8:	0005c583          	lbu	a1,0(a1)
    800024dc:	02d7d7bb          	divuw	a5,a5,a3
    800024e0:	f8b401a3          	sb	a1,-125(s0)
    800024e4:	48e57263          	bgeu	a0,a4,80002968 <__printf+0x620>
    800024e8:	3e700513          	li	a0,999
    800024ec:	02d7f5bb          	remuw	a1,a5,a3
    800024f0:	02059593          	slli	a1,a1,0x20
    800024f4:	0205d593          	srli	a1,a1,0x20
    800024f8:	00bd85b3          	add	a1,s11,a1
    800024fc:	0005c583          	lbu	a1,0(a1)
    80002500:	02d7d7bb          	divuw	a5,a5,a3
    80002504:	f8b40223          	sb	a1,-124(s0)
    80002508:	46e57663          	bgeu	a0,a4,80002974 <__printf+0x62c>
    8000250c:	02d7f5bb          	remuw	a1,a5,a3
    80002510:	02059593          	slli	a1,a1,0x20
    80002514:	0205d593          	srli	a1,a1,0x20
    80002518:	00bd85b3          	add	a1,s11,a1
    8000251c:	0005c583          	lbu	a1,0(a1)
    80002520:	02d7d7bb          	divuw	a5,a5,a3
    80002524:	f8b402a3          	sb	a1,-123(s0)
    80002528:	46ea7863          	bgeu	s4,a4,80002998 <__printf+0x650>
    8000252c:	02d7f5bb          	remuw	a1,a5,a3
    80002530:	02059593          	slli	a1,a1,0x20
    80002534:	0205d593          	srli	a1,a1,0x20
    80002538:	00bd85b3          	add	a1,s11,a1
    8000253c:	0005c583          	lbu	a1,0(a1)
    80002540:	02d7d7bb          	divuw	a5,a5,a3
    80002544:	f8b40323          	sb	a1,-122(s0)
    80002548:	3eeaf863          	bgeu	s5,a4,80002938 <__printf+0x5f0>
    8000254c:	02d7f5bb          	remuw	a1,a5,a3
    80002550:	02059593          	slli	a1,a1,0x20
    80002554:	0205d593          	srli	a1,a1,0x20
    80002558:	00bd85b3          	add	a1,s11,a1
    8000255c:	0005c583          	lbu	a1,0(a1)
    80002560:	02d7d7bb          	divuw	a5,a5,a3
    80002564:	f8b403a3          	sb	a1,-121(s0)
    80002568:	42eb7e63          	bgeu	s6,a4,800029a4 <__printf+0x65c>
    8000256c:	02d7f5bb          	remuw	a1,a5,a3
    80002570:	02059593          	slli	a1,a1,0x20
    80002574:	0205d593          	srli	a1,a1,0x20
    80002578:	00bd85b3          	add	a1,s11,a1
    8000257c:	0005c583          	lbu	a1,0(a1)
    80002580:	02d7d7bb          	divuw	a5,a5,a3
    80002584:	f8b40423          	sb	a1,-120(s0)
    80002588:	42ebfc63          	bgeu	s7,a4,800029c0 <__printf+0x678>
    8000258c:	02079793          	slli	a5,a5,0x20
    80002590:	0207d793          	srli	a5,a5,0x20
    80002594:	00fd8db3          	add	s11,s11,a5
    80002598:	000dc703          	lbu	a4,0(s11)
    8000259c:	00a00793          	li	a5,10
    800025a0:	00900c93          	li	s9,9
    800025a4:	f8e404a3          	sb	a4,-119(s0)
    800025a8:	00065c63          	bgez	a2,800025c0 <__printf+0x278>
    800025ac:	f9040713          	addi	a4,s0,-112
    800025b0:	00f70733          	add	a4,a4,a5
    800025b4:	02d00693          	li	a3,45
    800025b8:	fed70823          	sb	a3,-16(a4)
    800025bc:	00078c93          	mv	s9,a5
    800025c0:	f8040793          	addi	a5,s0,-128
    800025c4:	01978cb3          	add	s9,a5,s9
    800025c8:	f7f40d13          	addi	s10,s0,-129
    800025cc:	000cc503          	lbu	a0,0(s9)
    800025d0:	fffc8c93          	addi	s9,s9,-1
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	b90080e7          	jalr	-1136(ra) # 80002164 <consputc>
    800025dc:	ffac98e3          	bne	s9,s10,800025cc <__printf+0x284>
    800025e0:	00094503          	lbu	a0,0(s2)
    800025e4:	e00514e3          	bnez	a0,800023ec <__printf+0xa4>
    800025e8:	1a0c1663          	bnez	s8,80002794 <__printf+0x44c>
    800025ec:	08813083          	ld	ra,136(sp)
    800025f0:	08013403          	ld	s0,128(sp)
    800025f4:	07813483          	ld	s1,120(sp)
    800025f8:	07013903          	ld	s2,112(sp)
    800025fc:	06813983          	ld	s3,104(sp)
    80002600:	06013a03          	ld	s4,96(sp)
    80002604:	05813a83          	ld	s5,88(sp)
    80002608:	05013b03          	ld	s6,80(sp)
    8000260c:	04813b83          	ld	s7,72(sp)
    80002610:	04013c03          	ld	s8,64(sp)
    80002614:	03813c83          	ld	s9,56(sp)
    80002618:	03013d03          	ld	s10,48(sp)
    8000261c:	02813d83          	ld	s11,40(sp)
    80002620:	0d010113          	addi	sp,sp,208
    80002624:	00008067          	ret
    80002628:	07300713          	li	a4,115
    8000262c:	1ce78a63          	beq	a5,a4,80002800 <__printf+0x4b8>
    80002630:	07800713          	li	a4,120
    80002634:	1ee79e63          	bne	a5,a4,80002830 <__printf+0x4e8>
    80002638:	f7843783          	ld	a5,-136(s0)
    8000263c:	0007a703          	lw	a4,0(a5)
    80002640:	00878793          	addi	a5,a5,8
    80002644:	f6f43c23          	sd	a5,-136(s0)
    80002648:	28074263          	bltz	a4,800028cc <__printf+0x584>
    8000264c:	00002d97          	auipc	s11,0x2
    80002650:	b44d8d93          	addi	s11,s11,-1212 # 80004190 <digits>
    80002654:	00f77793          	andi	a5,a4,15
    80002658:	00fd87b3          	add	a5,s11,a5
    8000265c:	0007c683          	lbu	a3,0(a5)
    80002660:	00f00613          	li	a2,15
    80002664:	0007079b          	sext.w	a5,a4
    80002668:	f8d40023          	sb	a3,-128(s0)
    8000266c:	0047559b          	srliw	a1,a4,0x4
    80002670:	0047569b          	srliw	a3,a4,0x4
    80002674:	00000c93          	li	s9,0
    80002678:	0ee65063          	bge	a2,a4,80002758 <__printf+0x410>
    8000267c:	00f6f693          	andi	a3,a3,15
    80002680:	00dd86b3          	add	a3,s11,a3
    80002684:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002688:	0087d79b          	srliw	a5,a5,0x8
    8000268c:	00100c93          	li	s9,1
    80002690:	f8d400a3          	sb	a3,-127(s0)
    80002694:	0cb67263          	bgeu	a2,a1,80002758 <__printf+0x410>
    80002698:	00f7f693          	andi	a3,a5,15
    8000269c:	00dd86b3          	add	a3,s11,a3
    800026a0:	0006c583          	lbu	a1,0(a3)
    800026a4:	00f00613          	li	a2,15
    800026a8:	0047d69b          	srliw	a3,a5,0x4
    800026ac:	f8b40123          	sb	a1,-126(s0)
    800026b0:	0047d593          	srli	a1,a5,0x4
    800026b4:	28f67e63          	bgeu	a2,a5,80002950 <__printf+0x608>
    800026b8:	00f6f693          	andi	a3,a3,15
    800026bc:	00dd86b3          	add	a3,s11,a3
    800026c0:	0006c503          	lbu	a0,0(a3)
    800026c4:	0087d813          	srli	a6,a5,0x8
    800026c8:	0087d69b          	srliw	a3,a5,0x8
    800026cc:	f8a401a3          	sb	a0,-125(s0)
    800026d0:	28b67663          	bgeu	a2,a1,8000295c <__printf+0x614>
    800026d4:	00f6f693          	andi	a3,a3,15
    800026d8:	00dd86b3          	add	a3,s11,a3
    800026dc:	0006c583          	lbu	a1,0(a3)
    800026e0:	00c7d513          	srli	a0,a5,0xc
    800026e4:	00c7d69b          	srliw	a3,a5,0xc
    800026e8:	f8b40223          	sb	a1,-124(s0)
    800026ec:	29067a63          	bgeu	a2,a6,80002980 <__printf+0x638>
    800026f0:	00f6f693          	andi	a3,a3,15
    800026f4:	00dd86b3          	add	a3,s11,a3
    800026f8:	0006c583          	lbu	a1,0(a3)
    800026fc:	0107d813          	srli	a6,a5,0x10
    80002700:	0107d69b          	srliw	a3,a5,0x10
    80002704:	f8b402a3          	sb	a1,-123(s0)
    80002708:	28a67263          	bgeu	a2,a0,8000298c <__printf+0x644>
    8000270c:	00f6f693          	andi	a3,a3,15
    80002710:	00dd86b3          	add	a3,s11,a3
    80002714:	0006c683          	lbu	a3,0(a3)
    80002718:	0147d79b          	srliw	a5,a5,0x14
    8000271c:	f8d40323          	sb	a3,-122(s0)
    80002720:	21067663          	bgeu	a2,a6,8000292c <__printf+0x5e4>
    80002724:	02079793          	slli	a5,a5,0x20
    80002728:	0207d793          	srli	a5,a5,0x20
    8000272c:	00fd8db3          	add	s11,s11,a5
    80002730:	000dc683          	lbu	a3,0(s11)
    80002734:	00800793          	li	a5,8
    80002738:	00700c93          	li	s9,7
    8000273c:	f8d403a3          	sb	a3,-121(s0)
    80002740:	00075c63          	bgez	a4,80002758 <__printf+0x410>
    80002744:	f9040713          	addi	a4,s0,-112
    80002748:	00f70733          	add	a4,a4,a5
    8000274c:	02d00693          	li	a3,45
    80002750:	fed70823          	sb	a3,-16(a4)
    80002754:	00078c93          	mv	s9,a5
    80002758:	f8040793          	addi	a5,s0,-128
    8000275c:	01978cb3          	add	s9,a5,s9
    80002760:	f7f40d13          	addi	s10,s0,-129
    80002764:	000cc503          	lbu	a0,0(s9)
    80002768:	fffc8c93          	addi	s9,s9,-1
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	9f8080e7          	jalr	-1544(ra) # 80002164 <consputc>
    80002774:	ff9d18e3          	bne	s10,s9,80002764 <__printf+0x41c>
    80002778:	0100006f          	j	80002788 <__printf+0x440>
    8000277c:	00000097          	auipc	ra,0x0
    80002780:	9e8080e7          	jalr	-1560(ra) # 80002164 <consputc>
    80002784:	000c8493          	mv	s1,s9
    80002788:	00094503          	lbu	a0,0(s2)
    8000278c:	c60510e3          	bnez	a0,800023ec <__printf+0xa4>
    80002790:	e40c0ee3          	beqz	s8,800025ec <__printf+0x2a4>
    80002794:	00003517          	auipc	a0,0x3
    80002798:	f2c50513          	addi	a0,a0,-212 # 800056c0 <pr>
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	94c080e7          	jalr	-1716(ra) # 800030e8 <release>
    800027a4:	e49ff06f          	j	800025ec <__printf+0x2a4>
    800027a8:	f7843783          	ld	a5,-136(s0)
    800027ac:	03000513          	li	a0,48
    800027b0:	01000d13          	li	s10,16
    800027b4:	00878713          	addi	a4,a5,8
    800027b8:	0007bc83          	ld	s9,0(a5)
    800027bc:	f6e43c23          	sd	a4,-136(s0)
    800027c0:	00000097          	auipc	ra,0x0
    800027c4:	9a4080e7          	jalr	-1628(ra) # 80002164 <consputc>
    800027c8:	07800513          	li	a0,120
    800027cc:	00000097          	auipc	ra,0x0
    800027d0:	998080e7          	jalr	-1640(ra) # 80002164 <consputc>
    800027d4:	00002d97          	auipc	s11,0x2
    800027d8:	9bcd8d93          	addi	s11,s11,-1604 # 80004190 <digits>
    800027dc:	03ccd793          	srli	a5,s9,0x3c
    800027e0:	00fd87b3          	add	a5,s11,a5
    800027e4:	0007c503          	lbu	a0,0(a5)
    800027e8:	fffd0d1b          	addiw	s10,s10,-1
    800027ec:	004c9c93          	slli	s9,s9,0x4
    800027f0:	00000097          	auipc	ra,0x0
    800027f4:	974080e7          	jalr	-1676(ra) # 80002164 <consputc>
    800027f8:	fe0d12e3          	bnez	s10,800027dc <__printf+0x494>
    800027fc:	f8dff06f          	j	80002788 <__printf+0x440>
    80002800:	f7843783          	ld	a5,-136(s0)
    80002804:	0007bc83          	ld	s9,0(a5)
    80002808:	00878793          	addi	a5,a5,8
    8000280c:	f6f43c23          	sd	a5,-136(s0)
    80002810:	000c9a63          	bnez	s9,80002824 <__printf+0x4dc>
    80002814:	1080006f          	j	8000291c <__printf+0x5d4>
    80002818:	001c8c93          	addi	s9,s9,1
    8000281c:	00000097          	auipc	ra,0x0
    80002820:	948080e7          	jalr	-1720(ra) # 80002164 <consputc>
    80002824:	000cc503          	lbu	a0,0(s9)
    80002828:	fe0518e3          	bnez	a0,80002818 <__printf+0x4d0>
    8000282c:	f5dff06f          	j	80002788 <__printf+0x440>
    80002830:	02500513          	li	a0,37
    80002834:	00000097          	auipc	ra,0x0
    80002838:	930080e7          	jalr	-1744(ra) # 80002164 <consputc>
    8000283c:	000c8513          	mv	a0,s9
    80002840:	00000097          	auipc	ra,0x0
    80002844:	924080e7          	jalr	-1756(ra) # 80002164 <consputc>
    80002848:	f41ff06f          	j	80002788 <__printf+0x440>
    8000284c:	02500513          	li	a0,37
    80002850:	00000097          	auipc	ra,0x0
    80002854:	914080e7          	jalr	-1772(ra) # 80002164 <consputc>
    80002858:	f31ff06f          	j	80002788 <__printf+0x440>
    8000285c:	00030513          	mv	a0,t1
    80002860:	00000097          	auipc	ra,0x0
    80002864:	7bc080e7          	jalr	1980(ra) # 8000301c <acquire>
    80002868:	b4dff06f          	j	800023b4 <__printf+0x6c>
    8000286c:	40c0053b          	negw	a0,a2
    80002870:	00a00713          	li	a4,10
    80002874:	02e576bb          	remuw	a3,a0,a4
    80002878:	00002d97          	auipc	s11,0x2
    8000287c:	918d8d93          	addi	s11,s11,-1768 # 80004190 <digits>
    80002880:	ff700593          	li	a1,-9
    80002884:	02069693          	slli	a3,a3,0x20
    80002888:	0206d693          	srli	a3,a3,0x20
    8000288c:	00dd86b3          	add	a3,s11,a3
    80002890:	0006c683          	lbu	a3,0(a3)
    80002894:	02e557bb          	divuw	a5,a0,a4
    80002898:	f8d40023          	sb	a3,-128(s0)
    8000289c:	10b65e63          	bge	a2,a1,800029b8 <__printf+0x670>
    800028a0:	06300593          	li	a1,99
    800028a4:	02e7f6bb          	remuw	a3,a5,a4
    800028a8:	02069693          	slli	a3,a3,0x20
    800028ac:	0206d693          	srli	a3,a3,0x20
    800028b0:	00dd86b3          	add	a3,s11,a3
    800028b4:	0006c683          	lbu	a3,0(a3)
    800028b8:	02e7d73b          	divuw	a4,a5,a4
    800028bc:	00200793          	li	a5,2
    800028c0:	f8d400a3          	sb	a3,-127(s0)
    800028c4:	bca5ece3          	bltu	a1,a0,8000249c <__printf+0x154>
    800028c8:	ce5ff06f          	j	800025ac <__printf+0x264>
    800028cc:	40e007bb          	negw	a5,a4
    800028d0:	00002d97          	auipc	s11,0x2
    800028d4:	8c0d8d93          	addi	s11,s11,-1856 # 80004190 <digits>
    800028d8:	00f7f693          	andi	a3,a5,15
    800028dc:	00dd86b3          	add	a3,s11,a3
    800028e0:	0006c583          	lbu	a1,0(a3)
    800028e4:	ff100613          	li	a2,-15
    800028e8:	0047d69b          	srliw	a3,a5,0x4
    800028ec:	f8b40023          	sb	a1,-128(s0)
    800028f0:	0047d59b          	srliw	a1,a5,0x4
    800028f4:	0ac75e63          	bge	a4,a2,800029b0 <__printf+0x668>
    800028f8:	00f6f693          	andi	a3,a3,15
    800028fc:	00dd86b3          	add	a3,s11,a3
    80002900:	0006c603          	lbu	a2,0(a3)
    80002904:	00f00693          	li	a3,15
    80002908:	0087d79b          	srliw	a5,a5,0x8
    8000290c:	f8c400a3          	sb	a2,-127(s0)
    80002910:	d8b6e4e3          	bltu	a3,a1,80002698 <__printf+0x350>
    80002914:	00200793          	li	a5,2
    80002918:	e2dff06f          	j	80002744 <__printf+0x3fc>
    8000291c:	00002c97          	auipc	s9,0x2
    80002920:	854c8c93          	addi	s9,s9,-1964 # 80004170 <CONSOLE_STATUS+0x160>
    80002924:	02800513          	li	a0,40
    80002928:	ef1ff06f          	j	80002818 <__printf+0x4d0>
    8000292c:	00700793          	li	a5,7
    80002930:	00600c93          	li	s9,6
    80002934:	e0dff06f          	j	80002740 <__printf+0x3f8>
    80002938:	00700793          	li	a5,7
    8000293c:	00600c93          	li	s9,6
    80002940:	c69ff06f          	j	800025a8 <__printf+0x260>
    80002944:	00300793          	li	a5,3
    80002948:	00200c93          	li	s9,2
    8000294c:	c5dff06f          	j	800025a8 <__printf+0x260>
    80002950:	00300793          	li	a5,3
    80002954:	00200c93          	li	s9,2
    80002958:	de9ff06f          	j	80002740 <__printf+0x3f8>
    8000295c:	00400793          	li	a5,4
    80002960:	00300c93          	li	s9,3
    80002964:	dddff06f          	j	80002740 <__printf+0x3f8>
    80002968:	00400793          	li	a5,4
    8000296c:	00300c93          	li	s9,3
    80002970:	c39ff06f          	j	800025a8 <__printf+0x260>
    80002974:	00500793          	li	a5,5
    80002978:	00400c93          	li	s9,4
    8000297c:	c2dff06f          	j	800025a8 <__printf+0x260>
    80002980:	00500793          	li	a5,5
    80002984:	00400c93          	li	s9,4
    80002988:	db9ff06f          	j	80002740 <__printf+0x3f8>
    8000298c:	00600793          	li	a5,6
    80002990:	00500c93          	li	s9,5
    80002994:	dadff06f          	j	80002740 <__printf+0x3f8>
    80002998:	00600793          	li	a5,6
    8000299c:	00500c93          	li	s9,5
    800029a0:	c09ff06f          	j	800025a8 <__printf+0x260>
    800029a4:	00800793          	li	a5,8
    800029a8:	00700c93          	li	s9,7
    800029ac:	bfdff06f          	j	800025a8 <__printf+0x260>
    800029b0:	00100793          	li	a5,1
    800029b4:	d91ff06f          	j	80002744 <__printf+0x3fc>
    800029b8:	00100793          	li	a5,1
    800029bc:	bf1ff06f          	j	800025ac <__printf+0x264>
    800029c0:	00900793          	li	a5,9
    800029c4:	00800c93          	li	s9,8
    800029c8:	be1ff06f          	j	800025a8 <__printf+0x260>
    800029cc:	00001517          	auipc	a0,0x1
    800029d0:	7ac50513          	addi	a0,a0,1964 # 80004178 <CONSOLE_STATUS+0x168>
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	918080e7          	jalr	-1768(ra) # 800022ec <panic>

00000000800029dc <printfinit>:
    800029dc:	fe010113          	addi	sp,sp,-32
    800029e0:	00813823          	sd	s0,16(sp)
    800029e4:	00913423          	sd	s1,8(sp)
    800029e8:	00113c23          	sd	ra,24(sp)
    800029ec:	02010413          	addi	s0,sp,32
    800029f0:	00003497          	auipc	s1,0x3
    800029f4:	cd048493          	addi	s1,s1,-816 # 800056c0 <pr>
    800029f8:	00048513          	mv	a0,s1
    800029fc:	00001597          	auipc	a1,0x1
    80002a00:	78c58593          	addi	a1,a1,1932 # 80004188 <CONSOLE_STATUS+0x178>
    80002a04:	00000097          	auipc	ra,0x0
    80002a08:	5f4080e7          	jalr	1524(ra) # 80002ff8 <initlock>
    80002a0c:	01813083          	ld	ra,24(sp)
    80002a10:	01013403          	ld	s0,16(sp)
    80002a14:	0004ac23          	sw	zero,24(s1)
    80002a18:	00813483          	ld	s1,8(sp)
    80002a1c:	02010113          	addi	sp,sp,32
    80002a20:	00008067          	ret

0000000080002a24 <uartinit>:
    80002a24:	ff010113          	addi	sp,sp,-16
    80002a28:	00813423          	sd	s0,8(sp)
    80002a2c:	01010413          	addi	s0,sp,16
    80002a30:	100007b7          	lui	a5,0x10000
    80002a34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a38:	f8000713          	li	a4,-128
    80002a3c:	00e781a3          	sb	a4,3(a5)
    80002a40:	00300713          	li	a4,3
    80002a44:	00e78023          	sb	a4,0(a5)
    80002a48:	000780a3          	sb	zero,1(a5)
    80002a4c:	00e781a3          	sb	a4,3(a5)
    80002a50:	00700693          	li	a3,7
    80002a54:	00d78123          	sb	a3,2(a5)
    80002a58:	00e780a3          	sb	a4,1(a5)
    80002a5c:	00813403          	ld	s0,8(sp)
    80002a60:	01010113          	addi	sp,sp,16
    80002a64:	00008067          	ret

0000000080002a68 <uartputc>:
    80002a68:	00002797          	auipc	a5,0x2
    80002a6c:	a107a783          	lw	a5,-1520(a5) # 80004478 <panicked>
    80002a70:	00078463          	beqz	a5,80002a78 <uartputc+0x10>
    80002a74:	0000006f          	j	80002a74 <uartputc+0xc>
    80002a78:	fd010113          	addi	sp,sp,-48
    80002a7c:	02813023          	sd	s0,32(sp)
    80002a80:	00913c23          	sd	s1,24(sp)
    80002a84:	01213823          	sd	s2,16(sp)
    80002a88:	01313423          	sd	s3,8(sp)
    80002a8c:	02113423          	sd	ra,40(sp)
    80002a90:	03010413          	addi	s0,sp,48
    80002a94:	00002917          	auipc	s2,0x2
    80002a98:	9ec90913          	addi	s2,s2,-1556 # 80004480 <uart_tx_r>
    80002a9c:	00093783          	ld	a5,0(s2)
    80002aa0:	00002497          	auipc	s1,0x2
    80002aa4:	9e848493          	addi	s1,s1,-1560 # 80004488 <uart_tx_w>
    80002aa8:	0004b703          	ld	a4,0(s1)
    80002aac:	02078693          	addi	a3,a5,32
    80002ab0:	00050993          	mv	s3,a0
    80002ab4:	02e69c63          	bne	a3,a4,80002aec <uartputc+0x84>
    80002ab8:	00001097          	auipc	ra,0x1
    80002abc:	834080e7          	jalr	-1996(ra) # 800032ec <push_on>
    80002ac0:	00093783          	ld	a5,0(s2)
    80002ac4:	0004b703          	ld	a4,0(s1)
    80002ac8:	02078793          	addi	a5,a5,32
    80002acc:	00e79463          	bne	a5,a4,80002ad4 <uartputc+0x6c>
    80002ad0:	0000006f          	j	80002ad0 <uartputc+0x68>
    80002ad4:	00001097          	auipc	ra,0x1
    80002ad8:	88c080e7          	jalr	-1908(ra) # 80003360 <pop_on>
    80002adc:	00093783          	ld	a5,0(s2)
    80002ae0:	0004b703          	ld	a4,0(s1)
    80002ae4:	02078693          	addi	a3,a5,32
    80002ae8:	fce688e3          	beq	a3,a4,80002ab8 <uartputc+0x50>
    80002aec:	01f77693          	andi	a3,a4,31
    80002af0:	00003597          	auipc	a1,0x3
    80002af4:	bf058593          	addi	a1,a1,-1040 # 800056e0 <uart_tx_buf>
    80002af8:	00d586b3          	add	a3,a1,a3
    80002afc:	00170713          	addi	a4,a4,1
    80002b00:	01368023          	sb	s3,0(a3)
    80002b04:	00e4b023          	sd	a4,0(s1)
    80002b08:	10000637          	lui	a2,0x10000
    80002b0c:	02f71063          	bne	a4,a5,80002b2c <uartputc+0xc4>
    80002b10:	0340006f          	j	80002b44 <uartputc+0xdc>
    80002b14:	00074703          	lbu	a4,0(a4)
    80002b18:	00f93023          	sd	a5,0(s2)
    80002b1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002b20:	00093783          	ld	a5,0(s2)
    80002b24:	0004b703          	ld	a4,0(s1)
    80002b28:	00f70e63          	beq	a4,a5,80002b44 <uartputc+0xdc>
    80002b2c:	00564683          	lbu	a3,5(a2)
    80002b30:	01f7f713          	andi	a4,a5,31
    80002b34:	00e58733          	add	a4,a1,a4
    80002b38:	0206f693          	andi	a3,a3,32
    80002b3c:	00178793          	addi	a5,a5,1
    80002b40:	fc069ae3          	bnez	a3,80002b14 <uartputc+0xac>
    80002b44:	02813083          	ld	ra,40(sp)
    80002b48:	02013403          	ld	s0,32(sp)
    80002b4c:	01813483          	ld	s1,24(sp)
    80002b50:	01013903          	ld	s2,16(sp)
    80002b54:	00813983          	ld	s3,8(sp)
    80002b58:	03010113          	addi	sp,sp,48
    80002b5c:	00008067          	ret

0000000080002b60 <uartputc_sync>:
    80002b60:	ff010113          	addi	sp,sp,-16
    80002b64:	00813423          	sd	s0,8(sp)
    80002b68:	01010413          	addi	s0,sp,16
    80002b6c:	00002717          	auipc	a4,0x2
    80002b70:	90c72703          	lw	a4,-1780(a4) # 80004478 <panicked>
    80002b74:	02071663          	bnez	a4,80002ba0 <uartputc_sync+0x40>
    80002b78:	00050793          	mv	a5,a0
    80002b7c:	100006b7          	lui	a3,0x10000
    80002b80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002b84:	02077713          	andi	a4,a4,32
    80002b88:	fe070ce3          	beqz	a4,80002b80 <uartputc_sync+0x20>
    80002b8c:	0ff7f793          	andi	a5,a5,255
    80002b90:	00f68023          	sb	a5,0(a3)
    80002b94:	00813403          	ld	s0,8(sp)
    80002b98:	01010113          	addi	sp,sp,16
    80002b9c:	00008067          	ret
    80002ba0:	0000006f          	j	80002ba0 <uartputc_sync+0x40>

0000000080002ba4 <uartstart>:
    80002ba4:	ff010113          	addi	sp,sp,-16
    80002ba8:	00813423          	sd	s0,8(sp)
    80002bac:	01010413          	addi	s0,sp,16
    80002bb0:	00002617          	auipc	a2,0x2
    80002bb4:	8d060613          	addi	a2,a2,-1840 # 80004480 <uart_tx_r>
    80002bb8:	00002517          	auipc	a0,0x2
    80002bbc:	8d050513          	addi	a0,a0,-1840 # 80004488 <uart_tx_w>
    80002bc0:	00063783          	ld	a5,0(a2)
    80002bc4:	00053703          	ld	a4,0(a0)
    80002bc8:	04f70263          	beq	a4,a5,80002c0c <uartstart+0x68>
    80002bcc:	100005b7          	lui	a1,0x10000
    80002bd0:	00003817          	auipc	a6,0x3
    80002bd4:	b1080813          	addi	a6,a6,-1264 # 800056e0 <uart_tx_buf>
    80002bd8:	01c0006f          	j	80002bf4 <uartstart+0x50>
    80002bdc:	0006c703          	lbu	a4,0(a3)
    80002be0:	00f63023          	sd	a5,0(a2)
    80002be4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002be8:	00063783          	ld	a5,0(a2)
    80002bec:	00053703          	ld	a4,0(a0)
    80002bf0:	00f70e63          	beq	a4,a5,80002c0c <uartstart+0x68>
    80002bf4:	01f7f713          	andi	a4,a5,31
    80002bf8:	00e806b3          	add	a3,a6,a4
    80002bfc:	0055c703          	lbu	a4,5(a1)
    80002c00:	00178793          	addi	a5,a5,1
    80002c04:	02077713          	andi	a4,a4,32
    80002c08:	fc071ae3          	bnez	a4,80002bdc <uartstart+0x38>
    80002c0c:	00813403          	ld	s0,8(sp)
    80002c10:	01010113          	addi	sp,sp,16
    80002c14:	00008067          	ret

0000000080002c18 <uartgetc>:
    80002c18:	ff010113          	addi	sp,sp,-16
    80002c1c:	00813423          	sd	s0,8(sp)
    80002c20:	01010413          	addi	s0,sp,16
    80002c24:	10000737          	lui	a4,0x10000
    80002c28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002c2c:	0017f793          	andi	a5,a5,1
    80002c30:	00078c63          	beqz	a5,80002c48 <uartgetc+0x30>
    80002c34:	00074503          	lbu	a0,0(a4)
    80002c38:	0ff57513          	andi	a0,a0,255
    80002c3c:	00813403          	ld	s0,8(sp)
    80002c40:	01010113          	addi	sp,sp,16
    80002c44:	00008067          	ret
    80002c48:	fff00513          	li	a0,-1
    80002c4c:	ff1ff06f          	j	80002c3c <uartgetc+0x24>

0000000080002c50 <uartintr>:
    80002c50:	100007b7          	lui	a5,0x10000
    80002c54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c58:	0017f793          	andi	a5,a5,1
    80002c5c:	0a078463          	beqz	a5,80002d04 <uartintr+0xb4>
    80002c60:	fe010113          	addi	sp,sp,-32
    80002c64:	00813823          	sd	s0,16(sp)
    80002c68:	00913423          	sd	s1,8(sp)
    80002c6c:	00113c23          	sd	ra,24(sp)
    80002c70:	02010413          	addi	s0,sp,32
    80002c74:	100004b7          	lui	s1,0x10000
    80002c78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002c7c:	0ff57513          	andi	a0,a0,255
    80002c80:	fffff097          	auipc	ra,0xfffff
    80002c84:	534080e7          	jalr	1332(ra) # 800021b4 <consoleintr>
    80002c88:	0054c783          	lbu	a5,5(s1)
    80002c8c:	0017f793          	andi	a5,a5,1
    80002c90:	fe0794e3          	bnez	a5,80002c78 <uartintr+0x28>
    80002c94:	00001617          	auipc	a2,0x1
    80002c98:	7ec60613          	addi	a2,a2,2028 # 80004480 <uart_tx_r>
    80002c9c:	00001517          	auipc	a0,0x1
    80002ca0:	7ec50513          	addi	a0,a0,2028 # 80004488 <uart_tx_w>
    80002ca4:	00063783          	ld	a5,0(a2)
    80002ca8:	00053703          	ld	a4,0(a0)
    80002cac:	04f70263          	beq	a4,a5,80002cf0 <uartintr+0xa0>
    80002cb0:	100005b7          	lui	a1,0x10000
    80002cb4:	00003817          	auipc	a6,0x3
    80002cb8:	a2c80813          	addi	a6,a6,-1492 # 800056e0 <uart_tx_buf>
    80002cbc:	01c0006f          	j	80002cd8 <uartintr+0x88>
    80002cc0:	0006c703          	lbu	a4,0(a3)
    80002cc4:	00f63023          	sd	a5,0(a2)
    80002cc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002ccc:	00063783          	ld	a5,0(a2)
    80002cd0:	00053703          	ld	a4,0(a0)
    80002cd4:	00f70e63          	beq	a4,a5,80002cf0 <uartintr+0xa0>
    80002cd8:	01f7f713          	andi	a4,a5,31
    80002cdc:	00e806b3          	add	a3,a6,a4
    80002ce0:	0055c703          	lbu	a4,5(a1)
    80002ce4:	00178793          	addi	a5,a5,1
    80002ce8:	02077713          	andi	a4,a4,32
    80002cec:	fc071ae3          	bnez	a4,80002cc0 <uartintr+0x70>
    80002cf0:	01813083          	ld	ra,24(sp)
    80002cf4:	01013403          	ld	s0,16(sp)
    80002cf8:	00813483          	ld	s1,8(sp)
    80002cfc:	02010113          	addi	sp,sp,32
    80002d00:	00008067          	ret
    80002d04:	00001617          	auipc	a2,0x1
    80002d08:	77c60613          	addi	a2,a2,1916 # 80004480 <uart_tx_r>
    80002d0c:	00001517          	auipc	a0,0x1
    80002d10:	77c50513          	addi	a0,a0,1916 # 80004488 <uart_tx_w>
    80002d14:	00063783          	ld	a5,0(a2)
    80002d18:	00053703          	ld	a4,0(a0)
    80002d1c:	04f70263          	beq	a4,a5,80002d60 <uartintr+0x110>
    80002d20:	100005b7          	lui	a1,0x10000
    80002d24:	00003817          	auipc	a6,0x3
    80002d28:	9bc80813          	addi	a6,a6,-1604 # 800056e0 <uart_tx_buf>
    80002d2c:	01c0006f          	j	80002d48 <uartintr+0xf8>
    80002d30:	0006c703          	lbu	a4,0(a3)
    80002d34:	00f63023          	sd	a5,0(a2)
    80002d38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d3c:	00063783          	ld	a5,0(a2)
    80002d40:	00053703          	ld	a4,0(a0)
    80002d44:	02f70063          	beq	a4,a5,80002d64 <uartintr+0x114>
    80002d48:	01f7f713          	andi	a4,a5,31
    80002d4c:	00e806b3          	add	a3,a6,a4
    80002d50:	0055c703          	lbu	a4,5(a1)
    80002d54:	00178793          	addi	a5,a5,1
    80002d58:	02077713          	andi	a4,a4,32
    80002d5c:	fc071ae3          	bnez	a4,80002d30 <uartintr+0xe0>
    80002d60:	00008067          	ret
    80002d64:	00008067          	ret

0000000080002d68 <kinit>:
    80002d68:	fc010113          	addi	sp,sp,-64
    80002d6c:	02913423          	sd	s1,40(sp)
    80002d70:	fffff7b7          	lui	a5,0xfffff
    80002d74:	00004497          	auipc	s1,0x4
    80002d78:	98b48493          	addi	s1,s1,-1653 # 800066ff <end+0xfff>
    80002d7c:	02813823          	sd	s0,48(sp)
    80002d80:	01313c23          	sd	s3,24(sp)
    80002d84:	00f4f4b3          	and	s1,s1,a5
    80002d88:	02113c23          	sd	ra,56(sp)
    80002d8c:	03213023          	sd	s2,32(sp)
    80002d90:	01413823          	sd	s4,16(sp)
    80002d94:	01513423          	sd	s5,8(sp)
    80002d98:	04010413          	addi	s0,sp,64
    80002d9c:	000017b7          	lui	a5,0x1
    80002da0:	01100993          	li	s3,17
    80002da4:	00f487b3          	add	a5,s1,a5
    80002da8:	01b99993          	slli	s3,s3,0x1b
    80002dac:	06f9e063          	bltu	s3,a5,80002e0c <kinit+0xa4>
    80002db0:	00003a97          	auipc	s5,0x3
    80002db4:	950a8a93          	addi	s5,s5,-1712 # 80005700 <end>
    80002db8:	0754ec63          	bltu	s1,s5,80002e30 <kinit+0xc8>
    80002dbc:	0734fa63          	bgeu	s1,s3,80002e30 <kinit+0xc8>
    80002dc0:	00088a37          	lui	s4,0x88
    80002dc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002dc8:	00001917          	auipc	s2,0x1
    80002dcc:	6c890913          	addi	s2,s2,1736 # 80004490 <kmem>
    80002dd0:	00ca1a13          	slli	s4,s4,0xc
    80002dd4:	0140006f          	j	80002de8 <kinit+0x80>
    80002dd8:	000017b7          	lui	a5,0x1
    80002ddc:	00f484b3          	add	s1,s1,a5
    80002de0:	0554e863          	bltu	s1,s5,80002e30 <kinit+0xc8>
    80002de4:	0534f663          	bgeu	s1,s3,80002e30 <kinit+0xc8>
    80002de8:	00001637          	lui	a2,0x1
    80002dec:	00100593          	li	a1,1
    80002df0:	00048513          	mv	a0,s1
    80002df4:	00000097          	auipc	ra,0x0
    80002df8:	5e4080e7          	jalr	1508(ra) # 800033d8 <__memset>
    80002dfc:	00093783          	ld	a5,0(s2)
    80002e00:	00f4b023          	sd	a5,0(s1)
    80002e04:	00993023          	sd	s1,0(s2)
    80002e08:	fd4498e3          	bne	s1,s4,80002dd8 <kinit+0x70>
    80002e0c:	03813083          	ld	ra,56(sp)
    80002e10:	03013403          	ld	s0,48(sp)
    80002e14:	02813483          	ld	s1,40(sp)
    80002e18:	02013903          	ld	s2,32(sp)
    80002e1c:	01813983          	ld	s3,24(sp)
    80002e20:	01013a03          	ld	s4,16(sp)
    80002e24:	00813a83          	ld	s5,8(sp)
    80002e28:	04010113          	addi	sp,sp,64
    80002e2c:	00008067          	ret
    80002e30:	00001517          	auipc	a0,0x1
    80002e34:	37850513          	addi	a0,a0,888 # 800041a8 <digits+0x18>
    80002e38:	fffff097          	auipc	ra,0xfffff
    80002e3c:	4b4080e7          	jalr	1204(ra) # 800022ec <panic>

0000000080002e40 <freerange>:
    80002e40:	fc010113          	addi	sp,sp,-64
    80002e44:	000017b7          	lui	a5,0x1
    80002e48:	02913423          	sd	s1,40(sp)
    80002e4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e50:	009504b3          	add	s1,a0,s1
    80002e54:	fffff537          	lui	a0,0xfffff
    80002e58:	02813823          	sd	s0,48(sp)
    80002e5c:	02113c23          	sd	ra,56(sp)
    80002e60:	03213023          	sd	s2,32(sp)
    80002e64:	01313c23          	sd	s3,24(sp)
    80002e68:	01413823          	sd	s4,16(sp)
    80002e6c:	01513423          	sd	s5,8(sp)
    80002e70:	01613023          	sd	s6,0(sp)
    80002e74:	04010413          	addi	s0,sp,64
    80002e78:	00a4f4b3          	and	s1,s1,a0
    80002e7c:	00f487b3          	add	a5,s1,a5
    80002e80:	06f5e463          	bltu	a1,a5,80002ee8 <freerange+0xa8>
    80002e84:	00003a97          	auipc	s5,0x3
    80002e88:	87ca8a93          	addi	s5,s5,-1924 # 80005700 <end>
    80002e8c:	0954e263          	bltu	s1,s5,80002f10 <freerange+0xd0>
    80002e90:	01100993          	li	s3,17
    80002e94:	01b99993          	slli	s3,s3,0x1b
    80002e98:	0734fc63          	bgeu	s1,s3,80002f10 <freerange+0xd0>
    80002e9c:	00058a13          	mv	s4,a1
    80002ea0:	00001917          	auipc	s2,0x1
    80002ea4:	5f090913          	addi	s2,s2,1520 # 80004490 <kmem>
    80002ea8:	00002b37          	lui	s6,0x2
    80002eac:	0140006f          	j	80002ec0 <freerange+0x80>
    80002eb0:	000017b7          	lui	a5,0x1
    80002eb4:	00f484b3          	add	s1,s1,a5
    80002eb8:	0554ec63          	bltu	s1,s5,80002f10 <freerange+0xd0>
    80002ebc:	0534fa63          	bgeu	s1,s3,80002f10 <freerange+0xd0>
    80002ec0:	00001637          	lui	a2,0x1
    80002ec4:	00100593          	li	a1,1
    80002ec8:	00048513          	mv	a0,s1
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	50c080e7          	jalr	1292(ra) # 800033d8 <__memset>
    80002ed4:	00093703          	ld	a4,0(s2)
    80002ed8:	016487b3          	add	a5,s1,s6
    80002edc:	00e4b023          	sd	a4,0(s1)
    80002ee0:	00993023          	sd	s1,0(s2)
    80002ee4:	fcfa76e3          	bgeu	s4,a5,80002eb0 <freerange+0x70>
    80002ee8:	03813083          	ld	ra,56(sp)
    80002eec:	03013403          	ld	s0,48(sp)
    80002ef0:	02813483          	ld	s1,40(sp)
    80002ef4:	02013903          	ld	s2,32(sp)
    80002ef8:	01813983          	ld	s3,24(sp)
    80002efc:	01013a03          	ld	s4,16(sp)
    80002f00:	00813a83          	ld	s5,8(sp)
    80002f04:	00013b03          	ld	s6,0(sp)
    80002f08:	04010113          	addi	sp,sp,64
    80002f0c:	00008067          	ret
    80002f10:	00001517          	auipc	a0,0x1
    80002f14:	29850513          	addi	a0,a0,664 # 800041a8 <digits+0x18>
    80002f18:	fffff097          	auipc	ra,0xfffff
    80002f1c:	3d4080e7          	jalr	980(ra) # 800022ec <panic>

0000000080002f20 <kfree>:
    80002f20:	fe010113          	addi	sp,sp,-32
    80002f24:	00813823          	sd	s0,16(sp)
    80002f28:	00113c23          	sd	ra,24(sp)
    80002f2c:	00913423          	sd	s1,8(sp)
    80002f30:	02010413          	addi	s0,sp,32
    80002f34:	03451793          	slli	a5,a0,0x34
    80002f38:	04079c63          	bnez	a5,80002f90 <kfree+0x70>
    80002f3c:	00002797          	auipc	a5,0x2
    80002f40:	7c478793          	addi	a5,a5,1988 # 80005700 <end>
    80002f44:	00050493          	mv	s1,a0
    80002f48:	04f56463          	bltu	a0,a5,80002f90 <kfree+0x70>
    80002f4c:	01100793          	li	a5,17
    80002f50:	01b79793          	slli	a5,a5,0x1b
    80002f54:	02f57e63          	bgeu	a0,a5,80002f90 <kfree+0x70>
    80002f58:	00001637          	lui	a2,0x1
    80002f5c:	00100593          	li	a1,1
    80002f60:	00000097          	auipc	ra,0x0
    80002f64:	478080e7          	jalr	1144(ra) # 800033d8 <__memset>
    80002f68:	00001797          	auipc	a5,0x1
    80002f6c:	52878793          	addi	a5,a5,1320 # 80004490 <kmem>
    80002f70:	0007b703          	ld	a4,0(a5)
    80002f74:	01813083          	ld	ra,24(sp)
    80002f78:	01013403          	ld	s0,16(sp)
    80002f7c:	00e4b023          	sd	a4,0(s1)
    80002f80:	0097b023          	sd	s1,0(a5)
    80002f84:	00813483          	ld	s1,8(sp)
    80002f88:	02010113          	addi	sp,sp,32
    80002f8c:	00008067          	ret
    80002f90:	00001517          	auipc	a0,0x1
    80002f94:	21850513          	addi	a0,a0,536 # 800041a8 <digits+0x18>
    80002f98:	fffff097          	auipc	ra,0xfffff
    80002f9c:	354080e7          	jalr	852(ra) # 800022ec <panic>

0000000080002fa0 <kalloc>:
    80002fa0:	fe010113          	addi	sp,sp,-32
    80002fa4:	00813823          	sd	s0,16(sp)
    80002fa8:	00913423          	sd	s1,8(sp)
    80002fac:	00113c23          	sd	ra,24(sp)
    80002fb0:	02010413          	addi	s0,sp,32
    80002fb4:	00001797          	auipc	a5,0x1
    80002fb8:	4dc78793          	addi	a5,a5,1244 # 80004490 <kmem>
    80002fbc:	0007b483          	ld	s1,0(a5)
    80002fc0:	02048063          	beqz	s1,80002fe0 <kalloc+0x40>
    80002fc4:	0004b703          	ld	a4,0(s1)
    80002fc8:	00001637          	lui	a2,0x1
    80002fcc:	00500593          	li	a1,5
    80002fd0:	00048513          	mv	a0,s1
    80002fd4:	00e7b023          	sd	a4,0(a5)
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	400080e7          	jalr	1024(ra) # 800033d8 <__memset>
    80002fe0:	01813083          	ld	ra,24(sp)
    80002fe4:	01013403          	ld	s0,16(sp)
    80002fe8:	00048513          	mv	a0,s1
    80002fec:	00813483          	ld	s1,8(sp)
    80002ff0:	02010113          	addi	sp,sp,32
    80002ff4:	00008067          	ret

0000000080002ff8 <initlock>:
    80002ff8:	ff010113          	addi	sp,sp,-16
    80002ffc:	00813423          	sd	s0,8(sp)
    80003000:	01010413          	addi	s0,sp,16
    80003004:	00813403          	ld	s0,8(sp)
    80003008:	00b53423          	sd	a1,8(a0)
    8000300c:	00052023          	sw	zero,0(a0)
    80003010:	00053823          	sd	zero,16(a0)
    80003014:	01010113          	addi	sp,sp,16
    80003018:	00008067          	ret

000000008000301c <acquire>:
    8000301c:	fe010113          	addi	sp,sp,-32
    80003020:	00813823          	sd	s0,16(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	00113c23          	sd	ra,24(sp)
    8000302c:	01213023          	sd	s2,0(sp)
    80003030:	02010413          	addi	s0,sp,32
    80003034:	00050493          	mv	s1,a0
    80003038:	10002973          	csrr	s2,sstatus
    8000303c:	100027f3          	csrr	a5,sstatus
    80003040:	ffd7f793          	andi	a5,a5,-3
    80003044:	10079073          	csrw	sstatus,a5
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	8e0080e7          	jalr	-1824(ra) # 80001928 <mycpu>
    80003050:	07852783          	lw	a5,120(a0)
    80003054:	06078e63          	beqz	a5,800030d0 <acquire+0xb4>
    80003058:	fffff097          	auipc	ra,0xfffff
    8000305c:	8d0080e7          	jalr	-1840(ra) # 80001928 <mycpu>
    80003060:	07852783          	lw	a5,120(a0)
    80003064:	0004a703          	lw	a4,0(s1)
    80003068:	0017879b          	addiw	a5,a5,1
    8000306c:	06f52c23          	sw	a5,120(a0)
    80003070:	04071063          	bnez	a4,800030b0 <acquire+0x94>
    80003074:	00100713          	li	a4,1
    80003078:	00070793          	mv	a5,a4
    8000307c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003080:	0007879b          	sext.w	a5,a5
    80003084:	fe079ae3          	bnez	a5,80003078 <acquire+0x5c>
    80003088:	0ff0000f          	fence
    8000308c:	fffff097          	auipc	ra,0xfffff
    80003090:	89c080e7          	jalr	-1892(ra) # 80001928 <mycpu>
    80003094:	01813083          	ld	ra,24(sp)
    80003098:	01013403          	ld	s0,16(sp)
    8000309c:	00a4b823          	sd	a0,16(s1)
    800030a0:	00013903          	ld	s2,0(sp)
    800030a4:	00813483          	ld	s1,8(sp)
    800030a8:	02010113          	addi	sp,sp,32
    800030ac:	00008067          	ret
    800030b0:	0104b903          	ld	s2,16(s1)
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	874080e7          	jalr	-1932(ra) # 80001928 <mycpu>
    800030bc:	faa91ce3          	bne	s2,a0,80003074 <acquire+0x58>
    800030c0:	00001517          	auipc	a0,0x1
    800030c4:	0f050513          	addi	a0,a0,240 # 800041b0 <digits+0x20>
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	224080e7          	jalr	548(ra) # 800022ec <panic>
    800030d0:	00195913          	srli	s2,s2,0x1
    800030d4:	fffff097          	auipc	ra,0xfffff
    800030d8:	854080e7          	jalr	-1964(ra) # 80001928 <mycpu>
    800030dc:	00197913          	andi	s2,s2,1
    800030e0:	07252e23          	sw	s2,124(a0)
    800030e4:	f75ff06f          	j	80003058 <acquire+0x3c>

00000000800030e8 <release>:
    800030e8:	fe010113          	addi	sp,sp,-32
    800030ec:	00813823          	sd	s0,16(sp)
    800030f0:	00113c23          	sd	ra,24(sp)
    800030f4:	00913423          	sd	s1,8(sp)
    800030f8:	01213023          	sd	s2,0(sp)
    800030fc:	02010413          	addi	s0,sp,32
    80003100:	00052783          	lw	a5,0(a0)
    80003104:	00079a63          	bnez	a5,80003118 <release+0x30>
    80003108:	00001517          	auipc	a0,0x1
    8000310c:	0b050513          	addi	a0,a0,176 # 800041b8 <digits+0x28>
    80003110:	fffff097          	auipc	ra,0xfffff
    80003114:	1dc080e7          	jalr	476(ra) # 800022ec <panic>
    80003118:	01053903          	ld	s2,16(a0)
    8000311c:	00050493          	mv	s1,a0
    80003120:	fffff097          	auipc	ra,0xfffff
    80003124:	808080e7          	jalr	-2040(ra) # 80001928 <mycpu>
    80003128:	fea910e3          	bne	s2,a0,80003108 <release+0x20>
    8000312c:	0004b823          	sd	zero,16(s1)
    80003130:	0ff0000f          	fence
    80003134:	0f50000f          	fence	iorw,ow
    80003138:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	7ec080e7          	jalr	2028(ra) # 80001928 <mycpu>
    80003144:	100027f3          	csrr	a5,sstatus
    80003148:	0027f793          	andi	a5,a5,2
    8000314c:	04079a63          	bnez	a5,800031a0 <release+0xb8>
    80003150:	07852783          	lw	a5,120(a0)
    80003154:	02f05e63          	blez	a5,80003190 <release+0xa8>
    80003158:	fff7871b          	addiw	a4,a5,-1
    8000315c:	06e52c23          	sw	a4,120(a0)
    80003160:	00071c63          	bnez	a4,80003178 <release+0x90>
    80003164:	07c52783          	lw	a5,124(a0)
    80003168:	00078863          	beqz	a5,80003178 <release+0x90>
    8000316c:	100027f3          	csrr	a5,sstatus
    80003170:	0027e793          	ori	a5,a5,2
    80003174:	10079073          	csrw	sstatus,a5
    80003178:	01813083          	ld	ra,24(sp)
    8000317c:	01013403          	ld	s0,16(sp)
    80003180:	00813483          	ld	s1,8(sp)
    80003184:	00013903          	ld	s2,0(sp)
    80003188:	02010113          	addi	sp,sp,32
    8000318c:	00008067          	ret
    80003190:	00001517          	auipc	a0,0x1
    80003194:	04850513          	addi	a0,a0,72 # 800041d8 <digits+0x48>
    80003198:	fffff097          	auipc	ra,0xfffff
    8000319c:	154080e7          	jalr	340(ra) # 800022ec <panic>
    800031a0:	00001517          	auipc	a0,0x1
    800031a4:	02050513          	addi	a0,a0,32 # 800041c0 <digits+0x30>
    800031a8:	fffff097          	auipc	ra,0xfffff
    800031ac:	144080e7          	jalr	324(ra) # 800022ec <panic>

00000000800031b0 <holding>:
    800031b0:	00052783          	lw	a5,0(a0)
    800031b4:	00079663          	bnez	a5,800031c0 <holding+0x10>
    800031b8:	00000513          	li	a0,0
    800031bc:	00008067          	ret
    800031c0:	fe010113          	addi	sp,sp,-32
    800031c4:	00813823          	sd	s0,16(sp)
    800031c8:	00913423          	sd	s1,8(sp)
    800031cc:	00113c23          	sd	ra,24(sp)
    800031d0:	02010413          	addi	s0,sp,32
    800031d4:	01053483          	ld	s1,16(a0)
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	750080e7          	jalr	1872(ra) # 80001928 <mycpu>
    800031e0:	01813083          	ld	ra,24(sp)
    800031e4:	01013403          	ld	s0,16(sp)
    800031e8:	40a48533          	sub	a0,s1,a0
    800031ec:	00153513          	seqz	a0,a0
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	02010113          	addi	sp,sp,32
    800031f8:	00008067          	ret

00000000800031fc <push_off>:
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00813823          	sd	s0,16(sp)
    80003204:	00113c23          	sd	ra,24(sp)
    80003208:	00913423          	sd	s1,8(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	100024f3          	csrr	s1,sstatus
    80003214:	100027f3          	csrr	a5,sstatus
    80003218:	ffd7f793          	andi	a5,a5,-3
    8000321c:	10079073          	csrw	sstatus,a5
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	708080e7          	jalr	1800(ra) # 80001928 <mycpu>
    80003228:	07852783          	lw	a5,120(a0)
    8000322c:	02078663          	beqz	a5,80003258 <push_off+0x5c>
    80003230:	ffffe097          	auipc	ra,0xffffe
    80003234:	6f8080e7          	jalr	1784(ra) # 80001928 <mycpu>
    80003238:	07852783          	lw	a5,120(a0)
    8000323c:	01813083          	ld	ra,24(sp)
    80003240:	01013403          	ld	s0,16(sp)
    80003244:	0017879b          	addiw	a5,a5,1
    80003248:	06f52c23          	sw	a5,120(a0)
    8000324c:	00813483          	ld	s1,8(sp)
    80003250:	02010113          	addi	sp,sp,32
    80003254:	00008067          	ret
    80003258:	0014d493          	srli	s1,s1,0x1
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	6cc080e7          	jalr	1740(ra) # 80001928 <mycpu>
    80003264:	0014f493          	andi	s1,s1,1
    80003268:	06952e23          	sw	s1,124(a0)
    8000326c:	fc5ff06f          	j	80003230 <push_off+0x34>

0000000080003270 <pop_off>:
    80003270:	ff010113          	addi	sp,sp,-16
    80003274:	00813023          	sd	s0,0(sp)
    80003278:	00113423          	sd	ra,8(sp)
    8000327c:	01010413          	addi	s0,sp,16
    80003280:	ffffe097          	auipc	ra,0xffffe
    80003284:	6a8080e7          	jalr	1704(ra) # 80001928 <mycpu>
    80003288:	100027f3          	csrr	a5,sstatus
    8000328c:	0027f793          	andi	a5,a5,2
    80003290:	04079663          	bnez	a5,800032dc <pop_off+0x6c>
    80003294:	07852783          	lw	a5,120(a0)
    80003298:	02f05a63          	blez	a5,800032cc <pop_off+0x5c>
    8000329c:	fff7871b          	addiw	a4,a5,-1
    800032a0:	06e52c23          	sw	a4,120(a0)
    800032a4:	00071c63          	bnez	a4,800032bc <pop_off+0x4c>
    800032a8:	07c52783          	lw	a5,124(a0)
    800032ac:	00078863          	beqz	a5,800032bc <pop_off+0x4c>
    800032b0:	100027f3          	csrr	a5,sstatus
    800032b4:	0027e793          	ori	a5,a5,2
    800032b8:	10079073          	csrw	sstatus,a5
    800032bc:	00813083          	ld	ra,8(sp)
    800032c0:	00013403          	ld	s0,0(sp)
    800032c4:	01010113          	addi	sp,sp,16
    800032c8:	00008067          	ret
    800032cc:	00001517          	auipc	a0,0x1
    800032d0:	f0c50513          	addi	a0,a0,-244 # 800041d8 <digits+0x48>
    800032d4:	fffff097          	auipc	ra,0xfffff
    800032d8:	018080e7          	jalr	24(ra) # 800022ec <panic>
    800032dc:	00001517          	auipc	a0,0x1
    800032e0:	ee450513          	addi	a0,a0,-284 # 800041c0 <digits+0x30>
    800032e4:	fffff097          	auipc	ra,0xfffff
    800032e8:	008080e7          	jalr	8(ra) # 800022ec <panic>

00000000800032ec <push_on>:
    800032ec:	fe010113          	addi	sp,sp,-32
    800032f0:	00813823          	sd	s0,16(sp)
    800032f4:	00113c23          	sd	ra,24(sp)
    800032f8:	00913423          	sd	s1,8(sp)
    800032fc:	02010413          	addi	s0,sp,32
    80003300:	100024f3          	csrr	s1,sstatus
    80003304:	100027f3          	csrr	a5,sstatus
    80003308:	0027e793          	ori	a5,a5,2
    8000330c:	10079073          	csrw	sstatus,a5
    80003310:	ffffe097          	auipc	ra,0xffffe
    80003314:	618080e7          	jalr	1560(ra) # 80001928 <mycpu>
    80003318:	07852783          	lw	a5,120(a0)
    8000331c:	02078663          	beqz	a5,80003348 <push_on+0x5c>
    80003320:	ffffe097          	auipc	ra,0xffffe
    80003324:	608080e7          	jalr	1544(ra) # 80001928 <mycpu>
    80003328:	07852783          	lw	a5,120(a0)
    8000332c:	01813083          	ld	ra,24(sp)
    80003330:	01013403          	ld	s0,16(sp)
    80003334:	0017879b          	addiw	a5,a5,1
    80003338:	06f52c23          	sw	a5,120(a0)
    8000333c:	00813483          	ld	s1,8(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret
    80003348:	0014d493          	srli	s1,s1,0x1
    8000334c:	ffffe097          	auipc	ra,0xffffe
    80003350:	5dc080e7          	jalr	1500(ra) # 80001928 <mycpu>
    80003354:	0014f493          	andi	s1,s1,1
    80003358:	06952e23          	sw	s1,124(a0)
    8000335c:	fc5ff06f          	j	80003320 <push_on+0x34>

0000000080003360 <pop_on>:
    80003360:	ff010113          	addi	sp,sp,-16
    80003364:	00813023          	sd	s0,0(sp)
    80003368:	00113423          	sd	ra,8(sp)
    8000336c:	01010413          	addi	s0,sp,16
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	5b8080e7          	jalr	1464(ra) # 80001928 <mycpu>
    80003378:	100027f3          	csrr	a5,sstatus
    8000337c:	0027f793          	andi	a5,a5,2
    80003380:	04078463          	beqz	a5,800033c8 <pop_on+0x68>
    80003384:	07852783          	lw	a5,120(a0)
    80003388:	02f05863          	blez	a5,800033b8 <pop_on+0x58>
    8000338c:	fff7879b          	addiw	a5,a5,-1
    80003390:	06f52c23          	sw	a5,120(a0)
    80003394:	07853783          	ld	a5,120(a0)
    80003398:	00079863          	bnez	a5,800033a8 <pop_on+0x48>
    8000339c:	100027f3          	csrr	a5,sstatus
    800033a0:	ffd7f793          	andi	a5,a5,-3
    800033a4:	10079073          	csrw	sstatus,a5
    800033a8:	00813083          	ld	ra,8(sp)
    800033ac:	00013403          	ld	s0,0(sp)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	00008067          	ret
    800033b8:	00001517          	auipc	a0,0x1
    800033bc:	e4850513          	addi	a0,a0,-440 # 80004200 <digits+0x70>
    800033c0:	fffff097          	auipc	ra,0xfffff
    800033c4:	f2c080e7          	jalr	-212(ra) # 800022ec <panic>
    800033c8:	00001517          	auipc	a0,0x1
    800033cc:	e1850513          	addi	a0,a0,-488 # 800041e0 <digits+0x50>
    800033d0:	fffff097          	auipc	ra,0xfffff
    800033d4:	f1c080e7          	jalr	-228(ra) # 800022ec <panic>

00000000800033d8 <__memset>:
    800033d8:	ff010113          	addi	sp,sp,-16
    800033dc:	00813423          	sd	s0,8(sp)
    800033e0:	01010413          	addi	s0,sp,16
    800033e4:	1a060e63          	beqz	a2,800035a0 <__memset+0x1c8>
    800033e8:	40a007b3          	neg	a5,a0
    800033ec:	0077f793          	andi	a5,a5,7
    800033f0:	00778693          	addi	a3,a5,7
    800033f4:	00b00813          	li	a6,11
    800033f8:	0ff5f593          	andi	a1,a1,255
    800033fc:	fff6071b          	addiw	a4,a2,-1
    80003400:	1b06e663          	bltu	a3,a6,800035ac <__memset+0x1d4>
    80003404:	1cd76463          	bltu	a4,a3,800035cc <__memset+0x1f4>
    80003408:	1a078e63          	beqz	a5,800035c4 <__memset+0x1ec>
    8000340c:	00b50023          	sb	a1,0(a0)
    80003410:	00100713          	li	a4,1
    80003414:	1ae78463          	beq	a5,a4,800035bc <__memset+0x1e4>
    80003418:	00b500a3          	sb	a1,1(a0)
    8000341c:	00200713          	li	a4,2
    80003420:	1ae78a63          	beq	a5,a4,800035d4 <__memset+0x1fc>
    80003424:	00b50123          	sb	a1,2(a0)
    80003428:	00300713          	li	a4,3
    8000342c:	18e78463          	beq	a5,a4,800035b4 <__memset+0x1dc>
    80003430:	00b501a3          	sb	a1,3(a0)
    80003434:	00400713          	li	a4,4
    80003438:	1ae78263          	beq	a5,a4,800035dc <__memset+0x204>
    8000343c:	00b50223          	sb	a1,4(a0)
    80003440:	00500713          	li	a4,5
    80003444:	1ae78063          	beq	a5,a4,800035e4 <__memset+0x20c>
    80003448:	00b502a3          	sb	a1,5(a0)
    8000344c:	00700713          	li	a4,7
    80003450:	18e79e63          	bne	a5,a4,800035ec <__memset+0x214>
    80003454:	00b50323          	sb	a1,6(a0)
    80003458:	00700e93          	li	t4,7
    8000345c:	00859713          	slli	a4,a1,0x8
    80003460:	00e5e733          	or	a4,a1,a4
    80003464:	01059e13          	slli	t3,a1,0x10
    80003468:	01c76e33          	or	t3,a4,t3
    8000346c:	01859313          	slli	t1,a1,0x18
    80003470:	006e6333          	or	t1,t3,t1
    80003474:	02059893          	slli	a7,a1,0x20
    80003478:	40f60e3b          	subw	t3,a2,a5
    8000347c:	011368b3          	or	a7,t1,a7
    80003480:	02859813          	slli	a6,a1,0x28
    80003484:	0108e833          	or	a6,a7,a6
    80003488:	03059693          	slli	a3,a1,0x30
    8000348c:	003e589b          	srliw	a7,t3,0x3
    80003490:	00d866b3          	or	a3,a6,a3
    80003494:	03859713          	slli	a4,a1,0x38
    80003498:	00389813          	slli	a6,a7,0x3
    8000349c:	00f507b3          	add	a5,a0,a5
    800034a0:	00e6e733          	or	a4,a3,a4
    800034a4:	000e089b          	sext.w	a7,t3
    800034a8:	00f806b3          	add	a3,a6,a5
    800034ac:	00e7b023          	sd	a4,0(a5)
    800034b0:	00878793          	addi	a5,a5,8
    800034b4:	fed79ce3          	bne	a5,a3,800034ac <__memset+0xd4>
    800034b8:	ff8e7793          	andi	a5,t3,-8
    800034bc:	0007871b          	sext.w	a4,a5
    800034c0:	01d787bb          	addw	a5,a5,t4
    800034c4:	0ce88e63          	beq	a7,a4,800035a0 <__memset+0x1c8>
    800034c8:	00f50733          	add	a4,a0,a5
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	0017871b          	addiw	a4,a5,1
    800034d4:	0cc77663          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	0027871b          	addiw	a4,a5,2
    800034e4:	0ac77e63          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	0037871b          	addiw	a4,a5,3
    800034f4:	0ac77663          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	0047871b          	addiw	a4,a5,4
    80003504:	08c77e63          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0057871b          	addiw	a4,a5,5
    80003514:	08c77663          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0067871b          	addiw	a4,a5,6
    80003524:	06c77e63          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	0077871b          	addiw	a4,a5,7
    80003534:	06c77663          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	0087871b          	addiw	a4,a5,8
    80003544:	04c77e63          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	0097871b          	addiw	a4,a5,9
    80003554:	04c77663          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	00a7871b          	addiw	a4,a5,10
    80003564:	02c77e63          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003568:	00e50733          	add	a4,a0,a4
    8000356c:	00b70023          	sb	a1,0(a4)
    80003570:	00b7871b          	addiw	a4,a5,11
    80003574:	02c77663          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003578:	00e50733          	add	a4,a0,a4
    8000357c:	00b70023          	sb	a1,0(a4)
    80003580:	00c7871b          	addiw	a4,a5,12
    80003584:	00c77e63          	bgeu	a4,a2,800035a0 <__memset+0x1c8>
    80003588:	00e50733          	add	a4,a0,a4
    8000358c:	00b70023          	sb	a1,0(a4)
    80003590:	00d7879b          	addiw	a5,a5,13
    80003594:	00c7f663          	bgeu	a5,a2,800035a0 <__memset+0x1c8>
    80003598:	00f507b3          	add	a5,a0,a5
    8000359c:	00b78023          	sb	a1,0(a5)
    800035a0:	00813403          	ld	s0,8(sp)
    800035a4:	01010113          	addi	sp,sp,16
    800035a8:	00008067          	ret
    800035ac:	00b00693          	li	a3,11
    800035b0:	e55ff06f          	j	80003404 <__memset+0x2c>
    800035b4:	00300e93          	li	t4,3
    800035b8:	ea5ff06f          	j	8000345c <__memset+0x84>
    800035bc:	00100e93          	li	t4,1
    800035c0:	e9dff06f          	j	8000345c <__memset+0x84>
    800035c4:	00000e93          	li	t4,0
    800035c8:	e95ff06f          	j	8000345c <__memset+0x84>
    800035cc:	00000793          	li	a5,0
    800035d0:	ef9ff06f          	j	800034c8 <__memset+0xf0>
    800035d4:	00200e93          	li	t4,2
    800035d8:	e85ff06f          	j	8000345c <__memset+0x84>
    800035dc:	00400e93          	li	t4,4
    800035e0:	e7dff06f          	j	8000345c <__memset+0x84>
    800035e4:	00500e93          	li	t4,5
    800035e8:	e75ff06f          	j	8000345c <__memset+0x84>
    800035ec:	00600e93          	li	t4,6
    800035f0:	e6dff06f          	j	8000345c <__memset+0x84>

00000000800035f4 <__memmove>:
    800035f4:	ff010113          	addi	sp,sp,-16
    800035f8:	00813423          	sd	s0,8(sp)
    800035fc:	01010413          	addi	s0,sp,16
    80003600:	0e060863          	beqz	a2,800036f0 <__memmove+0xfc>
    80003604:	fff6069b          	addiw	a3,a2,-1
    80003608:	0006881b          	sext.w	a6,a3
    8000360c:	0ea5e863          	bltu	a1,a0,800036fc <__memmove+0x108>
    80003610:	00758713          	addi	a4,a1,7
    80003614:	00a5e7b3          	or	a5,a1,a0
    80003618:	40a70733          	sub	a4,a4,a0
    8000361c:	0077f793          	andi	a5,a5,7
    80003620:	00f73713          	sltiu	a4,a4,15
    80003624:	00174713          	xori	a4,a4,1
    80003628:	0017b793          	seqz	a5,a5
    8000362c:	00e7f7b3          	and	a5,a5,a4
    80003630:	10078863          	beqz	a5,80003740 <__memmove+0x14c>
    80003634:	00900793          	li	a5,9
    80003638:	1107f463          	bgeu	a5,a6,80003740 <__memmove+0x14c>
    8000363c:	0036581b          	srliw	a6,a2,0x3
    80003640:	fff8081b          	addiw	a6,a6,-1
    80003644:	02081813          	slli	a6,a6,0x20
    80003648:	01d85893          	srli	a7,a6,0x1d
    8000364c:	00858813          	addi	a6,a1,8
    80003650:	00058793          	mv	a5,a1
    80003654:	00050713          	mv	a4,a0
    80003658:	01088833          	add	a6,a7,a6
    8000365c:	0007b883          	ld	a7,0(a5)
    80003660:	00878793          	addi	a5,a5,8
    80003664:	00870713          	addi	a4,a4,8
    80003668:	ff173c23          	sd	a7,-8(a4)
    8000366c:	ff0798e3          	bne	a5,a6,8000365c <__memmove+0x68>
    80003670:	ff867713          	andi	a4,a2,-8
    80003674:	02071793          	slli	a5,a4,0x20
    80003678:	0207d793          	srli	a5,a5,0x20
    8000367c:	00f585b3          	add	a1,a1,a5
    80003680:	40e686bb          	subw	a3,a3,a4
    80003684:	00f507b3          	add	a5,a0,a5
    80003688:	06e60463          	beq	a2,a4,800036f0 <__memmove+0xfc>
    8000368c:	0005c703          	lbu	a4,0(a1)
    80003690:	00e78023          	sb	a4,0(a5)
    80003694:	04068e63          	beqz	a3,800036f0 <__memmove+0xfc>
    80003698:	0015c603          	lbu	a2,1(a1)
    8000369c:	00100713          	li	a4,1
    800036a0:	00c780a3          	sb	a2,1(a5)
    800036a4:	04e68663          	beq	a3,a4,800036f0 <__memmove+0xfc>
    800036a8:	0025c603          	lbu	a2,2(a1)
    800036ac:	00200713          	li	a4,2
    800036b0:	00c78123          	sb	a2,2(a5)
    800036b4:	02e68e63          	beq	a3,a4,800036f0 <__memmove+0xfc>
    800036b8:	0035c603          	lbu	a2,3(a1)
    800036bc:	00300713          	li	a4,3
    800036c0:	00c781a3          	sb	a2,3(a5)
    800036c4:	02e68663          	beq	a3,a4,800036f0 <__memmove+0xfc>
    800036c8:	0045c603          	lbu	a2,4(a1)
    800036cc:	00400713          	li	a4,4
    800036d0:	00c78223          	sb	a2,4(a5)
    800036d4:	00e68e63          	beq	a3,a4,800036f0 <__memmove+0xfc>
    800036d8:	0055c603          	lbu	a2,5(a1)
    800036dc:	00500713          	li	a4,5
    800036e0:	00c782a3          	sb	a2,5(a5)
    800036e4:	00e68663          	beq	a3,a4,800036f0 <__memmove+0xfc>
    800036e8:	0065c703          	lbu	a4,6(a1)
    800036ec:	00e78323          	sb	a4,6(a5)
    800036f0:	00813403          	ld	s0,8(sp)
    800036f4:	01010113          	addi	sp,sp,16
    800036f8:	00008067          	ret
    800036fc:	02061713          	slli	a4,a2,0x20
    80003700:	02075713          	srli	a4,a4,0x20
    80003704:	00e587b3          	add	a5,a1,a4
    80003708:	f0f574e3          	bgeu	a0,a5,80003610 <__memmove+0x1c>
    8000370c:	02069613          	slli	a2,a3,0x20
    80003710:	02065613          	srli	a2,a2,0x20
    80003714:	fff64613          	not	a2,a2
    80003718:	00e50733          	add	a4,a0,a4
    8000371c:	00c78633          	add	a2,a5,a2
    80003720:	fff7c683          	lbu	a3,-1(a5)
    80003724:	fff78793          	addi	a5,a5,-1
    80003728:	fff70713          	addi	a4,a4,-1
    8000372c:	00d70023          	sb	a3,0(a4)
    80003730:	fec798e3          	bne	a5,a2,80003720 <__memmove+0x12c>
    80003734:	00813403          	ld	s0,8(sp)
    80003738:	01010113          	addi	sp,sp,16
    8000373c:	00008067          	ret
    80003740:	02069713          	slli	a4,a3,0x20
    80003744:	02075713          	srli	a4,a4,0x20
    80003748:	00170713          	addi	a4,a4,1
    8000374c:	00e50733          	add	a4,a0,a4
    80003750:	00050793          	mv	a5,a0
    80003754:	0005c683          	lbu	a3,0(a1)
    80003758:	00178793          	addi	a5,a5,1
    8000375c:	00158593          	addi	a1,a1,1
    80003760:	fed78fa3          	sb	a3,-1(a5)
    80003764:	fee798e3          	bne	a5,a4,80003754 <__memmove+0x160>
    80003768:	f89ff06f          	j	800036f0 <__memmove+0xfc>

000000008000376c <__putc>:
    8000376c:	fe010113          	addi	sp,sp,-32
    80003770:	00813823          	sd	s0,16(sp)
    80003774:	00113c23          	sd	ra,24(sp)
    80003778:	02010413          	addi	s0,sp,32
    8000377c:	00050793          	mv	a5,a0
    80003780:	fef40593          	addi	a1,s0,-17
    80003784:	00100613          	li	a2,1
    80003788:	00000513          	li	a0,0
    8000378c:	fef407a3          	sb	a5,-17(s0)
    80003790:	fffff097          	auipc	ra,0xfffff
    80003794:	b3c080e7          	jalr	-1220(ra) # 800022cc <console_write>
    80003798:	01813083          	ld	ra,24(sp)
    8000379c:	01013403          	ld	s0,16(sp)
    800037a0:	02010113          	addi	sp,sp,32
    800037a4:	00008067          	ret

00000000800037a8 <__getc>:
    800037a8:	fe010113          	addi	sp,sp,-32
    800037ac:	00813823          	sd	s0,16(sp)
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	02010413          	addi	s0,sp,32
    800037b8:	fe840593          	addi	a1,s0,-24
    800037bc:	00100613          	li	a2,1
    800037c0:	00000513          	li	a0,0
    800037c4:	fffff097          	auipc	ra,0xfffff
    800037c8:	ae8080e7          	jalr	-1304(ra) # 800022ac <console_read>
    800037cc:	fe844503          	lbu	a0,-24(s0)
    800037d0:	01813083          	ld	ra,24(sp)
    800037d4:	01013403          	ld	s0,16(sp)
    800037d8:	02010113          	addi	sp,sp,32
    800037dc:	00008067          	ret

00000000800037e0 <console_handler>:
    800037e0:	fe010113          	addi	sp,sp,-32
    800037e4:	00813823          	sd	s0,16(sp)
    800037e8:	00113c23          	sd	ra,24(sp)
    800037ec:	00913423          	sd	s1,8(sp)
    800037f0:	02010413          	addi	s0,sp,32
    800037f4:	14202773          	csrr	a4,scause
    800037f8:	100027f3          	csrr	a5,sstatus
    800037fc:	0027f793          	andi	a5,a5,2
    80003800:	06079e63          	bnez	a5,8000387c <console_handler+0x9c>
    80003804:	00074c63          	bltz	a4,8000381c <console_handler+0x3c>
    80003808:	01813083          	ld	ra,24(sp)
    8000380c:	01013403          	ld	s0,16(sp)
    80003810:	00813483          	ld	s1,8(sp)
    80003814:	02010113          	addi	sp,sp,32
    80003818:	00008067          	ret
    8000381c:	0ff77713          	andi	a4,a4,255
    80003820:	00900793          	li	a5,9
    80003824:	fef712e3          	bne	a4,a5,80003808 <console_handler+0x28>
    80003828:	ffffe097          	auipc	ra,0xffffe
    8000382c:	6dc080e7          	jalr	1756(ra) # 80001f04 <plic_claim>
    80003830:	00a00793          	li	a5,10
    80003834:	00050493          	mv	s1,a0
    80003838:	02f50c63          	beq	a0,a5,80003870 <console_handler+0x90>
    8000383c:	fc0506e3          	beqz	a0,80003808 <console_handler+0x28>
    80003840:	00050593          	mv	a1,a0
    80003844:	00001517          	auipc	a0,0x1
    80003848:	8c450513          	addi	a0,a0,-1852 # 80004108 <CONSOLE_STATUS+0xf8>
    8000384c:	fffff097          	auipc	ra,0xfffff
    80003850:	afc080e7          	jalr	-1284(ra) # 80002348 <__printf>
    80003854:	01013403          	ld	s0,16(sp)
    80003858:	01813083          	ld	ra,24(sp)
    8000385c:	00048513          	mv	a0,s1
    80003860:	00813483          	ld	s1,8(sp)
    80003864:	02010113          	addi	sp,sp,32
    80003868:	ffffe317          	auipc	t1,0xffffe
    8000386c:	6d430067          	jr	1748(t1) # 80001f3c <plic_complete>
    80003870:	fffff097          	auipc	ra,0xfffff
    80003874:	3e0080e7          	jalr	992(ra) # 80002c50 <uartintr>
    80003878:	fddff06f          	j	80003854 <console_handler+0x74>
    8000387c:	00001517          	auipc	a0,0x1
    80003880:	98c50513          	addi	a0,a0,-1652 # 80004208 <digits+0x78>
    80003884:	fffff097          	auipc	ra,0xfffff
    80003888:	a68080e7          	jalr	-1432(ra) # 800022ec <panic>
	...
