imagePath1 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\1.jpg';
imagePath2 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\2.jpg';

image1 = imread(imagePath1);
image2 = imread(imagePath2);

% Застосування нормального білого шуму
noisyImage1 = imnoise(image1, 'gaussian', 0, 0.02); % 0.02 - рівень шуму, можна змінити

% Застосування імпульсної перешкоди
density = 0.05; % Щільність перешкоди, можна змінити
noisyImage2 = imnoise(image2, 'salt & pepper', density);

% Відображення зашумлених зображення
figure;
subplot(2, 2, 1);
imshow(image1);
title('Оригінальне зображення 1');

subplot(2, 2, 2);
imshow(noisyImage1);
title('Зашумлене нормальним білим шумом');

subplot(2, 2, 3);
imshow(image2);
title('Оригінальне зображення 2');

subplot(2, 2, 4);
imshow(noisyImage2);
title('Зашумлене імпульсною перешкодою');