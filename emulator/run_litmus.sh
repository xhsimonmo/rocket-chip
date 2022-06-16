# echo "//////////////////////////////////////////////////////////////////////////////////////////////" >> run_sb_lb_mp.log
# echo "///////////DualCoreConfig SB ///////////////" >> run_sb_lb_mp.log
# time ./emulator-freechips.rocketchip.system-freechips.rocketchip.system.DualCoreConfig /home/shaoxin/FYP/riscv-tests/benchmarks/SB.litmus.riscv >> run_sb_lb_mp.log
# echo "//////////DualCoreConfig LB///////////////" >> run_sb_lb_mp.log
# time ./emulator-freechips.rocketchip.system-freechips.rocketchip.system.DualCoreConfig /home/shaoxin/FYP/riscv-tests/benchmarks/LB.litmus.riscv >> run_sb_lb_mp.log
# echo "///////////DualCoreConfig MP///////////////" >> run_sb_lb_mp.log
# time ./emulator-freechips.rocketchip.system-freechips.rocketchip.system.DualCoreConfig /home/shaoxin/FYP/riscv-tests/benchmarks/MP.litmus.riscv >> run_sb_lb_mp.log

# echo "//////////////////////////////////////////////////////////////////////////////////////////////" >> run_sb_lb_mp.log
# echo "///////////DualSmallConfig SB ///////////////" >> run_sb_lb_mp.log
# time ./emulator-freechips.rocketchip.system-freechips.rocketchip.system.DualSmallConfig /home/shaoxin/FYP/riscv-tests/benchmarks/SB.litmus.riscv >> run_sb_lb_mp.log
# echo "//////////DualSmallConfig LB///////////////" >> run_sb_lb_mp.log
# time ./emulator-freechips.rocketchip.system-freechips.rocketchip.system.DualSmallConfig /home/shaoxin/FYP/riscv-tests/benchmarks/LB.litmus.riscv >> run_sb_lb_mp.log
# echo "///////////DualSmallConfig MP///////////////" >> run_sb_lb_mp.log
# time ./emulator-freechips.rocketchip.system-freechips.rocketchip.system.DualSmallConfig /home/shaoxin/FYP/riscv-tests/benchmarks/MP.litmus.riscv >> run_sb_lb_mp.log

# echo "//// end of test/////" >> run_sb_lb_mp.log
FILES=" ./DualCoreConfig-v0
./DualCoreConfig-v1
./DualCoreConfig-v2 "
for f in $FILES
do
    echo "//////////////////////////////////////////////////////////////////////////////////////////////" >> run_sb_lb_mp.log
    echo "///////////$f SB ///////////////" >> run_sb_lb_mp.log
    time $f /home/shaoxin/FYP/riscv-tests/benchmarks/SB.litmus.riscv >> run_sb_lb_mp.log
    echo "//////////$f LB///////////////" >> run_sb_lb_mp.log
    time $f /home/shaoxin/FYP/riscv-tests/benchmarks/LB.litmus.riscv >> run_sb_lb_mp.log
    echo "///////////$f MP///////////////" >> run_sb_lb_mp.log
    time $f /home/shaoxin/FYP/riscv-tests/benchmarks/MP.litmus.riscv >> run_sb_lb_mp.log
    echo "///////////$f SB-forward///////////////" >> run_sb_lb_mp.log
    time $f /home/shaoxin/FYP/riscv-tests/benchmarks/SB_forward.litmus.riscv >> run_sb_lb_mp.log

done



echo "//// end of test/////" >> run_sb_lb_mp.log





