clear all
clf
hold on
D(1)=30
E(1)=50
for n=1:20
	D(n+1)=1.3*D(n) - 0.005*D(n)*E(n);
	E(n+1)=0.6*E(n) + 0.012*D(n)*E(n);
end
t=0:20;
plot(t,D)
plot(t,E)
grid

disp('D Max: '),disp(floor(max(D)))
disp('E Max: '),disp(floor(max(E)))
disp('D Min: '),disp(floor(min(D)))
disp('E Min: '),disp(floor(min(E)))
