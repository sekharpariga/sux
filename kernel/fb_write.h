#ifndef _FB_WRITE_H
#define _FB_WRITE_H

/*
 * write to framebuffer/screen char c along with the bg and fb colours
 *
 * color        value
 * black        0
 * blue         1
 * green        2
 * cyan         3
 * red          4
 * magenta      5
 * brown        6
 * light gray   7
 * dark gray    8
 * light blue   9
 * light green  10
 * light cyan   11
 * light red    12
 * light magenta 13
 * light brown  14
 * white        15
 *
 */

void fb_char_write(unsigned int po, char c, unsigned char fg, unsigned char bg);
void fb_write(char *buf, unsigned int len);

#endif /* _FB_WRITE_H */
