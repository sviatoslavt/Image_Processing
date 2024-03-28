imagePath1 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\1.jpg';
imagePath2 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\2.jpg';

image1 = imread(imagePath1);
image2 = imread(imagePath2);

% Застосування різних шумів
noisyImage1 = imnoise(rgb2gray(image1), 'gaussian', 0, 0.02); % Нормальний білий шум
noisyImage2 = imnoise(rgb2gray(image2), 'salt & pepper', 0.05); % Імпульсна перешкода

% Адаптивний Вінерівський фільтр
filteredImage1_wiener = wiener2(noisyImage1, [5, 5]); % [5, 5] - розмір вікна, можна змінити
filteredImage2_wiener = wiener2(noisyImage2, [5, 5]);

% Відображення результатів фільтрації
figure;
subplot(2, 3, 1);
imshow(image1);
title('Оригінальне зображення 1');

subplot(2, 3, 2);
imshow(noisyImage1);
title('Зашумлене зображення 1');

subplot(2, 3, 3);
imshow(filteredImage1_wiener);
title('Адаптивний Вінерівський фільтр');

subplot(2, 3, 4);
imshow(image2);
title('Оригінальне зображення 2');

subplot(2, 3, 5);
imshow(noisyImage2);
title('Зашумлене зображення 2');

subplot(2, 3, 6);
imshow(filteredImage2_wiener);
title('Адаптивний Вінерівський фільтр');