clc;clear all
a1=[100 200 100 200;
      100 200 100 200;
      100 200 100 200;
      100 200 100 200];
a2 = [ -50 50 -50 50;
             -50 50 -50 50;
             -50 50 -50 50;
             -50 50 -50 50];
A1=fft2(a1)
A2=fft2(a2)