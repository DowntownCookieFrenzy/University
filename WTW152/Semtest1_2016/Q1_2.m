# Standard way to do this according to the memo.
clear all
k=1+((12/100)/12)
y(1) = 200000

for n=1:120
	y(n+1) =k*(y(n)) - 3000
end
t=0:120
plot(t,y)
grid

# Quick way to do this. Find the point in the range t where y(n) = 0
n=0
interp1(y,t,n)
