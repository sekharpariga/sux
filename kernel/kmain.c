#include "fb_write.h"
#include "configs.h"


unsigned int sum_of_three(unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    return arg1 + arg2 + arg3;
}

char *buf = "SEKHAR PARIGA";
unsigned int len = 13;

void c_entry(unsigned int arg1, unsigned int arg2, unsigned int arg3)
{
    sum_of_three(arg1, arg2, arg3);
    fb_write(buf, len);
}
