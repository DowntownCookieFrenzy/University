# CSS - Cascading Style Sheets

CSS describes the style of an HTML document;
A set of rules governing how elements are displayed.


We can for example set the body element's style.
````CSS
body{
	background-color: #RRGGBB;
	text-align: center;
	font-family: verdana;
	font-size: 20px;
}
````

A CSS rule-set consists of a selector and declaration block:
````CSS
h1{color:blue;}
````
Where:
* h1 is a selector.
* color is a property.
* blue is a value.


To specify a particular element by ID we do:
````Pseudo
#<id>{someProperty: someValue;}
````

````CSS
#placeholder{
	text-align: center;
	color: red;
}
````

To refer to a particular stylesheet without using the style tags we can do.
````HTML
<link rel="Stylesheet" type="text/css" href="mystyle.css">
````

Classes can be specified by inserting a fullstop before the class name.

````CSS
.center{
	text-align: center;
}
````

````HTML
<div class="center"> Hello world </div>
````

## Cascading Order:
* 1. Inline style
* 2. External and internal stylesheets ( in the head section )
* 3. Browser default


## Specificity: (ILL ADD A LINK LATER)

## Animation
The two main parts of css animations are
* Keyframes
* Animation properties

````CSS
@keyframes bounceIn{
	0%{
		transform: scale(0.1);
		opacity: 0;
	}
	60%{
		transform: scale(1.2);
		opacity: 1;
	}
	100%{
		transform: scale(1);
	}
}
````

````CSS
div{
	animation-duration: : 2s;
	animation-name: bounceIn;
}
````

The university loves to ask looping animations

````CSS
div{
	width: 100px;
	height: 10px;
	background-color: green;
	font-weight: bold;
	position: relative;
	animation: bounceIn 5s linear infinite;
}
````

## Advanced Selectors:
This css specifies a background colour for every second <p> element.
````CSS
p:nth-child(2) {
    background: red;
}
````
