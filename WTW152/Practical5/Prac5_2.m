source('Prac5_1.m')
plot(x,y,'b*')
t = 0 : 0.01 : 16;
plot(t,polyval(a,t))

% egeldenhuys added;

for i = 1:16
	x(i)
	abs(y(i) - polyval(a, x(i)))
end
