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
#<id>{someProperty: someValue;}

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


## Cascading Order:
* 1. Inline style
* 2. External and internal stylesheets ( in the head section )
* 3. Browser default
