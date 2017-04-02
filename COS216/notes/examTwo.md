# Examination Two Notes

<summary>
What does DOM stand for?
<details>
Document Object Model
</details><br>
<br>
What are the storage limits for Cookie and DOM storage respectively?
<details>
* Cookie: 4Kb<br>
* DOM: 50Mb
</details><br>
Define a cookie:
<details>
A cookie is stored on a user's computer as to remember information about the user.
<br>
They can be used for persistent logins or maybe caching user preferences.
</details><br>
Name two attributes of a cookie:
<details>
* Secure<br>
* HTTPOnly<br>
</details><br>
</summary>

Restrict size of an image upload:
```html
 <form  class="upload-form">
        <input class="upload-file" data-max-size="2048" type="file" >
        <input type=submit>
    </form>
```

<summary>
What does PHP stand for?
<details>
Hypertext Preprocessor!
</details><br>

Can users view php code from the browser?
<details>
No! Unlike js ; php is a prepocessor and everything is done on the servers side.
</details><br>
</summary>
How are variables declared?
<br>

```php
$num = 968;
```

What does the following code do?

```php
$fd = fopen($filename, "r") or die ("Failed to open file.");
```

It opens the file as dictated by $filename or stops execution with the given error message.

<summary>
How are string operations done in php?
<details>
* strcmp: Compares two strings.<br>
* strstr: Finds a substring within another string.<br>
* strlen: Returns the length of a string.<br>
* strcpy: Copies one string into another one.<br>
</details><br>
How can you access global variables from inside a function?
<details>
Use the superglobal $GLOBALS or the keyword global.
</details><br>
What are type hints?
<details>
Typehints are keywords for specifying types of arguments inside a function prototype.
</details><br>
</summary>


<details>
<summary>Which superglobal contains Get, Post and cookie data?</summary>

```php
$_REQUEST
```
</details>
