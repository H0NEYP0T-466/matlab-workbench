vid = VideoReader('color_bright.avi');
a = read(vid, 1);
b = read(vid, 10);

c = a + b;
d = a - b;
e = a .* b;
f = a ./b;

a = imbinarize(rgb2gray(im2double(a)));
b = imbinarize(rgb2gray(im2double(b)));



j = a & b;
k = a | b;
l = xor(a, b);
m=~a;
n=~b;

figure;

subplot(2,6,1);
imshow(a);
title('Frame 1 (Binary)');

subplot(2,6,2);
imshow(b);
title('Frame 10 (Binary)');

subplot(2,6,3);
imshow(c);
title('Added Frame');

subplot(2,6,4);
imshow(d);
title('Subtraction Frame');

subplot(2,6,5);
imshow(e);
title('Multiplication Frame');

subplot(2,6,6);
imshow(f);
title('Division Frame');



subplot(2,6,7);
imshow(j);
title('a AND b');

subplot(2,6,8);
imshow(k);
title('a OR b');

subplot(2,6,9);
imshow(l);
title('a XOR b');

subplot(2,6,10);
imshow(m);
title('NOT A');

subplot(2,6,11);
imshow(n);
title('NOT b');


