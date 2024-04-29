function pj2new(img,name)
g2=img(:,:,2);
BW = edge(g2,'approxcanny',0.06);
[a,b]=size(BW);
gr=zeros(a,b,3);
re=zeros(a,b,3);
for y=1:b
    if sum(BW(:,y))>(1942/6)
        gr(:,y,2)=BW(:,y);
    end
end
for x=1:a
    if sum(BW(x,:))>(2590/8)
        re(x,:,1)=BW(x,:);
    end
end
left=zeros(1,a)+500;
for i=1:a
    for j=1:b
        if gr(i,j,2)==1
            left(i)=j;
            break
        end
    end
end
left_val=min(left);
if left_val<250
    left_val=250;
end
right=zeros(1,a);
for i=1:a
    for j=b:-1:1
        if gr(i,j,2)==1
            right(i)=j;
            break
        end
    end
end
right_val=max(right) ;   
if right_val>2350
    right_val=2350;
end
up=zeros(1,b)+500;
for j=1:b
    for i=1:a
        if re(i,j,1)==1
            up(j)=i;
            break
        end
    end
end
up_val=min(up);%%左邊
down=zeros(1,b);
for j=1:b
    for i=a:-1:1
        if re(i,j,1)==1
            down(j)=i;
            break
        end
    end
end
down_val=max(down) ;  
col=floor((down_val-up_val)/16);
row=floor((right_val-left_val)/16);
z=zeros(a,b,3);
for i=1:16
    for j=1:16
        z(up_val+col*(i-1)+1:up_val+col*i+1,left_val+row*(j-1)+1:left_val+row*j+1,1)=BW(up_val+col*(i-1):up_val+col*i, ...
            left_val+row*(j-1):left_val+row*j);
        for k=up_val+col*(i-1)+1:up_val+col*i+1
            for l=left_val+row*(j-1)+1:left_val+row*j+1
                if (z(k,l,1))==1
                     if (sum(z(k,l+1:l+30,1))>1)
                         z(k,l:l+1,1)=1;
                    end
                end
            end
        end
        for k=up_val+col*(i-1)+1:up_val+col*i+1
            for l=left_val+row*(j)+1:-1:left_val+row*(j-1)+1
                if (z(k,l,1))==1
                     if (sum(z(k,l-30:l-1,1))>1)
                         z(k,l-1:l,1)=1;
                    end
                end
            end
        end
        
        for k=up_val+col*(i-1)+1:up_val+col*i+1-5
            for l=left_val+row*(j-1)+1:left_val+row*j+1
                if (z(k,l,1))==1
                     if (sum(z(k+1:k+5,l,1))>1)
                         z(k:k+1,l,1)=1;
                    end
                end
            end
        end
        
    end
end
bwnew=zeros(a,b,3);
bwnew(:,:,1)=z(:,:,1)/1.5;
KK=im2double(img);
K3 = imlincomb(1,KK,0.7,bwnew);
K4=imresize(K3,0.5);
imwrite(K4,sprintf('pj2_%d.jpg',name))
end
