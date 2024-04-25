imagePath = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\3.jpg';

originalImage = imread(imagePath);

% параметри для обертання
LEN = 10;   % Довжина обертання
THETA = 30; % Кут обертання (в градусах)

% процедура обертання
rotatedImage = imrotate(originalImage, THETA, 'crop');

figure;
subplot(1, 2, 1);
imshow(originalImage);
title('Оригінальне зображення');

subplot(1, 2, 2);
imshow(rotatedImage);
title('Обертане зображення');