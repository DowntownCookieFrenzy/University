clear all
clf

% Given data
x = [7, 13, 17, 28, 29.5, 31.5, 33, 44.5, 48, 52, 59, 60, 62.5, 68, 74.5, 79, 80, 81.5, 87.5, 90, 91, 97.5, 103, 109, 117];
y = [1.4, 1.65, 1.78, 2.0, 2.1, 2.12, 2.14, 2.38, 2.44, 2.44, 2.5, 2.6, 2.56, 2.62, 2.68, 2.82, 2.8, 2.8, 2.85, 2.85, 2.9, 2.97, 2.97, 3.01, 3.18];
% Can also use x = [7 13 17...];

% Apply the transformation sqrt(y)
Y = sqrt(y);

% Plot sqrt(y) against x
plot(x, Y, 'k*');

hold on;
grid on;

% Fit a line through the points (x, sqrt(y))
a = polyfit(x, Y, 1)

% Plot the first and last points of the fitted line
% x(1) = 7, x(n) = 117
% y = ax + b
% a and b are given by polyfit
s = [7 117];
plot(s, a(1)*s + a(2), 'r-');
