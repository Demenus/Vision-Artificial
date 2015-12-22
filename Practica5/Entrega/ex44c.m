function [  ] = ex44c(  )
close all;
%   % Convert an OpenCV classifier XML file to a Matlab file
ConvertHaarcasadeXMLOpenCV('ViolaJones/HaarCascades/haarcascade_frontalface_alt.xml');
%   % Detect Faces
figure;
hold;
Options.Resize=false;
ObjectDetection('Images/testFaces1.jpg','ViolaJones/HaarCascades/haarcascade_frontalface_alt.mat',Options);

%   % Convert an OpenCV classifier XML file to a Matlab file
%ConvertHaarcasadeXMLOpenCV('ViolaJones/HaarCascades/haarcascade_frontalface_alt.xml');
figure;
hold;
I = imread('Images/testFaces2.jpg');
FilenameHaarcasade = 'ViolaJones/HaarCascades/haarcascade_frontalface_alt.mat';
Objects=ObjectDetection(I,FilenameHaarcasade);
ShowDetectionResult(I,Objects);
end

