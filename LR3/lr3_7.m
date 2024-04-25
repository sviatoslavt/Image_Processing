imagePath = 'C:\Users\user\Desktop\Обр. сигн та зобр\LR3\data\3.jpg';

originalImage = imread(imagePath);
%-------------------------------------------------------------------%
% Параметри шуму
noiseIntensity = 0.02; % Інтенсивність шуму (можна змінювати)

% Додавання шуму
noisyImage = imnoise(originalImage, 'gaussian', 0, noiseIntensity);

% Параметри для обертання
LEN = 10;   % Довжина обертання
THETA = 30; % Кут обертання (в градусах)

% Здійснення процедури обертання
rotatedImage = imrotate(originalImage, THETA, 'crop');

% Збільшення яскравість (для тестування)
brightenedImage = imadjust(originalImage, [0, 1], [0.9, 1]);

% Відновлення зображення шляхом зменшення яскравості
restoredImage = imadjust(brightenedImage, stretchlim(brightenedImage), [0, 1]);

%-----Результати--------------------------------------------------------------%
figure;
subplot(1, 5, 1);
imshow(originalImage);
title('Оригінальне зображення');

subplot(1, 5, 2);
imshow(noisyImage);
title('Зашумлене зображення');

subplot(1, 5, 3);
imshow(rotatedImage);
title('Обертане зображення');

subplot(1, 5, 4);
imshow(brightenedImage);
title('Збільшена яскравість');

subplot(1, 5, 5);
imshow(restoredImage);
title('Відновлене зображення');

