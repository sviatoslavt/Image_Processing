imagePath1 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\1.jpg';
imagePath2 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\2.jpg';

image1 = imread(imagePath1);
image2 = imread(imagePath2);

% Визначення віконного фільтру для низьких частот
lowPassFilter = fspecial('average', [3, 3]); % Визначення фільтру середнього значення 3x3, можна змінити розмір

% Визначення віконного фільтру для високих частот
highPassFilter = fspecial('laplacian', 0.2); % Визначення лапласіана, можна змінити параметри

% Застосування фільтрів
filteredImage1_low = imfilter(image1, lowPassFilter);
filteredImage1_high = imfilter(image1, highPassFilter);

filteredImage2_low = imfilter(image2, lowPassFilter);
filteredImage2_high = imfilter(image2, highPassFilter);

% Відобреження результатів фільтрації
figure;
subplot(2, 3, 1);
imshow(image1);
title('Оригінальне зображення 1');

subplot(2, 3, 2);
imshow(filteredImage1_low);
title('Фільтр низьких частот');

subplot(2, 3, 3);
imshow(filteredImage1_high);
title('Фільтр високих частот');

subplot(2, 3, 4);
imshow(image2);
title('Оригінальне зображення 2');

subplot(2, 3, 5);
imshow(filteredImage2_low);
title('Фільтр низьких частот');

subplot(2, 3, 6);
imshow(filteredImage2_high);
title('Фільтр високих частот');