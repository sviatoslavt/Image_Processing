imagePath = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR3\data\3.jpg';

originalImage = imread(imagePath);

% збільшення яскравості (для тестування)
brightenedImage = imadjust(originalImage, [0, 1], [0.9, 1]);

% відновлення зображення шляхом зменшення яскравості
restoredImage = imadjust(brightenedImage, stretchlim(brightenedImage), [0, 1]);

figure;
subplot(1, 3, 1);
imshow(originalImage);
title('Оригінальне зображення');

subplot(1, 3, 2);
imshow(brightenedImage);
title('Збільшена яскравість');

subplot(1, 3, 3);
imshow(restoredImage);
title('Відновлене зображення');