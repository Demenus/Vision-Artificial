
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Eigenfaces: TEST CODE
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% Based on the formulation of the eigenfaces method presented in [1]
% 
% Use the Yale database
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc; close all; clear;

load EIGENFACES_TRAIN_DATA;

GAMMA = GAMMA(:, idx); %What is GAMMA?

K = 3; %What is k? Look bellow.

PSI_VA = PSI; %What is PSI_VA?

files = dir(fullfile('./test_data','*.bmp'));

mkdir('solutions_recognition');
face = imread(['./test_data/',files(1).name,'']); 
R = size(face,1);
C = size(face,2);

M = size(U,2); % number of ? examples (reference faces)
N = size(U,1); % number of ? of the eigenfaces space

for f = 1:length(files)
    
    face = imread(['./test_data/',files(f).name,'']);    

    face = face(:);

    % What is the following line doing and why?
    PHI_VA = double(face) - PSI_VA;

    % What are omega_VA?
    OMEGA_VA = PHI_VA'*U;

    % What are we doing here?
    [IDX D] = knnsearch(W_TRAIN,OMEGA_VA,'k',K);
    
    h1 = figure(1);
    subplot(2,3,2);
    imshow(reshape(uint8(face),[R C])); colormap gray;
    title('Test image')
    
    % What are we doing here?
    for i = 1:3
        subplot(2,3,3+i);
        imshow(reshape(uint8(GAMMA(:, IDX(i))),[R C])); 
        title(['Similar face: choice ',num2str(i),'']);
    end
    
    % save results
    saveas(h1,['./solutions_recognition/recognition_',files(f).name(1:end-4),'.png'],'png');
    
    % What is PHI_f?
    PHI_f = zeros(N,1);
    h2 = figure(2);
    subplot(1,2,1);
    imshow(reshape(uint8(face),[R C])); colormap gray;
    title('Test image')
    
    for i = 1:M
        PHI_f = PHI_f + OMEGA_VA(i)*U(:,i);
        figure(2), subplot(1,2,2), imshow (reshape(PHI_f, R, C) + reshape(PSI, R, C), []);
        drawnow;
    end
    
    % What is the following step doing?
    % {
    K = 3;
    [IDX D] = knnsearch(A',PHI_f','k',K);

    h3 = figure(3);
    subplot(2,3,2);
    imshow(reshape(uint8(face),[R C])); colormap gray;
    title('Test image')
    
    % What is  the next step doing?
    for i = 1:3
        figure(3)
        subplot(2,3,3+i);
        imshow(reshape(uint8(GAMMA(:,IDX(i))),[R C])); colormap gray; axis([1 C 1 R]);
        title(['Similar face: ',num2str(i),'']);      
    end
     pause;
    
    % save results
    saveas(h1,['./solutions_recognition/recognition_',files(f).name(1:end-4),'.png'],'png');
    %}
    pause
    
end
    
    
