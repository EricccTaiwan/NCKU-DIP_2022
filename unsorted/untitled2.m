clc;clear all
k=imread('autumn.tif');
imshow(k)

size(k)
%size()會顯示三像數值:列數、行數、平面數(RGB=3)


    k(100,200,:) 
%k(x座標,y座標,平面數)


     impixel(k,200,100)
 %impixel(k,y座標,x座標)