imagePath1 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\1.jpg';
imagePath2 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\2.jpg';

image1 = imread(imagePath1);
image2 = imread(imagePath2);

% Застосування нормального білого шуму
noisyImage1 = imnoise(image1, 'gaussian', 0, 0.02); % 0.02 - рівень шуму, можна змінити
noisyImage2 = imnoise(image2, 'salt & pepper', 0.05); % Щільність перешкоди, можна змінити

% Визначення різних лінійних фільтрів
filter1 = fspecial('average', [3, 3]); % Фільтр середнього значення
filter2 = fspecial('laplacian', 0.2); % Лапласіан
filter3 = fspecial('prewitt'); % Фільтр Прьюітта
filter4 = fspecial('sobel'); % Фільтр Собеля

% Застосування фільтрів до зашумлених зображень
filteredImage1_filter1 = imfilter(noisyImage1, filter1);
filteredImage1_filter2 = imfilter(noisyImage1, filter2);
filteredImage1_filter3 = imfilter(noisyImage1, filter3);
filteredImage1_filter4 = imfilter(noisyImage1, filter4);

filteredImage2_filter1 = imfilter(noisyImage2, filter1);
filteredImage2_filter2 = imfilter(noisyImage2, filter2);
filteredImage2_filter3 = imfilter(noisyImage2, filter3);
filteredImage2_filter4 = imfilter(noisyImage2, filter4);

% Відображення результатів фільтрації
figure;
subplot(3, 4, 1);
imshow(noisyImage1);
title('Зашумлене зображення 1');

subplot(3, 4, 2);
imshow(filteredImage1_filter1);
title('Фільтр середнього значення');

subplot(3, 4, 3);
imshow(filteredImage1_filter2);
title('Лапласіан');

subplot(3, 4, 4);
imshow(filteredImage1_filter3);
title('Прьюітт');

subplot(3, 4, 5);
imshow(filteredImage1_filter4);
title('Собель');

subplot(3, 4, 6);
imshow(noisyImage2);
title('Зашумлене зображення 2');

subplot(3, 4, 7);
imshow(filteredImage2_filter1);
title('Фільтр середнього значення');

subplot(3, 4, 8);
imshow(filteredImage2_filter2);
title('Лапласіан');

subplot(3, 4, 9);
imshow(filteredImage2_filter3);
title('Прьюітт');

subplot(3, 4, 10);
imshow(filteredImage2_filter4);
title('Собель');