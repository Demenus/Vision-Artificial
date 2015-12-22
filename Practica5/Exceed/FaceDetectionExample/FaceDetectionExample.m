

% Convert an OpenCV classifier XML file to a Matlab file
% Esta línea solo se necesita hacer una vez, una vez generado
% HaarCascades/haarcascade_frontalface_alt.mat, se puede comentar
ConvertHaarcasadeXMLOpenCV('HaarCascades/haarcascade_frontalface_alt.xml');


Options.Resize=false;

for i=1:66
    close all;
    file=strcat('Images/face',int2str(i),'.jpg'); 
    ObjectDetection(file,'HaarCascades/haarcascade_frontalface_alt.mat',Options);
    pause(0.1);
end


