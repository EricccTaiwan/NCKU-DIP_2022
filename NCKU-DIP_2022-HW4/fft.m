clc;clear all
a = [ 2 3 4 5];
a_f=fft(a')
b = [100 200 100 200 ;
         100 200 100 200 ; 
         100 200 100 200 ;
         100 200 100 200 ;];
b_fft2=fft2(b)