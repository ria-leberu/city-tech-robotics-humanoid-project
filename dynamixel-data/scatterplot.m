%Scatterplot for Clockwise Command Delay for AX12

clear all
clc
close all

x=linspace(0,29,30);
y=[378.2000
385.1000
560
576.6000
1.0126e+03
683.2000
1.3278e+03
1.2582e+03
527.8000
597.2000
869.2000
1.2518e+03
1.2166e+03
757.8000
674
675.6000
410.2000
418.4000
1.1874e+03
1.3456e+03
487.2000
648.4000
504.2000
621.4000
946.4000
1.2924e+03
472.8000
622.2000
364
942.2000]
;

%b1=x\y;
%yCalc=b1*x;
scatter(x,y)
%hold on
%plot(x,yCalc);
xlabel('Trial Number');
ylabel('Delay (Microseconds)');
title('AX12 Clockwise Command Delay');
grid on;
