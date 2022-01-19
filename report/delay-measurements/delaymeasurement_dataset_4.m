clear all
clc
close all

data_1servo_cw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'B5:B64');
data_1servo_ccw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'G5:G64');
data_3servo_cw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'L5:L64');
data_3servo_ccw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'P5:P64');
data_6servo_cw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'AJ5:AJ64');
data_6servo_ccw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'AN5:AN64');
data_9servo_cw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'AB5:AB64');
data_9servo_ccw = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'AF5:AF64');

trials = 1:1:60;
y_1servo_cw = data_1servo_cw;
y_1servo_ccw = data_1servo_ccw;
y_3servo_cw = data_3servo_cw;
y_3servo_ccw = data_3servo_ccw;
y_6servo_cw = data_6servo_cw;
y_6servo_ccw = data_6servo_ccw;
y_9servo_cw = data_9servo_cw;
y_9servo_ccw = data_9servo_ccw;


mean_y_1servo_cw = sum(y_1servo_cw)./60;
mean_y_1servo_ccw = sum(y_1servo_ccw)./60;
mean_y_3servo_cw = sum(y_3servo_cw)./60;
mean_y_3servo_ccw = sum(y_3servo_ccw)./60;
mean_y_6servo_cw = sum(y_6servo_cw)./60;
mean_y_6servo_ccw = sum(y_6servo_ccw)./60;
mean_y_9servo_cw = sum(y_9servo_cw)./60;
mean_y_9servo_ccw = sum(y_9servo_ccw)./60;



figure
set(gcf, 'Position', [200,200,1000,400]);

subplot(1,2,1);
plot(trials,y_1servo_cw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_1servo_cw, 'r');
title('Network Servo Delay Measurements: Single Servo CW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

subplot(1,2,2);
plot(trials,y_1servo_ccw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_1servo_cw, 'r');
title('Network Servo Delay Measurements: Single Servo CCW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

figure
set(gcf, 'Position', [200,200,1000,400]);

subplot(1,2,1);
plot(trials,y_3servo_cw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_3servo_cw, 'r');
title('Network Servo Delay Measurements: Three Servo CW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

subplot(1,2,2);
plot(trials,y_3servo_ccw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_3servo_cw, 'r');
title('Network Servo Delay Measurements: Three Servo CCW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');


figure
set(gcf, 'Position', [200,200,1000,400]);

subplot(1,2,1);
plot(trials,y_6servo_cw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_6servo_cw, 'r');
title('Network Servo Delay Measurements: Six Servo CW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

subplot(1,2,2);
plot(trials,y_6servo_ccw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_6servo_cw, 'r');
title('Network Servo Delay Measurements: Six Servo CCW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');


figure
set(gcf, 'Position', [200,200,1000,400]);

subplot(1,2,1);
plot(trials,y_9servo_cw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_9servo_cw, 'r');
title('Network Servo Delay Measurements: Nine Servo CW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

subplot(1,2,2);
plot(trials,y_9servo_ccw,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_9servo_cw, 'r');
title('Network Servo Delay Measurements: Nine Servo CCW');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');



servo1_values = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'C1:C60');
servo3_values = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'C61:C120');
servo6_values = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'C121:C180');
servo9_values = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'C181:C240');

servoall_values = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'C1:C240');

serv1_median = median(servo1_values);
serv3_median = median(servo3_values);
serv6_median = median(servo6_values);
serv9_median = median(servo9_values);
servall_median = median(servoall_values)

figure


% x = [0:0.15:9];
% y=[trials trials trials trials];
% z=[y_1servo_ccw y_3servo_ccw y_6servo_ccw y_9servo_ccw];
% scatter3(x, y, z, 'b*');
x = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'B1:B240');%trials
y = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'A1:A240');%num of servos
z = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'C1:C240');%delaymeasure
zmed = xlsread('Dynamixel3DPlotData.xlsx', 'Sheet1', 'D1:D240');%median
plot3(x, y, z, 'LineStyle','none');
hold on
yticks([1 3 6 9])
%xticklabels({'1','3','6','9'})

x0 = min(x) ; x1 = max(x) ; nx = 500 ;
y0 = min(y) ; y1 = max(y) ; ny = 500 ;
xx = linspace(x0,x1,nx) ;
yy = linspace(y0,y1,ny) ;
[X,Y] = meshgrid(xx,yy) ;
Z = griddata(x,y,z,X,Y)  ;
surf(X,Y,Z)
shading interp


Zmed = griddata(x,y,zmed,X,Y)  ;
mediansurf = surf(X,Y, Zmed);
mediansurf.EdgeColor=[1 0 0]
%set(mediansurf,'cdata',zeros(500));
%set(mediansurf,'FaceAlpha',0.5);
colorbar

xlabel('Trial Runs');
ylabel('Number of Servos');
zlabel('Command Delay(us)');
hold off





