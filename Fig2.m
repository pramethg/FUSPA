%% This code is for generating plots of Figure 2 by Chen et al., 2023
% Rights reserved for Biophotonics And Ultrasound Imaging Laboratory, The Pennsylvania State University. 

clear all
close all
load("Fig2Data.mat")    % Loading of data

%% Fig. 2a - atlas
% The atlas template was adopted from https://scalablebrainatlas.incf.org/rat/PLCJB14
% Papp E.A., Leergaard T.B., Calabrese E., Johnson G.A., Bjaalie J.G. (2014). Waxholm Space atlas of the Sprague Dawley rat brain. NeuroImage 97, 374-386. http://doi.org/10.1016/j.neuroimage.2014.04.001

%% Fig. 2b - fUS

% Code Plotting for Bregma -5.5:

figure;   % Creating a plot
imagesc(interpn(squeeze(vol_B_55) - max(max(squeeze(vol_B_55)))));   % Plotting the data 
axis image   % Creating axis for the plot
colormap(gray)   % Setting colormap for the plot
caxis([-60 0])   % Setting limits for colormap
title('Figure 2b Bregma -5.5')   % Creating a title

% Code Plotting for Bregma -4.0:

figure;
imagesc(interpn(squeeze(vol_B_4) - max(max(squeeze(vol_B_4)))));
axis image
colormap(gray)
caxis([-60 0])
title('Figure 2b Bregma -4.0')

% Code Plotting for Bregma -2.7:

figure;
imagesc(interpn(squeeze(vol_B_27) - max(max(squeeze(vol_B_27)))));
axis image
colormap(gray)
caxis([-60 0])
title('Figure 2b Bregma -2.7')

%% Fig. 2c - US velocimetry

% Code Plotting for Bregma -5.5:

figure;
imagesc(interpn(squeeze(Vz_vol_all_B_55)));
axis image
colormap(bluered_l)
title('Figure 2c Bregma -5.5')

% Code Plotting for Bregma -4.0:

figure;
imagesc(interpn(squeeze(Vz_vol_all_B_4)));
axis image
colormap(bluered_l)
title('Figure 2c Bregma -4.0')


% Code Plotting for Bregma -2.7:

figure;
imagesc(interpn(squeeze(Vz_vol_all_B_27)));
axis image
colormap(bluered_l)
title('Figure 2c Bregma -2.7')


%% Fig. 2d - SO2

% Code Plotting for Bregma -5.5:

figure;
imagesc(interpn(mask.*vol_sO2_B_55));
axis image
colormap(redblue)
caxis([0 1])
title('Figure 2c Bregma -5.5')

% Code Plotting for Bregma -4.0:

figure;
imagesc(interpn(mask.*vol_sO2_B_4));
axis image
colormap(redblue)
caxis([0 1])
title('Figure 2c Bregma -4.0')

% Code Plotting for Bregma -2.7:

figure;
imagesc(interpn(mask.*vol_sO2_B_27));
axis image
colormap(redblue)
caxis([0 1])
title('Figure 2c Bregma -2.7')

%% Fig. 2e-g - 3D fUS, US velocimetry, and SO2 maps were created by ImageJ VolumeViewer
% The data for volumetric view creation can be found in XXX.mat as variable
% names - XXX for 3D fUS, XXX for ...


%% Defining colormap bluered_l function
function cmap = bluered_l
cmap = zeros(100,3);

index_1 = 1:25;
index_2 = 26:50;
index_3 = 51:75;
index_4 = 76:100;


% define r
cmap(index_1,1) = linspace(1,1,length(index_1));
cmap(index_2,1) = linspace(1,0,length(index_2));
cmap(index_3,1) = linspace(0,0,length(index_3));
cmap(index_4,1) = linspace(0,0.427,length(index_4));

% define g
cmap(index_1,2) = linspace(0.616,0.18,length(index_1));
cmap(index_2,2) = linspace(0.18,0,length(index_2));
cmap(index_3,2) = linspace(0,0.353,length(index_3));
cmap(index_4,2) = linspace(0.353,0.843,length(index_4));

% define b
cmap(index_1,3) = linspace(0.839,0.565,length(index_1));
cmap(index_2,3) = linspace(0.565,0,length(index_2));
cmap(index_3,3) = linspace(0,0.804,length(index_3));
cmap(index_4,3) = linspace(0.804,1,length(index_4));
end

%% Defining colormap redblue function

function c = redblue(m)
%REDBLUE    Shades of red and blue color map

%   Adam Auton, 9th October 2009

if nargin < 1, m = size(get(gcf,'colormap'),1); end

if (mod(m,2) == 0)
    % From [0 0 1] to [1 1 1], then [1 1 1] to [1 0 0];
    m1 = m*0.5;
    r = (0:m1-1)'/max(m1-1,1);
    g = r;
    r = [r; ones(m1,1)];
    g = [g; flipud(g)];
    b = flipud(r);
else
    % From [0 0 1] to [1 1 1] to [1 0 0];
    m1 = floor(m*0.5);
    r = (0:m1-1)'/max(m1,1);
    g = r;
    r = [r; ones(m1+1,1)];
    g = [g; 1; flipud(g)];
    b = flipud(r);
end

c = [r g b]; 
end