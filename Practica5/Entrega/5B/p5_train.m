clc; close all; clear;

facesDir = 'training_data';
faces = dir(fullfile(facesDir,'*.bmp')); %What is the variable faces containing?

face = imread(['./training_data/',faces(1).name,'']);
R = size(face,1);
C = size(face,2);
GAMMA = double(zeros(R.*C, length(faces)));
M=length(faces);

for f = 1:length(faces)
    face = imread(['training_data/',faces(f).name,'']);
    face = face(:);        
    GAMMA(:,f) = face;
end

% Which step is perfomed here? 
PSI = mean(GAMMA,2);
imshow(reshape(PSI, R, C), []);
A = GAMMA - repmat(PSI,1,size(GAMMA,2)); 

% What is the trick of the method here?
S_trick = A'*A;
% What is eig() doing?
[V, D] = eig(S_trick); % Which is the dimension of V? Compare to the dimension of the original images. 

% initialize eigenfaces
U = double(zeros(size(A,1),M));

% What is the following step here representing?
for l = 1:M        
    ul = double(zeros(size(A,1),1));
    for k = 1:M
        ul = ul + V(l,k)*A(:,k); 
    end
    U(:,l) = ul; 
end
    
% What are we doing here? Why? Document the code in the following raws.
dd = diag(D);
[dd idx] = sort(dd,'descend');
dd = dd(dd>0);
idx2 = idx(dd>0);
U = U(:,idx2);

numberOfEigenFaces = length(dd);

% Can we say that the following 4 eigenfaces images are the most
% representative eigenfaces? If so, why?

figure();
subplot(2,2,1), imshow(reshape(U(:,1), R, C), []), title('Eigenface 1');
subplot(2,2,2), imshow(reshape(U(:,2), R, C), []), title('Eigenface 2');
subplot(2,2,3), imshow(reshape(U(:,3), R, C), []), title('Eigenface 3');
subplot(2,2,4), imshow(reshape(U(:,4), R, C), []), title('Eigenface 4');

% Define the steps here
A = A(:, idx); 
W_TRAIN = A' * U; % What is W_TRAIN? 

% Visualize the images of 5 different persons with 5 colors corresponding to each person in the space of the first 3 most important
% eigenfaces space.

save('EIGENFACES_TRAIN_DATA', 'GAMMA', 'PSI', 'idx', 'U', 'W_TRAIN', 'A');
