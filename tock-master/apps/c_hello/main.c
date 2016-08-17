/* vim: set sw=2 expandtab tw=80: */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <firestorm.h>

extern int square(int a);

//int test=square(5);


char hello[100]; //= "Hello World!\r\n";
//sprintf(hello, "hello... %d", 5); 

void nop(int x, int y, int z, void *ud) {}

void main() {
  putnstr_async(hello, sizeof(hello), nop, NULL);
}

