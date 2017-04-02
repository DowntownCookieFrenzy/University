# Examination Two Notes

## Statements
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

Restrict size of an image upload:
```html
 <form  class="upload-form">
        <input class="upload-file" data-max-size="2048" type="file" >
        <input type=submit>
    </form>
```

## Questions

<details>
<summary>
What does DOM stand for?
</summary>

Document Object Model

</details>

<details>
<summary>
What are the storage limits for Cookie and DOM storage respectively?
</summary>

- Cookie: 4Kb
- DOM: 50MB

</details>

<details>
<summary>
Define a cookie:
</summary>

A cookie is stored on a user's computer as to remember information about the user.
They can be used for persistent logins or maybe caching user preferences.

</details>

<details>
<summary>
Name two attributes of a cookie:
</summary>

- Secure
- HTTPOnly

</details>

<details>
<summary>
What does PHP stand for?
</summary>
Hypertext Preprocessor
</details>

<details>
Can users view PHP code from the browser?
<summary>
No! Unlike JS; PHP is a prepocessor and everything is done on the servers side.
</summary>
</details>

<details>
<summary>
How are string operations done in PHP?
</summary>

- `strcmp` Compares two strings.
- `strstr` Finds a substring within another string.
- `strlen` Returns the length of a string.
- `strcpy` Copies one string into another one.

</details>

<details>
<summary>
How can you access global variables from inside a function?
</summary>

Use the superglobal ```$GLOBALS``` or the keyword global.

</details>

<details>
<summary>
What are type hints?
</summary>

Type hints are keywords for specifying types of arguments inside a function prototype.

</details>

<details>
<summary> Which superglobal contains Get, Post and cookie data?</summary>

```php
$_REQUEST
```
</details>
