% Semester Test 2 - 2016, Question 4.2

% Given data
x = [     1,    1.5,      2,    2.5,      3,    3.5,      4];
y = [2.8284, 2.8647, 2.8936, 2.9164, 2.9345, 2.9488, 2.9599];

% Non-Linear Model
% y = M / ( 1 + Ce.^(-rMx) )

% Linear model:
% log(y / (M - y)) = rMx - log(C)
%          Y       = ax  +   b
% a = rM
% b = -log(C)

% M is the population limit. Appears to be 3 from the data
% OR
% Brute force the value of M to get the lowest error
bestError = -1;
bestM = 0;
bestC = -1;
bestR = -1;
bestA = -1;
bestB = -1;

for i = 1:0.001:4
    if i == 0
        continue
    end

    M = i;
    Y = log(y./(M - y));
    % NB: use `./` for matrix division!

    % To fit the data to the Non-Linear model, we need `a` and `b`
    % We get these values by fitting a straight line to the data
    % fitted to the linear model

    A = polyfit(x, Y, 1);

    % a = rM
    % r = a / M
    r = A(1) / M;

    % log(C) = -b
    % C      = exp(-b)
    C = exp(-A(2));

    % Fit the data according to the non-linear model
    model = M ./ (1 + C * exp(-r * M * x));
    error = norm(model - y).^2;

    if bestError == -1
        bestError = error;
    else
        if error < bestError
            bestError = error;
            bestM = M;
            bestC = C;
            bestR = r;
            bestA = A(1);
            bestB = A(2);
        end
    end
end

disp('a = ')
disp(bestA)
disp('b = ')
disp(bestB)
disp('M = ')
disp(bestM)
disp('r = ')
disp(bestR)
disp('C = ')
disp(bestC)
disp('Error = ')
disp(bestError)
