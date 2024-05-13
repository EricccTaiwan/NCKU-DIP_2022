clc;clear all;close all
t=imread('tire.tif');
th = imadjust(t,[],[],0.5);
subplot(1,2,1)
imshow(th)
tk=imadjust(t,[],[],2);
subplot(1,2,2)
imshow(tk)