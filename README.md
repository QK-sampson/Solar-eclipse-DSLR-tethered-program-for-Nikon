# Solar-eclipse-DSLR-tethered-program-for-Nikon
#
# Captures a series of images with different shutter speed in burst mode using Raspberry Pi3.
# https://www.youtube.com/watch?v=BVfxZ-fDLLo
# http://img.gg/2EpkNYN
# eclip.sh ##################
# Captures a series of images with different shutter speed (bracketing) in burst mode
# $1 to $10: shutter speed for a set of 10 exposures (i.e. 1/4000,1/2000)
# $11: Interval in second
# $12: Number of cycles for the set of 10 exposures
# $13: iso (i.e. 200, 400)
# $14: Camera name (D600, D810A or D5300)
# $15: No. of frames would be taken for the set of exposures (Null => 10 frames)
# 可設定一組 (1張至最多 10 張) 不同快門速度的連拍, 並可輸入重複多少次此一組(排程)拍攝。
# Usage example: 
# The set of 10 exposures (interval = 0s) would be repeat for 6 times at iso 200 (using D810A)
# ./eclip.sh 1/4000 1/8000 1/8000 1/4000 1/2000 1/500 1/125 1/30 1/15 1/8 0 6 200 D810A
#
# SolarEclip.sh ##############
# Three sets (A, B and C set) of "eclip.sh" bracketing exposures would be possisble.
# Period of time (i.e. 60s) for running each sets could be set.
# Interval between sets is needed
# usage example:
# ./SolarEclip.sh 1/2000 1/4000 1/500 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 200 D810A 3 1/2000 1/4000 1/2000 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 400 10 1/2000 1/4000 1/2000 1/2000 1/500 1/125 1/30 1/8 1/4 1/2 0.5 10 800 10 30s 5 60s 5 30s
#
# Burst rate for different cameras
# 27 frames per minute for D810A
# 50 frames per minute for D600
# 42 frames per minute for D5300
# 1. 於指定時間啟動 A 組的曝光程序 (如: 於 1:43:25 啟動), 直至完成指定的重複次數, 或直至指定的運作時間 (如: 指定A組曝光程序運作 30 秒便完成)。
# 2. 停頓 (使用者指定的秒數, 最少3秒)
# 3. 啟動 B 組的曝光程序, 直至完成指定的重複次數, 或直至指定的運作時間。
# 4. 停頓 (使用者指定的秒數,  最少3秒 )
# 5. 啟動 C 組的曝光程序, 直至完成指定的重複次數, 或直至指定的運作時間。
# 6. 完成整個日食 DSLR 曝光程式。
# 每組 (A,B,C) 需獨立輸入 10 個或最少1個連續拍攝的快門速度和 iso, 快門之間的停頓時間( 間距以秒為單位),  每組的重複次數, DSLR 型號。
#
# D810A 每分鐘27張
# D600 每分鐘50張
# D5300 每分鐘42張
