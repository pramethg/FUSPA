# Title of Dataset: Data for the article "Multiparametric Functional Brain Hemodynamic Imaging using A Single System Combining Ultrafast Ultrasound and Multispectral Photoacoustic"

* Summary Metrics

### Chen et al., 2023
Code to generate analyses and figures in *Chen et al., 2023*
Rights reserved for Biophotonics And Ultrasound Imaging Laboratory, The Pennsylvania State University. 

---------------

* File count: 10


* Total file size: 143 MB


* Range of individual file sizes: 1 KB - 127MB


* File formats: .mat and .m
---------------

***
### Overview

* System Requirments and Installation Information

* Data for Figure generating scripts
    * ```Fig1Data.mat```, ```Fig2Data.mat```, ```Fig3data.mat```, ```Fig4Data1.mat```, ```Fig4Data2.mat```,```Fig4Data3.mat```, ```Fig5Data.mat```

* Figure Generating Scripts
    * ```Fig1.m```, ```Fig2.m```, ```Fig3.m```, ```Fig4.m```, ```Fig5.m```

* How to use the code 

***

### System Requirements and Installation Information

* All code is written in MATLAB 2022b. 

* The required add-ons for Matlab are listed below: 
├── Imaging Processing Toolbox
├── Signal Processing Toolbox
├── Statistics and Machine Learning Toolbox

* Please make sure the matlab have installed all add-ons of matlab before running the code

### Data for Figure generating scripts 
```
Code for figures
├── Figure 1        
│   ├── Fig1Data.mat
│
├── Figure 2
│   ├── Fig2Data.mat
│
├── Figure 3
│   ├── Fig3Data.mat
│
├── Figure 4
│   ├── Fig4Data.mat
│
├── Figure 5
│   ├── Fig5Data.mat
```


#### ```Fig1Data.mat```
* Description: Data for Figure 1e that demonstrated the example graph for ICG. (For ULM figures, please refer to Figure3Data.mat)

* Format(s): .mat

* Size(s): 201 KB

* Variables:
```
Fig1Data.mat
├── ICG_Fig1
```
    * ICG_Fig1: A double matrix with size 171x211 containing indocyanine green (ICG) data for demonstration.


#### ```Fig2Data.mat```
* Description: Data for Figure 2b-2d that demonstrated the example graphs of fUS images, the quantitative vertical velocity map and the unmixed oxygen saturation maps   at Bregma -5.5, Bregma -4.0 and Bregma -2.7

* Format(s): .mat

* Size(s): 1,353 KB

* Variables:
```
Fig2Data.mat
├── mask_sO2
├── mask_fUS
├── vol_sO2_B_55
├── vol_sO2_B_4
├── vol_sO2_B_27
├── Vz_vol_all_B_55
├── Vz_vol_all_B_4
├── Vz_vol_all_B_27
├── vol_B_55
├── vol_B_4
├── vol_B_27
```
    * mask_sO2: A double matrix with size 91x121 filtering part of unmixed sO2 map of Figure. 2d

    * mask_fUS: A double matrix with size 389x491 filtering part of fUS map of Figure. 2b

    * vol_B_55: A double matrix with size 11x215x325 containing the data to generate fUS image at Bregma -5.5 with of Fig. 2b 

    * vol_B_4: A double matrix with size 11x215x325 containing the data to generate fUS image at Bregma -4.0 with of Fig. 2b

    * vol_B_27: A double matrix with size 11x215x325 containing the data to generate fUS image at Bregma -2.7 with of Fig. 2b  

    * vol_sO2_B_55: A double matrix with size 223x192x11 containing the data to generate unmixed oxygen saturation map at Bregma -5.5 of Fig. 2d

    * vol_sO2_B_55: A double matrix with size 223x192x11 containing the data to generate unmixed oxygen saturation map at Bregma -5.5 of Fig. 2d

    * vol_sO2_B_4: A double matrix with size 223x192x11 containing the data to generate unmixed oxygen saturation map at Bregma -4.0 of Fig. 2d
    
    * vol_sO2_B_27: A double matrix with size 223x192x11 containing the data to generate unmixed oxygen saturation map at Bregma -2.7 of Fig. 2d

    * Vz_vol_all_B_55: A double matrix with size 1x196x266 containing the data for a vertical velocity map based on ultrasound field speckle decorrelation at Bregma   -5.5 of Fig. 2c

    * Vz_vol_all_B_4: A double matrix with size 1x196x266 containing the data for a vertical velocity map based on ultrasound field speckle decorrelation at Bregma -4.0 of Fig. 2c

    * Vz_vol_all_B_27: A double matrix with size 1x196x266 containing the data for a vertical velocity map based on ultrasound field speckle decorrelation at Bregma    -2.7 of Fig. 2c


#### ```Fig3Data.mat```
* Description: Data for Figure 3a-3e that demonstrated the example graphs of ULM image with microbubble(MB) intensity, MB count intensity with color-coded vertical direction, averaged blood speed map and the time activity map of selected ROIs 

* Format(s): .mat

* Size(s): 7,814 KB

* Variables:
```
Fig3Data.mat
├── ROI_ICG_norm
├── MatOut
├── MatOut_vel
├── MatOut_zdir
├── ULM
```
    * ROI_ICG_norm: A double matrix with size 183x3 containing the data to generate the time activity map of selected ROIs of Fig. 3e

    * MatOut: A double matrix with size 1131x1321 containing the data for plotting ULM image with MB intensity in Fig. 3a

    * MatOut_vel: A double matrix with size 1131x1321 containing the data for plotting an averaged blood speed map in Fig. 3c

    * MatOut_zdir: A double matrix with size 1131x1321 containing the data for plotting MB count intensity with color-coded vertical direction in Fig. 3b

    * ULM: structure file that contains parameters in ULM analysis reconstruction

#### ```Fig4Data.mat```
* Description: Data for Figure 4b-4h8 that demonstrated the example graphs of unmixed sO2 map, the relative change map of fUS, The quantitative vertical velocity map, the ROIs of the above figures, fUS image, differential vertical speed changes and the averaged fUS changes as well as the averaged SO2 changes in the given ROI.

* Format(s): .mat

* Size(s): 130,718 KB

* Variables:
```
Fig4Data.mat
├── MatOut
├── MatOut_zdir
├── ULM
├── Vz_all_e
├── Vz_all_new
├── Vz_artery_all_new
├── Vz_vein_all_new
├── avg_PDI_change_ROI
├── fUS_frame
├── fUS_frame_change
├── PA_frame
├── ROI_sO2
├── fUS_change_f
├── PA_d
```
    * MatOut: A double matrix with size 1031x1231 containing the data for plotting the vasculature imaging using ULM with color coded vertical flow direction in Fig. 4b

    * MatOut_zdir: A double matrix with size 1031x1231 containing the data for plotting the vasculature imaging using ULM with color coded vertical flow direction in Fig. 4b

    * ULM: structure file that contains parameters in ULM analysis reconstruction

    * Vz_all_e: A double matrix with size 195x223 containing data for plotting the quantitative vertical velocity map generated from ultrasound field speckle decorrelation of Figure 4e

    * Vz_all_new: A double matrix with size 195x223x147 containing data for plotting the temporal changes of the vertical flow velocity map for the corresponding ROI in Fig. 4g6 and Fig. 4h6

    * Vz_artery_all_new: A double matrix with size 195x223x147 containing artery related data for plotting vessels with ascending and descending flow in Fig. 4g3 & Fig. 4h3 and differential vertical speed changes between arteries and veins in Fig. 4g8 & Fig. 4h8

    * Vz_vein_all_new: A double matrix with size 195x223x147 containing vein related data for plotting vessels with ascending and descending flow in Fig. 4g2 & Fig. 4h2 and differential vertical speed changes between arteries and veins in Fig. 4g8 & Fig. 4h8

    * avg_PDI_change_ROI: A cell matrix with size 1x3 containing data for plotting the averaged fUS changes as well as the averaged SO2 changes of the ROI in Fig. 4g7 & Fig. 4h7

    * fUS_frame: A double matrix with size 195x223x147 containing data for plotting the fUS image in Fig. 4c

    * fUS_frame_change: A double matrix with size 195x223x147 containing data for plotting the enlarged relative fUS change map at the given ROI in Fig. 4g4 & Fig. 4h4

    * PA_frame: A double matrix with size 80x137x147 containing data for plotting the unmixed sO2 map at the given ROI in Fig. g5 & Fig. h5

    * ROI_sO2: A double matrix with size 147x3 containing data for plotting the averaged fUS changes as well as the averaged SO2 changes of the ROI in Fig. 4g7 & Fig. 4h7

    * fUS_change_f: A double matrix with size 180x186 containing data for plotting the relative change map of the fUS intensity during hypercapnia for Fig. 4f

    * PA_d: A double matrix with size 80x137 containing data for plotting the sO2 map in Fig. 4d

#### ```Fig5Data.mat```
* Description: Data for Figure 5a-5j that demonstrated the example graphs of the fUS measured venous temporal dynamics lag cortical temporal dynamics

* Format(s): .mat

* Size(s): 7,224 KB

* Variables:
```
Fig5Data.mat
├── avg_cortex_data
├── avg_filter_detrend
├── avg_filter_detrend_diff
├── avg_filter_detrend_ventr_data
├── Fig5adata
├── Fig5b_data
├── Fig5e_data
├── Fig5h_data
├── filter_detrend_cortex_data
├── Fs
├── lag_array
├── MatOut
├── MatOut_zdirs
├── r_filter_detrend
├── r_filter_detrend_diff
├── std_filter_detrend
├── std_filter_detrend_diff
├── ULM
```
    * avg_cortex_data : A double matrix with size 1x300 containig averaged cortex data for plotting the example time series of the averaged cortical dynamics and averaged venous dynamics in Fig. 5d

    * avg_filter_detrend: A double matrix with size 1x13 containing averaed filtered detrended data for plotting the cross correlation between cortex and venous signal in Fig. 5f

    * avg_filter_detrend_diff: A double matrix with size 1x13 containing averaed filtered detrended differentiated data for plotting the cross correlation between negative derivative of cortex and venous signal in Fig. 5i

    * avg_filter_detrend_ventr_data: A double matrix with size 1x300 containig averaged filtered detrended brain ventricle data for plotting the example time series of the averaged cortical dynamics and averaged venous dynamics in Fig. 5d

    * Fig5adata: A double matrix with size 188x129 containing data for plotting the cortical fUS dynamics in Fig. 5a

    * Fig5b_data: A double matrix with size 188x129 containing data for plotting the fUS change map during hypercapnia stimulation in Fig. 5b

    * Fig5e_data: A double matrix with size 188x129 containing data for plotting the cross correlation between the averaged cortical fUS temporal dynamics and the temporal dynamics of each voxel in the image in Fig. 5e

    * Fig5h_data: A double matrix with size 188x129 containing data for plotting the cross correlation between the negative derivative of the cortical signals to each voxel in Fig. 5h

    * filter_detrend_cortex_data: A double matrix with size 1x300 containig filtered detrended brain cortex data for plotting the example time series of the averaged cortical dynamics and averaged venous dynamics in Fig. 5d

    * Fs: A number value of sampling frequency

    * lag_array: A double matrix with size 1x13 containing time lag information for calcultaing the error bar in Fig. 5f & Fig. 5i

    * MatOut: A double matrix with size 1061x691 containing the microbubble intensity(MB) part data for plotting the ULM image of the sagittal plane in Fig. 5c

    * MatOut_zdir: A double matrix with size 1061x691 containing the microbubble intensity(MB) count intensity with color-coded vertical direction data for plotting the ULM image of the sagittal plane in Fig. 5c

    * r_filter_detrend: A double matrix with size 201x140x13 containing filtered detrended data for plotting the enlarged cross- correlation map in the given ROI at different lags in Fig. 5g

    * r_filter_detrend_diff: A double matrix with size 201x140x13 containing filtered detrended differentiated data for plotting the enlarged cross- correlation map in the given ROI at different lags in Fig. 5j

    * std_filter_detrend: A double matrix with size 1x13 containing standard diviation of filtered detrended data for calculating the error bar in Fig. 5f

    * std_filter_detrend_diff: A double matrix with size 1x13 containing standard diviation of filtered detrended differentiated data for calculating the error bar in Fig. 5i

    * ULM: structure file that contains parameters in ULM analysis reconstruction


### Figure Generating Scripts
```
Code for figures
├── Figure 1        
│   ├── Fig1.m
│
├── Figure 2
│   ├── Fig2.m
│
├── Figure 3
│   ├── Fig3.m
│
├── Figure 4
│   ├── Fig4.m
│
├── Figure 5
│   ├── Fig5.m
```
#### ```Fig1.m```
* Generating plots for Figure 1
Input: Fig1Data.mat
Output: 1 plots for Figure 1e

#### ```Fig2.m```
* Generating plots for Figure 2
Input: Fig2Data.mat
Output: 9 plots in total for Figure 2b-2d with Bregma -5.5, Bregma -4.0, Bregma -2.7 three locations.

#### ```Fig3.m```
* Generating plots for Figure 3
Input: Fig3Data.mat
Output: 4 plots for Figure 3a, 3b, 3c and 3e
 
#### ```Fig4.m```
* Generating plots for Figure 4
Input: Fig4Data.mat
Output: 18 plots for Figure 4b - 4h8

#### ```Fig5.m```
* Generating plots for Figure 5
Input: Fig5Data.mat
Output: 8 plots for Figure 5a - 5j

### How to use the code
* Open the .m file using matlab and click run under the "Editor" tab. All figures will be generated automatically. The code might take a few seconds to minutes. Please wait patiently until the code is done (dispalying only this ```>> ``` sign at the end of command window of matlab).

* Please refer to System Requirements and Installation Information part to make sure all required add-ons are installed on the matlab before running the code

* To install add-ons, click "Apps" tab and click "Get More Apps". A window of "Add-on Explorer" will show up. Then, search for any add-ons needed using that window for the code.

##### Notice: Please place the code and data files in the **SAME** folder to run the code