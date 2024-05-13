clc;clear all
c=imread('caribou.jpg');
cd=double(c)
imshow(cd)

c2=im2double(c)
c3=uint8(255*c2)
