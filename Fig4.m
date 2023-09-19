%% This code is for generating plots of Figure 1 by Chen et al., 2023
% Rights reserved for Biophotonics And Ultrasound Imaging Laboratory, The Pennsylvania State University. 

clear
close all


%% Fig. 4a - atlas
% The atlas template was adopted from https://scalablebrainatlas.incf.org/rat/PLCJB14
% Papp E.A., Leergaard T.B., Calabrese E., Johnson G.A., Bjaalie J.G. (2014). Waxholm Space atlas of the Sprague Dawley rat brain. NeuroImage 97, 374-386. http://doi.org/10.1016/j.neuroimage.2014.04.001

%% ULM related - Fig. 4b, Fig. 4g1, Fig. 4h1
load("Fig4data3.mat"); 
% Fig. 4b
% MatOut intensity rendering, with vertical direction color encoding
% Encodes the intensity with the Matout, but negative if the average velocity of the track is downward.
figure;clf,set(gcf,'Position',[652 393 941 585]);
velColormap = cat(1,flip(flip(hot(128),1),2),hot(128)); % custom velocity colormap
velColormap = velColormap(5:end-5,:);
IntPower = 1/4;
im=imagesc(llx,llz,(MatOut).^IntPower.*sign(imgaussfilt(MatOut_zdir,0.8)));
im.CData = im.CData - sign(im.CData)/2;axis image
title('ULM intensity display with vertical flow direction (Figure 4b)')
colormap(gca,velColormap)
caxis([-1 1]*max(caxis)*.7) % add saturation in image
clbar = colorbar;clbar.Label.String = 'Count intensity';
ca = gca;ca.Position = [.05 .05 .8 .9];

% Fig. 4g1
MatOut_g1 = MatOut(57:242,400:516);
MatOut_zdir_g1 = MatOut_zdir(57:242,400:516);
llx = size(MatOut_g1,2);
llz = size(MatOut_g1,1);
figure;clf,set(gcf,'Position',[652 393 941 585]);
im=imagesc(llx,llz,(MatOut_g1).^IntPower.*sign(imgaussfilt(MatOut_zdir_g1,0.8)));
im.CData = im.CData - sign(im.CData)/2;axis image
title('ULM intensity display with vertical flow direction (Figure 4g1)')
colormap(gca,velColormap)
caxis([-1 1]*max(caxis)*.7) % add saturation in image
clbar = colorbar;clbar.Label.String = 'Count intensity';
ca = gca;ca.Position = [.05 .05 .8 .9];

% Code for plotting Figure 4h1

MatOut_h1 = MatOut(69:254,784:900);
MatOut_zdir_h1 = MatOut_zdir(69:254,784:900);
llx = size(MatOut_h1,2);
llz = size(MatOut_h1,1);
figure;clf,set(gcf,'Position',[652 393 941 585]);
im=imagesc(llx,llz,(MatOut_h1).^IntPower.*sign(imgaussfilt(MatOut_zdir_h1,0.8)));
im.CData = im.CData - sign(im.CData)/2;axis image
title('ULM intensity display with vertical flow direction (Figure 4h1)')
colormap(gca,velColormap)
caxis([-1 1]*max(caxis)*.7) % add saturation in image
clbar = colorbar;clbar.Label.String = 'Count intensity';
ca = gca;ca.Position = [.05 .05 .8 .9];

%% fUS - related figures - Fig. 4c, 4g4, 4h4
data = load("Fig4Data1.mat");    % Loading of data

% Defining variables for change map Figure 4f:
fUS = data.movie_frame;
fUS_change = data.movie_frame_change;
   
% Code plotting for Figure 4c - fUS:
figure;    % Creating a plot
imagesc(fUS(6:185,15:200,80));   % Plotting the data
axis image    % Creating axis for the plot
colormap(gray)    % Setting colormap for the plot
colorbar          % Showing the colorbar of the colormap in the plot
caxis([-50 0])  % Setting limits for the colormap
title("Figure 4c")   % Creating a title for the plot

% Code plotting for Figure 4f - change map:
figure;
imagesc(fUS_change(6:185,15:200,80));
axis image
colormap(jet)
colorbar
caxis([-50 200])
title("Figure 4f")

% Code plotting for Figure 4g4 - enlarged change map of ROIs:
figure;
sgtitle("Figure 4g4")    % Creating a title for all subplots
for i = 1:6      % Creating 6 plots in a figure

    subplot(2,3,i)    % Creating a subplot
    imagesc(fUS_change(6:41,60:82,20*i));
    axis image
    colormap(jet)
    colorbar
    caxis([-50 200])

end

% Code plotting for Figure 4h4 - enlarged change map of ROIs:
figure;
sgtitle("Figure 4h4")
for i = 1:6

    subplot(2,3,i)
    imagesc(fUS_change(13:48,131:153,20*i));
    axis image
    colormap(jet)
    colorbar
    caxis([-50 200])

end


%% PA related, Fig. 4d, Fig. 4g5, Fig. 4h5
clear

data = load("Fig4Data2.mat");   % Loading of data

% Defining variables for unmixed SO2 map of Figure 4e3, Figure 4f3 and Figure 4g3:
PA = data.movie_frame;
PA_change = data.movie_frame_sO2_delta;

% Creating an unmixed SO2 map Fig. 4d: 
figure;
imagesc(PA(:,:,80));
axis image
colormap(redblue)
colorbar
caxis([0 1])
title("Unmixed SO2 map (Figure 4d)")


% Code plotting for Figure 4g5 - unmixed SO2 map of ROIs
figure;
sgtitle("Figure 4g5")
for i = 1:6

    subplot(2,3,i)
    imagesc(PA(3:20,52:62,20*i));
    axis image
    colormap(redblue)
    colorbar
    caxis([0 1])

end

% Code plotting for Figure 4h5 - unmixed SO2 map of ROIs
figure;
sgtitle("Figure 4h5")
for i = 1:6

    subplot(2,3,i)
    imagesc(PA(5:22,85:95,20*i));
    axis image
    colormap(redblue)
    colorbar
    caxis([0 1])

end


%% Ultrafast Ultrasound based Velocimetry Fig. 4e, Fig. 4g2, Fig. 4g3, Fig. 4g6, Fig. 4h2, Fig. 4h3, Fig. 4h6
clear all

load("Fig4data3.mat")
% Code for plotting Figure 4e
figure;
imagesc(Vz_all_e);
axis image
colormap(bluered_l)
colorbar
caxis([-20 20])
title("Figure 4e")

% Code for plotting Figure 4g2

figure;
imagesc(Vz_vein_all_new(7:42,62:84,60));
axis image
colormap(bluered_l)
colorbar
caxis([-20 20])
title("Figure 4g2")

% Code for plotting Figure 4g3

figure;
imagesc(Vz_artery_all_new(7:42,62:84,60));
axis image
colormap(bluered_l)
colorbar
caxis([-20 20])
title("Figure 4g3")

% Code for plotting Figure 4g6

figure;
for i = 1:6

    subplot(2,3,i)
    imagesc(Vz_all_new(7:42,62:84,20*i));
    axis image
    colormap(bluered_l)
    colorbar
    caxis([-20 20])

end
title("Figure 4g6")

% Code for plotting Figure 4h2

figure;
imagesc(Vz_vein_all_new(13:48,133:155,60));
axis image
colormap(bluered_l)
colorbar
caxis([-20 20])
title("Figure 4h2")

% Code for plotting Figure 4h3

figure;
imagesc(Vz_artery_all_new(13:48,133:155,60));
axis image
colormap(bluered_l)
colorbar
caxis([-20 20])
title("Figure 4h3")

% Code for plotting Figure 4h6

figure;
for i = 1:6

    subplot(2,3,i)
    imagesc(Vz_all_new(13:48,133:155,20*i));
    axis image
    colormap(bluered_l)
    colorbar
    caxis([-20 20])

end
title("Figure 4h6")

%% ROI CBV and SO2 curve plotting Fig. 4g7, Fig.4g8, Fig. 4h7, Fig. 4h8

% Loading of data: 
fUS_ROI = load('Fig4Data1.mat');
SO2_ROI = load('Fig4Data2.mat');

% Defining variables for analyzing fUS change and SO2 change: 
fUS_ROI = fUS_ROI.avg_PDI_change_ROI;
SO2_ROI = SO2_ROI.ROI_sO2;

% Code plotting for Figure 4g7 :
figure;
yyaxis left    % Defining y axis on the left
plot(fUS_ROI{1},'k','LineWidth',5)    % Plot the data with defined black color ('k') and width of line
yyaxis right   % Defining y axis on the right
% plot(smooth(SO2_ROI(:,1),0.01),'r','LineWidth',5)   % Plot the data with defined red color ('r') and width of line
plot(movmean(SO2_ROI(:,1),2),'r','LineWidth',5)   % Plot the data with defined red color ('r') and width of line
title("Figure 4g7")

% Code plotting for Figure 4h7 :
figure;
yyaxis left
plot(fUS_ROI{2},'k','LineWidth',5)
yyaxis right
% plot(smooth(SO2_ROI(:,2),0.01),'r','LineWidth',5)
plot(movmean(SO2_ROI(:,2),2),'r','LineWidth',5)   % Plot the data with defined red color ('r') and width of line
title("Figure 4h7")

% Code for plotting Figure 4g8
figure;
plot(-squeeze(mean(mean(Vz_artery_all_new(10:45,62:84,:),1,"omitnan"),2,"omitnan")),'LineWidth',3,'Color',[1 0 0.6])
hold on
plot(squeeze(mean(mean(Vz_vein_all_new(10:45,62:84,:),1,"omitnan"),2,"omitnan")),'LineWidth',3,'Color',[0 0.6 1])
title('ROI 1 CBF (Figure 4g8)')
legend('Artery', 'Vein')

% Code for plotting Figure 4h8
figure;
plot(-squeeze(mean(mean(Vz_artery_all_new(16:51,133:155,:),1,"omitnan"),2,"omitnan")),'LineWidth',3,'Color',[1 0 0.6])
hold on
plot(squeeze(mean(mean(Vz_vein_all_new(16:51,133:155,:),1,"omitnan"),2,"omitnan")),'LineWidth',3,'Color',[0 0.6 1])
title('ROI 2 CBF (Figure 4h8)')
legend('Artery', 'Vein')

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