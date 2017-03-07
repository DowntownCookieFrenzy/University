# JavaScript

- Dynamically Typed
- Interpreted

## The `<script>` Tag
In HTML, JavaScript code must be inserted between <script> and </script> tags.

```JavaScript
<script>
	document.write("Hello world");
</script>
```

## Variables
```JavaScript
<script>
	var x=5;
	var y="test";
	var z=’test2’;
</script>
```

The variable Type can change at runtime
```JavaScript
<script>
	var x=5;
	x="five";
</script>
```

## Checking the type of object
```JavaScript
typeof x;
```

## Comments
- The same as Java and C++

```JavaScript
// Single line.

/*
Multi
line
*/
```

## Functions
- Do not state return type
- Invoke a function in one of three ways
	- Explicitely call function
	- When an event occurs
	- Automatically invoked (similar to the events)
- In JavaScript functions are treated as first class objects
	- Meaning you can pass a function as a paramater


```JavaScript
<script>
	function name(parameter1, parameter2, parameter3)
	{
		//place code here
	}
</script>
```

## Scoping
While the declaring of a variable should be done like
```JavaScript
var x=5;
```

Javascript will allow the following
```Javascript
y=5;
```
even if `y` has not be declared. However it will automatically declare it
as a **global** variable.

## Conditionals
### If, Else
```JavaScript
if (value%2==0) {
	result = "even";
} else {
	result = "odd";
}
```

### Switch
```JavaScript
var day
switch (new Date().getDay()) {
	case 0:
		day = "Sunday";
		break;
	case 1:
		day = "Monday";
		break;
	case 2:
		day = "Tuesday";
		break;
// Snip...
}
```

## Loops
- Same as C++
```JavaScript
for (a; b; c) {
	\\ place code here
}
```

### for-in loop
```JavaScript
var person = {fname:"John", lname:"Doe", age:25};

var text = "";
var x;
for (x in person) {
	text += person[x]+" ";
}
```

### While loop:
```JavaScript
while (condition) {
	\\ place code here
}
```
### Do while:
```JavaScript
do {
	\\ place code here
} while (condition);
```

## Arrays
```JavaScript
// var array-name = [item1, item2, ...];

var countries = ["South Africa", "Chad", "Morocco"];
// Accessing:
countries[0]="SA";
var selected=countries[1];
// Adding an element
countries.push("Greece");
// Removing last element
countries.pop();
```

- Can contain elements of different Types
```JavaScript
var example = [2.3, "Chad", add];
```

### length
```JavaScript
exampleArray.length
```

## DOM
- The DOM is a W3C (World Wide Web Consortium) standard.
- The W3C Document Object Model (DOM) is a platform and language-neutral interface that allows programs and scripts to dynamically access and update the content, structure, and style of a document.
- The W3C DOM standard is separated into 3 different parts:
	- Core DOM - standard model for all document types
	- XML DOM - standard model for XML documents
	- HTML DOM - standard model for HTML documents
- The HTML DOM is a standard for how to get, change, add, or delete HTML elements.

### Access HTML elements using DOM
- Can access elements in the following ways
	- `getElementById`: Find an element by element id. (Returns **single** element)
	- `getElementsByTagName`: Find elements by tag name. (Returns **array** of elements)
	- `getElementsByClassName`:Find elements by class name. (Returns **array** of elements)
	- `getElementsByName`:Find elements by name. (Returns **array** of elements)

```JavaScript
<p id="MyParagraph"></p>

<script>
	document.getElementById("MyParagraph").innerHTML = "Hello World";
</script>
```

Can also change attributes of an element:
```JavaScript
document.getElementById("myImage").src = "b.jpg";
```

### Modify HTML elements
- element.innerHTML = new HTML content: Change the inner HTML of an element
- element.attribute = new value :Change the attribute value of an HTML element
- element.setAttribute(attribute, value): Change the attribute value of an HTML element
- element.style.property = new style: Change the style of an HTML element
	- Example:
	```JavaScript
	document.getElementById('id1').style.color = 'red'
	```

## Events
The general manner in which we add events to HTML elements is
```html
<some-HTML-element some-event=’some JavaScript’>
```

Example:
```JavaScript
<button onclick=‘window.alert("It did something!!!");’>Click me</button>

// Call a function instead of using in line
<button onclick=’myFunction();’>Click me</button>
```

### Common Events:
- `onchange`: An HTML element has been changed
- `onclick`: The user clicks an HTML element
- `onmouseover`: The user moves the mouse over an HTML element
- `onmouseout`: The user moves the mouse away from an HTML element
- `onkeydown`: The user pushes a keyboard key
- `onload`: The browser has finished loading the page
	```JavaScript
	<body onload="beginSlideshow()">
	```

## Timing Events
- The window object allows execution of code at specified time intervals.
- These time intervals are called timing events.


- The two key methods to use with JavaScript are:
	- `setTimeout(function, milliseconds)`
		- Executes a function **once**, after waiting a specified number of milliseconds.
	- `setInterval(function, milliseconds)`
		- Same as setTimeout(), but repeats the execution of the function continuously.

```JavaScript
setInterval(’nextImage()’,1000);

clearTimeout(myVar); // Stop the timing event
```

## Try-Catch
```JavaScript
try
{
	eval("alert(’Hello)");
}
catch(err)
{
	window.alert(err.name);
}
finally
{
	// Block of code to be executed regardless
	// of the try / catch result
}
```

- Some common predefined errors are:
	- EvalError: An error has occurred in the eval() function
	- RangeError: A number ”out of range” has occurred
	- ReferenceError: An illegal reference has occurred
	- SyntaxError: A syntax error has occurred
	- TypeError: A type error has occurred
	- URIError: An error in encodeURI() has occurred

### Throwing an expection
```JavaScript
throw "Something went horribly wrong";
```

## Animations
- All animations should be relative to a container element.
```HTML
<div id ="container">
	<div id ="animate">My animation will go here</div>
</div>
```

- Need to specify the position style in both divs
```css
#container
{
	width: 400px; height: 400px; position: relative;
}
#animate
{
	width: 50px; height: 50px; position: absolute;
	//The element is positioned relative to its
	//first positioned (not static) ancestor element
}
```

The way we achieve animation, is by gradually changing style properties
- This is usually achieved be calling the setInterval function with a
	- Short interval
	- and a function that makes a small change to a style property of the element to be animated.
