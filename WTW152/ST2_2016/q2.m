% Semester Test 2 - 2016, Question 2
% Related: page 73 of the textbook. Example 1

% NOTE: There are 4 plots on the graph, however you need to
% zoom in to see the distinct points

% Setup
clear all;
clf reset
clf
hold on

% Given Data
x = [     1,    1.5,      2,    2.5,      3,    3.5,      4];
y = [0.1466, 0.1620, 0.1790, 0.1978, 0.2187, 0.2417, 0.2671];

% Plot the raw data
plot(x, y, 'r*')

% Need to apply the model y = ae^(bx) to the raw Data

% First we need to linearise the model:
% y = ae^(bx)
% ln(y) = ln(ae^(bx))
% ln(y) = ln(a) + ln(e^(bx)) // By product law
% ln(y) = ln(a) + [bx * ln(e)] // By power law

% So we have
% ln(y) = bx + ln(a)
%   Y   = bX + c
%         ln(a) = c
%         a = exp(c)

% ln(y) == log(y) in matlab

% Plot the linear model
plot(x, log(y), 'b-')

% Get b and c for a straight line (1), given the transformed data
A = polyfit(x, log(y), 1);
% A(1) = b
% A(2) = c
% a = exp(A(2))

% Plot the straight line through the linear model
% Y = bx + C
plot(x, A(1) * x + A(2), 'g-')

% Plot the non-linear model
% y = ae^(bx)
plot(x, exp(A(2)) * exp(A(1) * x), 'p*')
hold off

% -----------------------------------------
% QUESTIONS
% ----------------------

% --------------
% Equation of straight line fitted to transformed data (Substitute values)
% ---------

% Get the straight line fitted to the transformed data
% Transformed data: ln(y) = bx + ln(a)
polyfit(x, log(y), 1)
% y = A(1) * x + A(2)

% --------------
% Equation of model (Substitute values)
% ---------

% Model: y = ae^(bx)

% NOTE:
% A(2) = ln(a)
% exp(A(2)) = a

% So we have
%  y = exp(A(2))*exp(A(1) * x)

% --------------
% Least Squares error
% ---------
model = exp(A(2))*exp(A(1) * x);
error = norm(model - y).^2
