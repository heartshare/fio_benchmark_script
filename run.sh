#!/bin/bash
#Mode can be randwrite randread randrw
MODE={MODE:randwrite}


./bench_fio --target /data -b 4k 16k 64k 1M --type directory -s 1G -m $MODE --readmix 90 --iodepth 1 8 16 32 --numjobs 1 8 16 32 -o /data/output
