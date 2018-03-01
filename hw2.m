%% Clear
clear;
close all;
clc;

% 20161216
% HAN, SANGJUN in EECS
% HW2 for Linear Algebra
% 2017. 4. 5

%% Solution by continuous integration
N = 1000;
X = sort(rand(N, 1));
y = (1/4) * sin(2 * pi * X);

%% When N = 3
X_3 = [0 1/4 2/4 3/4 1];
A = [2 -1 0; -1 2 -1; 0 -1 2];
f = @(c) (pi^2) * sin(2 * pi * c);
h = 1/4;
y_3 = inv(A) * ((h^2) .* [f(X_3(2)); f(X_3(3)); f(X_3(4))]);
y_3 = [f(X_3(1)); y_3; f(X_3(5))];

%% When N = 5
X_5 = [0 1/6 2/6 3/6 4/6 5/6 1];
A = [2 -1 0 0 0; -1 2 -1 0 0; 0 -1 2 -1 0; 0 0 -1 2 -1; 0 0 0 -1 2];
f = @(c) (pi^2) * sin(2 * pi * c);
h = 1/6;
y_5 = inv(A) * ((h^2) .* [f(X_5(2)); f(X_5(3)); f(X_5(4)); f(X_5(5)); f(X_5(6))]);
y_5 = [f(X_5(1)); y_5; f(X_5(7))];

%% When N = 7
X_8 = [0 1/8 2/8 3/8 4/8 5/8 6/8 7/8 1];
A = [2 -1 0 0 0 0 0; -1 2 -1 0 0 0 0; 0 -1 2 -1 0 0 0; 0 0 -1 2 -1 0 0; 0 0 0 -1 2 -1 0; 0 0 0 0 -1 2 -1; 0 0 0 0 0 -1 2];
f = @(c) (pi^2) * sin(2 * pi * c);
h = 1/8;
y_8 = inv(A) * ((h^2) .* [f(X_8(2)); f(X_8(3)); f(X_8(4)); f(X_8(5)); f(X_8(6)); f(X_8(7)); f(X_8(8))]);
y_8 = [f(X_8(1)); y_8; f(X_8(9))];

%% Graph
figure;
plot(X, y, 'r');
hold on;
plot(X_3, y_3, 'b');
hold on;
plot(X_5, y_5, 'g');
hold on;
plot(X_8, y_8, 'k');
legend('Integration','N=3', 'N=5', 'N=7'); xlabel('x'); ylabel('U'); title(['Comparing solutions']);

