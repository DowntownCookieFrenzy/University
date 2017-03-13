% Prac 5, Approximating data by low-order polynomials

clear all
clf
hold on
x=0:16;

% Given Data
y = [0.0, 1.7, 2.0, 0.3, 0.1, 0.9, 1.8, 3.1, 4, 2.9, 1.1, 0.8, 0.2, 1.2, 2.6, 3.7, 4.5];

% Calculate interpolation polynomial of degree 3 for the given data
a = polyfit(x,y,3);

% Array operations happening here!
p = a(1)*x.^3 + a(2)*x.^2 + a(3) * x + a(4);
error=norm(p-y).^2;

% Plot our given and our model
t = 0:0.01:16;
plot(x,y,'b*')
plot(t, polyval(a, t), 'r-');

% Calculate difference between given data and polyfit curve
for i = 1:16
    %disp(x(i))
    abs(y(i) - polyval(a, x(i)));
end

% Calculate Some different degrees, display and plot.

deg = 3:6;

% Our final Model and Polyfit will be stored here
newP = 0;
newA = 0;

% Loop for each degree and calculate the error value
for i = 1:length(deg)

	disp('--------')
	disp('Degree: ')

	aValue = deg(i) + 1;;
	newA = polyfit(x,y,deg(i));

	% Calculate and add the terms to our model
	% y = Ax^2 + Bx + C
	% -> y += Ax^2 ...
    for j = 0:deg(i)
		%disp(aValue)
		%disp(aValue)
		%disp(j)
		%disp('----')

        newP = newP + newA(aValue)*x.^j;
		aValue = aValue - 1;
    end

	% Plot and display some values
	t = 0:0.01:16;
	plot(t, polyval(newA, t), 'r-');

    disp(deg(i));

	disp('error: ')
	disp(norm(newP-y).^2);

	disp('Polyfit: ')
	disp(newA);
end

% NOTE: Disable here to plot the different degrees
clf
hold on

% Plot the final model as set by the deg variable above. Should be 6 for question 2
% NOTE: the new range, cant extrapolate using this model
t = -1:0.01:17;
plot(x,y,'b*')
plot(t, polyval(newA, t), 'r-');

% Calculate difference between given data and polyfit curve (Q 2.2 of degree 6)
for i = 1:16
    disp(x(i))
    disp(abs(y(i) - polyval(newA, x(i))))
end
