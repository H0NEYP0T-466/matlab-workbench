% TASK # 1
img = imread("cameraman.png");

figure; 
imshow(img, 'InitialMagnification', 100);
title("Original Image");

zoomfac = 3;
[m,n] = size(img);
new_m = round(m * zoomfac);
new_n = round(n * zoomfac);

up_img = zeros(new_m, new_n, 'uint8');
for i = 1:new_m
    for j = 1:new_n
        orig_i = ceil(i/zoomfac);
        orig_j = ceil(j/zoomfac);
        up_img(i,j) = img(orig_i, orig_j);
    end
end

figure;
imshow(up_img, 'InitialMagnification', 100);
title("Upscaled Image");
% TASK # 2

A = [3 9; 7 12];
[m, n] = size(A);

zoomfac = 2;
new_m = m * zoomfac;
new_n = n * zoomfac;

B = zeros(new_m, new_n);

for i = 1:new_m
    for j = 1:new_n
        orig_i = ceil(i / zoomfac);
        orig_j = ceil(j / zoomfac);
        B(i,j) = A(orig_i, orig_j);
    end
end
disp(A);
disp(B);

A = [3 9; 7 12];

B = imresize(A, 2, 'nearest'); 
disp(A);
disp(B);

% TASK # 3
img = imread('cameraman.tif');

figure;
subplot(1,3,1);
imshow(img);
title('Original Image');

[m, n] = size(img);

new_m_half = round(m/2);
new_n_half = round(n/2);
img_half = zeros(new_m_half, new_n_half, 'uint8');

for i = 1:new_m_half
    for j = 1:new_n_half
        orig_i = ceil(i*2);
        orig_j = ceil(j*2);
        img_half(i,j) = img(orig_i, orig_j);
    end
end

new_m_quarter = round(m/4);
new_n_quarter = round(n/4);
img_quarter = zeros(new_m_quarter, new_n_quarter, 'uint8');

for i = 1:new_m_quarter
    for j = 1:new_n_quarter
        orig_i = ceil(i*4);
        orig_j = ceil(j*4);
        img_quarter(i,j) = img(orig_i, orig_j);
    end
end

subplot(1,3,2);
imshow(img_half);
title('1/2 of Original (Manual)');

subplot(1,3,3);
imshow(img_quarter);
title('1/4 of Original (Manual)');

figure;
subplot(1,3,1);
imshow(img);
title('Original Image');

img_half_builtin = imresize(img, 0.5, 'nearest');
img_quarter_builtin = imresize(img, 0.25, 'nearest');

subplot(1,3,2);
imshow(img_half_builtin);
title('1/2 of Original (Built-in)');

subplot(1,3,3);
imshow(img_quarter_builtin);
title('1/4 of Original (Built-in)');