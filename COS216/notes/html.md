<!--
@Author: Thomas Scholtz <thomas>
@Date:   2017-03-07T21:54:35+02:00
@Email:  thomas@quantum-sicarius.za.net
@Last modified by:   thomas
@Last modified time: 2017-03-07T22:05:44+02:00
@License: Attribution-NonCommercial-ShareAlike 4.0 International
-->

# HTML
Hypertext Markup Language

# Learn X in Y minutes
```html
<!-- Comments are enclosed like this line! -->

<!-- #################### The Tags #################### -->

<!-- Here is an example HTML file that we are going to analyse. -->

<!doctype html>
    <html>
        <head>
            <title>My Site</title>
        </head>
        <body>
            <h1>Hello, world!</h1>
            <a href = "http://codepen.io/anon/pen/xwjLbZ">Come look at what this shows</a>
            <p>This is a paragraph.</p>
            <p>This is another paragraph.</p>
            <ul>
                <li>This is an item in a non-enumerated list (bullet list)</li>
                <li>This is another item</li>
                <li>And this is the last item on the list</li>
            </ul>
        </body>
    </html>

<!-- An HTML file always starts by indicating to the browser that the page is HTML. -->
<!doctype html>

<!-- After this, it starts by opening an <html> tag. -->
<html>

<!-- that will be closed at the end of the file with </html>. -->
</html>

<!-- Nothing should appear after this final tag. -->

<!-- Inside (between the opening and closing tags <html></html>), we find: -->

<!-- A header defined by <head> (it must be closed with </head>). -->
<!-- The header contains some description and additional information which are not displayed; this is metadata. -->

<head>
    <title>My Site</title><!-- The tag <title> indicates to the browser the title to show in browser window's title bar and tab name. -->
</head>

<!-- After the <head> section, we find the tag - <body> -->
<!-- Until this point, nothing described will show up in the browser window. -->
<!-- We must fill the body with the content to be displayed. -->

<body>
    <h1>Hello, world!</h1> <!-- The h1 tag creates a title. -->
    <!-- There are also subtitles to <h1> from the most important (h2) to the most precise (h6). -->
    <a href = "http://codepen.io/anon/pen/xwjLbZ">Come look at what this shows</a> <!-- a hyperlink to the url given by the attribute href="" -->
    <p>This is a paragraph.</p> <!-- The tag <p> lets us include text in the html page. -->
    <p>This is another paragraph.</p>
    <ul> <!-- The tag <ul> creates a bullet list. -->
    <!-- To have a numbered list instead we would use <ol> giving 1. for the first element, 2. for the second, etc. -->
        <li>This is an item in a non-enumerated list (bullet list)</li>
        <li>This is another item</li>
        <li>And this is the last item on the list</li>
    </ul>
</body>

<!-- And that's it, creating an HTML file can be simple. -->

<!-- But it is possible to add many additional types of HTML tags. -->

<!-- To insert an image. -->
<img src="http://i.imgur.com/XWG0O.gif"/> <!-- The source of the image is indicated using the attribute src="" -->
<!-- The source can be an URL or even path to a file on your computer. -->

<!-- It is also possible to create a table. -->

<table> <!-- We open a <table> element. -->
    <tr> <!-- <tr> allows us to create a row. -->
        <th>First Header</th> <!-- <th> allows us to give a title to a table column. -->
        <th>Second Header</th>
    </tr>
    <tr>
        <td>first row, first column</td> <!-- <td> allows us to create a table cell. -->
        <td>first row, second column</td>
    </tr>
    <tr>
        <td>second row, first column</td>
        <td>second row, second column</td>
    </tr>
</table>
```

## Document Type Declaration
#### HTML 5 Standard
```html
<!DOCTYPE html>
```
# Images
```html
<img src="smiley.gif" alt="Smiley face" height="42" width="42">
```

# Labels
```html
<form action="/action_page.php">
  <label for="male">Male</label>
  <input type="radio" name="gender" id="male" value="male"><br>
  <label for="female">Female</label>
  <input type="radio" name="gender" id="female" value="female"><br>
  <label for="other">Other</label>
  <input type="radio" name="gender" id="other" value="other"><br><br>
  <input type="submit" value="Submit">
</form>
```
Which will render:
<label for="male">Male</label>
<input type="radio" name="gender" id="male" value="male"><br>
<label for="female">Female</label>
<input type="radio" name="gender" id="female" value="female"><br>
<label for="other">Other</label>
<input type="radio" name="gender" id="other" value="other"><br><br>
<input type="submit" value="Submit">

# Math
This is a HTML5 Standard
```html
<math xmlns="http://www.w3.org/1998/Math/MathML">Some math</math>
```

# SVG
```html
<svg width="100" height="100">
  <circle cx="50" cy="50" r="40" stroke="green" stroke-width="4" fill="yellow" />
</svg>
```
