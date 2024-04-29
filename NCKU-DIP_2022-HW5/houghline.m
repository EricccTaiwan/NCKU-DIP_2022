function houghline(image,r,theta)

[~,y]=size(image);
angle=pi*(180-theta)/180;
if sin(angle)==0
    line([r,r],[0,y],'Color','black')
else
    line([0,y],[r/sin(angle),(r-y*cos(angle))/sin(angle)],'Color','Black')
end
