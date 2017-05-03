# Solar-eclipse-DSLR-tethered-program-for-Nikon

Captures a series of images with different shutter speed in burst mode using Raspberry Pi3.
https://www.youtube.com/watch?v=BVfxZ-fDLLo

######### eclip.sh ##################
可設定一組 (1張至最多 10 張) 不同快門速度的連拍, 並可輸入重複多少次此一組(排程)拍攝。

######## SolarEclip.sh ##############
1. 於指定時間啟動 A 組的曝光程序 (如: 於 1:43:25 啟動), 直至完成指定的重複次數, 或直至指定的運作時間 (如: 指定A組曝光程序運作 30 秒便完成)。
2. 停頓 (使用者指定的秒數, 最少3秒)
3. 啟動 B 組的曝光程序, 直至完成指定的重複次數, 或直至指定的運作時間。
4. 停頓 (使用者指定的秒數,  最少3秒 )
5. 啟動 C 組的曝光程序, 直至完成指定的重複次數, 或直至指定的運作時間。
6. 完成整個日食 DSLR 曝光程式。
每組 (A,B,C) 需獨立輸入 10 個或最少1個連續拍攝的快門速度和 iso, 快門之間的停頓時間( 間距以秒為單位),  每組的重複次數, DSLR 型號。
#####################################
D810A 每分鐘27張
D600 每分鐘50張
D5300 每分鐘42張
