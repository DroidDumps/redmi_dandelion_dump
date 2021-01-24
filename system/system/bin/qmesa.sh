#!/system/bin/sh

echo 0 > /sys/module/msm_poweroff/parameters/download_mode

time=$(date +%y%m%d_%H:%M:%S)
for i in $(seq 10); do
    cd /data/local/tmp; /vendor/bin/QMESA_32 -numThreads 8 -secs 864000 >&1 > /data/local/tmp/infoDDR.txt
done
