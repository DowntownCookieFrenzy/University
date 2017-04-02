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
`$_FILES`
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

<details>
<summary>Which two structures can be used to simulate multiple inheritance?</summary>

- Interfaces
- Traits

</details>

<details>
<summary>Draw differences between Traits,Interfaces and Abstract Classes</summary>

### Interfaces
- Allows you to specify a list of methods that a class must implement.
- Method, Signatures and Implementation
```php
interface IMyInterface{
	const INTERFACE_CONSTANT_1 = 1;
	const INTERFACE_CONSTANT_2 = 'a string';

	public function method_1();
	public function method_2();
}

class MyClass implements IMyInterface{
	public function method_1(){
		// method 1 implementation
	}
	public function method_2(){
		// method 2 implementation
	}
}
```

### Traits
- Much like interfaces and cannot be; A group of methods that you include within another class.
- Method signatures and constants.
```php
trait Sharable {

  public function share($item)
  {
    return 'share this item';
  }

}

class Post {

  use Sharable;

}

class Comment {

  use Sharable;

}
```

### Abstract Classes
- Can be defined but never instansiated.
- Methods, signatures, implementation, attributes and constants.
```php
abstract class Maths{
	public function sum($a, $b){
		return $a + $b;
	}

	public function diff($a, $b){
		return $a - $b;
	}
}
```

</details>

<details>
<summary>What will the output of the following code snippet mean ( snippet is collapsed )</summary>

```php

class A{
	public foo(){ echo "bar";};
}

trait B{
	public foo(){ echo "wot?";}
}

class C extends A{
	use B;
}

$obj = new C();
$obj->foo();
```

It will output: wot?

</details>

<details>
<summary>What are PHP autoloaders and how can you register your own</summary>

- To register your own use `spl_autoload_register`
- Allows you to define search paths for classes so you don't have include them manually.
- Redundant includes can be avoided.

</details>

<details>
<summary>Name the three data types defined in the SPL</summary>

- Heaps (min & max)
- SPLQueue
- SPLStack

</details>

<details>
<summary>Explain the differences between SplFileInfo, SplFileObject and SplTempFileObject</summary>

- SplFileInfo: The SplFileInfo class offers a high-level object oriented interface to information for an individual file.
- SplFileObject: The SplFileObject class offers an object oriented interface for a file.
- SplTempFileObject: The SplTempFileObject class offers an object oriented interface for a temporary file.

</details>

<details>
<summary>What are the main differences between php and javascript</summary?>
PHP is server side while Javascript is client side.

</details>

<details>
<summary>True Or False: The standard relation module allows for the construction of an order 2 logic system?</summary>
False
</details>

<details>
<summary>True Or False: The cookie Expire attribute has higher precedence than the Max-Age attribute?</summary>
False
</details>

<details>
<summary>True Or False: MySQL is not case sensitive?</summary>
True
</details>


## Long Questions

#### MySQL
<details>
<summary>
The LIKE operations is very useful SQL operation. However, in MySQL there is a large feature missing from the LIKE operation. What is this feature, and what operation should you use to emulate this missing feature.
</summary>

TODO

</details>

##### Given
Assume we have two tables in our database `Student`, and `Advisor`. The `Student` table has three columns, `Student_ID`, `Student_Name`, and `Advisor_ID`. The `Advisor` table has two columns, `Advisor_ID` and `Advisor_Name`.

<details>
<summary>
Write a MySQL statement to extract a table that contains two columns. The first column should display a registered student, and the second column should display the name of h student's advisor.
</summary>

```sql
SELECT S.Student_Name, A.Advisor_Name
FROM Student S
INNER JOIN Advisor A
ON S.Advisor_ID = A.Advisor_ID;
```

</details>


<details>
<summary>
MySQL does not support full joins, using a combination of any number of other MySQL operations, write a full join between the Student table and the Advisor table on the Advisor_ID attribute. The result table must contain the same attributes as the previous question.
</summary>

```sql
SELECT S.Student_Name, A.Advisor_Name FROM Student S
LEFT JOIN Advisor A ON S.Advisor_ID = A.Advisor_ID
UNION ALL
SELECT S.Student_Name, A.Advisor_Name FROM Student S
RIGHT JOIN Advisor A ON S.Advisor_ID = A.Advisor_ID
```

</details>

#### Bootstrap

##### Given
```html
<nav class="**1**">
  <div class="container-fluid">
    <div class="**2**">
      <a class="**3**" href="#">TheSite</a>
    </div>
    <div>
      <ul class="**4**">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
      </ul>
      <ul class="**5**">
        <li><a href="#">Sign up</a></li>
        <li><a href="#">Login</a></li>
      </ul>
    </div>
  </div>
</nav>
```

##### Result
![image](http://imgur.com/uoaQ52V.jpg)

<details>
<summary>
Provide the missing text needed for the locations marked with stars in the HTML.
</summary>

1. `navbar navbar-inverse`
2. `navbar-header`
3. `navbar-brand`
4. `nav navbar-nav`
5. `nav navbar-nav navbar-right`

</details>


<details>
<summary>
Currently the provided HTML doesn't support very small displays well. Add the necessary HTML to make the navigation bar collapsible if the available display is too small.
</summary>

```html
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <!-- Add this button -->
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">TheSite</a>
    </div>
    <!-- Add this class -->
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Page 1</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Sign up</a></li>
        <li><a href="#">Login</a></li>
      </ul>
    </div>
  </div>
</nav>
```

</details>

#### Javascript

##### Given

A `ExamQuestion` class has been defined which has 3 properties: `question`, `answer` and `mark`.

```javascript
if (typeof question104 == 'ExamQuestion') {
  console.log('This object is indeed an exam question');
}
else {
  console.log('This object is not an exam question');
}
```

<details>
<summary>
Clearly there is an error in the statement. Provide a corrected boolean statement (you only need to provide the boolean statement).
</summary>

```javascript
if (typeof question104 === 'ExamQuestion')
```

</details>


Implement the `ExamQuestion` class by answering the qestions which follow:

<details>
<summary>
Implement the constructor. The constructor should receive an initial value for question.
</summary>

```javascript
var ExamQuestion = function(question) {
  this.question = question;
  this.answer = "";
  this.mark = 0;
}
```

</details>


<details>
<summary>
Implement a method called answerQuestion that receives an answer to the question and stores it in the answer property.
</summary>

```javascript
ExamQuestion.prototype.answerQuestion = function (answer) {
  this.answer = answer;
}
```

</details>


<details>
<summary>
Write code that creates an ExamQuestion object and answers the question for this object. The question and answer may be strings of your choosing.
</summary>

```javascript
var question = new ExamQuestion("Is the COS department fucked up?");
question.answerQuestion("Some say...");
```

</details>


<details>
<summary>
Now implement the constructor for a class called QuestionWithMemo which inherits from ExamQuestion. This new derived class should add a memo property. The constructor should receive an initial value for this memo.
</summary>

```javascript
var QuestionWithMemo = function(memo) {
  this.memo = memo;
}
QuestionWithMemo.prototype = Object.create(ExamQuestion);
QuestionWithMemo.prototype.constructor = this.constructor;
```

</details>
