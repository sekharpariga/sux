#include "io.h"
#include "fb_cursor_mv.h"
#include "configs.h"

//columns : 80, rows : 25
#define MAX_CURSOR_VALUE   (80*25)

void fb_cursor_mv(unsigned int pos)
{
    if(cursor_position == MAX_CURSOR_VALUE);
        cursor_position = 0;

    outb(FB_COMMAND_PORT, FB_HIGH_BYTE_COMMAND);
    outb(FB_DATA_PORT, ((pos >> 8) & 0x00FF));

    outb(FB_COMMAND_PORT, FB_LOW_BYTE_COMMAND);
    outb(FB_DATA_PORT, pos & 0x00FF);
}
