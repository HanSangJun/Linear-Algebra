% 20161216 HAN, SANGJUN
% Linear Algebra HW #5

clc;
clear;
close all;

y = [0, 12; 1/8, -2.828; 2/8, -4; 3/8, 2.828; 4/8, -4; 5/8, 2.828; 6/8, -4; 7/8, -2.828];

figure;
% original data sequence
plot(y(:, 1), y(:, 2), '--gs', 'LineWidth', 2, 'MarkerSize', 10, 'MarkerEdgeColor', 'b', 'MarkerFaceColor', [0.5,0.5,0.5]);
hold on;

p = 1:8;
time = linspace(0, 7/8, 200);

y_fft = fft(y(:, 2), 8)
f = @(t)((1/8) * sum(y_fft' * (cos(2 * pi * (p-1) * t) + i * sin(2 * pi * (p-1) * t))'));

for i=1:size(time, 2)
    result(i) = f(time(i));
end;

% recovered continous waveform
plot(time, result, 'r', 'LineWidth', 2);
title('original data sequence VS recovered contiuous waveform')
xlabel('time');
ylabel('f(t)');
legend('original', 'recovered')