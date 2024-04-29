function y=lasthw(x)
z=imread(x);
z1=imfill(z,'holes');
c=bwlabel(z1,8);
[a,b]=size(c);
y=zeros(a,b,3);
for i=1:256
    for j=1:256
        if c(i,j)==1
            y(i,j,1)=0.2;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==2
            y(i,j,2)=0.2;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==3
            y(i,j,3)=0.2;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==4
            y(i,j,1)=0.5;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==5
            y(i,j,2)=0.5;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==6
            y(i,j,3)=0.5;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==7
            y(i,j,1)=0.7;
        end
    end
end

for i=1:256
    for j=1:256
        if c(i,j)==8
            y(i,j,2)=0.7;
        end
    end
end
