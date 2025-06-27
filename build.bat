avr-gcc -mmcu=atmega328p -Os -DF_CPU=16000000UL -c blink.c -o blink.o
avr-gcc -mmcu=atmega328p -Os blink.o -o blink.elf
avr-objcopy -O ihex -R .eeprom blink.elf blink.hex
avrdude -c arduino -p m328p -P COM7 -b 115200 -D -U flash:w:blink.hex