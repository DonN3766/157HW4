%% AE 157 Homework 4 .... Dr. Turkoglu
%%Now on GITHUB!
%% Names
%Don Nguyen, Kris Nemirsky, Rick Morrison, Brian Ha, Micheal Feher, Quelina
%Richardson, Louis Carelton

%% #1
%5 Degree Tracking with Disturbance
clear all;
close all;
clc;

%Load 5_bump.mat into work space ...... 5 Degree step input pulses with 
%disturbance

load('5_bump.mat');     %Recorded data from experiment
load('5_bump_5s.mat');  %Only 5 seconds of data, used to find stepinfo


% Elevation

figure
x_E_5 = ElevationScope(:,1);
y_E_5 = ElevationScope(:,3);
y_input_E_5 = ElevationScope(:,2);
plot(x_E_5,y_E_5, 'r')
hold on;
plot(x_E_5,y_input_E_5)
title('Elevation');
xlabel('Time (sec)');
ylabel('Degrees');
legend('Elevation', 'Input' );
s_El = stepinfo(Elevation5s_5(:,3), Elevation5s_5(:,1) , 5)

% Travel

figure
x_T_5 = TravelScope(:,1);
y_T_5 = TravelScope(:,3);
plot(x_T_5,y_T_5, 'r');
hold on;
y_input_T_5 = TravelScope(:,2);
plot(x_T_5,y_input_T_5);
title('Travel');
xlabel('Time (sec)');
ylabel('Degrees');
legend('Travel', 'Input' );
s_Tr = stepinfo(Travel5s_5(:,3), Travel5s_5(:,1),5)

