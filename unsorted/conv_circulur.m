clc;clear all
x=[4 3 2 1]; %跟課本相反要倒過來，左邊高次項
y=[8 7 6 5]; %跟課本相反要倒過來
z=[1 0 0 0 1];
ans=conv(x,y);
ans_1 = conv(ans,z);

x=[1 2 3 4]; 
y=[5 6 7 8]; 
z=[1 0 0 0 1];
ans=conv(x,y)
ans_2 = conv(ans,z)