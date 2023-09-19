%% This code is for generating plots of Figure 3 by Chen et al., 2023
% Rights reserved for Biophotonics And Ultrasound Imaging Laboratory, The Pennsylvania State University. 

close all
clear all
load("Fig3data.mat")     % Loading of data

%% Fig. 3a - ULM microbubble intensity map
llx = size(MatOut,2);
llz = size(MatOut,1);
% MatOut intensity rendering, with compression factor
figure(1);clf,set(gcf,'Position',[652 393 941 585]);
IntPower = 1/3;SigmaGauss=0.2;
im=imagesc(llx,llz,MatOut.^IntPower);axis image

title('ULM intensity display')
colormap(gca,hot)
clbar = colorbar;caxis(caxis*.8)  % add saturation in image
clbar.Label.String = 'number of counts';
clbar.TickLabels = round(clbar.Ticks.^(1/IntPower),1);xlabel('\lambda');ylabel('\lambda')
ca = gca;ca.Position = [.05 .05 .8 .9];
title("Figure 3a")

%% Fig. 3b - ULM vertical flow direction map

% MatOut intensity rendering, with axial direction color encoding
% Encodes the intensity with the Matout, but negative if the average velocity of the track is downward.
figure;clf,set(gcf,'Position',[652 393 941 585]);
velColormap = cat(1,flip(flip(hot(128),1),2),hot(128)); % custom velocity colormap
velColormap = velColormap(5:end-5,:);
IntPower = 1/4;
im=imagesc(llx,llz,(MatOut).^IntPower.*sign(imgaussfilt(MatOut_zdir,0.8)));
im.CData = im.CData - sign(im.CData)/2;axis image
title('ULM intensity display with axial flow direction')
colormap(gca,velColormap)
caxis([-1 1]*max(caxis)*.7) % add saturation in image
clbar = colorbar;clbar.Label.String = 'Count intensity';
ca = gca;ca.Position = [.05 .05 .8 .9];
title("Figure 3b")

%% Fig. 3c - ULM flow speed map

% Velocity magnitude rendering
% Encodes the norm velocity average in pixels

IntPower = 1/4;
vmax_disp = round(ULM.max_linking_distance*ULM.scale(1)*ULM.lambda/ULM.scale(3).*0.27); % maximal displayed velocity, should be adapt to the imaged organ [mm/s]
figure(3);clf,set(gcf,'Position',[652 393 941 585]);
clbsize = [180,50];
Mvel_rgb = MatOut_vel/vmax_disp; % normalization
Mvel_rgb = Mvel_rgb.^(2);Mvel_rgb(Mvel_rgb>1)=1;
Mvel_rgb = imgaussfilt(Mvel_rgb,0.5);
Mvel_rgbval=Mvel_rgb;

Mvel_rgb = ind2rgb(round(Mvel_rgb*256),jet(256)); % convert ind into RGB

MatShadow = MatOut;MatShadow = MatShadow./max(MatShadow(:)*.2);MatShadow(MatShadow>1)=1;
Mvel_rgb = Mvel_rgb.*(MatShadow.^IntPower);
Mvel_rgb = brighten(Mvel_rgb,.4);
im=imshow((Mvel_rgb),'XData',llx,'YData',llz);axis on
title(['Velocity magnitude (0-' num2str(vmax_disp) 'mm/s) (Figure 3c)'])
colormap(jet(256))
colorbar
ca = gca;ca.Position = [.05 .05 .8 .9];

%% Fig. 3d - ICG map co-registered with fU
% Need to add data

%% Fig. 3e - ICG time activity

% Creating a plot:
figure;                   
c1 = plot(ROI_ICG_norm(:,1));
hold on

% Defining and plotting three curves and their moving mean curves from the data:
c1_s = plot(movmean(ROI_ICG_norm(:,1),6,'omitnan'));  
c2 = plot(ROI_ICG_norm(:,2)+0.2);
c2_s = plot(movmean(ROI_ICG_norm(:,2)+0.2,6,'omitnan'));
c3 = plot(ROI_ICG_norm(:,3)+0.4);
c3_s = plot(movmean(ROI_ICG_norm(:,3)+0.4,6,'omitnan'));


% Defining the color and the width of line for each curve:
c1.Color = "#F9DA78";
c1_s.Color = "#F9DA78";
c1_s.LineWidth = 3;

c2.Color = "#FC8D62";
c2_s.Color = "#FC8D62";
c2_s.LineWidth = 3;

c3.Color = "#8DA0CB";
c3_s.Color = "#8DA0CB";
c3_s.LineWidth = 3;

title("Figure 3e")