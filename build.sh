nasm -I ./boot/include -o mbr.bin  ./boot/mbr.s
nasm -I ./boot/include -o loader.bin  ./boot/loader.s

dd if=./mbr.bin of=./hd60M.img bs=512 count=1 conv=notrunc
dd if=./loader.bin of=./hd60M.img bs=512 count=1 seek=2 conv=notrunc