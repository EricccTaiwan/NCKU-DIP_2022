clc;clear all;close all
[index,colormap]=imread('emu.tif')
subplot(2,1,1)
imshow(index,colormap),impixelinfo
title('有色譜')
subplot(2,1,2)
imshow(index),impixelinfo
title('沒有色譜，視為0~1灰階')