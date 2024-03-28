imagePath1 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\1.jpg';
imagePath2 = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR2\data\2.jpg';

image1 = imread(imagePath1);
image2 = imread(imagePath2);

% Застосування різних шумів
noisyImage1_gaussian = imnoise(image1, 'gaussian', 0, 0.02); % Нормальний білий шум
noisyImage2_salt_pepper = imnoise(image2, 'salt & pepper', 0.05); % Імпульсна перешкода

% Нелінійний медіанний фільтр для кожного каналу окремо
filteredImage1_median = zeros(size(image1));
filteredImage1_median(:,:,1) = medfilt2(noisyImage1_gaussian(:,:,1), [3, 3]);
filteredImage1_median(:,:,2) = medfilt2(noisyImage1_gaussian(:,:,2), [3, 3]);
filteredImage1_median(:,:,3) = medfilt2(noisyImage1_gaussian(:,:,3), [3, 3]);

filteredImage2_median = zeros(size(image2));
filteredImage2_median(:,:,1) = medfilt2(noisyImage2_salt_pepper(:,:,1), [3, 3]);
filteredImage2_median(:,:,2) = medfilt2(noisyImage2_salt_pepper(:,:,2), [3, 3]);
filteredImage2_median(:,:,3) = medfilt2(noisyImage2_salt_pepper(:,:,3), [3, 3]);

% Відображення результатів фільтрації
figure;
subplot(2, 3, 1);
imshow(image1);
title('Оригінальне зображення 1');

subplot(2, 3, 2);
imshow(noisyImage1_gaussian);
title('Зашумлене гаусівським шумом');

subplot(2, 3, 3);
imshow(uint8(filteredImage1_median));
title('Медіанний фільтр');

subplot(2, 3, 4);
imshow(image2);
title('Оригінальне зображення 2');

subplot(2, 3, 5);
imshow(noisyImage2_salt_pepper);
title('Зашумлене імпульсною перешкодою');

subplot(2, 3, 6);
imshow(uint8(filteredImage2_median));
title('Медіанний фільтр');