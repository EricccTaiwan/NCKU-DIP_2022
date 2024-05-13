clc;clear all
x=(magic(5))
a=ones(3,3);
same = imfilter(x,a,'same')
full = imfilter(x,a,'full')
sym=imfilter(x,a,'symmetric')
rep=imfilter(x,a,'replicate')