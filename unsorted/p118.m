clc;clear all
k=imread('pelicans.tif');
id=[0 0 0 ; 0 1 0;0 0 0];
f = fspecial('average');

s=3*id-2*f;
subplot(1,3,1)
imshow(imfilter(k,s))
title('s小，銳利低,3*id-2*f,屬於high-boost','FontSize',15)

u=6*id-5*f;
subplot(1,3,2)
imshow(imfilter(k,u))
title('s大，銳利高,6*id-5*f,屬於high-boost','FontSize',15)

l=1.25*id-0.25*f;
subplot(1,3,3)
imshow(imfilter(k,l))
title('s/k小，1.25*id-0.25*f','FontSize',15)