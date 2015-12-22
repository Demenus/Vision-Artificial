function [  ] = ex44b(  )
    close all;
    figure;
    addpath('ViolaJones','ViolaJones/SubFunctions');
    bgSet={'landscape.jpg','room.jpg','natural.jpg'};
    i = 1
    for fimg=bgSet,
        subplot(2, 3, i);
        img=imread(['images/' char(fimg)]);
        imshow(img);
        subplot(2, 3, i+3);
        showIntegralImage(img);
        i = i + 1;
    end
    
end


function showIntegralImage(image)
    defaultoptions.Resize=false;
    intImageStruct=GetIntergralImages(image,defaultoptions);
    imagesc(intImageStruct.ii);colormap(jet);
end