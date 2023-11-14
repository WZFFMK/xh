rm -rf nohup.out
cp lib/temp /data/tempp
cp lib/tempaq /data/tempp2
chmod 777 /data/tempp*
# 获取 Android 版本号
android_version=$(getprop ro.build.version.release)

settings put global block_untrusted_touches 0

# 判断版本号是否以 "9" 开头
if [[ "$android_version" == 9* ]]; then
    /data/tempp
else
    rm -rf nohup.out
nohup /data/tempp
cat nohup.out
fi

