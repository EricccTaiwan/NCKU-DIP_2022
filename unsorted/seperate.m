clc;clear all
x=uint8(10*magic(5));
l=[-1 -2 1;
    -2 4 -2;
    1 -2 1];
x_l=imfilter(x,l,'same')

l_col=[1;-2;1];
l_row=[1 -2 1];
x_sep=imfilter(imfilter(x,l_col,'same'),l_row,'same')
