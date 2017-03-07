clear all
P(1)=1.5

for n=1:200
	P(n+1)=r*P(n)*P(n)
end
