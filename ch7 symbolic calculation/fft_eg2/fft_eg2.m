% frequency f = 4 Hz
% draw the time domain graph and make a fft to the freq domain
f0 = 4;     % frequency of the sine or cosine wave
Fs = 100;   % sampling rate
Ts = 1/Fs;  % sampling time interval
t = 0:Ts:1-Ts;  %sampling period
n = length(t);  % number of samples
noise = randn(1,size(y,2));
y = 3 * sin(4*2* pi*t) + 5*sin(2*2*pi*t) + noise; 

% plot the cosine curve in the time domain
plot(t,y)
xlabel('time (seconds)')
ylabel('y(t)')
title('Sample Sine Wave')
grid on

%% FFT
fft(y)   % complex numbers output
YfreqDomain = fft(y);
%doc stem
stem(abs(YfreqDomain));
% 
% xlabel('Sample Number')
% ylabel('Using the Matlab FFT command')
% grid on
% axis([0 20 0 6])


%%better graph
[YfreqDomain, frequencyRange] = positiveFFT(y,Fs);
stem(frequencyRange, abs(YfreqDomain));
xlabel('Freq(Hz)');
ylabel('Amplitude');
title('using the posiveFFT function');
grid on
axis([0, 20, 0, 6])

function [X, freq] = positiveFFT(x, Fs)
N = length(x);  % get the number of points
k = 0:N-1;
T = N/Fs;
freq = k/T;
X = fft(x)/N*2  % Normalize the data
%only want the first half of the data since it is redundant
cutOff = ceil(N/2);
X = X(1:cutOff);
freq = freq(1:cutOff);
end
