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

## Short Questions

<details>
<summary>What does DOM stand for?</summary>

Document Object Model

</details>

<details>
<summary>What are the storage limits for Cookie and DOM storage respectively?</summary>

- Cookie: 4Kb
- DOM: 50MB

</details>

<details>
<summary>Define a cookie:</summary>

A cookie is stored on a user's computer as to remember information about the user.
They can be used for persistent logins or maybe caching user preferences.

</details>

<details>
<summary>Name two attributes of a cookie:</summary>

- Secure
- HTTPOnly

</details>

<details>
<summary>What does PHP stand for?</summary>
Hypertext Preprocessor
</details>

<details>
No! Unlike JS; PHP is a prepocessor and everything is done on the servers side.
<summary>Can users view PHP code from the browser?</summary>
</details>

<details>
<summary>How are string operations done in PHP?</summary>

- `strcmp` Compares two strings.
- `strstr` Finds a substring within another string.
- `strlen` Returns the length of a string.
- `strcpy` Copies one string into another one.

</details>

<details>
<summary>How can you access global variables from inside a function?</summary>

Use the superglobal ```$GLOBALS``` or the keyword global.

</details>

<details>
<summary>What are type hints?</summary>

Type hints are keywords for specifying types of arguments inside a function prototype.

</details>

<details>
<summary> Which superglobal contains Get, Post and cookie data?</summary>

```php
$_REQUEST
```
</details>

<details>
<summary>What types are allowed as array keys?</summary>

- Strings
- Integers
</details>

<details>
<summary>How can sessions be used in PHP?</summary>

- A session is started with `session_start()`;
- A simple way to store data for individual users.
- Persist state across page requests. 
</details>

<details>
<summary>Which superglobal is used to upload files?</summary>
$_FILES
</details>

<details>
<summary>What is the PHP header function and where can it be used?</summary>

- It can be used to create custom HTTP headers.
- It usually used on the first line of a script ( eg to force a download ).
</details>

<details>
<summary>What does it mean that php functions are first class citizens?</summary>

- Can be passed as a paremeter to a function
```php
function bar(){
	return 1;
}

function foo(bar){
	//etc
}
```

- Can be returned by a function
```php
return function(){$a = 967 + 1;};
```

- Can be assigned to a variable
```php
function foo(){

}

$a = foo;
```
</details>

<details>
<summary>Which built-in class is used to work with XML files</summary>

SimpleXML
</details>

<details>
<summary>Explain the concept of closures and give a code example</summary>

Closures are functions returned by functions which still have access to members of their parent functions.
```php
function foo($value){
	return function bar($anotherValue) uses $value{ return $anotherValue + $value }
}
```
</details>

<details>
<summary>What is the default visibility for all class members in PHP</summary>
Public
</details>

<details>
<summary>Explain the way in which a class can access it's members</summary>

- `self::`     (Assuming the member is static)
- `$this->`    (Assuming the member is not static)
</details>

<details>
<summary>How is a constructor for a class created?</summary>

```php
class cc {
    function __construct() {
        echo 'hi!';
    }
}
```
</details>

<details>
<summary>What is the meaning of the final keyword in php?</summary>

PHP 5 introduces the final keyword, which prevents child classes from overriding a method by prefixing the definition with final. If the class itself is being defined final then it cannot be extended.
</details>
## Long Questions
