%%ejercicio 3
function [chili] = addChili(RGBImg)
%Convierte a HSV
non_chili = rgb2hsv(RGBImg);
%crea una copia de la imagen en HSV
chili = non_chili;
%crea una imagen de números aleatorios
chiliPlane = rand(size(chili));
%Todos aquellos números aleatorios mayores que 0.7 pasan a ser rojos en la
%imagen hsv
chili(chiliPlane > 0.7) = 1;

chili = hsv2rgb(chili);
end

%%mostrar la imagen
%%imshow(addChili(imread('alhambra.jpg')));