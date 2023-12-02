#ifndef INCLUDE_IO_H
#define INCLUDE_IO_H

/*
 * outb sends the given data to given I/O port
 *
 * @param port the I/O port to send the data
 * @param data the data to send to I/O port
 *
 */

void outb(unsigned short port, unsigned char data);

#endif /* INCLUDE_IO_H */
