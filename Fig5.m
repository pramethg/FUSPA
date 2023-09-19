%% This code is for generating plots of Figure 1 by Chen et al., 2023
% Rights reserved for Biophotonics And Ultrasound Imaging Laboratory, The Pennsylvania State University. 

clear
close all

load("Fig5Data.mat")    % Loading of data

%% Fig. 5a
figure(100);         % Creating a plot
imagesc(Fig5adata)   % Plotting the data
colormap gray        % Setting the colormap for the plot
colorbar             % Creating the colorbar of the colormap
axis image           % Creating the axis of the plot
caxis([-60 0])       % Setting colormap limits
title("Figure 5a")   % Creating a title for the plot

%% Fig. 5b
figure;
imagesc(Fig5b_data)
axis image
colormap(jet)
colorbar
caxis([-50 200])
title("Figure 5b")

%% Fig. 5c
% MatOut intensity rendering, with axial direction color encoding
% Encodes the intensity with the Matout, but negative if the average velocity of the track is downward.
figure(2);clf,set(gcf,'Position',[652 393 941 585]);
velColormap = cat(1,flip(flip(hot(128),1),2),hot(128)); % custom velocity colormap
velColormap = velColormap(5:end-5,:);
llx = size(MatOut,2);
llz = size(MatOut,1);
im=imagesc(llx,llz,(MatOut).^(1/4).*sign(imgaussfilt(MatOut_zdir,0.8)));
im.CData = im.CData - sign(im.CData)/2;axis image
title('ULM intensity display with axial flow direction (Figure 5c)')
colormap(gca,velColormap)
caxis([-1 1]*max(caxis)*.6) % add saturation in image
clbar = colorbar;clbar.Label.String = 'Count intensity';
ca = gca;ca.Position = [.05 .05 .8 .9];

%% Fig. 5d
figure;
plot((1:length(avg_cortex_data))/Fs, filter_detrend_cortex_data, 'Color',[0.24,0.54,0.22],'LineWidth',3);
hold on
plot((1:length(avg_cortex_data))/Fs, avg_filter_detrend_ventr_data+0.2, 'Color',[0.49,0.09,0.50],'LineWidth',3);
legend('Cortex', 'Ventricle')
title('BPFed Cortex vs. Ventricle (Figure 5d)')
axis tight

%% Fig. 5f and Fig. 5i
% Code plotting for Figure 5f 'Cortex vs. Selected' (subplot on the top):
figure;
sgtitle('BPFed Cross Correlation (Figure 5f and Figure 5i)')     % Creating a title for all subplots
subplot(2,1,1)                         % Creating 2 subplots         
errorbar(lag_array/Fs, avg_filter_detrend, std_filter_detrend,'Color',"black",'LineWidth',2)    % Creating the errorbar of the plot

% Code plotting for Figure 5i '-d/dt(Cortex) vs. Selected'(subplot at the bottom):
subplot(2,1,2)
errorbar(lag_array/Fs, avg_filter_detrend_diff, std_filter_detrend_diff,'Color',"black",'LineWidth',2)


%% Fig. 5g ,Fig. 5e, Fig 5h and Fig. 5j
% Code plotting for Figure 5g (from left to right, up to down):
figure;
sgtitle("Figure 5g")
for i = 1:7
    subplot(3,3,i)
    imagesc(r_filter_detrend(13:43,60:91,2*i-1))
    colormap(purplered)
    axis image
    caxis([-0.2 0.2])
end

% Code plotting for Figure 5j (from left to right, up to down):
figure;
sgtitle("Figure 5j")
for i = 1:7
    subplot(3,3,i)
    imagesc(r_filter_detrend_diff(13:43,60:91,2*i-1))
    colormap(purplered)
    axis image
    caxis([-0.2 0.2])
end

% Figures for 0 cortex of all of Fig. 5g and Fig. 5j:
% Code plotting for Figure 5e
figure;
imagesc(Fig5e_data)
colormap(purplered)
axis image
caxis([-0.2 0.2])
title('Lag = 1.42 second cortex vs all (Figure 5e)')

% Code plotting for Figure 5h
figure;
imagesc(Fig5h_data)
colormap(purplered)
axis image
caxis([-0.2 0.2])
title('Lag = 0 second diff(cortex) vs all (Figure 5h)')

%% Purple red colormap definition
function cmap = purplered
    % Defining the colormap purplered: 
    cmap = zeros(100,3);
    % define r
    cmap(1:50,1) = linspace(0.6,0,50);
    cmap(51:100,1) = linspace(0,1,50);
    
    % define g
    cmap(1:50,2) = linspace(0.4,0,50);
    cmap(51:100,2) = linspace(0,0.4,50);
    
    % define b
    cmap(1:50,3) = linspace(0.9,0,50);
    cmap(51:100,3) = linspace(0,0.4,50);
end