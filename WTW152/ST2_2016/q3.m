% Semester Test 2 - 2016, Question 3
% Related: page 79 of the textbook

clear all
clf
hold on

% Given data

x = [     1,    1.5,      2,    2.5,      3,    3.5,      4];
y = [0.0579, 0.0890, 0.1284, 0.1768, 0.2347, 0.3027, 0.3813];

% Question 3.1:
% Find a transformation from the ladder of powers which you
% feel prives the best linearisation

% Plot the original data
plot(x, y, 'r-*');

% Transform the data until we get a straight line
% Can guess or use a for loop
% Y.^n
Y = y.^(0.2);
plot(x, Y, 'g-*')

Y = y.^(0.3);
plot(x, Y, 'm-*')

Y = y.^(0.4);
plot(x, Y, 'b-*')

Y = y.^(0.5);
plot(x, Y, 'y-*')

% when n = 0.4, the data is most straight
Y = y.^(0.4);

% We now have the data in the form:
% y.^n = mx + b

% Use polyfit to determine m and b
%                        A(1)   A(2)
A = polyfit(x, Y, 1);
disp('a = ')
disp(A(1))

disp('b = ')
disp(A(2))

% Our linear model:
% y.^0.4 = 0.12*x + 0.1999

% Our non-linear model (required for least sqaures error):
% y = (0.12*x + 0.1999).^(1/0.4)
% y = (0.12*x + 0.1999).^(2.5)

% Plot the non-linear model
% y = (mx + b).^n
% NB: Use A(1) and A(2) and not rounded values
P = (A(1)*x + A(2)).^(1/0.4);
plot(x, P, 'g+-')

% Calculate the least squares error
error = norm(P - y).^2;
disp('Error = ')
disp(error)

% Extra: Brute force fitting:

bestPower = -1;
bestError = -1;

for i = 1:-0.01:0.01
    % Transform data
    Y = y.^i;

    % Create a model of the form y = (ax + b).^(1/n)
    % (Make y the subject)
    % First find a and b
    A = polyfit(x, Y, 1);
    model = (A(1)*x + A(2)).^(1/i);

    % Calculate the error (Compare fitted data to original data)
    error = norm(model - y).^2;

    if bestError == -1
        bestError = error;
    else
        if error < bestError
            bestError = error;
            bestPower = i;
        end
    end
end

disp('bestPower = ')
disp(bestPower)
disp('bestError = ')
disp(bestError)
