function E_out = f_Cut_for_circleMask(E_in,Center_x,Center_y,Cir_Radiu,A)
% 函数功能：将输入矩阵按照像素值为单位进行圆形区域截取
% E_in：输入矩阵
% Center_x：截取圆形区域的中心坐标x
% Center_y：截取圆形区域的中心坐标x
% Cir_Radiu：截取圆形区域的截取半径像素值
% 注意：这三个参数均是像素值为单位
% A：截取后的其余部分赋值

[xnums,ynums] = size(E_in);
E_out = E_in;
for nx = 1:xnums
    for ny = 1:ynums
        if abs((nx - Center_x) + 1i*(ny - Center_y)) < Cir_Radiu
            E_out(nx, ny) = E_in(nx, ny);
        else
            E_out(nx, ny) = A;
        end
    end
end
end