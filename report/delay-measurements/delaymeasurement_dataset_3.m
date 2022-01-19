clear all
clc
close all

data_1servo = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'B5:B64');
data_3servo = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'L5:L64');
data_6servo = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'AJ5:AJ64');
data_9servo = xlsread('DynamixelDataDelay.xlsx', 'Sheet1', 'AB5:AB64');

trials = 1:1:60;
y_1servo = data_1servo;
y_3servo = data_3servo;
y_6servo = data_6servo;
y_9servo = data_9servo;


mean_y_1servo = sum(y_1servo)./60
mean_y_3servo = sum(y_3servo)./60
mean_y_6servo = sum(y_6servo)./60
mean_y_9servo = sum(y_9servo)./60


figure
plot(trials,y_1servo,'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_1servo, 'r');
title('Network Servo Delay Measurements: Single Servo');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');


figure
plot(trials,y_3servo, 'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_3servo, 'r');
title('Network Servo Delay Measurements: Three Servo');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

figure
plot(trials,y_6servo, 'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_6servo, 'r');
title('Network Servo Delay Measurements: Six Servo');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');

figure
plot(trials,y_9servo, 'b');
hold on
plot(trials, ones(length(trials),1)*mean_y_9servo, 'r');
title('Network Servo Delay Measurements: Nine Servo');
xlabel('Trial');
ylabel('Delay (us)');
ylim([0 1400]);
legend('Trial Data','Mean', 'Location', 'southeast');


