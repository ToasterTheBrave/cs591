unsigned long get_sp(void) {
   __asm__("movl $0xb, %eax");
}
