clc;clear all;close all
t = imread('tire.tif');
t2 = double(t)/255;
t2 =hw2(t2,[0 .25 .5 .75 1], [0 .75 .5 .25 1]);
imshow(t2)
figure,plot(t,t2,'.'),axis tight;

