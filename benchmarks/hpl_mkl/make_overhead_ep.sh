#!/bin/sh
for i in `seq 1 10`; do /home/vince/research/linux-kernel/linux-4.1.5/tools/perf/perf stat -a -e cycles,instructions,cache-misses,cache-references,uncore_imc_0/cas_count_read/,uncore_imc_0/cas_count_write/,power/energy-cores/,power/energy-pkg/,power/energy-ram/ mpiexec.mpich -np 4 ./xhpl_intel64 2> hpl_mkl.perf.$i 1> hpl_mkl.stdio.$i ; echo $i; done
