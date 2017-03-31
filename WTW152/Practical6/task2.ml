# Now we start fitting
Q = log(y);
P = log(x);
A = polyfit(P,Q,1);

c=exp(A(2));
d=A(1);
disp('c: '),disp(c)
disp('d: '),disp(d)
disp('A(1)'),disp(A(1))
disp('A(2)'),disp(A(2))

hold on
plot(x, A(1).*P+exp(A(2)), 'b-')
