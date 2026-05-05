
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	35013103          	ld	sp,848(sp) # 80004350 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2bc010ef          	jal	ra,800012d8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_Z9mem_allocm>:
// Upis vrednosti automatske promenljive x u registar sstatus 
//asm volatile("csrw sstatus, %0" : : "r" (x)); 
// Instrukcija koja učitava podatak iz memorije u registar s0 
//asm volatile("ld s0, 8(sp)"); 
void* mem_alloc(size_t size)
{
    80001000:	ff010113          	addi	sp,sp,-16
    80001004:	00813423          	sd	s0,8(sp)
    80001008:	01010413          	addi	s0,sp,16
    return nullptr;

    8000100c:	00000513          	li	a0,0
    80001010:	00813403          	ld	s0,8(sp)
    80001014:	01010113          	addi	sp,sp,16
    80001018:	00008067          	ret

000000008000101c <main>:
#include "../lib/console.h"
#include "../lib/hw.h"
#include "../h/memory_allocator.hpp"

void main(){
    8000101c:	ff010113          	addi	sp,sp,-16
    80001020:	00813423          	sd	s0,8(sp)
    80001024:	01010413          	addi	s0,sp,16
    return;
}
    80001028:	00813403          	ld	s0,8(sp)
    8000102c:	01010113          	addi	sp,sp,16
    80001030:	00008067          	ret

0000000080001034 <_ZN15MemoryAllocator8instanceEv>:
#include "../h/memory_allocator.hpp"

MemoryAllocator& MemoryAllocator::instance() {
    80001034:	ff010113          	addi	sp,sp,-16
    80001038:	00813423          	sd	s0,8(sp)
    8000103c:	01010413          	addi	s0,sp,16
    static MemoryAllocator inst;
    return inst;
}
    80001040:	00003517          	auipc	a0,0x3
    80001044:	36050513          	addi	a0,a0,864 # 800043a0 <_ZZN15MemoryAllocator8instanceEvE4inst>
    80001048:	00813403          	ld	s0,8(sp)
    8000104c:	01010113          	addi	sp,sp,16
    80001050:	00008067          	ret

0000000080001054 <_ZN15MemoryAllocator9kmem_initEv>:

// Initializes heap memory as a one free chunk
void MemoryAllocator::kmem_init(){
    80001054:	ff010113          	addi	sp,sp,-16
    80001058:	00813423          	sd	s0,8(sp)
    8000105c:	01010413          	addi	s0,sp,16
    head = (ChunkHeader*) HEAP_START_ADDR;
    80001060:	00003797          	auipc	a5,0x3
    80001064:	2e87b783          	ld	a5,744(a5) # 80004348 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001068:	0007b703          	ld	a4,0(a5)
    8000106c:	00e53023          	sd	a4,0(a0)
    head->next = nullptr;
    80001070:	00073c23          	sd	zero,24(a4)
    head->prev = nullptr;
    80001074:	00053783          	ld	a5,0(a0)
    80001078:	0007b823          	sd	zero,16(a5)
    head->size =  ((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR - sizeof(ChunkHeader));
    8000107c:	00003797          	auipc	a5,0x3
    80001080:	2dc7b783          	ld	a5,732(a5) # 80004358 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001084:	0007b783          	ld	a5,0(a5)
    80001088:	40e787b3          	sub	a5,a5,a4
    8000108c:	00053703          	ld	a4,0(a0)
    80001090:	fd878793          	addi	a5,a5,-40
    80001094:	00f73423          	sd	a5,8(a4)
    head->free = true;
    80001098:	00053783          	ld	a5,0(a0)
    8000109c:	00100713          	li	a4,1
    800010a0:	02e78023          	sb	a4,32(a5)
    head->magic = MAGIC;
    800010a4:	00053703          	ld	a4,0(a0)
    800010a8:	abcdf7b7          	lui	a5,0xabcdf
    800010ac:	f017879b          	addiw	a5,a5,-255
    800010b0:	00f72023          	sw	a5,0(a4)
    return;
} 
    800010b4:	00813403          	ld	s0,8(sp)
    800010b8:	01010113          	addi	sp,sp,16
    800010bc:	00008067          	ret

00000000800010c0 <_ZN15MemoryAllocator10kmem_allocEm>:
 * @param size Number of blocks requested
 * @return nullptr (no suitable free chunk exists),
 *        pointer (pointer to allocated memory)
 */
void* MemoryAllocator::kmem_alloc(size_t size) {
    if (size == 0) return nullptr;
    800010c0:	0c058863          	beqz	a1,80001190 <_ZN15MemoryAllocator10kmem_allocEm+0xd0>
void* MemoryAllocator::kmem_alloc(size_t size) {
    800010c4:	fe010113          	addi	sp,sp,-32
    800010c8:	00113c23          	sd	ra,24(sp)
    800010cc:	00813823          	sd	s0,16(sp)
    800010d0:	00913423          	sd	s1,8(sp)
    800010d4:	01213023          	sd	s2,0(sp)
    800010d8:	02010413          	addi	s0,sp,32
    800010dc:	00050913          	mv	s2,a0

    // alignment to full block
    size_t aligned = size * MEM_BLOCK_SIZE;
    800010e0:	00659493          	slli	s1,a1,0x6

    if (!head) kmem_init();
    800010e4:	00053783          	ld	a5,0(a0)
    800010e8:	00078663          	beqz	a5,800010f4 <_ZN15MemoryAllocator10kmem_allocEm+0x34>
    
    ChunkHeader* curr = head;
    800010ec:	00093503          	ld	a0,0(s2)
    800010f0:	0340006f          	j	80001124 <_ZN15MemoryAllocator10kmem_allocEm+0x64>
    if (!head) kmem_init();
    800010f4:	00000097          	auipc	ra,0x0
    800010f8:	f60080e7          	jalr	-160(ra) # 80001054 <_ZN15MemoryAllocator9kmem_initEv>
    800010fc:	ff1ff06f          	j	800010ec <_ZN15MemoryAllocator10kmem_allocEm+0x2c>
    // first-fit algorithm
    while (curr) {
        if (curr->free){
            if (curr->size == aligned){
                // Full take
                curr->free = false;
    80001100:	02050023          	sb	zero,32(a0)

                return (void*)((char*)curr + sizeof(ChunkHeader));
    80001104:	02850513          	addi	a0,a0,40

        curr = curr->next;
    }

    return nullptr;
}
    80001108:	01813083          	ld	ra,24(sp)
    8000110c:	01013403          	ld	s0,16(sp)
    80001110:	00813483          	ld	s1,8(sp)
    80001114:	00013903          	ld	s2,0(sp)
    80001118:	02010113          	addi	sp,sp,32
    8000111c:	00008067          	ret
        curr = curr->next;
    80001120:	01853503          	ld	a0,24(a0)
    while (curr) {
    80001124:	fe0502e3          	beqz	a0,80001108 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
        if (curr->free){
    80001128:	02054783          	lbu	a5,32(a0)
    8000112c:	fe078ae3          	beqz	a5,80001120 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
            if (curr->size == aligned){
    80001130:	00853783          	ld	a5,8(a0)
    80001134:	fc9786e3          	beq	a5,s1,80001100 <_ZN15MemoryAllocator10kmem_allocEm+0x40>
            else if (curr->size > aligned + sizeof(ChunkHeader)){
    80001138:	02848713          	addi	a4,s1,40
    8000113c:	fef772e3          	bgeu	a4,a5,80001120 <_ZN15MemoryAllocator10kmem_allocEm+0x60>
                size_t remaining = curr->size - aligned;
    80001140:	409787b3          	sub	a5,a5,s1
                ChunkHeader* newChunk = (ChunkHeader*)((char*)curr + sizeof(ChunkHeader) + aligned);
    80001144:	00e50733          	add	a4,a0,a4
                newChunk->free = true;
    80001148:	00100693          	li	a3,1
    8000114c:	02d70023          	sb	a3,32(a4)
                newChunk->size = remaining - sizeof(ChunkHeader);
    80001150:	fd878793          	addi	a5,a5,-40 # ffffffffabcdefd8 <end+0xffffffff2bcd99d8>
    80001154:	00f73423          	sd	a5,8(a4)
                newChunk->next = curr->next;
    80001158:	01853783          	ld	a5,24(a0)
    8000115c:	00f73c23          	sd	a5,24(a4)
                newChunk->prev = curr;
    80001160:	00a73823          	sd	a0,16(a4)
                newChunk->magic = MAGIC;
    80001164:	abcdf7b7          	lui	a5,0xabcdf
    80001168:	f017879b          	addiw	a5,a5,-255
    8000116c:	00f72023          	sw	a5,0(a4)
                if(curr->next) curr->next->prev = newChunk;
    80001170:	01853783          	ld	a5,24(a0)
    80001174:	00078463          	beqz	a5,8000117c <_ZN15MemoryAllocator10kmem_allocEm+0xbc>
    80001178:	00e7b823          	sd	a4,16(a5) # ffffffffabcdf010 <end+0xffffffff2bcd9a10>
                curr->next = newChunk;
    8000117c:	00e53c23          	sd	a4,24(a0)
                curr->size = aligned;
    80001180:	00953423          	sd	s1,8(a0)
                curr->free = false;
    80001184:	02050023          	sb	zero,32(a0)
                return (void*)((char*)curr + sizeof(ChunkHeader));
    80001188:	02850513          	addi	a0,a0,40
    8000118c:	f7dff06f          	j	80001108 <_ZN15MemoryAllocator10kmem_allocEm+0x48>
    if (size == 0) return nullptr;
    80001190:	00000513          	li	a0,0
}
    80001194:	00008067          	ret

0000000080001198 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>:

    return 0;
}

// Joins chunk with free neighbouring chunks
void MemoryAllocator::try_join(ChunkHeader* chunk){
    80001198:	ff010113          	addi	sp,sp,-16
    8000119c:	00813423          	sd	s0,8(sp)
    800011a0:	01010413          	addi	s0,sp,16
    if(!chunk->free) return;
    800011a4:	0205c783          	lbu	a5,32(a1)
    800011a8:	04078263          	beqz	a5,800011ec <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

    //join with next
    if(chunk->next){
    800011ac:	0185b783          	ld	a5,24(a1)
    800011b0:	00078e63          	beqz	a5,800011cc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
        if(chunk->next->free && (char*)chunk + sizeof(ChunkHeader) + chunk->size == (char*)chunk->next){
    800011b4:	0207c703          	lbu	a4,32(a5)
    800011b8:	00070a63          	beqz	a4,800011cc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
    800011bc:	0085b683          	ld	a3,8(a1)
    800011c0:	02868713          	addi	a4,a3,40
    800011c4:	00e58733          	add	a4,a1,a4
    800011c8:	02e78863          	beq	a5,a4,800011f8 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x60>
            if (chunk->next)
                chunk->next->prev = chunk;
        }
    }
    //join with prev
    if(chunk->prev){
    800011cc:	0105b783          	ld	a5,16(a1)
    800011d0:	00078e63          	beqz	a5,800011ec <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
        if(chunk->prev->free && (char*)chunk->prev + sizeof(ChunkHeader) + chunk->prev->size == (char*)chunk){
    800011d4:	0207c703          	lbu	a4,32(a5)
    800011d8:	00070a63          	beqz	a4,800011ec <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
    800011dc:	0087b683          	ld	a3,8(a5)
    800011e0:	02868713          	addi	a4,a3,40
    800011e4:	00e78733          	add	a4,a5,a4
    800011e8:	02b70a63          	beq	a4,a1,8000121c <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x84>
            if (chunk->next)
                chunk->next->prev = chunk->prev;
            chunk = chunk->prev;
        }
    }
    800011ec:	00813403          	ld	s0,8(sp)
    800011f0:	01010113          	addi	sp,sp,16
    800011f4:	00008067          	ret
            chunk->size += sizeof(ChunkHeader) + chunk->next->size;
    800011f8:	0087b703          	ld	a4,8(a5)
    800011fc:	00e686b3          	add	a3,a3,a4
    80001200:	02868693          	addi	a3,a3,40
    80001204:	00d5b423          	sd	a3,8(a1)
            chunk->next = chunk->next->next;
    80001208:	0187b783          	ld	a5,24(a5)
    8000120c:	00f5bc23          	sd	a5,24(a1)
            if (chunk->next)
    80001210:	fa078ee3          	beqz	a5,800011cc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
                chunk->next->prev = chunk;
    80001214:	00b7b823          	sd	a1,16(a5)
    80001218:	fb5ff06f          	j	800011cc <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x34>
            chunk->prev->size += sizeof(ChunkHeader) + chunk->size;
    8000121c:	0085b703          	ld	a4,8(a1)
    80001220:	00e686b3          	add	a3,a3,a4
    80001224:	02868693          	addi	a3,a3,40
    80001228:	00d7b423          	sd	a3,8(a5)
            chunk->prev->next = chunk->next;
    8000122c:	0105b703          	ld	a4,16(a1)
    80001230:	0185b783          	ld	a5,24(a1)
    80001234:	00f73c23          	sd	a5,24(a4)
            if (chunk->next)
    80001238:	fa078ae3          	beqz	a5,800011ec <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>
                chunk->next->prev = chunk->prev;
    8000123c:	0105b703          	ld	a4,16(a1)
    80001240:	00e7b823          	sd	a4,16(a5)
            chunk = chunk->prev;
    80001244:	fa9ff06f          	j	800011ec <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE+0x54>

0000000080001248 <_ZN15MemoryAllocator9kmem_freeEPv>:
    if (!ptr) return -1;
    80001248:	06058863          	beqz	a1,800012b8 <_ZN15MemoryAllocator9kmem_freeEPv+0x70>
    8000124c:	00058793          	mv	a5,a1
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    80001250:	00003717          	auipc	a4,0x3
    80001254:	0f873703          	ld	a4,248(a4) # 80004348 <_GLOBAL_OFFSET_TABLE_+0x8>
    80001258:	00073703          	ld	a4,0(a4)
    8000125c:	06e5e263          	bltu	a1,a4,800012c0 <_ZN15MemoryAllocator9kmem_freeEPv+0x78>
    80001260:	00003717          	auipc	a4,0x3
    80001264:	0f873703          	ld	a4,248(a4) # 80004358 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001268:	00073703          	ld	a4,0(a4)
    8000126c:	04b76e63          	bltu	a4,a1,800012c8 <_ZN15MemoryAllocator9kmem_freeEPv+0x80>
    ChunkHeader* chunkHeader = (ChunkHeader*)((char*)ptr - sizeof(ChunkHeader));
    80001270:	fd858593          	addi	a1,a1,-40
    if(chunkHeader->magic != MAGIC) return -3;
    80001274:	fd87a683          	lw	a3,-40(a5)
    80001278:	abcdf737          	lui	a4,0xabcdf
    8000127c:	f0170713          	addi	a4,a4,-255 # ffffffffabcdef01 <end+0xffffffff2bcd9901>
    80001280:	04e69863          	bne	a3,a4,800012d0 <_ZN15MemoryAllocator9kmem_freeEPv+0x88>
int MemoryAllocator::kmem_free(void* ptr) {
    80001284:	ff010113          	addi	sp,sp,-16
    80001288:	00113423          	sd	ra,8(sp)
    8000128c:	00813023          	sd	s0,0(sp)
    80001290:	01010413          	addi	s0,sp,16
    chunkHeader->free = true;
    80001294:	00100713          	li	a4,1
    80001298:	fee78c23          	sb	a4,-8(a5)
    try_join(chunkHeader);
    8000129c:	00000097          	auipc	ra,0x0
    800012a0:	efc080e7          	jalr	-260(ra) # 80001198 <_ZN15MemoryAllocator8try_joinEPNS_11ChunkHeaderE>
    return 0;
    800012a4:	00000513          	li	a0,0
}
    800012a8:	00813083          	ld	ra,8(sp)
    800012ac:	00013403          	ld	s0,0(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret
    if (!ptr) return -1;
    800012b8:	fff00513          	li	a0,-1
    800012bc:	00008067          	ret
    if ((char*)ptr < (char*)HEAP_START_ADDR || (char*)ptr > (char*)HEAP_END_ADDR) return -2;
    800012c0:	ffe00513          	li	a0,-2
    800012c4:	00008067          	ret
    800012c8:	ffe00513          	li	a0,-2
    800012cc:	00008067          	ret
    if(chunkHeader->magic != MAGIC) return -3;
    800012d0:	ffd00513          	li	a0,-3
}
    800012d4:	00008067          	ret

00000000800012d8 <start>:
    800012d8:	ff010113          	addi	sp,sp,-16
    800012dc:	00813423          	sd	s0,8(sp)
    800012e0:	01010413          	addi	s0,sp,16
    800012e4:	300027f3          	csrr	a5,mstatus
    800012e8:	ffffe737          	lui	a4,0xffffe
    800012ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff91ff>
    800012f0:	00e7f7b3          	and	a5,a5,a4
    800012f4:	00001737          	lui	a4,0x1
    800012f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800012fc:	00e7e7b3          	or	a5,a5,a4
    80001300:	30079073          	csrw	mstatus,a5
    80001304:	00000797          	auipc	a5,0x0
    80001308:	16078793          	addi	a5,a5,352 # 80001464 <system_main>
    8000130c:	34179073          	csrw	mepc,a5
    80001310:	00000793          	li	a5,0
    80001314:	18079073          	csrw	satp,a5
    80001318:	000107b7          	lui	a5,0x10
    8000131c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001320:	30279073          	csrw	medeleg,a5
    80001324:	30379073          	csrw	mideleg,a5
    80001328:	104027f3          	csrr	a5,sie
    8000132c:	2227e793          	ori	a5,a5,546
    80001330:	10479073          	csrw	sie,a5
    80001334:	fff00793          	li	a5,-1
    80001338:	00a7d793          	srli	a5,a5,0xa
    8000133c:	3b079073          	csrw	pmpaddr0,a5
    80001340:	00f00793          	li	a5,15
    80001344:	3a079073          	csrw	pmpcfg0,a5
    80001348:	f14027f3          	csrr	a5,mhartid
    8000134c:	0200c737          	lui	a4,0x200c
    80001350:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001354:	0007869b          	sext.w	a3,a5
    80001358:	00269713          	slli	a4,a3,0x2
    8000135c:	000f4637          	lui	a2,0xf4
    80001360:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001364:	00d70733          	add	a4,a4,a3
    80001368:	0037979b          	slliw	a5,a5,0x3
    8000136c:	020046b7          	lui	a3,0x2004
    80001370:	00d787b3          	add	a5,a5,a3
    80001374:	00c585b3          	add	a1,a1,a2
    80001378:	00371693          	slli	a3,a4,0x3
    8000137c:	00003717          	auipc	a4,0x3
    80001380:	03470713          	addi	a4,a4,52 # 800043b0 <timer_scratch>
    80001384:	00b7b023          	sd	a1,0(a5)
    80001388:	00d70733          	add	a4,a4,a3
    8000138c:	00f73c23          	sd	a5,24(a4)
    80001390:	02c73023          	sd	a2,32(a4)
    80001394:	34071073          	csrw	mscratch,a4
    80001398:	00000797          	auipc	a5,0x0
    8000139c:	6e878793          	addi	a5,a5,1768 # 80001a80 <timervec>
    800013a0:	30579073          	csrw	mtvec,a5
    800013a4:	300027f3          	csrr	a5,mstatus
    800013a8:	0087e793          	ori	a5,a5,8
    800013ac:	30079073          	csrw	mstatus,a5
    800013b0:	304027f3          	csrr	a5,mie
    800013b4:	0807e793          	ori	a5,a5,128
    800013b8:	30479073          	csrw	mie,a5
    800013bc:	f14027f3          	csrr	a5,mhartid
    800013c0:	0007879b          	sext.w	a5,a5
    800013c4:	00078213          	mv	tp,a5
    800013c8:	30200073          	mret
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <timerinit>:
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    800013e4:	f14027f3          	csrr	a5,mhartid
    800013e8:	0200c737          	lui	a4,0x200c
    800013ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800013f0:	0007869b          	sext.w	a3,a5
    800013f4:	00269713          	slli	a4,a3,0x2
    800013f8:	000f4637          	lui	a2,0xf4
    800013fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001400:	00d70733          	add	a4,a4,a3
    80001404:	0037979b          	slliw	a5,a5,0x3
    80001408:	020046b7          	lui	a3,0x2004
    8000140c:	00d787b3          	add	a5,a5,a3
    80001410:	00c585b3          	add	a1,a1,a2
    80001414:	00371693          	slli	a3,a4,0x3
    80001418:	00003717          	auipc	a4,0x3
    8000141c:	f9870713          	addi	a4,a4,-104 # 800043b0 <timer_scratch>
    80001420:	00b7b023          	sd	a1,0(a5)
    80001424:	00d70733          	add	a4,a4,a3
    80001428:	00f73c23          	sd	a5,24(a4)
    8000142c:	02c73023          	sd	a2,32(a4)
    80001430:	34071073          	csrw	mscratch,a4
    80001434:	00000797          	auipc	a5,0x0
    80001438:	64c78793          	addi	a5,a5,1612 # 80001a80 <timervec>
    8000143c:	30579073          	csrw	mtvec,a5
    80001440:	300027f3          	csrr	a5,mstatus
    80001444:	0087e793          	ori	a5,a5,8
    80001448:	30079073          	csrw	mstatus,a5
    8000144c:	304027f3          	csrr	a5,mie
    80001450:	0807e793          	ori	a5,a5,128
    80001454:	30479073          	csrw	mie,a5
    80001458:	00813403          	ld	s0,8(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <system_main>:
    80001464:	fe010113          	addi	sp,sp,-32
    80001468:	00813823          	sd	s0,16(sp)
    8000146c:	00913423          	sd	s1,8(sp)
    80001470:	00113c23          	sd	ra,24(sp)
    80001474:	02010413          	addi	s0,sp,32
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	0c4080e7          	jalr	196(ra) # 8000153c <cpuid>
    80001480:	00003497          	auipc	s1,0x3
    80001484:	ef048493          	addi	s1,s1,-272 # 80004370 <started>
    80001488:	02050263          	beqz	a0,800014ac <system_main+0x48>
    8000148c:	0004a783          	lw	a5,0(s1)
    80001490:	0007879b          	sext.w	a5,a5
    80001494:	fe078ce3          	beqz	a5,8000148c <system_main+0x28>
    80001498:	0ff0000f          	fence
    8000149c:	00003517          	auipc	a0,0x3
    800014a0:	bb450513          	addi	a0,a0,-1100 # 80004050 <CONSOLE_STATUS+0x40>
    800014a4:	00001097          	auipc	ra,0x1
    800014a8:	a78080e7          	jalr	-1416(ra) # 80001f1c <panic>
    800014ac:	00001097          	auipc	ra,0x1
    800014b0:	9cc080e7          	jalr	-1588(ra) # 80001e78 <consoleinit>
    800014b4:	00001097          	auipc	ra,0x1
    800014b8:	158080e7          	jalr	344(ra) # 8000260c <printfinit>
    800014bc:	00003517          	auipc	a0,0x3
    800014c0:	c7450513          	addi	a0,a0,-908 # 80004130 <CONSOLE_STATUS+0x120>
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	ab4080e7          	jalr	-1356(ra) # 80001f78 <__printf>
    800014cc:	00003517          	auipc	a0,0x3
    800014d0:	b5450513          	addi	a0,a0,-1196 # 80004020 <CONSOLE_STATUS+0x10>
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	aa4080e7          	jalr	-1372(ra) # 80001f78 <__printf>
    800014dc:	00003517          	auipc	a0,0x3
    800014e0:	c5450513          	addi	a0,a0,-940 # 80004130 <CONSOLE_STATUS+0x120>
    800014e4:	00001097          	auipc	ra,0x1
    800014e8:	a94080e7          	jalr	-1388(ra) # 80001f78 <__printf>
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	4ac080e7          	jalr	1196(ra) # 80002998 <kinit>
    800014f4:	00000097          	auipc	ra,0x0
    800014f8:	148080e7          	jalr	328(ra) # 8000163c <trapinit>
    800014fc:	00000097          	auipc	ra,0x0
    80001500:	16c080e7          	jalr	364(ra) # 80001668 <trapinithart>
    80001504:	00000097          	auipc	ra,0x0
    80001508:	5bc080e7          	jalr	1468(ra) # 80001ac0 <plicinit>
    8000150c:	00000097          	auipc	ra,0x0
    80001510:	5dc080e7          	jalr	1500(ra) # 80001ae8 <plicinithart>
    80001514:	00000097          	auipc	ra,0x0
    80001518:	078080e7          	jalr	120(ra) # 8000158c <userinit>
    8000151c:	0ff0000f          	fence
    80001520:	00100793          	li	a5,1
    80001524:	00003517          	auipc	a0,0x3
    80001528:	b1450513          	addi	a0,a0,-1260 # 80004038 <CONSOLE_STATUS+0x28>
    8000152c:	00f4a023          	sw	a5,0(s1)
    80001530:	00001097          	auipc	ra,0x1
    80001534:	a48080e7          	jalr	-1464(ra) # 80001f78 <__printf>
    80001538:	0000006f          	j	80001538 <system_main+0xd4>

000000008000153c <cpuid>:
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    80001548:	00020513          	mv	a0,tp
    8000154c:	00813403          	ld	s0,8(sp)
    80001550:	0005051b          	sext.w	a0,a0
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret

000000008000155c <mycpu>:
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    80001568:	00020793          	mv	a5,tp
    8000156c:	00813403          	ld	s0,8(sp)
    80001570:	0007879b          	sext.w	a5,a5
    80001574:	00779793          	slli	a5,a5,0x7
    80001578:	00004517          	auipc	a0,0x4
    8000157c:	e6850513          	addi	a0,a0,-408 # 800053e0 <cpus>
    80001580:	00f50533          	add	a0,a0,a5
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret

000000008000158c <userinit>:
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00813423          	sd	s0,8(sp)
    80001594:	01010413          	addi	s0,sp,16
    80001598:	00813403          	ld	s0,8(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00000317          	auipc	t1,0x0
    800015a4:	a7c30067          	jr	-1412(t1) # 8000101c <main>

00000000800015a8 <either_copyout>:
    800015a8:	ff010113          	addi	sp,sp,-16
    800015ac:	00813023          	sd	s0,0(sp)
    800015b0:	00113423          	sd	ra,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    800015b8:	02051663          	bnez	a0,800015e4 <either_copyout+0x3c>
    800015bc:	00058513          	mv	a0,a1
    800015c0:	00060593          	mv	a1,a2
    800015c4:	0006861b          	sext.w	a2,a3
    800015c8:	00002097          	auipc	ra,0x2
    800015cc:	c5c080e7          	jalr	-932(ra) # 80003224 <__memmove>
    800015d0:	00813083          	ld	ra,8(sp)
    800015d4:	00013403          	ld	s0,0(sp)
    800015d8:	00000513          	li	a0,0
    800015dc:	01010113          	addi	sp,sp,16
    800015e0:	00008067          	ret
    800015e4:	00003517          	auipc	a0,0x3
    800015e8:	a9450513          	addi	a0,a0,-1388 # 80004078 <CONSOLE_STATUS+0x68>
    800015ec:	00001097          	auipc	ra,0x1
    800015f0:	930080e7          	jalr	-1744(ra) # 80001f1c <panic>

00000000800015f4 <either_copyin>:
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00813023          	sd	s0,0(sp)
    800015fc:	00113423          	sd	ra,8(sp)
    80001600:	01010413          	addi	s0,sp,16
    80001604:	02059463          	bnez	a1,8000162c <either_copyin+0x38>
    80001608:	00060593          	mv	a1,a2
    8000160c:	0006861b          	sext.w	a2,a3
    80001610:	00002097          	auipc	ra,0x2
    80001614:	c14080e7          	jalr	-1004(ra) # 80003224 <__memmove>
    80001618:	00813083          	ld	ra,8(sp)
    8000161c:	00013403          	ld	s0,0(sp)
    80001620:	00000513          	li	a0,0
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret
    8000162c:	00003517          	auipc	a0,0x3
    80001630:	a7450513          	addi	a0,a0,-1420 # 800040a0 <CONSOLE_STATUS+0x90>
    80001634:	00001097          	auipc	ra,0x1
    80001638:	8e8080e7          	jalr	-1816(ra) # 80001f1c <panic>

000000008000163c <trapinit>:
    8000163c:	ff010113          	addi	sp,sp,-16
    80001640:	00813423          	sd	s0,8(sp)
    80001644:	01010413          	addi	s0,sp,16
    80001648:	00813403          	ld	s0,8(sp)
    8000164c:	00003597          	auipc	a1,0x3
    80001650:	a7c58593          	addi	a1,a1,-1412 # 800040c8 <CONSOLE_STATUS+0xb8>
    80001654:	00004517          	auipc	a0,0x4
    80001658:	e0c50513          	addi	a0,a0,-500 # 80005460 <tickslock>
    8000165c:	01010113          	addi	sp,sp,16
    80001660:	00001317          	auipc	t1,0x1
    80001664:	5c830067          	jr	1480(t1) # 80002c28 <initlock>

0000000080001668 <trapinithart>:
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00813423          	sd	s0,8(sp)
    80001670:	01010413          	addi	s0,sp,16
    80001674:	00000797          	auipc	a5,0x0
    80001678:	2fc78793          	addi	a5,a5,764 # 80001970 <kernelvec>
    8000167c:	10579073          	csrw	stvec,a5
    80001680:	00813403          	ld	s0,8(sp)
    80001684:	01010113          	addi	sp,sp,16
    80001688:	00008067          	ret

000000008000168c <usertrap>:
    8000168c:	ff010113          	addi	sp,sp,-16
    80001690:	00813423          	sd	s0,8(sp)
    80001694:	01010413          	addi	s0,sp,16
    80001698:	00813403          	ld	s0,8(sp)
    8000169c:	01010113          	addi	sp,sp,16
    800016a0:	00008067          	ret

00000000800016a4 <usertrapret>:
    800016a4:	ff010113          	addi	sp,sp,-16
    800016a8:	00813423          	sd	s0,8(sp)
    800016ac:	01010413          	addi	s0,sp,16
    800016b0:	00813403          	ld	s0,8(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <kerneltrap>:
    800016bc:	fe010113          	addi	sp,sp,-32
    800016c0:	00813823          	sd	s0,16(sp)
    800016c4:	00113c23          	sd	ra,24(sp)
    800016c8:	00913423          	sd	s1,8(sp)
    800016cc:	02010413          	addi	s0,sp,32
    800016d0:	142025f3          	csrr	a1,scause
    800016d4:	100027f3          	csrr	a5,sstatus
    800016d8:	0027f793          	andi	a5,a5,2
    800016dc:	10079c63          	bnez	a5,800017f4 <kerneltrap+0x138>
    800016e0:	142027f3          	csrr	a5,scause
    800016e4:	0207ce63          	bltz	a5,80001720 <kerneltrap+0x64>
    800016e8:	00003517          	auipc	a0,0x3
    800016ec:	a2850513          	addi	a0,a0,-1496 # 80004110 <CONSOLE_STATUS+0x100>
    800016f0:	00001097          	auipc	ra,0x1
    800016f4:	888080e7          	jalr	-1912(ra) # 80001f78 <__printf>
    800016f8:	141025f3          	csrr	a1,sepc
    800016fc:	14302673          	csrr	a2,stval
    80001700:	00003517          	auipc	a0,0x3
    80001704:	a2050513          	addi	a0,a0,-1504 # 80004120 <CONSOLE_STATUS+0x110>
    80001708:	00001097          	auipc	ra,0x1
    8000170c:	870080e7          	jalr	-1936(ra) # 80001f78 <__printf>
    80001710:	00003517          	auipc	a0,0x3
    80001714:	a2850513          	addi	a0,a0,-1496 # 80004138 <CONSOLE_STATUS+0x128>
    80001718:	00001097          	auipc	ra,0x1
    8000171c:	804080e7          	jalr	-2044(ra) # 80001f1c <panic>
    80001720:	0ff7f713          	andi	a4,a5,255
    80001724:	00900693          	li	a3,9
    80001728:	04d70063          	beq	a4,a3,80001768 <kerneltrap+0xac>
    8000172c:	fff00713          	li	a4,-1
    80001730:	03f71713          	slli	a4,a4,0x3f
    80001734:	00170713          	addi	a4,a4,1
    80001738:	fae798e3          	bne	a5,a4,800016e8 <kerneltrap+0x2c>
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	e00080e7          	jalr	-512(ra) # 8000153c <cpuid>
    80001744:	06050663          	beqz	a0,800017b0 <kerneltrap+0xf4>
    80001748:	144027f3          	csrr	a5,sip
    8000174c:	ffd7f793          	andi	a5,a5,-3
    80001750:	14479073          	csrw	sip,a5
    80001754:	01813083          	ld	ra,24(sp)
    80001758:	01013403          	ld	s0,16(sp)
    8000175c:	00813483          	ld	s1,8(sp)
    80001760:	02010113          	addi	sp,sp,32
    80001764:	00008067          	ret
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	3cc080e7          	jalr	972(ra) # 80001b34 <plic_claim>
    80001770:	00a00793          	li	a5,10
    80001774:	00050493          	mv	s1,a0
    80001778:	06f50863          	beq	a0,a5,800017e8 <kerneltrap+0x12c>
    8000177c:	fc050ce3          	beqz	a0,80001754 <kerneltrap+0x98>
    80001780:	00050593          	mv	a1,a0
    80001784:	00003517          	auipc	a0,0x3
    80001788:	96c50513          	addi	a0,a0,-1684 # 800040f0 <CONSOLE_STATUS+0xe0>
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	7ec080e7          	jalr	2028(ra) # 80001f78 <__printf>
    80001794:	01013403          	ld	s0,16(sp)
    80001798:	01813083          	ld	ra,24(sp)
    8000179c:	00048513          	mv	a0,s1
    800017a0:	00813483          	ld	s1,8(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00000317          	auipc	t1,0x0
    800017ac:	3c430067          	jr	964(t1) # 80001b6c <plic_complete>
    800017b0:	00004517          	auipc	a0,0x4
    800017b4:	cb050513          	addi	a0,a0,-848 # 80005460 <tickslock>
    800017b8:	00001097          	auipc	ra,0x1
    800017bc:	494080e7          	jalr	1172(ra) # 80002c4c <acquire>
    800017c0:	00003717          	auipc	a4,0x3
    800017c4:	bb470713          	addi	a4,a4,-1100 # 80004374 <ticks>
    800017c8:	00072783          	lw	a5,0(a4)
    800017cc:	00004517          	auipc	a0,0x4
    800017d0:	c9450513          	addi	a0,a0,-876 # 80005460 <tickslock>
    800017d4:	0017879b          	addiw	a5,a5,1
    800017d8:	00f72023          	sw	a5,0(a4)
    800017dc:	00001097          	auipc	ra,0x1
    800017e0:	53c080e7          	jalr	1340(ra) # 80002d18 <release>
    800017e4:	f65ff06f          	j	80001748 <kerneltrap+0x8c>
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	098080e7          	jalr	152(ra) # 80002880 <uartintr>
    800017f0:	fa5ff06f          	j	80001794 <kerneltrap+0xd8>
    800017f4:	00003517          	auipc	a0,0x3
    800017f8:	8dc50513          	addi	a0,a0,-1828 # 800040d0 <CONSOLE_STATUS+0xc0>
    800017fc:	00000097          	auipc	ra,0x0
    80001800:	720080e7          	jalr	1824(ra) # 80001f1c <panic>

0000000080001804 <clockintr>:
    80001804:	fe010113          	addi	sp,sp,-32
    80001808:	00813823          	sd	s0,16(sp)
    8000180c:	00913423          	sd	s1,8(sp)
    80001810:	00113c23          	sd	ra,24(sp)
    80001814:	02010413          	addi	s0,sp,32
    80001818:	00004497          	auipc	s1,0x4
    8000181c:	c4848493          	addi	s1,s1,-952 # 80005460 <tickslock>
    80001820:	00048513          	mv	a0,s1
    80001824:	00001097          	auipc	ra,0x1
    80001828:	428080e7          	jalr	1064(ra) # 80002c4c <acquire>
    8000182c:	00003717          	auipc	a4,0x3
    80001830:	b4870713          	addi	a4,a4,-1208 # 80004374 <ticks>
    80001834:	00072783          	lw	a5,0(a4)
    80001838:	01013403          	ld	s0,16(sp)
    8000183c:	01813083          	ld	ra,24(sp)
    80001840:	00048513          	mv	a0,s1
    80001844:	0017879b          	addiw	a5,a5,1
    80001848:	00813483          	ld	s1,8(sp)
    8000184c:	00f72023          	sw	a5,0(a4)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00001317          	auipc	t1,0x1
    80001858:	4c430067          	jr	1220(t1) # 80002d18 <release>

000000008000185c <devintr>:
    8000185c:	142027f3          	csrr	a5,scause
    80001860:	00000513          	li	a0,0
    80001864:	0007c463          	bltz	a5,8000186c <devintr+0x10>
    80001868:	00008067          	ret
    8000186c:	fe010113          	addi	sp,sp,-32
    80001870:	00813823          	sd	s0,16(sp)
    80001874:	00113c23          	sd	ra,24(sp)
    80001878:	00913423          	sd	s1,8(sp)
    8000187c:	02010413          	addi	s0,sp,32
    80001880:	0ff7f713          	andi	a4,a5,255
    80001884:	00900693          	li	a3,9
    80001888:	04d70c63          	beq	a4,a3,800018e0 <devintr+0x84>
    8000188c:	fff00713          	li	a4,-1
    80001890:	03f71713          	slli	a4,a4,0x3f
    80001894:	00170713          	addi	a4,a4,1
    80001898:	00e78c63          	beq	a5,a4,800018b0 <devintr+0x54>
    8000189c:	01813083          	ld	ra,24(sp)
    800018a0:	01013403          	ld	s0,16(sp)
    800018a4:	00813483          	ld	s1,8(sp)
    800018a8:	02010113          	addi	sp,sp,32
    800018ac:	00008067          	ret
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	c8c080e7          	jalr	-884(ra) # 8000153c <cpuid>
    800018b8:	06050663          	beqz	a0,80001924 <devintr+0xc8>
    800018bc:	144027f3          	csrr	a5,sip
    800018c0:	ffd7f793          	andi	a5,a5,-3
    800018c4:	14479073          	csrw	sip,a5
    800018c8:	01813083          	ld	ra,24(sp)
    800018cc:	01013403          	ld	s0,16(sp)
    800018d0:	00813483          	ld	s1,8(sp)
    800018d4:	00200513          	li	a0,2
    800018d8:	02010113          	addi	sp,sp,32
    800018dc:	00008067          	ret
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	254080e7          	jalr	596(ra) # 80001b34 <plic_claim>
    800018e8:	00a00793          	li	a5,10
    800018ec:	00050493          	mv	s1,a0
    800018f0:	06f50663          	beq	a0,a5,8000195c <devintr+0x100>
    800018f4:	00100513          	li	a0,1
    800018f8:	fa0482e3          	beqz	s1,8000189c <devintr+0x40>
    800018fc:	00048593          	mv	a1,s1
    80001900:	00002517          	auipc	a0,0x2
    80001904:	7f050513          	addi	a0,a0,2032 # 800040f0 <CONSOLE_STATUS+0xe0>
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	670080e7          	jalr	1648(ra) # 80001f78 <__printf>
    80001910:	00048513          	mv	a0,s1
    80001914:	00000097          	auipc	ra,0x0
    80001918:	258080e7          	jalr	600(ra) # 80001b6c <plic_complete>
    8000191c:	00100513          	li	a0,1
    80001920:	f7dff06f          	j	8000189c <devintr+0x40>
    80001924:	00004517          	auipc	a0,0x4
    80001928:	b3c50513          	addi	a0,a0,-1220 # 80005460 <tickslock>
    8000192c:	00001097          	auipc	ra,0x1
    80001930:	320080e7          	jalr	800(ra) # 80002c4c <acquire>
    80001934:	00003717          	auipc	a4,0x3
    80001938:	a4070713          	addi	a4,a4,-1472 # 80004374 <ticks>
    8000193c:	00072783          	lw	a5,0(a4)
    80001940:	00004517          	auipc	a0,0x4
    80001944:	b2050513          	addi	a0,a0,-1248 # 80005460 <tickslock>
    80001948:	0017879b          	addiw	a5,a5,1
    8000194c:	00f72023          	sw	a5,0(a4)
    80001950:	00001097          	auipc	ra,0x1
    80001954:	3c8080e7          	jalr	968(ra) # 80002d18 <release>
    80001958:	f65ff06f          	j	800018bc <devintr+0x60>
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	f24080e7          	jalr	-220(ra) # 80002880 <uartintr>
    80001964:	fadff06f          	j	80001910 <devintr+0xb4>
	...

0000000080001970 <kernelvec>:
    80001970:	f0010113          	addi	sp,sp,-256
    80001974:	00113023          	sd	ra,0(sp)
    80001978:	00213423          	sd	sp,8(sp)
    8000197c:	00313823          	sd	gp,16(sp)
    80001980:	00413c23          	sd	tp,24(sp)
    80001984:	02513023          	sd	t0,32(sp)
    80001988:	02613423          	sd	t1,40(sp)
    8000198c:	02713823          	sd	t2,48(sp)
    80001990:	02813c23          	sd	s0,56(sp)
    80001994:	04913023          	sd	s1,64(sp)
    80001998:	04a13423          	sd	a0,72(sp)
    8000199c:	04b13823          	sd	a1,80(sp)
    800019a0:	04c13c23          	sd	a2,88(sp)
    800019a4:	06d13023          	sd	a3,96(sp)
    800019a8:	06e13423          	sd	a4,104(sp)
    800019ac:	06f13823          	sd	a5,112(sp)
    800019b0:	07013c23          	sd	a6,120(sp)
    800019b4:	09113023          	sd	a7,128(sp)
    800019b8:	09213423          	sd	s2,136(sp)
    800019bc:	09313823          	sd	s3,144(sp)
    800019c0:	09413c23          	sd	s4,152(sp)
    800019c4:	0b513023          	sd	s5,160(sp)
    800019c8:	0b613423          	sd	s6,168(sp)
    800019cc:	0b713823          	sd	s7,176(sp)
    800019d0:	0b813c23          	sd	s8,184(sp)
    800019d4:	0d913023          	sd	s9,192(sp)
    800019d8:	0da13423          	sd	s10,200(sp)
    800019dc:	0db13823          	sd	s11,208(sp)
    800019e0:	0dc13c23          	sd	t3,216(sp)
    800019e4:	0fd13023          	sd	t4,224(sp)
    800019e8:	0fe13423          	sd	t5,232(sp)
    800019ec:	0ff13823          	sd	t6,240(sp)
    800019f0:	ccdff0ef          	jal	ra,800016bc <kerneltrap>
    800019f4:	00013083          	ld	ra,0(sp)
    800019f8:	00813103          	ld	sp,8(sp)
    800019fc:	01013183          	ld	gp,16(sp)
    80001a00:	02013283          	ld	t0,32(sp)
    80001a04:	02813303          	ld	t1,40(sp)
    80001a08:	03013383          	ld	t2,48(sp)
    80001a0c:	03813403          	ld	s0,56(sp)
    80001a10:	04013483          	ld	s1,64(sp)
    80001a14:	04813503          	ld	a0,72(sp)
    80001a18:	05013583          	ld	a1,80(sp)
    80001a1c:	05813603          	ld	a2,88(sp)
    80001a20:	06013683          	ld	a3,96(sp)
    80001a24:	06813703          	ld	a4,104(sp)
    80001a28:	07013783          	ld	a5,112(sp)
    80001a2c:	07813803          	ld	a6,120(sp)
    80001a30:	08013883          	ld	a7,128(sp)
    80001a34:	08813903          	ld	s2,136(sp)
    80001a38:	09013983          	ld	s3,144(sp)
    80001a3c:	09813a03          	ld	s4,152(sp)
    80001a40:	0a013a83          	ld	s5,160(sp)
    80001a44:	0a813b03          	ld	s6,168(sp)
    80001a48:	0b013b83          	ld	s7,176(sp)
    80001a4c:	0b813c03          	ld	s8,184(sp)
    80001a50:	0c013c83          	ld	s9,192(sp)
    80001a54:	0c813d03          	ld	s10,200(sp)
    80001a58:	0d013d83          	ld	s11,208(sp)
    80001a5c:	0d813e03          	ld	t3,216(sp)
    80001a60:	0e013e83          	ld	t4,224(sp)
    80001a64:	0e813f03          	ld	t5,232(sp)
    80001a68:	0f013f83          	ld	t6,240(sp)
    80001a6c:	10010113          	addi	sp,sp,256
    80001a70:	10200073          	sret
    80001a74:	00000013          	nop
    80001a78:	00000013          	nop
    80001a7c:	00000013          	nop

0000000080001a80 <timervec>:
    80001a80:	34051573          	csrrw	a0,mscratch,a0
    80001a84:	00b53023          	sd	a1,0(a0)
    80001a88:	00c53423          	sd	a2,8(a0)
    80001a8c:	00d53823          	sd	a3,16(a0)
    80001a90:	01853583          	ld	a1,24(a0)
    80001a94:	02053603          	ld	a2,32(a0)
    80001a98:	0005b683          	ld	a3,0(a1)
    80001a9c:	00c686b3          	add	a3,a3,a2
    80001aa0:	00d5b023          	sd	a3,0(a1)
    80001aa4:	00200593          	li	a1,2
    80001aa8:	14459073          	csrw	sip,a1
    80001aac:	01053683          	ld	a3,16(a0)
    80001ab0:	00853603          	ld	a2,8(a0)
    80001ab4:	00053583          	ld	a1,0(a0)
    80001ab8:	34051573          	csrrw	a0,mscratch,a0
    80001abc:	30200073          	mret

0000000080001ac0 <plicinit>:
    80001ac0:	ff010113          	addi	sp,sp,-16
    80001ac4:	00813423          	sd	s0,8(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    80001acc:	00813403          	ld	s0,8(sp)
    80001ad0:	0c0007b7          	lui	a5,0xc000
    80001ad4:	00100713          	li	a4,1
    80001ad8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001adc:	00e7a223          	sw	a4,4(a5)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <plicinithart>:
    80001ae8:	ff010113          	addi	sp,sp,-16
    80001aec:	00813023          	sd	s0,0(sp)
    80001af0:	00113423          	sd	ra,8(sp)
    80001af4:	01010413          	addi	s0,sp,16
    80001af8:	00000097          	auipc	ra,0x0
    80001afc:	a44080e7          	jalr	-1468(ra) # 8000153c <cpuid>
    80001b00:	0085171b          	slliw	a4,a0,0x8
    80001b04:	0c0027b7          	lui	a5,0xc002
    80001b08:	00e787b3          	add	a5,a5,a4
    80001b0c:	40200713          	li	a4,1026
    80001b10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001b14:	00813083          	ld	ra,8(sp)
    80001b18:	00013403          	ld	s0,0(sp)
    80001b1c:	00d5151b          	slliw	a0,a0,0xd
    80001b20:	0c2017b7          	lui	a5,0xc201
    80001b24:	00a78533          	add	a0,a5,a0
    80001b28:	00052023          	sw	zero,0(a0)
    80001b2c:	01010113          	addi	sp,sp,16
    80001b30:	00008067          	ret

0000000080001b34 <plic_claim>:
    80001b34:	ff010113          	addi	sp,sp,-16
    80001b38:	00813023          	sd	s0,0(sp)
    80001b3c:	00113423          	sd	ra,8(sp)
    80001b40:	01010413          	addi	s0,sp,16
    80001b44:	00000097          	auipc	ra,0x0
    80001b48:	9f8080e7          	jalr	-1544(ra) # 8000153c <cpuid>
    80001b4c:	00813083          	ld	ra,8(sp)
    80001b50:	00013403          	ld	s0,0(sp)
    80001b54:	00d5151b          	slliw	a0,a0,0xd
    80001b58:	0c2017b7          	lui	a5,0xc201
    80001b5c:	00a78533          	add	a0,a5,a0
    80001b60:	00452503          	lw	a0,4(a0)
    80001b64:	01010113          	addi	sp,sp,16
    80001b68:	00008067          	ret

0000000080001b6c <plic_complete>:
    80001b6c:	fe010113          	addi	sp,sp,-32
    80001b70:	00813823          	sd	s0,16(sp)
    80001b74:	00913423          	sd	s1,8(sp)
    80001b78:	00113c23          	sd	ra,24(sp)
    80001b7c:	02010413          	addi	s0,sp,32
    80001b80:	00050493          	mv	s1,a0
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	9b8080e7          	jalr	-1608(ra) # 8000153c <cpuid>
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00d5179b          	slliw	a5,a0,0xd
    80001b98:	0c201737          	lui	a4,0xc201
    80001b9c:	00f707b3          	add	a5,a4,a5
    80001ba0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001ba4:	00813483          	ld	s1,8(sp)
    80001ba8:	02010113          	addi	sp,sp,32
    80001bac:	00008067          	ret

0000000080001bb0 <consolewrite>:
    80001bb0:	fb010113          	addi	sp,sp,-80
    80001bb4:	04813023          	sd	s0,64(sp)
    80001bb8:	04113423          	sd	ra,72(sp)
    80001bbc:	02913c23          	sd	s1,56(sp)
    80001bc0:	03213823          	sd	s2,48(sp)
    80001bc4:	03313423          	sd	s3,40(sp)
    80001bc8:	03413023          	sd	s4,32(sp)
    80001bcc:	01513c23          	sd	s5,24(sp)
    80001bd0:	05010413          	addi	s0,sp,80
    80001bd4:	06c05c63          	blez	a2,80001c4c <consolewrite+0x9c>
    80001bd8:	00060993          	mv	s3,a2
    80001bdc:	00050a13          	mv	s4,a0
    80001be0:	00058493          	mv	s1,a1
    80001be4:	00000913          	li	s2,0
    80001be8:	fff00a93          	li	s5,-1
    80001bec:	01c0006f          	j	80001c08 <consolewrite+0x58>
    80001bf0:	fbf44503          	lbu	a0,-65(s0)
    80001bf4:	0019091b          	addiw	s2,s2,1
    80001bf8:	00148493          	addi	s1,s1,1
    80001bfc:	00001097          	auipc	ra,0x1
    80001c00:	a9c080e7          	jalr	-1380(ra) # 80002698 <uartputc>
    80001c04:	03298063          	beq	s3,s2,80001c24 <consolewrite+0x74>
    80001c08:	00048613          	mv	a2,s1
    80001c0c:	00100693          	li	a3,1
    80001c10:	000a0593          	mv	a1,s4
    80001c14:	fbf40513          	addi	a0,s0,-65
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	9dc080e7          	jalr	-1572(ra) # 800015f4 <either_copyin>
    80001c20:	fd5518e3          	bne	a0,s5,80001bf0 <consolewrite+0x40>
    80001c24:	04813083          	ld	ra,72(sp)
    80001c28:	04013403          	ld	s0,64(sp)
    80001c2c:	03813483          	ld	s1,56(sp)
    80001c30:	02813983          	ld	s3,40(sp)
    80001c34:	02013a03          	ld	s4,32(sp)
    80001c38:	01813a83          	ld	s5,24(sp)
    80001c3c:	00090513          	mv	a0,s2
    80001c40:	03013903          	ld	s2,48(sp)
    80001c44:	05010113          	addi	sp,sp,80
    80001c48:	00008067          	ret
    80001c4c:	00000913          	li	s2,0
    80001c50:	fd5ff06f          	j	80001c24 <consolewrite+0x74>

0000000080001c54 <consoleread>:
    80001c54:	f9010113          	addi	sp,sp,-112
    80001c58:	06813023          	sd	s0,96(sp)
    80001c5c:	04913c23          	sd	s1,88(sp)
    80001c60:	05213823          	sd	s2,80(sp)
    80001c64:	05313423          	sd	s3,72(sp)
    80001c68:	05413023          	sd	s4,64(sp)
    80001c6c:	03513c23          	sd	s5,56(sp)
    80001c70:	03613823          	sd	s6,48(sp)
    80001c74:	03713423          	sd	s7,40(sp)
    80001c78:	03813023          	sd	s8,32(sp)
    80001c7c:	06113423          	sd	ra,104(sp)
    80001c80:	01913c23          	sd	s9,24(sp)
    80001c84:	07010413          	addi	s0,sp,112
    80001c88:	00060b93          	mv	s7,a2
    80001c8c:	00050913          	mv	s2,a0
    80001c90:	00058c13          	mv	s8,a1
    80001c94:	00060b1b          	sext.w	s6,a2
    80001c98:	00003497          	auipc	s1,0x3
    80001c9c:	7e048493          	addi	s1,s1,2016 # 80005478 <cons>
    80001ca0:	00400993          	li	s3,4
    80001ca4:	fff00a13          	li	s4,-1
    80001ca8:	00a00a93          	li	s5,10
    80001cac:	05705e63          	blez	s7,80001d08 <consoleread+0xb4>
    80001cb0:	09c4a703          	lw	a4,156(s1)
    80001cb4:	0984a783          	lw	a5,152(s1)
    80001cb8:	0007071b          	sext.w	a4,a4
    80001cbc:	08e78463          	beq	a5,a4,80001d44 <consoleread+0xf0>
    80001cc0:	07f7f713          	andi	a4,a5,127
    80001cc4:	00e48733          	add	a4,s1,a4
    80001cc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001ccc:	0017869b          	addiw	a3,a5,1
    80001cd0:	08d4ac23          	sw	a3,152(s1)
    80001cd4:	00070c9b          	sext.w	s9,a4
    80001cd8:	0b370663          	beq	a4,s3,80001d84 <consoleread+0x130>
    80001cdc:	00100693          	li	a3,1
    80001ce0:	f9f40613          	addi	a2,s0,-97
    80001ce4:	000c0593          	mv	a1,s8
    80001ce8:	00090513          	mv	a0,s2
    80001cec:	f8e40fa3          	sb	a4,-97(s0)
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	8b8080e7          	jalr	-1864(ra) # 800015a8 <either_copyout>
    80001cf8:	01450863          	beq	a0,s4,80001d08 <consoleread+0xb4>
    80001cfc:	001c0c13          	addi	s8,s8,1
    80001d00:	fffb8b9b          	addiw	s7,s7,-1
    80001d04:	fb5c94e3          	bne	s9,s5,80001cac <consoleread+0x58>
    80001d08:	000b851b          	sext.w	a0,s7
    80001d0c:	06813083          	ld	ra,104(sp)
    80001d10:	06013403          	ld	s0,96(sp)
    80001d14:	05813483          	ld	s1,88(sp)
    80001d18:	05013903          	ld	s2,80(sp)
    80001d1c:	04813983          	ld	s3,72(sp)
    80001d20:	04013a03          	ld	s4,64(sp)
    80001d24:	03813a83          	ld	s5,56(sp)
    80001d28:	02813b83          	ld	s7,40(sp)
    80001d2c:	02013c03          	ld	s8,32(sp)
    80001d30:	01813c83          	ld	s9,24(sp)
    80001d34:	40ab053b          	subw	a0,s6,a0
    80001d38:	03013b03          	ld	s6,48(sp)
    80001d3c:	07010113          	addi	sp,sp,112
    80001d40:	00008067          	ret
    80001d44:	00001097          	auipc	ra,0x1
    80001d48:	1d8080e7          	jalr	472(ra) # 80002f1c <push_on>
    80001d4c:	0984a703          	lw	a4,152(s1)
    80001d50:	09c4a783          	lw	a5,156(s1)
    80001d54:	0007879b          	sext.w	a5,a5
    80001d58:	fef70ce3          	beq	a4,a5,80001d50 <consoleread+0xfc>
    80001d5c:	00001097          	auipc	ra,0x1
    80001d60:	234080e7          	jalr	564(ra) # 80002f90 <pop_on>
    80001d64:	0984a783          	lw	a5,152(s1)
    80001d68:	07f7f713          	andi	a4,a5,127
    80001d6c:	00e48733          	add	a4,s1,a4
    80001d70:	01874703          	lbu	a4,24(a4)
    80001d74:	0017869b          	addiw	a3,a5,1
    80001d78:	08d4ac23          	sw	a3,152(s1)
    80001d7c:	00070c9b          	sext.w	s9,a4
    80001d80:	f5371ee3          	bne	a4,s3,80001cdc <consoleread+0x88>
    80001d84:	000b851b          	sext.w	a0,s7
    80001d88:	f96bf2e3          	bgeu	s7,s6,80001d0c <consoleread+0xb8>
    80001d8c:	08f4ac23          	sw	a5,152(s1)
    80001d90:	f7dff06f          	j	80001d0c <consoleread+0xb8>

0000000080001d94 <consputc>:
    80001d94:	10000793          	li	a5,256
    80001d98:	00f50663          	beq	a0,a5,80001da4 <consputc+0x10>
    80001d9c:	00001317          	auipc	t1,0x1
    80001da0:	9f430067          	jr	-1548(t1) # 80002790 <uartputc_sync>
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    80001db4:	00800513          	li	a0,8
    80001db8:	00001097          	auipc	ra,0x1
    80001dbc:	9d8080e7          	jalr	-1576(ra) # 80002790 <uartputc_sync>
    80001dc0:	02000513          	li	a0,32
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	9cc080e7          	jalr	-1588(ra) # 80002790 <uartputc_sync>
    80001dcc:	00013403          	ld	s0,0(sp)
    80001dd0:	00813083          	ld	ra,8(sp)
    80001dd4:	00800513          	li	a0,8
    80001dd8:	01010113          	addi	sp,sp,16
    80001ddc:	00001317          	auipc	t1,0x1
    80001de0:	9b430067          	jr	-1612(t1) # 80002790 <uartputc_sync>

0000000080001de4 <consoleintr>:
    80001de4:	fe010113          	addi	sp,sp,-32
    80001de8:	00813823          	sd	s0,16(sp)
    80001dec:	00913423          	sd	s1,8(sp)
    80001df0:	01213023          	sd	s2,0(sp)
    80001df4:	00113c23          	sd	ra,24(sp)
    80001df8:	02010413          	addi	s0,sp,32
    80001dfc:	00003917          	auipc	s2,0x3
    80001e00:	67c90913          	addi	s2,s2,1660 # 80005478 <cons>
    80001e04:	00050493          	mv	s1,a0
    80001e08:	00090513          	mv	a0,s2
    80001e0c:	00001097          	auipc	ra,0x1
    80001e10:	e40080e7          	jalr	-448(ra) # 80002c4c <acquire>
    80001e14:	02048c63          	beqz	s1,80001e4c <consoleintr+0x68>
    80001e18:	0a092783          	lw	a5,160(s2)
    80001e1c:	09892703          	lw	a4,152(s2)
    80001e20:	07f00693          	li	a3,127
    80001e24:	40e7873b          	subw	a4,a5,a4
    80001e28:	02e6e263          	bltu	a3,a4,80001e4c <consoleintr+0x68>
    80001e2c:	00d00713          	li	a4,13
    80001e30:	04e48063          	beq	s1,a4,80001e70 <consoleintr+0x8c>
    80001e34:	07f7f713          	andi	a4,a5,127
    80001e38:	00e90733          	add	a4,s2,a4
    80001e3c:	0017879b          	addiw	a5,a5,1
    80001e40:	0af92023          	sw	a5,160(s2)
    80001e44:	00970c23          	sb	s1,24(a4)
    80001e48:	08f92e23          	sw	a5,156(s2)
    80001e4c:	01013403          	ld	s0,16(sp)
    80001e50:	01813083          	ld	ra,24(sp)
    80001e54:	00813483          	ld	s1,8(sp)
    80001e58:	00013903          	ld	s2,0(sp)
    80001e5c:	00003517          	auipc	a0,0x3
    80001e60:	61c50513          	addi	a0,a0,1564 # 80005478 <cons>
    80001e64:	02010113          	addi	sp,sp,32
    80001e68:	00001317          	auipc	t1,0x1
    80001e6c:	eb030067          	jr	-336(t1) # 80002d18 <release>
    80001e70:	00a00493          	li	s1,10
    80001e74:	fc1ff06f          	j	80001e34 <consoleintr+0x50>

0000000080001e78 <consoleinit>:
    80001e78:	fe010113          	addi	sp,sp,-32
    80001e7c:	00113c23          	sd	ra,24(sp)
    80001e80:	00813823          	sd	s0,16(sp)
    80001e84:	00913423          	sd	s1,8(sp)
    80001e88:	02010413          	addi	s0,sp,32
    80001e8c:	00003497          	auipc	s1,0x3
    80001e90:	5ec48493          	addi	s1,s1,1516 # 80005478 <cons>
    80001e94:	00048513          	mv	a0,s1
    80001e98:	00002597          	auipc	a1,0x2
    80001e9c:	2b058593          	addi	a1,a1,688 # 80004148 <CONSOLE_STATUS+0x138>
    80001ea0:	00001097          	auipc	ra,0x1
    80001ea4:	d88080e7          	jalr	-632(ra) # 80002c28 <initlock>
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	7ac080e7          	jalr	1964(ra) # 80002654 <uartinit>
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00000797          	auipc	a5,0x0
    80001ebc:	d9c78793          	addi	a5,a5,-612 # 80001c54 <consoleread>
    80001ec0:	0af4bc23          	sd	a5,184(s1)
    80001ec4:	00000797          	auipc	a5,0x0
    80001ec8:	cec78793          	addi	a5,a5,-788 # 80001bb0 <consolewrite>
    80001ecc:	0cf4b023          	sd	a5,192(s1)
    80001ed0:	00813483          	ld	s1,8(sp)
    80001ed4:	02010113          	addi	sp,sp,32
    80001ed8:	00008067          	ret

0000000080001edc <console_read>:
    80001edc:	ff010113          	addi	sp,sp,-16
    80001ee0:	00813423          	sd	s0,8(sp)
    80001ee4:	01010413          	addi	s0,sp,16
    80001ee8:	00813403          	ld	s0,8(sp)
    80001eec:	00003317          	auipc	t1,0x3
    80001ef0:	64433303          	ld	t1,1604(t1) # 80005530 <devsw+0x10>
    80001ef4:	01010113          	addi	sp,sp,16
    80001ef8:	00030067          	jr	t1

0000000080001efc <console_write>:
    80001efc:	ff010113          	addi	sp,sp,-16
    80001f00:	00813423          	sd	s0,8(sp)
    80001f04:	01010413          	addi	s0,sp,16
    80001f08:	00813403          	ld	s0,8(sp)
    80001f0c:	00003317          	auipc	t1,0x3
    80001f10:	62c33303          	ld	t1,1580(t1) # 80005538 <devsw+0x18>
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00030067          	jr	t1

0000000080001f1c <panic>:
    80001f1c:	fe010113          	addi	sp,sp,-32
    80001f20:	00113c23          	sd	ra,24(sp)
    80001f24:	00813823          	sd	s0,16(sp)
    80001f28:	00913423          	sd	s1,8(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	00050493          	mv	s1,a0
    80001f34:	00002517          	auipc	a0,0x2
    80001f38:	21c50513          	addi	a0,a0,540 # 80004150 <CONSOLE_STATUS+0x140>
    80001f3c:	00003797          	auipc	a5,0x3
    80001f40:	6807ae23          	sw	zero,1692(a5) # 800055d8 <pr+0x18>
    80001f44:	00000097          	auipc	ra,0x0
    80001f48:	034080e7          	jalr	52(ra) # 80001f78 <__printf>
    80001f4c:	00048513          	mv	a0,s1
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	028080e7          	jalr	40(ra) # 80001f78 <__printf>
    80001f58:	00002517          	auipc	a0,0x2
    80001f5c:	1d850513          	addi	a0,a0,472 # 80004130 <CONSOLE_STATUS+0x120>
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	018080e7          	jalr	24(ra) # 80001f78 <__printf>
    80001f68:	00100793          	li	a5,1
    80001f6c:	00002717          	auipc	a4,0x2
    80001f70:	40f72623          	sw	a5,1036(a4) # 80004378 <panicked>
    80001f74:	0000006f          	j	80001f74 <panic+0x58>

0000000080001f78 <__printf>:
    80001f78:	f3010113          	addi	sp,sp,-208
    80001f7c:	08813023          	sd	s0,128(sp)
    80001f80:	07313423          	sd	s3,104(sp)
    80001f84:	09010413          	addi	s0,sp,144
    80001f88:	05813023          	sd	s8,64(sp)
    80001f8c:	08113423          	sd	ra,136(sp)
    80001f90:	06913c23          	sd	s1,120(sp)
    80001f94:	07213823          	sd	s2,112(sp)
    80001f98:	07413023          	sd	s4,96(sp)
    80001f9c:	05513c23          	sd	s5,88(sp)
    80001fa0:	05613823          	sd	s6,80(sp)
    80001fa4:	05713423          	sd	s7,72(sp)
    80001fa8:	03913c23          	sd	s9,56(sp)
    80001fac:	03a13823          	sd	s10,48(sp)
    80001fb0:	03b13423          	sd	s11,40(sp)
    80001fb4:	00003317          	auipc	t1,0x3
    80001fb8:	60c30313          	addi	t1,t1,1548 # 800055c0 <pr>
    80001fbc:	01832c03          	lw	s8,24(t1)
    80001fc0:	00b43423          	sd	a1,8(s0)
    80001fc4:	00c43823          	sd	a2,16(s0)
    80001fc8:	00d43c23          	sd	a3,24(s0)
    80001fcc:	02e43023          	sd	a4,32(s0)
    80001fd0:	02f43423          	sd	a5,40(s0)
    80001fd4:	03043823          	sd	a6,48(s0)
    80001fd8:	03143c23          	sd	a7,56(s0)
    80001fdc:	00050993          	mv	s3,a0
    80001fe0:	4a0c1663          	bnez	s8,8000248c <__printf+0x514>
    80001fe4:	60098c63          	beqz	s3,800025fc <__printf+0x684>
    80001fe8:	0009c503          	lbu	a0,0(s3)
    80001fec:	00840793          	addi	a5,s0,8
    80001ff0:	f6f43c23          	sd	a5,-136(s0)
    80001ff4:	00000493          	li	s1,0
    80001ff8:	22050063          	beqz	a0,80002218 <__printf+0x2a0>
    80001ffc:	00002a37          	lui	s4,0x2
    80002000:	00018ab7          	lui	s5,0x18
    80002004:	000f4b37          	lui	s6,0xf4
    80002008:	00989bb7          	lui	s7,0x989
    8000200c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80002010:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80002014:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80002018:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000201c:	00148c9b          	addiw	s9,s1,1
    80002020:	02500793          	li	a5,37
    80002024:	01998933          	add	s2,s3,s9
    80002028:	38f51263          	bne	a0,a5,800023ac <__printf+0x434>
    8000202c:	00094783          	lbu	a5,0(s2)
    80002030:	00078c9b          	sext.w	s9,a5
    80002034:	1e078263          	beqz	a5,80002218 <__printf+0x2a0>
    80002038:	0024849b          	addiw	s1,s1,2
    8000203c:	07000713          	li	a4,112
    80002040:	00998933          	add	s2,s3,s1
    80002044:	38e78a63          	beq	a5,a4,800023d8 <__printf+0x460>
    80002048:	20f76863          	bltu	a4,a5,80002258 <__printf+0x2e0>
    8000204c:	42a78863          	beq	a5,a0,8000247c <__printf+0x504>
    80002050:	06400713          	li	a4,100
    80002054:	40e79663          	bne	a5,a4,80002460 <__printf+0x4e8>
    80002058:	f7843783          	ld	a5,-136(s0)
    8000205c:	0007a603          	lw	a2,0(a5)
    80002060:	00878793          	addi	a5,a5,8
    80002064:	f6f43c23          	sd	a5,-136(s0)
    80002068:	42064a63          	bltz	a2,8000249c <__printf+0x524>
    8000206c:	00a00713          	li	a4,10
    80002070:	02e677bb          	remuw	a5,a2,a4
    80002074:	00002d97          	auipc	s11,0x2
    80002078:	104d8d93          	addi	s11,s11,260 # 80004178 <digits>
    8000207c:	00900593          	li	a1,9
    80002080:	0006051b          	sext.w	a0,a2
    80002084:	00000c93          	li	s9,0
    80002088:	02079793          	slli	a5,a5,0x20
    8000208c:	0207d793          	srli	a5,a5,0x20
    80002090:	00fd87b3          	add	a5,s11,a5
    80002094:	0007c783          	lbu	a5,0(a5)
    80002098:	02e656bb          	divuw	a3,a2,a4
    8000209c:	f8f40023          	sb	a5,-128(s0)
    800020a0:	14c5d863          	bge	a1,a2,800021f0 <__printf+0x278>
    800020a4:	06300593          	li	a1,99
    800020a8:	00100c93          	li	s9,1
    800020ac:	02e6f7bb          	remuw	a5,a3,a4
    800020b0:	02079793          	slli	a5,a5,0x20
    800020b4:	0207d793          	srli	a5,a5,0x20
    800020b8:	00fd87b3          	add	a5,s11,a5
    800020bc:	0007c783          	lbu	a5,0(a5)
    800020c0:	02e6d73b          	divuw	a4,a3,a4
    800020c4:	f8f400a3          	sb	a5,-127(s0)
    800020c8:	12a5f463          	bgeu	a1,a0,800021f0 <__printf+0x278>
    800020cc:	00a00693          	li	a3,10
    800020d0:	00900593          	li	a1,9
    800020d4:	02d777bb          	remuw	a5,a4,a3
    800020d8:	02079793          	slli	a5,a5,0x20
    800020dc:	0207d793          	srli	a5,a5,0x20
    800020e0:	00fd87b3          	add	a5,s11,a5
    800020e4:	0007c503          	lbu	a0,0(a5)
    800020e8:	02d757bb          	divuw	a5,a4,a3
    800020ec:	f8a40123          	sb	a0,-126(s0)
    800020f0:	48e5f263          	bgeu	a1,a4,80002574 <__printf+0x5fc>
    800020f4:	06300513          	li	a0,99
    800020f8:	02d7f5bb          	remuw	a1,a5,a3
    800020fc:	02059593          	slli	a1,a1,0x20
    80002100:	0205d593          	srli	a1,a1,0x20
    80002104:	00bd85b3          	add	a1,s11,a1
    80002108:	0005c583          	lbu	a1,0(a1)
    8000210c:	02d7d7bb          	divuw	a5,a5,a3
    80002110:	f8b401a3          	sb	a1,-125(s0)
    80002114:	48e57263          	bgeu	a0,a4,80002598 <__printf+0x620>
    80002118:	3e700513          	li	a0,999
    8000211c:	02d7f5bb          	remuw	a1,a5,a3
    80002120:	02059593          	slli	a1,a1,0x20
    80002124:	0205d593          	srli	a1,a1,0x20
    80002128:	00bd85b3          	add	a1,s11,a1
    8000212c:	0005c583          	lbu	a1,0(a1)
    80002130:	02d7d7bb          	divuw	a5,a5,a3
    80002134:	f8b40223          	sb	a1,-124(s0)
    80002138:	46e57663          	bgeu	a0,a4,800025a4 <__printf+0x62c>
    8000213c:	02d7f5bb          	remuw	a1,a5,a3
    80002140:	02059593          	slli	a1,a1,0x20
    80002144:	0205d593          	srli	a1,a1,0x20
    80002148:	00bd85b3          	add	a1,s11,a1
    8000214c:	0005c583          	lbu	a1,0(a1)
    80002150:	02d7d7bb          	divuw	a5,a5,a3
    80002154:	f8b402a3          	sb	a1,-123(s0)
    80002158:	46ea7863          	bgeu	s4,a4,800025c8 <__printf+0x650>
    8000215c:	02d7f5bb          	remuw	a1,a5,a3
    80002160:	02059593          	slli	a1,a1,0x20
    80002164:	0205d593          	srli	a1,a1,0x20
    80002168:	00bd85b3          	add	a1,s11,a1
    8000216c:	0005c583          	lbu	a1,0(a1)
    80002170:	02d7d7bb          	divuw	a5,a5,a3
    80002174:	f8b40323          	sb	a1,-122(s0)
    80002178:	3eeaf863          	bgeu	s5,a4,80002568 <__printf+0x5f0>
    8000217c:	02d7f5bb          	remuw	a1,a5,a3
    80002180:	02059593          	slli	a1,a1,0x20
    80002184:	0205d593          	srli	a1,a1,0x20
    80002188:	00bd85b3          	add	a1,s11,a1
    8000218c:	0005c583          	lbu	a1,0(a1)
    80002190:	02d7d7bb          	divuw	a5,a5,a3
    80002194:	f8b403a3          	sb	a1,-121(s0)
    80002198:	42eb7e63          	bgeu	s6,a4,800025d4 <__printf+0x65c>
    8000219c:	02d7f5bb          	remuw	a1,a5,a3
    800021a0:	02059593          	slli	a1,a1,0x20
    800021a4:	0205d593          	srli	a1,a1,0x20
    800021a8:	00bd85b3          	add	a1,s11,a1
    800021ac:	0005c583          	lbu	a1,0(a1)
    800021b0:	02d7d7bb          	divuw	a5,a5,a3
    800021b4:	f8b40423          	sb	a1,-120(s0)
    800021b8:	42ebfc63          	bgeu	s7,a4,800025f0 <__printf+0x678>
    800021bc:	02079793          	slli	a5,a5,0x20
    800021c0:	0207d793          	srli	a5,a5,0x20
    800021c4:	00fd8db3          	add	s11,s11,a5
    800021c8:	000dc703          	lbu	a4,0(s11)
    800021cc:	00a00793          	li	a5,10
    800021d0:	00900c93          	li	s9,9
    800021d4:	f8e404a3          	sb	a4,-119(s0)
    800021d8:	00065c63          	bgez	a2,800021f0 <__printf+0x278>
    800021dc:	f9040713          	addi	a4,s0,-112
    800021e0:	00f70733          	add	a4,a4,a5
    800021e4:	02d00693          	li	a3,45
    800021e8:	fed70823          	sb	a3,-16(a4)
    800021ec:	00078c93          	mv	s9,a5
    800021f0:	f8040793          	addi	a5,s0,-128
    800021f4:	01978cb3          	add	s9,a5,s9
    800021f8:	f7f40d13          	addi	s10,s0,-129
    800021fc:	000cc503          	lbu	a0,0(s9)
    80002200:	fffc8c93          	addi	s9,s9,-1
    80002204:	00000097          	auipc	ra,0x0
    80002208:	b90080e7          	jalr	-1136(ra) # 80001d94 <consputc>
    8000220c:	ffac98e3          	bne	s9,s10,800021fc <__printf+0x284>
    80002210:	00094503          	lbu	a0,0(s2)
    80002214:	e00514e3          	bnez	a0,8000201c <__printf+0xa4>
    80002218:	1a0c1663          	bnez	s8,800023c4 <__printf+0x44c>
    8000221c:	08813083          	ld	ra,136(sp)
    80002220:	08013403          	ld	s0,128(sp)
    80002224:	07813483          	ld	s1,120(sp)
    80002228:	07013903          	ld	s2,112(sp)
    8000222c:	06813983          	ld	s3,104(sp)
    80002230:	06013a03          	ld	s4,96(sp)
    80002234:	05813a83          	ld	s5,88(sp)
    80002238:	05013b03          	ld	s6,80(sp)
    8000223c:	04813b83          	ld	s7,72(sp)
    80002240:	04013c03          	ld	s8,64(sp)
    80002244:	03813c83          	ld	s9,56(sp)
    80002248:	03013d03          	ld	s10,48(sp)
    8000224c:	02813d83          	ld	s11,40(sp)
    80002250:	0d010113          	addi	sp,sp,208
    80002254:	00008067          	ret
    80002258:	07300713          	li	a4,115
    8000225c:	1ce78a63          	beq	a5,a4,80002430 <__printf+0x4b8>
    80002260:	07800713          	li	a4,120
    80002264:	1ee79e63          	bne	a5,a4,80002460 <__printf+0x4e8>
    80002268:	f7843783          	ld	a5,-136(s0)
    8000226c:	0007a703          	lw	a4,0(a5)
    80002270:	00878793          	addi	a5,a5,8
    80002274:	f6f43c23          	sd	a5,-136(s0)
    80002278:	28074263          	bltz	a4,800024fc <__printf+0x584>
    8000227c:	00002d97          	auipc	s11,0x2
    80002280:	efcd8d93          	addi	s11,s11,-260 # 80004178 <digits>
    80002284:	00f77793          	andi	a5,a4,15
    80002288:	00fd87b3          	add	a5,s11,a5
    8000228c:	0007c683          	lbu	a3,0(a5)
    80002290:	00f00613          	li	a2,15
    80002294:	0007079b          	sext.w	a5,a4
    80002298:	f8d40023          	sb	a3,-128(s0)
    8000229c:	0047559b          	srliw	a1,a4,0x4
    800022a0:	0047569b          	srliw	a3,a4,0x4
    800022a4:	00000c93          	li	s9,0
    800022a8:	0ee65063          	bge	a2,a4,80002388 <__printf+0x410>
    800022ac:	00f6f693          	andi	a3,a3,15
    800022b0:	00dd86b3          	add	a3,s11,a3
    800022b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800022b8:	0087d79b          	srliw	a5,a5,0x8
    800022bc:	00100c93          	li	s9,1
    800022c0:	f8d400a3          	sb	a3,-127(s0)
    800022c4:	0cb67263          	bgeu	a2,a1,80002388 <__printf+0x410>
    800022c8:	00f7f693          	andi	a3,a5,15
    800022cc:	00dd86b3          	add	a3,s11,a3
    800022d0:	0006c583          	lbu	a1,0(a3)
    800022d4:	00f00613          	li	a2,15
    800022d8:	0047d69b          	srliw	a3,a5,0x4
    800022dc:	f8b40123          	sb	a1,-126(s0)
    800022e0:	0047d593          	srli	a1,a5,0x4
    800022e4:	28f67e63          	bgeu	a2,a5,80002580 <__printf+0x608>
    800022e8:	00f6f693          	andi	a3,a3,15
    800022ec:	00dd86b3          	add	a3,s11,a3
    800022f0:	0006c503          	lbu	a0,0(a3)
    800022f4:	0087d813          	srli	a6,a5,0x8
    800022f8:	0087d69b          	srliw	a3,a5,0x8
    800022fc:	f8a401a3          	sb	a0,-125(s0)
    80002300:	28b67663          	bgeu	a2,a1,8000258c <__printf+0x614>
    80002304:	00f6f693          	andi	a3,a3,15
    80002308:	00dd86b3          	add	a3,s11,a3
    8000230c:	0006c583          	lbu	a1,0(a3)
    80002310:	00c7d513          	srli	a0,a5,0xc
    80002314:	00c7d69b          	srliw	a3,a5,0xc
    80002318:	f8b40223          	sb	a1,-124(s0)
    8000231c:	29067a63          	bgeu	a2,a6,800025b0 <__printf+0x638>
    80002320:	00f6f693          	andi	a3,a3,15
    80002324:	00dd86b3          	add	a3,s11,a3
    80002328:	0006c583          	lbu	a1,0(a3)
    8000232c:	0107d813          	srli	a6,a5,0x10
    80002330:	0107d69b          	srliw	a3,a5,0x10
    80002334:	f8b402a3          	sb	a1,-123(s0)
    80002338:	28a67263          	bgeu	a2,a0,800025bc <__printf+0x644>
    8000233c:	00f6f693          	andi	a3,a3,15
    80002340:	00dd86b3          	add	a3,s11,a3
    80002344:	0006c683          	lbu	a3,0(a3)
    80002348:	0147d79b          	srliw	a5,a5,0x14
    8000234c:	f8d40323          	sb	a3,-122(s0)
    80002350:	21067663          	bgeu	a2,a6,8000255c <__printf+0x5e4>
    80002354:	02079793          	slli	a5,a5,0x20
    80002358:	0207d793          	srli	a5,a5,0x20
    8000235c:	00fd8db3          	add	s11,s11,a5
    80002360:	000dc683          	lbu	a3,0(s11)
    80002364:	00800793          	li	a5,8
    80002368:	00700c93          	li	s9,7
    8000236c:	f8d403a3          	sb	a3,-121(s0)
    80002370:	00075c63          	bgez	a4,80002388 <__printf+0x410>
    80002374:	f9040713          	addi	a4,s0,-112
    80002378:	00f70733          	add	a4,a4,a5
    8000237c:	02d00693          	li	a3,45
    80002380:	fed70823          	sb	a3,-16(a4)
    80002384:	00078c93          	mv	s9,a5
    80002388:	f8040793          	addi	a5,s0,-128
    8000238c:	01978cb3          	add	s9,a5,s9
    80002390:	f7f40d13          	addi	s10,s0,-129
    80002394:	000cc503          	lbu	a0,0(s9)
    80002398:	fffc8c93          	addi	s9,s9,-1
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	9f8080e7          	jalr	-1544(ra) # 80001d94 <consputc>
    800023a4:	ff9d18e3          	bne	s10,s9,80002394 <__printf+0x41c>
    800023a8:	0100006f          	j	800023b8 <__printf+0x440>
    800023ac:	00000097          	auipc	ra,0x0
    800023b0:	9e8080e7          	jalr	-1560(ra) # 80001d94 <consputc>
    800023b4:	000c8493          	mv	s1,s9
    800023b8:	00094503          	lbu	a0,0(s2)
    800023bc:	c60510e3          	bnez	a0,8000201c <__printf+0xa4>
    800023c0:	e40c0ee3          	beqz	s8,8000221c <__printf+0x2a4>
    800023c4:	00003517          	auipc	a0,0x3
    800023c8:	1fc50513          	addi	a0,a0,508 # 800055c0 <pr>
    800023cc:	00001097          	auipc	ra,0x1
    800023d0:	94c080e7          	jalr	-1716(ra) # 80002d18 <release>
    800023d4:	e49ff06f          	j	8000221c <__printf+0x2a4>
    800023d8:	f7843783          	ld	a5,-136(s0)
    800023dc:	03000513          	li	a0,48
    800023e0:	01000d13          	li	s10,16
    800023e4:	00878713          	addi	a4,a5,8
    800023e8:	0007bc83          	ld	s9,0(a5)
    800023ec:	f6e43c23          	sd	a4,-136(s0)
    800023f0:	00000097          	auipc	ra,0x0
    800023f4:	9a4080e7          	jalr	-1628(ra) # 80001d94 <consputc>
    800023f8:	07800513          	li	a0,120
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	998080e7          	jalr	-1640(ra) # 80001d94 <consputc>
    80002404:	00002d97          	auipc	s11,0x2
    80002408:	d74d8d93          	addi	s11,s11,-652 # 80004178 <digits>
    8000240c:	03ccd793          	srli	a5,s9,0x3c
    80002410:	00fd87b3          	add	a5,s11,a5
    80002414:	0007c503          	lbu	a0,0(a5)
    80002418:	fffd0d1b          	addiw	s10,s10,-1
    8000241c:	004c9c93          	slli	s9,s9,0x4
    80002420:	00000097          	auipc	ra,0x0
    80002424:	974080e7          	jalr	-1676(ra) # 80001d94 <consputc>
    80002428:	fe0d12e3          	bnez	s10,8000240c <__printf+0x494>
    8000242c:	f8dff06f          	j	800023b8 <__printf+0x440>
    80002430:	f7843783          	ld	a5,-136(s0)
    80002434:	0007bc83          	ld	s9,0(a5)
    80002438:	00878793          	addi	a5,a5,8
    8000243c:	f6f43c23          	sd	a5,-136(s0)
    80002440:	000c9a63          	bnez	s9,80002454 <__printf+0x4dc>
    80002444:	1080006f          	j	8000254c <__printf+0x5d4>
    80002448:	001c8c93          	addi	s9,s9,1
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	948080e7          	jalr	-1720(ra) # 80001d94 <consputc>
    80002454:	000cc503          	lbu	a0,0(s9)
    80002458:	fe0518e3          	bnez	a0,80002448 <__printf+0x4d0>
    8000245c:	f5dff06f          	j	800023b8 <__printf+0x440>
    80002460:	02500513          	li	a0,37
    80002464:	00000097          	auipc	ra,0x0
    80002468:	930080e7          	jalr	-1744(ra) # 80001d94 <consputc>
    8000246c:	000c8513          	mv	a0,s9
    80002470:	00000097          	auipc	ra,0x0
    80002474:	924080e7          	jalr	-1756(ra) # 80001d94 <consputc>
    80002478:	f41ff06f          	j	800023b8 <__printf+0x440>
    8000247c:	02500513          	li	a0,37
    80002480:	00000097          	auipc	ra,0x0
    80002484:	914080e7          	jalr	-1772(ra) # 80001d94 <consputc>
    80002488:	f31ff06f          	j	800023b8 <__printf+0x440>
    8000248c:	00030513          	mv	a0,t1
    80002490:	00000097          	auipc	ra,0x0
    80002494:	7bc080e7          	jalr	1980(ra) # 80002c4c <acquire>
    80002498:	b4dff06f          	j	80001fe4 <__printf+0x6c>
    8000249c:	40c0053b          	negw	a0,a2
    800024a0:	00a00713          	li	a4,10
    800024a4:	02e576bb          	remuw	a3,a0,a4
    800024a8:	00002d97          	auipc	s11,0x2
    800024ac:	cd0d8d93          	addi	s11,s11,-816 # 80004178 <digits>
    800024b0:	ff700593          	li	a1,-9
    800024b4:	02069693          	slli	a3,a3,0x20
    800024b8:	0206d693          	srli	a3,a3,0x20
    800024bc:	00dd86b3          	add	a3,s11,a3
    800024c0:	0006c683          	lbu	a3,0(a3)
    800024c4:	02e557bb          	divuw	a5,a0,a4
    800024c8:	f8d40023          	sb	a3,-128(s0)
    800024cc:	10b65e63          	bge	a2,a1,800025e8 <__printf+0x670>
    800024d0:	06300593          	li	a1,99
    800024d4:	02e7f6bb          	remuw	a3,a5,a4
    800024d8:	02069693          	slli	a3,a3,0x20
    800024dc:	0206d693          	srli	a3,a3,0x20
    800024e0:	00dd86b3          	add	a3,s11,a3
    800024e4:	0006c683          	lbu	a3,0(a3)
    800024e8:	02e7d73b          	divuw	a4,a5,a4
    800024ec:	00200793          	li	a5,2
    800024f0:	f8d400a3          	sb	a3,-127(s0)
    800024f4:	bca5ece3          	bltu	a1,a0,800020cc <__printf+0x154>
    800024f8:	ce5ff06f          	j	800021dc <__printf+0x264>
    800024fc:	40e007bb          	negw	a5,a4
    80002500:	00002d97          	auipc	s11,0x2
    80002504:	c78d8d93          	addi	s11,s11,-904 # 80004178 <digits>
    80002508:	00f7f693          	andi	a3,a5,15
    8000250c:	00dd86b3          	add	a3,s11,a3
    80002510:	0006c583          	lbu	a1,0(a3)
    80002514:	ff100613          	li	a2,-15
    80002518:	0047d69b          	srliw	a3,a5,0x4
    8000251c:	f8b40023          	sb	a1,-128(s0)
    80002520:	0047d59b          	srliw	a1,a5,0x4
    80002524:	0ac75e63          	bge	a4,a2,800025e0 <__printf+0x668>
    80002528:	00f6f693          	andi	a3,a3,15
    8000252c:	00dd86b3          	add	a3,s11,a3
    80002530:	0006c603          	lbu	a2,0(a3)
    80002534:	00f00693          	li	a3,15
    80002538:	0087d79b          	srliw	a5,a5,0x8
    8000253c:	f8c400a3          	sb	a2,-127(s0)
    80002540:	d8b6e4e3          	bltu	a3,a1,800022c8 <__printf+0x350>
    80002544:	00200793          	li	a5,2
    80002548:	e2dff06f          	j	80002374 <__printf+0x3fc>
    8000254c:	00002c97          	auipc	s9,0x2
    80002550:	c0cc8c93          	addi	s9,s9,-1012 # 80004158 <CONSOLE_STATUS+0x148>
    80002554:	02800513          	li	a0,40
    80002558:	ef1ff06f          	j	80002448 <__printf+0x4d0>
    8000255c:	00700793          	li	a5,7
    80002560:	00600c93          	li	s9,6
    80002564:	e0dff06f          	j	80002370 <__printf+0x3f8>
    80002568:	00700793          	li	a5,7
    8000256c:	00600c93          	li	s9,6
    80002570:	c69ff06f          	j	800021d8 <__printf+0x260>
    80002574:	00300793          	li	a5,3
    80002578:	00200c93          	li	s9,2
    8000257c:	c5dff06f          	j	800021d8 <__printf+0x260>
    80002580:	00300793          	li	a5,3
    80002584:	00200c93          	li	s9,2
    80002588:	de9ff06f          	j	80002370 <__printf+0x3f8>
    8000258c:	00400793          	li	a5,4
    80002590:	00300c93          	li	s9,3
    80002594:	dddff06f          	j	80002370 <__printf+0x3f8>
    80002598:	00400793          	li	a5,4
    8000259c:	00300c93          	li	s9,3
    800025a0:	c39ff06f          	j	800021d8 <__printf+0x260>
    800025a4:	00500793          	li	a5,5
    800025a8:	00400c93          	li	s9,4
    800025ac:	c2dff06f          	j	800021d8 <__printf+0x260>
    800025b0:	00500793          	li	a5,5
    800025b4:	00400c93          	li	s9,4
    800025b8:	db9ff06f          	j	80002370 <__printf+0x3f8>
    800025bc:	00600793          	li	a5,6
    800025c0:	00500c93          	li	s9,5
    800025c4:	dadff06f          	j	80002370 <__printf+0x3f8>
    800025c8:	00600793          	li	a5,6
    800025cc:	00500c93          	li	s9,5
    800025d0:	c09ff06f          	j	800021d8 <__printf+0x260>
    800025d4:	00800793          	li	a5,8
    800025d8:	00700c93          	li	s9,7
    800025dc:	bfdff06f          	j	800021d8 <__printf+0x260>
    800025e0:	00100793          	li	a5,1
    800025e4:	d91ff06f          	j	80002374 <__printf+0x3fc>
    800025e8:	00100793          	li	a5,1
    800025ec:	bf1ff06f          	j	800021dc <__printf+0x264>
    800025f0:	00900793          	li	a5,9
    800025f4:	00800c93          	li	s9,8
    800025f8:	be1ff06f          	j	800021d8 <__printf+0x260>
    800025fc:	00002517          	auipc	a0,0x2
    80002600:	b6450513          	addi	a0,a0,-1180 # 80004160 <CONSOLE_STATUS+0x150>
    80002604:	00000097          	auipc	ra,0x0
    80002608:	918080e7          	jalr	-1768(ra) # 80001f1c <panic>

000000008000260c <printfinit>:
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00813823          	sd	s0,16(sp)
    80002614:	00913423          	sd	s1,8(sp)
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	02010413          	addi	s0,sp,32
    80002620:	00003497          	auipc	s1,0x3
    80002624:	fa048493          	addi	s1,s1,-96 # 800055c0 <pr>
    80002628:	00048513          	mv	a0,s1
    8000262c:	00002597          	auipc	a1,0x2
    80002630:	b4458593          	addi	a1,a1,-1212 # 80004170 <CONSOLE_STATUS+0x160>
    80002634:	00000097          	auipc	ra,0x0
    80002638:	5f4080e7          	jalr	1524(ra) # 80002c28 <initlock>
    8000263c:	01813083          	ld	ra,24(sp)
    80002640:	01013403          	ld	s0,16(sp)
    80002644:	0004ac23          	sw	zero,24(s1)
    80002648:	00813483          	ld	s1,8(sp)
    8000264c:	02010113          	addi	sp,sp,32
    80002650:	00008067          	ret

0000000080002654 <uartinit>:
    80002654:	ff010113          	addi	sp,sp,-16
    80002658:	00813423          	sd	s0,8(sp)
    8000265c:	01010413          	addi	s0,sp,16
    80002660:	100007b7          	lui	a5,0x10000
    80002664:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002668:	f8000713          	li	a4,-128
    8000266c:	00e781a3          	sb	a4,3(a5)
    80002670:	00300713          	li	a4,3
    80002674:	00e78023          	sb	a4,0(a5)
    80002678:	000780a3          	sb	zero,1(a5)
    8000267c:	00e781a3          	sb	a4,3(a5)
    80002680:	00700693          	li	a3,7
    80002684:	00d78123          	sb	a3,2(a5)
    80002688:	00e780a3          	sb	a4,1(a5)
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret

0000000080002698 <uartputc>:
    80002698:	00002797          	auipc	a5,0x2
    8000269c:	ce07a783          	lw	a5,-800(a5) # 80004378 <panicked>
    800026a0:	00078463          	beqz	a5,800026a8 <uartputc+0x10>
    800026a4:	0000006f          	j	800026a4 <uartputc+0xc>
    800026a8:	fd010113          	addi	sp,sp,-48
    800026ac:	02813023          	sd	s0,32(sp)
    800026b0:	00913c23          	sd	s1,24(sp)
    800026b4:	01213823          	sd	s2,16(sp)
    800026b8:	01313423          	sd	s3,8(sp)
    800026bc:	02113423          	sd	ra,40(sp)
    800026c0:	03010413          	addi	s0,sp,48
    800026c4:	00002917          	auipc	s2,0x2
    800026c8:	cbc90913          	addi	s2,s2,-836 # 80004380 <uart_tx_r>
    800026cc:	00093783          	ld	a5,0(s2)
    800026d0:	00002497          	auipc	s1,0x2
    800026d4:	cb848493          	addi	s1,s1,-840 # 80004388 <uart_tx_w>
    800026d8:	0004b703          	ld	a4,0(s1)
    800026dc:	02078693          	addi	a3,a5,32
    800026e0:	00050993          	mv	s3,a0
    800026e4:	02e69c63          	bne	a3,a4,8000271c <uartputc+0x84>
    800026e8:	00001097          	auipc	ra,0x1
    800026ec:	834080e7          	jalr	-1996(ra) # 80002f1c <push_on>
    800026f0:	00093783          	ld	a5,0(s2)
    800026f4:	0004b703          	ld	a4,0(s1)
    800026f8:	02078793          	addi	a5,a5,32
    800026fc:	00e79463          	bne	a5,a4,80002704 <uartputc+0x6c>
    80002700:	0000006f          	j	80002700 <uartputc+0x68>
    80002704:	00001097          	auipc	ra,0x1
    80002708:	88c080e7          	jalr	-1908(ra) # 80002f90 <pop_on>
    8000270c:	00093783          	ld	a5,0(s2)
    80002710:	0004b703          	ld	a4,0(s1)
    80002714:	02078693          	addi	a3,a5,32
    80002718:	fce688e3          	beq	a3,a4,800026e8 <uartputc+0x50>
    8000271c:	01f77693          	andi	a3,a4,31
    80002720:	00003597          	auipc	a1,0x3
    80002724:	ec058593          	addi	a1,a1,-320 # 800055e0 <uart_tx_buf>
    80002728:	00d586b3          	add	a3,a1,a3
    8000272c:	00170713          	addi	a4,a4,1
    80002730:	01368023          	sb	s3,0(a3)
    80002734:	00e4b023          	sd	a4,0(s1)
    80002738:	10000637          	lui	a2,0x10000
    8000273c:	02f71063          	bne	a4,a5,8000275c <uartputc+0xc4>
    80002740:	0340006f          	j	80002774 <uartputc+0xdc>
    80002744:	00074703          	lbu	a4,0(a4)
    80002748:	00f93023          	sd	a5,0(s2)
    8000274c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002750:	00093783          	ld	a5,0(s2)
    80002754:	0004b703          	ld	a4,0(s1)
    80002758:	00f70e63          	beq	a4,a5,80002774 <uartputc+0xdc>
    8000275c:	00564683          	lbu	a3,5(a2)
    80002760:	01f7f713          	andi	a4,a5,31
    80002764:	00e58733          	add	a4,a1,a4
    80002768:	0206f693          	andi	a3,a3,32
    8000276c:	00178793          	addi	a5,a5,1
    80002770:	fc069ae3          	bnez	a3,80002744 <uartputc+0xac>
    80002774:	02813083          	ld	ra,40(sp)
    80002778:	02013403          	ld	s0,32(sp)
    8000277c:	01813483          	ld	s1,24(sp)
    80002780:	01013903          	ld	s2,16(sp)
    80002784:	00813983          	ld	s3,8(sp)
    80002788:	03010113          	addi	sp,sp,48
    8000278c:	00008067          	ret

0000000080002790 <uartputc_sync>:
    80002790:	ff010113          	addi	sp,sp,-16
    80002794:	00813423          	sd	s0,8(sp)
    80002798:	01010413          	addi	s0,sp,16
    8000279c:	00002717          	auipc	a4,0x2
    800027a0:	bdc72703          	lw	a4,-1060(a4) # 80004378 <panicked>
    800027a4:	02071663          	bnez	a4,800027d0 <uartputc_sync+0x40>
    800027a8:	00050793          	mv	a5,a0
    800027ac:	100006b7          	lui	a3,0x10000
    800027b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800027b4:	02077713          	andi	a4,a4,32
    800027b8:	fe070ce3          	beqz	a4,800027b0 <uartputc_sync+0x20>
    800027bc:	0ff7f793          	andi	a5,a5,255
    800027c0:	00f68023          	sb	a5,0(a3)
    800027c4:	00813403          	ld	s0,8(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret
    800027d0:	0000006f          	j	800027d0 <uartputc_sync+0x40>

00000000800027d4 <uartstart>:
    800027d4:	ff010113          	addi	sp,sp,-16
    800027d8:	00813423          	sd	s0,8(sp)
    800027dc:	01010413          	addi	s0,sp,16
    800027e0:	00002617          	auipc	a2,0x2
    800027e4:	ba060613          	addi	a2,a2,-1120 # 80004380 <uart_tx_r>
    800027e8:	00002517          	auipc	a0,0x2
    800027ec:	ba050513          	addi	a0,a0,-1120 # 80004388 <uart_tx_w>
    800027f0:	00063783          	ld	a5,0(a2)
    800027f4:	00053703          	ld	a4,0(a0)
    800027f8:	04f70263          	beq	a4,a5,8000283c <uartstart+0x68>
    800027fc:	100005b7          	lui	a1,0x10000
    80002800:	00003817          	auipc	a6,0x3
    80002804:	de080813          	addi	a6,a6,-544 # 800055e0 <uart_tx_buf>
    80002808:	01c0006f          	j	80002824 <uartstart+0x50>
    8000280c:	0006c703          	lbu	a4,0(a3)
    80002810:	00f63023          	sd	a5,0(a2)
    80002814:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002818:	00063783          	ld	a5,0(a2)
    8000281c:	00053703          	ld	a4,0(a0)
    80002820:	00f70e63          	beq	a4,a5,8000283c <uartstart+0x68>
    80002824:	01f7f713          	andi	a4,a5,31
    80002828:	00e806b3          	add	a3,a6,a4
    8000282c:	0055c703          	lbu	a4,5(a1)
    80002830:	00178793          	addi	a5,a5,1
    80002834:	02077713          	andi	a4,a4,32
    80002838:	fc071ae3          	bnez	a4,8000280c <uartstart+0x38>
    8000283c:	00813403          	ld	s0,8(sp)
    80002840:	01010113          	addi	sp,sp,16
    80002844:	00008067          	ret

0000000080002848 <uartgetc>:
    80002848:	ff010113          	addi	sp,sp,-16
    8000284c:	00813423          	sd	s0,8(sp)
    80002850:	01010413          	addi	s0,sp,16
    80002854:	10000737          	lui	a4,0x10000
    80002858:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000285c:	0017f793          	andi	a5,a5,1
    80002860:	00078c63          	beqz	a5,80002878 <uartgetc+0x30>
    80002864:	00074503          	lbu	a0,0(a4)
    80002868:	0ff57513          	andi	a0,a0,255
    8000286c:	00813403          	ld	s0,8(sp)
    80002870:	01010113          	addi	sp,sp,16
    80002874:	00008067          	ret
    80002878:	fff00513          	li	a0,-1
    8000287c:	ff1ff06f          	j	8000286c <uartgetc+0x24>

0000000080002880 <uartintr>:
    80002880:	100007b7          	lui	a5,0x10000
    80002884:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002888:	0017f793          	andi	a5,a5,1
    8000288c:	0a078463          	beqz	a5,80002934 <uartintr+0xb4>
    80002890:	fe010113          	addi	sp,sp,-32
    80002894:	00813823          	sd	s0,16(sp)
    80002898:	00913423          	sd	s1,8(sp)
    8000289c:	00113c23          	sd	ra,24(sp)
    800028a0:	02010413          	addi	s0,sp,32
    800028a4:	100004b7          	lui	s1,0x10000
    800028a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800028ac:	0ff57513          	andi	a0,a0,255
    800028b0:	fffff097          	auipc	ra,0xfffff
    800028b4:	534080e7          	jalr	1332(ra) # 80001de4 <consoleintr>
    800028b8:	0054c783          	lbu	a5,5(s1)
    800028bc:	0017f793          	andi	a5,a5,1
    800028c0:	fe0794e3          	bnez	a5,800028a8 <uartintr+0x28>
    800028c4:	00002617          	auipc	a2,0x2
    800028c8:	abc60613          	addi	a2,a2,-1348 # 80004380 <uart_tx_r>
    800028cc:	00002517          	auipc	a0,0x2
    800028d0:	abc50513          	addi	a0,a0,-1348 # 80004388 <uart_tx_w>
    800028d4:	00063783          	ld	a5,0(a2)
    800028d8:	00053703          	ld	a4,0(a0)
    800028dc:	04f70263          	beq	a4,a5,80002920 <uartintr+0xa0>
    800028e0:	100005b7          	lui	a1,0x10000
    800028e4:	00003817          	auipc	a6,0x3
    800028e8:	cfc80813          	addi	a6,a6,-772 # 800055e0 <uart_tx_buf>
    800028ec:	01c0006f          	j	80002908 <uartintr+0x88>
    800028f0:	0006c703          	lbu	a4,0(a3)
    800028f4:	00f63023          	sd	a5,0(a2)
    800028f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800028fc:	00063783          	ld	a5,0(a2)
    80002900:	00053703          	ld	a4,0(a0)
    80002904:	00f70e63          	beq	a4,a5,80002920 <uartintr+0xa0>
    80002908:	01f7f713          	andi	a4,a5,31
    8000290c:	00e806b3          	add	a3,a6,a4
    80002910:	0055c703          	lbu	a4,5(a1)
    80002914:	00178793          	addi	a5,a5,1
    80002918:	02077713          	andi	a4,a4,32
    8000291c:	fc071ae3          	bnez	a4,800028f0 <uartintr+0x70>
    80002920:	01813083          	ld	ra,24(sp)
    80002924:	01013403          	ld	s0,16(sp)
    80002928:	00813483          	ld	s1,8(sp)
    8000292c:	02010113          	addi	sp,sp,32
    80002930:	00008067          	ret
    80002934:	00002617          	auipc	a2,0x2
    80002938:	a4c60613          	addi	a2,a2,-1460 # 80004380 <uart_tx_r>
    8000293c:	00002517          	auipc	a0,0x2
    80002940:	a4c50513          	addi	a0,a0,-1460 # 80004388 <uart_tx_w>
    80002944:	00063783          	ld	a5,0(a2)
    80002948:	00053703          	ld	a4,0(a0)
    8000294c:	04f70263          	beq	a4,a5,80002990 <uartintr+0x110>
    80002950:	100005b7          	lui	a1,0x10000
    80002954:	00003817          	auipc	a6,0x3
    80002958:	c8c80813          	addi	a6,a6,-884 # 800055e0 <uart_tx_buf>
    8000295c:	01c0006f          	j	80002978 <uartintr+0xf8>
    80002960:	0006c703          	lbu	a4,0(a3)
    80002964:	00f63023          	sd	a5,0(a2)
    80002968:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000296c:	00063783          	ld	a5,0(a2)
    80002970:	00053703          	ld	a4,0(a0)
    80002974:	02f70063          	beq	a4,a5,80002994 <uartintr+0x114>
    80002978:	01f7f713          	andi	a4,a5,31
    8000297c:	00e806b3          	add	a3,a6,a4
    80002980:	0055c703          	lbu	a4,5(a1)
    80002984:	00178793          	addi	a5,a5,1
    80002988:	02077713          	andi	a4,a4,32
    8000298c:	fc071ae3          	bnez	a4,80002960 <uartintr+0xe0>
    80002990:	00008067          	ret
    80002994:	00008067          	ret

0000000080002998 <kinit>:
    80002998:	fc010113          	addi	sp,sp,-64
    8000299c:	02913423          	sd	s1,40(sp)
    800029a0:	fffff7b7          	lui	a5,0xfffff
    800029a4:	00004497          	auipc	s1,0x4
    800029a8:	c5b48493          	addi	s1,s1,-933 # 800065ff <end+0xfff>
    800029ac:	02813823          	sd	s0,48(sp)
    800029b0:	01313c23          	sd	s3,24(sp)
    800029b4:	00f4f4b3          	and	s1,s1,a5
    800029b8:	02113c23          	sd	ra,56(sp)
    800029bc:	03213023          	sd	s2,32(sp)
    800029c0:	01413823          	sd	s4,16(sp)
    800029c4:	01513423          	sd	s5,8(sp)
    800029c8:	04010413          	addi	s0,sp,64
    800029cc:	000017b7          	lui	a5,0x1
    800029d0:	01100993          	li	s3,17
    800029d4:	00f487b3          	add	a5,s1,a5
    800029d8:	01b99993          	slli	s3,s3,0x1b
    800029dc:	06f9e063          	bltu	s3,a5,80002a3c <kinit+0xa4>
    800029e0:	00003a97          	auipc	s5,0x3
    800029e4:	c20a8a93          	addi	s5,s5,-992 # 80005600 <end>
    800029e8:	0754ec63          	bltu	s1,s5,80002a60 <kinit+0xc8>
    800029ec:	0734fa63          	bgeu	s1,s3,80002a60 <kinit+0xc8>
    800029f0:	00088a37          	lui	s4,0x88
    800029f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800029f8:	00002917          	auipc	s2,0x2
    800029fc:	99890913          	addi	s2,s2,-1640 # 80004390 <kmem>
    80002a00:	00ca1a13          	slli	s4,s4,0xc
    80002a04:	0140006f          	j	80002a18 <kinit+0x80>
    80002a08:	000017b7          	lui	a5,0x1
    80002a0c:	00f484b3          	add	s1,s1,a5
    80002a10:	0554e863          	bltu	s1,s5,80002a60 <kinit+0xc8>
    80002a14:	0534f663          	bgeu	s1,s3,80002a60 <kinit+0xc8>
    80002a18:	00001637          	lui	a2,0x1
    80002a1c:	00100593          	li	a1,1
    80002a20:	00048513          	mv	a0,s1
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	5e4080e7          	jalr	1508(ra) # 80003008 <__memset>
    80002a2c:	00093783          	ld	a5,0(s2)
    80002a30:	00f4b023          	sd	a5,0(s1)
    80002a34:	00993023          	sd	s1,0(s2)
    80002a38:	fd4498e3          	bne	s1,s4,80002a08 <kinit+0x70>
    80002a3c:	03813083          	ld	ra,56(sp)
    80002a40:	03013403          	ld	s0,48(sp)
    80002a44:	02813483          	ld	s1,40(sp)
    80002a48:	02013903          	ld	s2,32(sp)
    80002a4c:	01813983          	ld	s3,24(sp)
    80002a50:	01013a03          	ld	s4,16(sp)
    80002a54:	00813a83          	ld	s5,8(sp)
    80002a58:	04010113          	addi	sp,sp,64
    80002a5c:	00008067          	ret
    80002a60:	00001517          	auipc	a0,0x1
    80002a64:	73050513          	addi	a0,a0,1840 # 80004190 <digits+0x18>
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	4b4080e7          	jalr	1204(ra) # 80001f1c <panic>

0000000080002a70 <freerange>:
    80002a70:	fc010113          	addi	sp,sp,-64
    80002a74:	000017b7          	lui	a5,0x1
    80002a78:	02913423          	sd	s1,40(sp)
    80002a7c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002a80:	009504b3          	add	s1,a0,s1
    80002a84:	fffff537          	lui	a0,0xfffff
    80002a88:	02813823          	sd	s0,48(sp)
    80002a8c:	02113c23          	sd	ra,56(sp)
    80002a90:	03213023          	sd	s2,32(sp)
    80002a94:	01313c23          	sd	s3,24(sp)
    80002a98:	01413823          	sd	s4,16(sp)
    80002a9c:	01513423          	sd	s5,8(sp)
    80002aa0:	01613023          	sd	s6,0(sp)
    80002aa4:	04010413          	addi	s0,sp,64
    80002aa8:	00a4f4b3          	and	s1,s1,a0
    80002aac:	00f487b3          	add	a5,s1,a5
    80002ab0:	06f5e463          	bltu	a1,a5,80002b18 <freerange+0xa8>
    80002ab4:	00003a97          	auipc	s5,0x3
    80002ab8:	b4ca8a93          	addi	s5,s5,-1204 # 80005600 <end>
    80002abc:	0954e263          	bltu	s1,s5,80002b40 <freerange+0xd0>
    80002ac0:	01100993          	li	s3,17
    80002ac4:	01b99993          	slli	s3,s3,0x1b
    80002ac8:	0734fc63          	bgeu	s1,s3,80002b40 <freerange+0xd0>
    80002acc:	00058a13          	mv	s4,a1
    80002ad0:	00002917          	auipc	s2,0x2
    80002ad4:	8c090913          	addi	s2,s2,-1856 # 80004390 <kmem>
    80002ad8:	00002b37          	lui	s6,0x2
    80002adc:	0140006f          	j	80002af0 <freerange+0x80>
    80002ae0:	000017b7          	lui	a5,0x1
    80002ae4:	00f484b3          	add	s1,s1,a5
    80002ae8:	0554ec63          	bltu	s1,s5,80002b40 <freerange+0xd0>
    80002aec:	0534fa63          	bgeu	s1,s3,80002b40 <freerange+0xd0>
    80002af0:	00001637          	lui	a2,0x1
    80002af4:	00100593          	li	a1,1
    80002af8:	00048513          	mv	a0,s1
    80002afc:	00000097          	auipc	ra,0x0
    80002b00:	50c080e7          	jalr	1292(ra) # 80003008 <__memset>
    80002b04:	00093703          	ld	a4,0(s2)
    80002b08:	016487b3          	add	a5,s1,s6
    80002b0c:	00e4b023          	sd	a4,0(s1)
    80002b10:	00993023          	sd	s1,0(s2)
    80002b14:	fcfa76e3          	bgeu	s4,a5,80002ae0 <freerange+0x70>
    80002b18:	03813083          	ld	ra,56(sp)
    80002b1c:	03013403          	ld	s0,48(sp)
    80002b20:	02813483          	ld	s1,40(sp)
    80002b24:	02013903          	ld	s2,32(sp)
    80002b28:	01813983          	ld	s3,24(sp)
    80002b2c:	01013a03          	ld	s4,16(sp)
    80002b30:	00813a83          	ld	s5,8(sp)
    80002b34:	00013b03          	ld	s6,0(sp)
    80002b38:	04010113          	addi	sp,sp,64
    80002b3c:	00008067          	ret
    80002b40:	00001517          	auipc	a0,0x1
    80002b44:	65050513          	addi	a0,a0,1616 # 80004190 <digits+0x18>
    80002b48:	fffff097          	auipc	ra,0xfffff
    80002b4c:	3d4080e7          	jalr	980(ra) # 80001f1c <panic>

0000000080002b50 <kfree>:
    80002b50:	fe010113          	addi	sp,sp,-32
    80002b54:	00813823          	sd	s0,16(sp)
    80002b58:	00113c23          	sd	ra,24(sp)
    80002b5c:	00913423          	sd	s1,8(sp)
    80002b60:	02010413          	addi	s0,sp,32
    80002b64:	03451793          	slli	a5,a0,0x34
    80002b68:	04079c63          	bnez	a5,80002bc0 <kfree+0x70>
    80002b6c:	00003797          	auipc	a5,0x3
    80002b70:	a9478793          	addi	a5,a5,-1388 # 80005600 <end>
    80002b74:	00050493          	mv	s1,a0
    80002b78:	04f56463          	bltu	a0,a5,80002bc0 <kfree+0x70>
    80002b7c:	01100793          	li	a5,17
    80002b80:	01b79793          	slli	a5,a5,0x1b
    80002b84:	02f57e63          	bgeu	a0,a5,80002bc0 <kfree+0x70>
    80002b88:	00001637          	lui	a2,0x1
    80002b8c:	00100593          	li	a1,1
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	478080e7          	jalr	1144(ra) # 80003008 <__memset>
    80002b98:	00001797          	auipc	a5,0x1
    80002b9c:	7f878793          	addi	a5,a5,2040 # 80004390 <kmem>
    80002ba0:	0007b703          	ld	a4,0(a5)
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00e4b023          	sd	a4,0(s1)
    80002bb0:	0097b023          	sd	s1,0(a5)
    80002bb4:	00813483          	ld	s1,8(sp)
    80002bb8:	02010113          	addi	sp,sp,32
    80002bbc:	00008067          	ret
    80002bc0:	00001517          	auipc	a0,0x1
    80002bc4:	5d050513          	addi	a0,a0,1488 # 80004190 <digits+0x18>
    80002bc8:	fffff097          	auipc	ra,0xfffff
    80002bcc:	354080e7          	jalr	852(ra) # 80001f1c <panic>

0000000080002bd0 <kalloc>:
    80002bd0:	fe010113          	addi	sp,sp,-32
    80002bd4:	00813823          	sd	s0,16(sp)
    80002bd8:	00913423          	sd	s1,8(sp)
    80002bdc:	00113c23          	sd	ra,24(sp)
    80002be0:	02010413          	addi	s0,sp,32
    80002be4:	00001797          	auipc	a5,0x1
    80002be8:	7ac78793          	addi	a5,a5,1964 # 80004390 <kmem>
    80002bec:	0007b483          	ld	s1,0(a5)
    80002bf0:	02048063          	beqz	s1,80002c10 <kalloc+0x40>
    80002bf4:	0004b703          	ld	a4,0(s1)
    80002bf8:	00001637          	lui	a2,0x1
    80002bfc:	00500593          	li	a1,5
    80002c00:	00048513          	mv	a0,s1
    80002c04:	00e7b023          	sd	a4,0(a5)
    80002c08:	00000097          	auipc	ra,0x0
    80002c0c:	400080e7          	jalr	1024(ra) # 80003008 <__memset>
    80002c10:	01813083          	ld	ra,24(sp)
    80002c14:	01013403          	ld	s0,16(sp)
    80002c18:	00048513          	mv	a0,s1
    80002c1c:	00813483          	ld	s1,8(sp)
    80002c20:	02010113          	addi	sp,sp,32
    80002c24:	00008067          	ret

0000000080002c28 <initlock>:
    80002c28:	ff010113          	addi	sp,sp,-16
    80002c2c:	00813423          	sd	s0,8(sp)
    80002c30:	01010413          	addi	s0,sp,16
    80002c34:	00813403          	ld	s0,8(sp)
    80002c38:	00b53423          	sd	a1,8(a0)
    80002c3c:	00052023          	sw	zero,0(a0)
    80002c40:	00053823          	sd	zero,16(a0)
    80002c44:	01010113          	addi	sp,sp,16
    80002c48:	00008067          	ret

0000000080002c4c <acquire>:
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00813823          	sd	s0,16(sp)
    80002c54:	00913423          	sd	s1,8(sp)
    80002c58:	00113c23          	sd	ra,24(sp)
    80002c5c:	01213023          	sd	s2,0(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	00050493          	mv	s1,a0
    80002c68:	10002973          	csrr	s2,sstatus
    80002c6c:	100027f3          	csrr	a5,sstatus
    80002c70:	ffd7f793          	andi	a5,a5,-3
    80002c74:	10079073          	csrw	sstatus,a5
    80002c78:	fffff097          	auipc	ra,0xfffff
    80002c7c:	8e4080e7          	jalr	-1820(ra) # 8000155c <mycpu>
    80002c80:	07852783          	lw	a5,120(a0)
    80002c84:	06078e63          	beqz	a5,80002d00 <acquire+0xb4>
    80002c88:	fffff097          	auipc	ra,0xfffff
    80002c8c:	8d4080e7          	jalr	-1836(ra) # 8000155c <mycpu>
    80002c90:	07852783          	lw	a5,120(a0)
    80002c94:	0004a703          	lw	a4,0(s1)
    80002c98:	0017879b          	addiw	a5,a5,1
    80002c9c:	06f52c23          	sw	a5,120(a0)
    80002ca0:	04071063          	bnez	a4,80002ce0 <acquire+0x94>
    80002ca4:	00100713          	li	a4,1
    80002ca8:	00070793          	mv	a5,a4
    80002cac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002cb0:	0007879b          	sext.w	a5,a5
    80002cb4:	fe079ae3          	bnez	a5,80002ca8 <acquire+0x5c>
    80002cb8:	0ff0000f          	fence
    80002cbc:	fffff097          	auipc	ra,0xfffff
    80002cc0:	8a0080e7          	jalr	-1888(ra) # 8000155c <mycpu>
    80002cc4:	01813083          	ld	ra,24(sp)
    80002cc8:	01013403          	ld	s0,16(sp)
    80002ccc:	00a4b823          	sd	a0,16(s1)
    80002cd0:	00013903          	ld	s2,0(sp)
    80002cd4:	00813483          	ld	s1,8(sp)
    80002cd8:	02010113          	addi	sp,sp,32
    80002cdc:	00008067          	ret
    80002ce0:	0104b903          	ld	s2,16(s1)
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	878080e7          	jalr	-1928(ra) # 8000155c <mycpu>
    80002cec:	faa91ce3          	bne	s2,a0,80002ca4 <acquire+0x58>
    80002cf0:	00001517          	auipc	a0,0x1
    80002cf4:	4a850513          	addi	a0,a0,1192 # 80004198 <digits+0x20>
    80002cf8:	fffff097          	auipc	ra,0xfffff
    80002cfc:	224080e7          	jalr	548(ra) # 80001f1c <panic>
    80002d00:	00195913          	srli	s2,s2,0x1
    80002d04:	fffff097          	auipc	ra,0xfffff
    80002d08:	858080e7          	jalr	-1960(ra) # 8000155c <mycpu>
    80002d0c:	00197913          	andi	s2,s2,1
    80002d10:	07252e23          	sw	s2,124(a0)
    80002d14:	f75ff06f          	j	80002c88 <acquire+0x3c>

0000000080002d18 <release>:
    80002d18:	fe010113          	addi	sp,sp,-32
    80002d1c:	00813823          	sd	s0,16(sp)
    80002d20:	00113c23          	sd	ra,24(sp)
    80002d24:	00913423          	sd	s1,8(sp)
    80002d28:	01213023          	sd	s2,0(sp)
    80002d2c:	02010413          	addi	s0,sp,32
    80002d30:	00052783          	lw	a5,0(a0)
    80002d34:	00079a63          	bnez	a5,80002d48 <release+0x30>
    80002d38:	00001517          	auipc	a0,0x1
    80002d3c:	46850513          	addi	a0,a0,1128 # 800041a0 <digits+0x28>
    80002d40:	fffff097          	auipc	ra,0xfffff
    80002d44:	1dc080e7          	jalr	476(ra) # 80001f1c <panic>
    80002d48:	01053903          	ld	s2,16(a0)
    80002d4c:	00050493          	mv	s1,a0
    80002d50:	fffff097          	auipc	ra,0xfffff
    80002d54:	80c080e7          	jalr	-2036(ra) # 8000155c <mycpu>
    80002d58:	fea910e3          	bne	s2,a0,80002d38 <release+0x20>
    80002d5c:	0004b823          	sd	zero,16(s1)
    80002d60:	0ff0000f          	fence
    80002d64:	0f50000f          	fence	iorw,ow
    80002d68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002d6c:	ffffe097          	auipc	ra,0xffffe
    80002d70:	7f0080e7          	jalr	2032(ra) # 8000155c <mycpu>
    80002d74:	100027f3          	csrr	a5,sstatus
    80002d78:	0027f793          	andi	a5,a5,2
    80002d7c:	04079a63          	bnez	a5,80002dd0 <release+0xb8>
    80002d80:	07852783          	lw	a5,120(a0)
    80002d84:	02f05e63          	blez	a5,80002dc0 <release+0xa8>
    80002d88:	fff7871b          	addiw	a4,a5,-1
    80002d8c:	06e52c23          	sw	a4,120(a0)
    80002d90:	00071c63          	bnez	a4,80002da8 <release+0x90>
    80002d94:	07c52783          	lw	a5,124(a0)
    80002d98:	00078863          	beqz	a5,80002da8 <release+0x90>
    80002d9c:	100027f3          	csrr	a5,sstatus
    80002da0:	0027e793          	ori	a5,a5,2
    80002da4:	10079073          	csrw	sstatus,a5
    80002da8:	01813083          	ld	ra,24(sp)
    80002dac:	01013403          	ld	s0,16(sp)
    80002db0:	00813483          	ld	s1,8(sp)
    80002db4:	00013903          	ld	s2,0(sp)
    80002db8:	02010113          	addi	sp,sp,32
    80002dbc:	00008067          	ret
    80002dc0:	00001517          	auipc	a0,0x1
    80002dc4:	40050513          	addi	a0,a0,1024 # 800041c0 <digits+0x48>
    80002dc8:	fffff097          	auipc	ra,0xfffff
    80002dcc:	154080e7          	jalr	340(ra) # 80001f1c <panic>
    80002dd0:	00001517          	auipc	a0,0x1
    80002dd4:	3d850513          	addi	a0,a0,984 # 800041a8 <digits+0x30>
    80002dd8:	fffff097          	auipc	ra,0xfffff
    80002ddc:	144080e7          	jalr	324(ra) # 80001f1c <panic>

0000000080002de0 <holding>:
    80002de0:	00052783          	lw	a5,0(a0)
    80002de4:	00079663          	bnez	a5,80002df0 <holding+0x10>
    80002de8:	00000513          	li	a0,0
    80002dec:	00008067          	ret
    80002df0:	fe010113          	addi	sp,sp,-32
    80002df4:	00813823          	sd	s0,16(sp)
    80002df8:	00913423          	sd	s1,8(sp)
    80002dfc:	00113c23          	sd	ra,24(sp)
    80002e00:	02010413          	addi	s0,sp,32
    80002e04:	01053483          	ld	s1,16(a0)
    80002e08:	ffffe097          	auipc	ra,0xffffe
    80002e0c:	754080e7          	jalr	1876(ra) # 8000155c <mycpu>
    80002e10:	01813083          	ld	ra,24(sp)
    80002e14:	01013403          	ld	s0,16(sp)
    80002e18:	40a48533          	sub	a0,s1,a0
    80002e1c:	00153513          	seqz	a0,a0
    80002e20:	00813483          	ld	s1,8(sp)
    80002e24:	02010113          	addi	sp,sp,32
    80002e28:	00008067          	ret

0000000080002e2c <push_off>:
    80002e2c:	fe010113          	addi	sp,sp,-32
    80002e30:	00813823          	sd	s0,16(sp)
    80002e34:	00113c23          	sd	ra,24(sp)
    80002e38:	00913423          	sd	s1,8(sp)
    80002e3c:	02010413          	addi	s0,sp,32
    80002e40:	100024f3          	csrr	s1,sstatus
    80002e44:	100027f3          	csrr	a5,sstatus
    80002e48:	ffd7f793          	andi	a5,a5,-3
    80002e4c:	10079073          	csrw	sstatus,a5
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	70c080e7          	jalr	1804(ra) # 8000155c <mycpu>
    80002e58:	07852783          	lw	a5,120(a0)
    80002e5c:	02078663          	beqz	a5,80002e88 <push_off+0x5c>
    80002e60:	ffffe097          	auipc	ra,0xffffe
    80002e64:	6fc080e7          	jalr	1788(ra) # 8000155c <mycpu>
    80002e68:	07852783          	lw	a5,120(a0)
    80002e6c:	01813083          	ld	ra,24(sp)
    80002e70:	01013403          	ld	s0,16(sp)
    80002e74:	0017879b          	addiw	a5,a5,1
    80002e78:	06f52c23          	sw	a5,120(a0)
    80002e7c:	00813483          	ld	s1,8(sp)
    80002e80:	02010113          	addi	sp,sp,32
    80002e84:	00008067          	ret
    80002e88:	0014d493          	srli	s1,s1,0x1
    80002e8c:	ffffe097          	auipc	ra,0xffffe
    80002e90:	6d0080e7          	jalr	1744(ra) # 8000155c <mycpu>
    80002e94:	0014f493          	andi	s1,s1,1
    80002e98:	06952e23          	sw	s1,124(a0)
    80002e9c:	fc5ff06f          	j	80002e60 <push_off+0x34>

0000000080002ea0 <pop_off>:
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00813023          	sd	s0,0(sp)
    80002ea8:	00113423          	sd	ra,8(sp)
    80002eac:	01010413          	addi	s0,sp,16
    80002eb0:	ffffe097          	auipc	ra,0xffffe
    80002eb4:	6ac080e7          	jalr	1708(ra) # 8000155c <mycpu>
    80002eb8:	100027f3          	csrr	a5,sstatus
    80002ebc:	0027f793          	andi	a5,a5,2
    80002ec0:	04079663          	bnez	a5,80002f0c <pop_off+0x6c>
    80002ec4:	07852783          	lw	a5,120(a0)
    80002ec8:	02f05a63          	blez	a5,80002efc <pop_off+0x5c>
    80002ecc:	fff7871b          	addiw	a4,a5,-1
    80002ed0:	06e52c23          	sw	a4,120(a0)
    80002ed4:	00071c63          	bnez	a4,80002eec <pop_off+0x4c>
    80002ed8:	07c52783          	lw	a5,124(a0)
    80002edc:	00078863          	beqz	a5,80002eec <pop_off+0x4c>
    80002ee0:	100027f3          	csrr	a5,sstatus
    80002ee4:	0027e793          	ori	a5,a5,2
    80002ee8:	10079073          	csrw	sstatus,a5
    80002eec:	00813083          	ld	ra,8(sp)
    80002ef0:	00013403          	ld	s0,0(sp)
    80002ef4:	01010113          	addi	sp,sp,16
    80002ef8:	00008067          	ret
    80002efc:	00001517          	auipc	a0,0x1
    80002f00:	2c450513          	addi	a0,a0,708 # 800041c0 <digits+0x48>
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	018080e7          	jalr	24(ra) # 80001f1c <panic>
    80002f0c:	00001517          	auipc	a0,0x1
    80002f10:	29c50513          	addi	a0,a0,668 # 800041a8 <digits+0x30>
    80002f14:	fffff097          	auipc	ra,0xfffff
    80002f18:	008080e7          	jalr	8(ra) # 80001f1c <panic>

0000000080002f1c <push_on>:
    80002f1c:	fe010113          	addi	sp,sp,-32
    80002f20:	00813823          	sd	s0,16(sp)
    80002f24:	00113c23          	sd	ra,24(sp)
    80002f28:	00913423          	sd	s1,8(sp)
    80002f2c:	02010413          	addi	s0,sp,32
    80002f30:	100024f3          	csrr	s1,sstatus
    80002f34:	100027f3          	csrr	a5,sstatus
    80002f38:	0027e793          	ori	a5,a5,2
    80002f3c:	10079073          	csrw	sstatus,a5
    80002f40:	ffffe097          	auipc	ra,0xffffe
    80002f44:	61c080e7          	jalr	1564(ra) # 8000155c <mycpu>
    80002f48:	07852783          	lw	a5,120(a0)
    80002f4c:	02078663          	beqz	a5,80002f78 <push_on+0x5c>
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	60c080e7          	jalr	1548(ra) # 8000155c <mycpu>
    80002f58:	07852783          	lw	a5,120(a0)
    80002f5c:	01813083          	ld	ra,24(sp)
    80002f60:	01013403          	ld	s0,16(sp)
    80002f64:	0017879b          	addiw	a5,a5,1
    80002f68:	06f52c23          	sw	a5,120(a0)
    80002f6c:	00813483          	ld	s1,8(sp)
    80002f70:	02010113          	addi	sp,sp,32
    80002f74:	00008067          	ret
    80002f78:	0014d493          	srli	s1,s1,0x1
    80002f7c:	ffffe097          	auipc	ra,0xffffe
    80002f80:	5e0080e7          	jalr	1504(ra) # 8000155c <mycpu>
    80002f84:	0014f493          	andi	s1,s1,1
    80002f88:	06952e23          	sw	s1,124(a0)
    80002f8c:	fc5ff06f          	j	80002f50 <push_on+0x34>

0000000080002f90 <pop_on>:
    80002f90:	ff010113          	addi	sp,sp,-16
    80002f94:	00813023          	sd	s0,0(sp)
    80002f98:	00113423          	sd	ra,8(sp)
    80002f9c:	01010413          	addi	s0,sp,16
    80002fa0:	ffffe097          	auipc	ra,0xffffe
    80002fa4:	5bc080e7          	jalr	1468(ra) # 8000155c <mycpu>
    80002fa8:	100027f3          	csrr	a5,sstatus
    80002fac:	0027f793          	andi	a5,a5,2
    80002fb0:	04078463          	beqz	a5,80002ff8 <pop_on+0x68>
    80002fb4:	07852783          	lw	a5,120(a0)
    80002fb8:	02f05863          	blez	a5,80002fe8 <pop_on+0x58>
    80002fbc:	fff7879b          	addiw	a5,a5,-1
    80002fc0:	06f52c23          	sw	a5,120(a0)
    80002fc4:	07853783          	ld	a5,120(a0)
    80002fc8:	00079863          	bnez	a5,80002fd8 <pop_on+0x48>
    80002fcc:	100027f3          	csrr	a5,sstatus
    80002fd0:	ffd7f793          	andi	a5,a5,-3
    80002fd4:	10079073          	csrw	sstatus,a5
    80002fd8:	00813083          	ld	ra,8(sp)
    80002fdc:	00013403          	ld	s0,0(sp)
    80002fe0:	01010113          	addi	sp,sp,16
    80002fe4:	00008067          	ret
    80002fe8:	00001517          	auipc	a0,0x1
    80002fec:	20050513          	addi	a0,a0,512 # 800041e8 <digits+0x70>
    80002ff0:	fffff097          	auipc	ra,0xfffff
    80002ff4:	f2c080e7          	jalr	-212(ra) # 80001f1c <panic>
    80002ff8:	00001517          	auipc	a0,0x1
    80002ffc:	1d050513          	addi	a0,a0,464 # 800041c8 <digits+0x50>
    80003000:	fffff097          	auipc	ra,0xfffff
    80003004:	f1c080e7          	jalr	-228(ra) # 80001f1c <panic>

0000000080003008 <__memset>:
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    80003014:	1a060e63          	beqz	a2,800031d0 <__memset+0x1c8>
    80003018:	40a007b3          	neg	a5,a0
    8000301c:	0077f793          	andi	a5,a5,7
    80003020:	00778693          	addi	a3,a5,7
    80003024:	00b00813          	li	a6,11
    80003028:	0ff5f593          	andi	a1,a1,255
    8000302c:	fff6071b          	addiw	a4,a2,-1
    80003030:	1b06e663          	bltu	a3,a6,800031dc <__memset+0x1d4>
    80003034:	1cd76463          	bltu	a4,a3,800031fc <__memset+0x1f4>
    80003038:	1a078e63          	beqz	a5,800031f4 <__memset+0x1ec>
    8000303c:	00b50023          	sb	a1,0(a0)
    80003040:	00100713          	li	a4,1
    80003044:	1ae78463          	beq	a5,a4,800031ec <__memset+0x1e4>
    80003048:	00b500a3          	sb	a1,1(a0)
    8000304c:	00200713          	li	a4,2
    80003050:	1ae78a63          	beq	a5,a4,80003204 <__memset+0x1fc>
    80003054:	00b50123          	sb	a1,2(a0)
    80003058:	00300713          	li	a4,3
    8000305c:	18e78463          	beq	a5,a4,800031e4 <__memset+0x1dc>
    80003060:	00b501a3          	sb	a1,3(a0)
    80003064:	00400713          	li	a4,4
    80003068:	1ae78263          	beq	a5,a4,8000320c <__memset+0x204>
    8000306c:	00b50223          	sb	a1,4(a0)
    80003070:	00500713          	li	a4,5
    80003074:	1ae78063          	beq	a5,a4,80003214 <__memset+0x20c>
    80003078:	00b502a3          	sb	a1,5(a0)
    8000307c:	00700713          	li	a4,7
    80003080:	18e79e63          	bne	a5,a4,8000321c <__memset+0x214>
    80003084:	00b50323          	sb	a1,6(a0)
    80003088:	00700e93          	li	t4,7
    8000308c:	00859713          	slli	a4,a1,0x8
    80003090:	00e5e733          	or	a4,a1,a4
    80003094:	01059e13          	slli	t3,a1,0x10
    80003098:	01c76e33          	or	t3,a4,t3
    8000309c:	01859313          	slli	t1,a1,0x18
    800030a0:	006e6333          	or	t1,t3,t1
    800030a4:	02059893          	slli	a7,a1,0x20
    800030a8:	40f60e3b          	subw	t3,a2,a5
    800030ac:	011368b3          	or	a7,t1,a7
    800030b0:	02859813          	slli	a6,a1,0x28
    800030b4:	0108e833          	or	a6,a7,a6
    800030b8:	03059693          	slli	a3,a1,0x30
    800030bc:	003e589b          	srliw	a7,t3,0x3
    800030c0:	00d866b3          	or	a3,a6,a3
    800030c4:	03859713          	slli	a4,a1,0x38
    800030c8:	00389813          	slli	a6,a7,0x3
    800030cc:	00f507b3          	add	a5,a0,a5
    800030d0:	00e6e733          	or	a4,a3,a4
    800030d4:	000e089b          	sext.w	a7,t3
    800030d8:	00f806b3          	add	a3,a6,a5
    800030dc:	00e7b023          	sd	a4,0(a5)
    800030e0:	00878793          	addi	a5,a5,8
    800030e4:	fed79ce3          	bne	a5,a3,800030dc <__memset+0xd4>
    800030e8:	ff8e7793          	andi	a5,t3,-8
    800030ec:	0007871b          	sext.w	a4,a5
    800030f0:	01d787bb          	addw	a5,a5,t4
    800030f4:	0ce88e63          	beq	a7,a4,800031d0 <__memset+0x1c8>
    800030f8:	00f50733          	add	a4,a0,a5
    800030fc:	00b70023          	sb	a1,0(a4)
    80003100:	0017871b          	addiw	a4,a5,1
    80003104:	0cc77663          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003108:	00e50733          	add	a4,a0,a4
    8000310c:	00b70023          	sb	a1,0(a4)
    80003110:	0027871b          	addiw	a4,a5,2
    80003114:	0ac77e63          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003118:	00e50733          	add	a4,a0,a4
    8000311c:	00b70023          	sb	a1,0(a4)
    80003120:	0037871b          	addiw	a4,a5,3
    80003124:	0ac77663          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003128:	00e50733          	add	a4,a0,a4
    8000312c:	00b70023          	sb	a1,0(a4)
    80003130:	0047871b          	addiw	a4,a5,4
    80003134:	08c77e63          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003138:	00e50733          	add	a4,a0,a4
    8000313c:	00b70023          	sb	a1,0(a4)
    80003140:	0057871b          	addiw	a4,a5,5
    80003144:	08c77663          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003148:	00e50733          	add	a4,a0,a4
    8000314c:	00b70023          	sb	a1,0(a4)
    80003150:	0067871b          	addiw	a4,a5,6
    80003154:	06c77e63          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003158:	00e50733          	add	a4,a0,a4
    8000315c:	00b70023          	sb	a1,0(a4)
    80003160:	0077871b          	addiw	a4,a5,7
    80003164:	06c77663          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003168:	00e50733          	add	a4,a0,a4
    8000316c:	00b70023          	sb	a1,0(a4)
    80003170:	0087871b          	addiw	a4,a5,8
    80003174:	04c77e63          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003178:	00e50733          	add	a4,a0,a4
    8000317c:	00b70023          	sb	a1,0(a4)
    80003180:	0097871b          	addiw	a4,a5,9
    80003184:	04c77663          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003188:	00e50733          	add	a4,a0,a4
    8000318c:	00b70023          	sb	a1,0(a4)
    80003190:	00a7871b          	addiw	a4,a5,10
    80003194:	02c77e63          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    80003198:	00e50733          	add	a4,a0,a4
    8000319c:	00b70023          	sb	a1,0(a4)
    800031a0:	00b7871b          	addiw	a4,a5,11
    800031a4:	02c77663          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    800031a8:	00e50733          	add	a4,a0,a4
    800031ac:	00b70023          	sb	a1,0(a4)
    800031b0:	00c7871b          	addiw	a4,a5,12
    800031b4:	00c77e63          	bgeu	a4,a2,800031d0 <__memset+0x1c8>
    800031b8:	00e50733          	add	a4,a0,a4
    800031bc:	00b70023          	sb	a1,0(a4)
    800031c0:	00d7879b          	addiw	a5,a5,13
    800031c4:	00c7f663          	bgeu	a5,a2,800031d0 <__memset+0x1c8>
    800031c8:	00f507b3          	add	a5,a0,a5
    800031cc:	00b78023          	sb	a1,0(a5)
    800031d0:	00813403          	ld	s0,8(sp)
    800031d4:	01010113          	addi	sp,sp,16
    800031d8:	00008067          	ret
    800031dc:	00b00693          	li	a3,11
    800031e0:	e55ff06f          	j	80003034 <__memset+0x2c>
    800031e4:	00300e93          	li	t4,3
    800031e8:	ea5ff06f          	j	8000308c <__memset+0x84>
    800031ec:	00100e93          	li	t4,1
    800031f0:	e9dff06f          	j	8000308c <__memset+0x84>
    800031f4:	00000e93          	li	t4,0
    800031f8:	e95ff06f          	j	8000308c <__memset+0x84>
    800031fc:	00000793          	li	a5,0
    80003200:	ef9ff06f          	j	800030f8 <__memset+0xf0>
    80003204:	00200e93          	li	t4,2
    80003208:	e85ff06f          	j	8000308c <__memset+0x84>
    8000320c:	00400e93          	li	t4,4
    80003210:	e7dff06f          	j	8000308c <__memset+0x84>
    80003214:	00500e93          	li	t4,5
    80003218:	e75ff06f          	j	8000308c <__memset+0x84>
    8000321c:	00600e93          	li	t4,6
    80003220:	e6dff06f          	j	8000308c <__memset+0x84>

0000000080003224 <__memmove>:
    80003224:	ff010113          	addi	sp,sp,-16
    80003228:	00813423          	sd	s0,8(sp)
    8000322c:	01010413          	addi	s0,sp,16
    80003230:	0e060863          	beqz	a2,80003320 <__memmove+0xfc>
    80003234:	fff6069b          	addiw	a3,a2,-1
    80003238:	0006881b          	sext.w	a6,a3
    8000323c:	0ea5e863          	bltu	a1,a0,8000332c <__memmove+0x108>
    80003240:	00758713          	addi	a4,a1,7
    80003244:	00a5e7b3          	or	a5,a1,a0
    80003248:	40a70733          	sub	a4,a4,a0
    8000324c:	0077f793          	andi	a5,a5,7
    80003250:	00f73713          	sltiu	a4,a4,15
    80003254:	00174713          	xori	a4,a4,1
    80003258:	0017b793          	seqz	a5,a5
    8000325c:	00e7f7b3          	and	a5,a5,a4
    80003260:	10078863          	beqz	a5,80003370 <__memmove+0x14c>
    80003264:	00900793          	li	a5,9
    80003268:	1107f463          	bgeu	a5,a6,80003370 <__memmove+0x14c>
    8000326c:	0036581b          	srliw	a6,a2,0x3
    80003270:	fff8081b          	addiw	a6,a6,-1
    80003274:	02081813          	slli	a6,a6,0x20
    80003278:	01d85893          	srli	a7,a6,0x1d
    8000327c:	00858813          	addi	a6,a1,8
    80003280:	00058793          	mv	a5,a1
    80003284:	00050713          	mv	a4,a0
    80003288:	01088833          	add	a6,a7,a6
    8000328c:	0007b883          	ld	a7,0(a5)
    80003290:	00878793          	addi	a5,a5,8
    80003294:	00870713          	addi	a4,a4,8
    80003298:	ff173c23          	sd	a7,-8(a4)
    8000329c:	ff0798e3          	bne	a5,a6,8000328c <__memmove+0x68>
    800032a0:	ff867713          	andi	a4,a2,-8
    800032a4:	02071793          	slli	a5,a4,0x20
    800032a8:	0207d793          	srli	a5,a5,0x20
    800032ac:	00f585b3          	add	a1,a1,a5
    800032b0:	40e686bb          	subw	a3,a3,a4
    800032b4:	00f507b3          	add	a5,a0,a5
    800032b8:	06e60463          	beq	a2,a4,80003320 <__memmove+0xfc>
    800032bc:	0005c703          	lbu	a4,0(a1)
    800032c0:	00e78023          	sb	a4,0(a5)
    800032c4:	04068e63          	beqz	a3,80003320 <__memmove+0xfc>
    800032c8:	0015c603          	lbu	a2,1(a1)
    800032cc:	00100713          	li	a4,1
    800032d0:	00c780a3          	sb	a2,1(a5)
    800032d4:	04e68663          	beq	a3,a4,80003320 <__memmove+0xfc>
    800032d8:	0025c603          	lbu	a2,2(a1)
    800032dc:	00200713          	li	a4,2
    800032e0:	00c78123          	sb	a2,2(a5)
    800032e4:	02e68e63          	beq	a3,a4,80003320 <__memmove+0xfc>
    800032e8:	0035c603          	lbu	a2,3(a1)
    800032ec:	00300713          	li	a4,3
    800032f0:	00c781a3          	sb	a2,3(a5)
    800032f4:	02e68663          	beq	a3,a4,80003320 <__memmove+0xfc>
    800032f8:	0045c603          	lbu	a2,4(a1)
    800032fc:	00400713          	li	a4,4
    80003300:	00c78223          	sb	a2,4(a5)
    80003304:	00e68e63          	beq	a3,a4,80003320 <__memmove+0xfc>
    80003308:	0055c603          	lbu	a2,5(a1)
    8000330c:	00500713          	li	a4,5
    80003310:	00c782a3          	sb	a2,5(a5)
    80003314:	00e68663          	beq	a3,a4,80003320 <__memmove+0xfc>
    80003318:	0065c703          	lbu	a4,6(a1)
    8000331c:	00e78323          	sb	a4,6(a5)
    80003320:	00813403          	ld	s0,8(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret
    8000332c:	02061713          	slli	a4,a2,0x20
    80003330:	02075713          	srli	a4,a4,0x20
    80003334:	00e587b3          	add	a5,a1,a4
    80003338:	f0f574e3          	bgeu	a0,a5,80003240 <__memmove+0x1c>
    8000333c:	02069613          	slli	a2,a3,0x20
    80003340:	02065613          	srli	a2,a2,0x20
    80003344:	fff64613          	not	a2,a2
    80003348:	00e50733          	add	a4,a0,a4
    8000334c:	00c78633          	add	a2,a5,a2
    80003350:	fff7c683          	lbu	a3,-1(a5)
    80003354:	fff78793          	addi	a5,a5,-1
    80003358:	fff70713          	addi	a4,a4,-1
    8000335c:	00d70023          	sb	a3,0(a4)
    80003360:	fec798e3          	bne	a5,a2,80003350 <__memmove+0x12c>
    80003364:	00813403          	ld	s0,8(sp)
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00008067          	ret
    80003370:	02069713          	slli	a4,a3,0x20
    80003374:	02075713          	srli	a4,a4,0x20
    80003378:	00170713          	addi	a4,a4,1
    8000337c:	00e50733          	add	a4,a0,a4
    80003380:	00050793          	mv	a5,a0
    80003384:	0005c683          	lbu	a3,0(a1)
    80003388:	00178793          	addi	a5,a5,1
    8000338c:	00158593          	addi	a1,a1,1
    80003390:	fed78fa3          	sb	a3,-1(a5)
    80003394:	fee798e3          	bne	a5,a4,80003384 <__memmove+0x160>
    80003398:	f89ff06f          	j	80003320 <__memmove+0xfc>
	...
