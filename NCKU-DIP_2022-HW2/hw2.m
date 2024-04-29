function out = hw2(im,a,b)
N=length(a);
out=zeros(size(im));

for i =1:N-1
    pix=find(im>=a(i) & im<a(i+1));
    out(pix)=(im(pix)-a(i))*(b(i+1)-b(i))/(a(i+1)-a(i))+b(i);
end

pix = find(im==a(N));
out(pix)=b(N);
end