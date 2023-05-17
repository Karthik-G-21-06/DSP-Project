close all
clear all
clc
[y,Fs]=audioread("rick roll.MP3",[round(1*44100),round(2*44100)]);
subplot(3,1,1)
t=1:1/Fs:3;
plot(1:length(y),y);
% n=0:1/;
% subplot(3,1,2)
% plot(n,sin(2*pi*n));
yw=fft(y);
subplot(3,1,2)
plot(t,yw)
fm=fmmod(y,22e3,Fs,50);
subplot(3,1,3);
plot(t,fm);