%%% face recognition by Abhishek Sehgal%%%
clear all
close all
clc
%%%%%%%  provide the data path where the training images are present  %%%%%%%

datapath = uigetdir('C:\Users\sehgal\OneDrive\Documents\Eigen kit','select path of training images');
testpath = uigetdir('C:\Users\sehgal\OneDrive\Documents\tt','select path of test images');

prompt = {'Enter test image name (a number between 1 to 10):'};
dlg_title = 'Input of PCA-Based Face Recognition System';
num_lines= 1;
def = {' '};
TestImage = inputdlg(prompt,dlg_title,num_lines,def);
TestImage = strcat(testpath,'\',char(TestImage),'.jpg');

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%

recog_img = facerecog(datapath,TestImage);
selected_img = strcat(datapath,'\',recog_img);
select_img = imread(selected_img);
imshow(select_img);
title('Recognized Image');
test_img = imread(TestImage);
figure,imshow(test_img);
title('Test Image');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
result = strcat('the recognized image is : ',recog_img);
disp(result);
