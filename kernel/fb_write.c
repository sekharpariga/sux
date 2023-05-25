#include "fb_write.h"
#include "configs.h"
#include "fb_cursor_mv.h"

#define WRITE_FG_COLOR  4
#define WRITE_BG_COLOR  0

unsigned int fb_char_write(unsigned int pos, char c, unsigned char fg, unsigned char bg)
{
    fb[pos] = c;
    fb[pos+1] = (((fg & 0x0F) << 4) | (bg & 0x0F));

    cursor_position += 1;
    fb_cursor_mv(cursor_position);
}

void fb_write(char *buf, unsigned int len)
{
    for(unsinged int i = 0; i < len; i++)
        fb_char_write(cursor_position+i, buf[i], WRITE_FG_COLOR, WRITE_BG_COLOR);
}
