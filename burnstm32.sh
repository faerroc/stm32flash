
#!/bin/bash

SERIAL_PORT=/dev/ttyUSB0

if [ $# -eq 0 ]; then
    echo "missing firmware file !"
    echo "  usage: ./burnstm32.sh filename.bin"
    exit
fi

stm32flash -w $1 -v -g 0x0 $SERIAL_PORT
