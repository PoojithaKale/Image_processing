%% Q1
A = imread('blue_rose.jpeg');
[row,col,pg] = size(A);
A1 = A(:,:,1);
A2 = A(:,:,2);
A3 = A(:,:,3);
B1 = zeros(row,col);
B2 = zeros(row,col);
B3 = zeros(row,col);
for i = 1:row
    for j = 1:col
        if A1(i,j)<128
            B1(i,j)=0;
        else
            B1(i,j)=1;
        end
    end
end

for i = 1:row
    for j = 1:col
        if A2(i,j)<128
            B2(i,j)=0;
        else
            B2(i,j)=1;
        end
    end
end

for i = 1:row
    for j = 1:col
        if A3(i,j)<128
            B3(i,j)=0;
        else
            B3(i,j)=1;
        end
    end
end
Ax = zeros(row,col,pg);
Ax(:,:,1) = B1;
Ax(:,:,2) = B2;
Ax(:,:,3) = B3;
imshow(Ax)

%% Q3.a Rotate 45 degrees

theta = 45;
A = cosd(theta);
B = sind(theta);
Rot45 = zeros(row,col);
Rot45(1,1)= A;
