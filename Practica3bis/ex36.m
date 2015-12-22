function [  ] = ex36(  )

    % Install the VLFeat toolbox
    srcPath=cd('toolbox'); % guarda el directorio principal
    vl_setup;
    cd(srcPath);
    close all;

    %Section a
    figure;
    subplot(3,3,1);
    [m,s]=showMatches('starbuck1.jpg','starbuck2.jpg');
    title('starbuck1 vs starbuck2');
    
    %Section b
    subplot(3,3,2);
    [m, s] = showMatches('starbuck1.jpg', 'starbuck3.jpg');
    title('starbuck1 vs starbuck3');
    
    subplot(3,3,3);
    [m, s] = showMatches('starbuck1.jpg', 'starbuck4.jpg');
    title('starbuck1 vs starbuck4');
    
    subplot(3,3,4);
    [m, s] = showMatches('starbuck1.jpg', 'starbuck5.png');
    title('starbuck1 vs starbuck5');
    
    subplot(3,3,5);
    [m, s] = showMatches('starbuck1.jpg', 'starbuck6.jpg');
    title('starbuck1 vs starbuck6');
    
    subplot(3,3,6);
    [m, s] = showMatches('starbuck1.jpg', 'starbuck7.jpg');
    title('starbuck1 vs starbuck7');
    
    %Section c
    figure;
    [m,s]=showMatches('starbuck1.jpg','loro.png');
    title('starbuck1 vs loro');
    
    %Section d
    im = imread('starbuck1.jpg');
    
    %First we will see with differents orientations
    im90 = imrotate(im,90);
    im120 = imrotate(im,120);
    imwrite(im90,'starbuck90.jpg');
    imwrite(im120,'starbuck120.jpg');
    
    %Second we will see with differents scales
    im05 = imresize(im,0.5);
    im02 = imresize(im,2);
    imwrite(im05,'starbuck05.jpg');
    imwrite(im02,'starbuck02.jpg');
    
    % Orientation: between im90 and all the matches of section b
    figure;
    subplot(4,3,1);
    [m,s]=showMatches('starbuck1.jpg','starbuck90.jpg');
    title('starbuck1 vs starbuck90');
    
    subplot(4,3,2);
    [m,s]=showMatches('starbuck90.jpg','starbuck2.jpg');
    title('starbuck90 vs starbuck2');
    
    subplot(4,3,3);
    [m, s] = showMatches('starbuck90.jpg', 'starbuck3.jpg');
    title('starbuck90 vs starbuck3');
    
    subplot(4,3,4);
    [m, s] = showMatches('starbuck90.jpg', 'starbuck4.jpg');
    title('starbuck90 vs starbuck4');
    
    subplot(4,3,5);
    [m, s] = showMatches('starbuck90.jpg', 'starbuck5.png');
    title('starbuck90 vs starbuck5');
    
    subplot(4,3,6);
    [m, s] = showMatches('starbuck90.jpg', 'starbuck6.jpg');
    title('starbuck90 vs starbuck6');
    
    subplot(4,3,7);
    [m, s] = showMatches('starbuck90.jpg', 'starbuck7.jpg');
    title('starbuck90 vs starbuck7');
    
    % Orientation: between im120 and all the matches of section b
    figure;
    subplot(4,3,1);
    [m,s]=showMatches('starbuck1.jpg','starbuck120.jpg');
    title('starbuck1 vs starbuck120');
    
    subplot(4,3,2);
    [m,s]=showMatches('starbuck120.jpg','starbuck2.jpg');
    title('starbuck120 vs starbuck2');
    
    subplot(4,3,3);
    [m, s] = showMatches('starbuck120.jpg', 'starbuck3.jpg');
    title('starbuck120 vs starbuck3');
    
    subplot(4,3,4);
    [m, s] = showMatches('starbuck120.jpg', 'starbuck4.jpg');
    title('starbuck120 vs starbuck4');
    
    subplot(4,3,5);
    [m, s] = showMatches('starbuck120.jpg', 'starbuck5.png');
    title('starbuck120 vs starbuck5');
    
    subplot(4,3,6);
    [m, s] = showMatches('starbuck120.jpg', 'starbuck6.jpg');
    title('starbuck120 vs starbuck6');
    
    subplot(4,3,7);
    [m, s] = showMatches('starbuck120.jpg', 'starbuck7.jpg');
    title('starbuck120 vs starbuck7');
    
    % Scale: between im05 and all the matches of section b
    figure;
    subplot(4,3,1);
    [m,s]=showMatches('starbuck1.jpg','starbuck05.jpg');
    title('starbuck1 vs starbuck05');
    
    subplot(4,3,2);
    [m,s]=showMatches('starbuck05.jpg','starbuck2.jpg');
    title('starbuck05 vs starbuck2');
    
    subplot(4,3,3);
    [m, s] = showMatches('starbuck05.jpg', 'starbuck3.jpg');
    title('starbuck05 vs starbuck3');
    
    subplot(4,3,4);
    [m, s] = showMatches('starbuck05.jpg', 'starbuck4.jpg');
    title('starbuck05 vs starbuck4');
    
    subplot(4,3,5);
    [m, s] = showMatches('starbuck05.jpg', 'starbuck5.png');
    title('starbuck05 vs starbuck5');
    
    subplot(4,3,6);
    [m, s] = showMatches('starbuck05.jpg', 'starbuck6.jpg');
    title('starbuck05 vs starbuck6');
    
    subplot(4,3,7);
    [m, s] = showMatches('starbuck05.jpg', 'starbuck7.jpg');
    title('starbuck05 vs starbuck7');
    
    % Scale: between im02 and all the matches of section b
    figure;
    subplot(4,3,1);
    [m,s]=showMatches('starbuck1.jpg','starbuck02.jpg');
    title('starbuck1 vs starbuck02');
    
    subplot(4,3,2);
    [m,s]=showMatches('starbuck02.jpg','starbuck2.jpg');
    title('starbuck02 vs starbuck2');
    
    subplot(4,3,3);
    [m, s] = showMatches('starbuck02.jpg', 'starbuck3.jpg');
    title('starbuck02 vs starbuck3');
    
    subplot(4,3,4);
    [m, s] = showMatches('starbuck02.jpg', 'starbuck4.jpg');
    title('starbuck02 vs starbuck4');
    
    subplot(4,3,5);
    [m, s] = showMatches('starbuck02.jpg', 'starbuck5.png');
    title('starbuck02 vs starbuck5');
    
    subplot(4,3,6);
    [m, s] = showMatches('starbuck02.jpg', 'starbuck6.jpg');
    title('starbuck02 vs starbuck6');
    
    subplot(4,3,7);
    [m, s] = showMatches('starbuck02.jpg', 'starbuck7.jpg');
    title('starbuck02 vs starbuck7');
    
    %Section e
    figure();
    subplot(3,1,1);
    [m, s] = showMatches('burgerking1.jpg', 'burgerking2.jpg');
    title('burgerking1 vs burgerking2');
    
    subplot(3,1,2);
    [m, s] = showMatches('burgerking1.jpg', 'burgerking3.jpg');
    title('burgerking1 vs burgerking3');
    
    subplot(3,1,3);
    [m, s] = showMatches('burgerking1.jpg', 'burgerking4.jpg');
    title('burgerking1 vs burgerking4');
end

