close all
clear all
clc
% Parameters
Fs = 44100;                   % Sampling frequency (Hz)
fc = 1000;                    % Carrier frequency (Hz)
kf = 100;                     % Frequency deviation constant (Hz/Volt)
duration = 3;                 % Duration of the signal (seconds)

% Generate message signal (e.g., a sinusoidal waveform)
t = linspace(0, duration, duration*Fs);
t=[0 t];
[y,Fs]=audioread("rick roll.MP3",[round(1*44100),round(4*44100)]);
message_signal = y;   % Replace with your own message signal

% Frequency modulation
modulated_signal = fmmod(message_signal, fc, Fs, kf);

% Plotting
figure;
subplot(2, 2, 1);
plot(t, message_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Message Signal');
for i=1:length(t)+1
    mc=cos(2*pi*1000*t);
end

subplot(2,2,3)

subplot(2, 2,4);
plot(t, modulated_signal);
xlabel('Time (s)');
ylabel('Amplitude');
title('Modulated Signal');


% Playback the modulated signal (optional)
soundsc(modulated_signal, Fs);
