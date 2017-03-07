# Complexity Analysis

Basically covers the fact that all algorithms have tradeoffs. In the case of complexity analysis space (RAM) and time (execution time) is mainly considered.

Let f(n) be the function that describes the complexity of an algorithm. We are only concerned with asymptotic complexity ; which is to say we are only concerned with the order of complexity ( magnitude of a function ).

This means that the function f(x) has a low order of complexity compared to g(x)<br>
![No connection](https://latex.codecogs.com/gif.latex?f(x)&space;=&space;x^2)<br>
![No connection](https://latex.codecogs.com/gif.latex?g(x)&space;=&space;x^3)<br><br>
We determine the complexity of f(n) by deciding which terms contribute the most and discarding the others.

## Big O Notation
### Introduction
![No connection](https://latex.codecogs.com/gif.latex?O%28g%28n%29%29)<br>

Let g(n) be the worst case performance of f(n); Big O Notation can then be defined as the 'slowest' possible performance of a function.

### Examples

     f(n)       | Big-O
:-------------: | :----:
     ![No connection](https://latex.codecogs.com/gif.latex?2n%5E2)       | ![No connection](https://latex.codecogs.com/gif.latex?O%28n%5E2%29)
   ![No connection](https://latex.codecogs.com/gif.latex?100000n%5E2)    | ![No connection](https://latex.codecogs.com/gif.latex?O%28n%5E2%29)
   ![No connection] (https://latex.codecogs.com/gif.latex?2n%20&plus;%20n%5E2)     | ![No connection](https://latex.codecogs.com/gif.latex?O%28n%5E2%29)
![No connection](https://latex.codecogs.com/gif.latex?10%20&plus;%20n%20&plus;%20log%28n%29) | ![No connection](https://latex.codecogs.com/gif.latex?O%28n%29)
![No connection](https://latex.codecogs.com/gif.latex?10n%5E3%20&plus;%20364n%5E2)  | ![No connection](https://latex.codecogs.com/gif.latex?O%28n%5E3%29)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Comparison_computational_complexity.svg/1920px-Comparison_computational_complexity.svg.png" width="500">

### Properties
<img src="http://i.imgur.com/xoBxg1O.png" width="500">

### Common algorithms
#### Double For Loop
<br>![No connection](http://i.imgur.com/uAgRCrK.png)<br>
#### Varying For Loop
<br>![No connection](https://cdn.discordapp.com/attachments/211868333971079170/284014936827363328/SXzHd7e.png)<br>
