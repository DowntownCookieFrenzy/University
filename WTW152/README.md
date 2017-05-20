# WTW152 - Mathematical Modelling.

All files in this section of the repository will be octave scripts ( should be compatible with matlab ).


## Quick Notes

### Display variables in current scope
````matlab
	who
````

### Assign variables
````matlab
	x = y
````

### Display a variable in the terminal
````matlab
	x
````

### Scripts
To get atom to correctly highlight files please use the ".mlb" file extension.

#### Load a Scripts
````matlab
	source('anything.mlb')
````

#### Create a function (Generic)
````matlab
	function <functionName> (<argumentList>)
		<instructions>
	endfunction
````

#### Create a function (Example)
````matlab
	function sum (a,b)
		a+b
	endfunction
````

#### Function with a return value
````matlab
function ret = sum (a,b)
	ret = a + b
	endfunction
````

#### Always clear
````matlab
clear all
clf
````

#### Proper Plots
````matlab
somefunction()
plot(1:10,somefunction())
legend
grid
````

#### Polyfit
Returns [a,b] where a is the slope and b is a structure.
The structure b has a few fields but we want yf which is basically the y(x) values of the function.

````matlab
x = [1,2,3,4];
y = [1,2,3,4];

[a,b] = polyfit(x,y,degree);
disp(b.yf)
disp(a(1))
````

#### Interp1 (Interpolate 1-D)
Given a function f(n) and a range (you can guess this) we can find the point at which 
f(n) = a

````matlab
f = [1,3,4,5]
range=0:4
interp1(f,t,a)
````

Where a is some constant value for n.

#### Polyfit - Find functions when data set is given
````matlab
given_data = [26,27,30,41,48,52,54]
given_data_differences = [1,3,11,7,4,2]
given_data_shortened = [26,27,30,41,48,52]

given_data_differences_div_given_data_shortened = [1/26,3/27,11/30,7/41,4/48,2/52]

polyfit(given_data_shortened,given_data_differences_div_given_data_shortened,1)
````

The first value is A ( slope ) and the second value is B ( Intercept ).
