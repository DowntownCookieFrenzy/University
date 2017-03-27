t = [7,14,21,28,35,42];
P = [12,32,83,250,500,1140];
Q = log(P);
A = polyfit(t,Q,1);

a=exp(A(2));
b=A(1);
disp('a: '),disp(a)
disp('b: '),disp(b)
