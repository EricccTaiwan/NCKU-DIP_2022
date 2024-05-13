clc;clear all
k = magic(5)
k_1=[-1 -1 0;-1 0 1;0 1 1] %空間濾波
k_2 = [1 1 0;1 0 -1;0 -1 -1]%空間旋積
k_linear=imfilter(k,k_1,'same')
k_conv=imfilter(k,k_2,'same')
