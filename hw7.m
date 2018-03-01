% 20161216 Sangjun Han
% Linear Algebra, Homework #7

clc;
clear;
close all;

time = linspace(0, 30, 200);

% Problem 1
x1 = (1/2) * (cos(time) + cos(sqrt(3) * time));
x2 = (1/2) * (cos(time) - cos(sqrt(3) * time));

figure;
plot(time, x1, 'r', 'LineWidth', 1);
hold on;
plot(time, x2, 'b', 'LineWidth', 1);
title('Problem 1')
xlabel('time');
legend('Spring 1', 'Spring 2')

% Problem 2
x3 = cos(time);
x4 = cos(time);

figure;
plot(time, x3, 'r', 'LineWidth', 3);
hold on;
plot(time, x4, 'b', 'LineWidth', 1);
title('Problem 2')
xlabel('time');
legend('Spring 1', 'Spring 2')

% Problem 3
x5 = cos(sqrt(3) * time);
x6 = -cos(sqrt(3) * time);

figure;
plot(time, x5, 'r', 'LineWidth', 1);
hold on;
plot(time, x6, 'b', 'LineWidth', 1);
title('Problem 3')
xlabel('time');
legend('Spring 1', 'Spring 2')

% Problem 4
x7 = (1/2) * (cos(sqrt(7/5) * time) + cos(time));
x8 = (1/2) * (-cos(sqrt(7/5) * time) + cos(time));

figure;
plot(time, x7, 'r', 'LineWidth', 1);
hold on;
plot(time, x8, 'b', 'LineWidth', 1);
title('Problem 4')
xlabel('time');
legend('Spring 1', 'Spring 2')

% Problem 5
x9 = (0.7887 * cos(sqrt(3 + sqrt(3) / 2) * time)) + (0.2114 * cos(sqrt(3 - sqrt(3) / 2) * time));
x10 = (-0.2886 * cos(sqrt(3 + sqrt(3) / 2) * time)) + (0.2887 * cos(sqrt(3 - sqrt(3) / 2) * time));

figure;
plot(time, x9, 'r', 'LineWidth', 1);
hold on;
plot(time, x10, 'b', 'LineWidth', 1);
title('Problem 5')
xlabel('time');
legend('Spring 1', 'Spring 2')