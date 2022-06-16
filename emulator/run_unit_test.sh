# FILES=" ./DualCoreConfig-v1
# ./DualCoreConfig-v2 "
FILES=" ./DualCoreConfig-v0"
for f in $FILES
do
    echo "" &>> unit_test.log
    echo "////////// Running $f ///////////" &>> unit_test.log
    echo "dhrystone.riscv test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/dhrystone.riscv &>> unit_test.log
    echo "mm test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/mm.riscv &>> unit_test.log
    echo "vvadd test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/vvadd.riscv &>> unit_test.log
    echo "mt-vvadd test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/mt-vvadd.riscv &>> unit_test.log
    echo "mt-matmul test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/mt-matmul.riscv &>> unit_test.log
    echo "multiply test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/multiply.riscv &>> unit_test.log

    echo "qsort test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/qsort.riscv &>> unit_test.log
    echo "rsort test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/rsort.riscv &>> unit_test.log
    echo "median test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/median.riscv &>> unit_test.log
    echo "tower test" &>> unit_test.log
	./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/tower.riscv &>> unit_test.log
    # echo "pmp test" &>> unit_test.log
	# ./$f  /home/shaoxin/FYP/riscv-tests/benchmarks/pmp.riscv &>> unit_test.log

    echo "///// end of $f test ////////////" &>> unit_test.log
done

