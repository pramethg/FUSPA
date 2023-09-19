%% This code is for generating plots of Figure 1 by Chen et al., 2023
% Rights reserved for Biophotonics And Ultrasound Imaging Laboratory, The Pennsylvania State University. 

clear all
close all

% Defining colormap greenwhite for plotting:
greenwhite = zeros(100,3);
greenwhite(:,2) = linspace(0,1,100);  
greenwhite(51:100,1) = linspace(0,1,50);
greenwhite(51:100,3) = linspace(0,1,50);             

%% Figure. 1e - ICG 
load("Fig1Data.mat")   % Loading of data
figure;imagesc(ICG_Fig1);   % Creating the figure from data
colormap(greenwhite)        % Loading the colormap "greenwhite" defined above
axis image                  % Adding axis to the polt
caxis([-35 -5])             % Setting colormap limit from -35 to -5

%% Figure. 1f - ULM 
% Refer to Figure 3e