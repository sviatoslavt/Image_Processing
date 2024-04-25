% шлях до тестових зображень або використайте зображення за замовчуванням
imagePath1 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\1.jpg';
imagePath2 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\3.jpg';

image1 = imread(imagePath1);
image2 = imread(imagePath2);

figure;
subplot(1, 2, 1);
imshow(image1);
title('Зображення 1');

subplot(1, 2, 2);
imshow(image2);
title('Зображення 2');