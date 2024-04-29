function res=hough2(img)
if ~islogical(img)
    edges=edge(img,'canny');
else
    edges=img;
end
[x,y]=find(edges);
angles=(-90:180)*pi/180;
r=floor(x*cos(angles)+y*sin(angles));
rmax=max(r(r>0));
acc=zeros(rmax+1,270);
for i=1:length(x)
    for j=1:270
        if r(i,j)>-0
            acc(r(i,j)+1,j)=acc(r(i,j)+1,j)+1;
        end
    end
end
res=acc;
end