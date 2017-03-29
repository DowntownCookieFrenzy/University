# JavaScript Objects

- Source: [w3schools.com](https://www.w3schools.com/js/js_object_definition.asp)

## Objects are Variables Containing Variables
The values are written as **name** : **value** pairs (name and value separated by a colon)

```javascript
var person = {firstName:"John", lastName:"Doe", age:50, eyeColor:"blue"};
```

> A JavaScript object is a collection of named values

## Creating Objects

There are different ways to create new objects:

- Define and create a single object, using an object literal.
- Define and create a single object, with the keyword new.
- Define an object constructor, and then create objects of the constructed type.

### Object literal
```javascript
var person = {
    firstName:"John",
    lastName:"Doe",
    age:50,
    eyeColor:"blue"
};
```

### `new` Keyword

```javascript
var person = new Object();
person.firstName = "John";
person.lastName = "Doe";
person.age = 50;
person.eyeColor = "blue";
```

### Object Constructor
```javascript
function person(first, last, age, eye) {
    this.firstName = first;
    this.lastName = last;
    this.age = age;
    this.eyeColor = eye;
}
var myFather = new person("John", "Doe", 50, "blue");
var myMother = new person("Sally", "Rally", 48, "green");
```

## Methods
```javascript
function person(firstName, lastName, age, eyeColor) {
    this.firstName = firstName;  
    this.lastName = lastName;
    this.age = age;
    this.eyeColor = eyeColor;
    this.changeName = function (name) {
        this.lastName = name;
    };
}

var bob = new person(...);
bob.changeName("fred");

```

- The JavaScript **prototype** property also allows you to add new methods to an existing prototype:

```javascript
function Person(first, last, age, eyecolor) {
    this.firstName = first;
    this.lastName = last;
    this.age = age;
    this.eyeColor = eyecolor;
}

Person.prototype.name = function() {
    return this.firstName + " " + this.lastName;
};
```

## Inheritance

- Source: University of Pretoria

In JavaScript inheritance is achieved by assigning an instance of the parent class to the child class, and then specializing it.

Consider the following class:
```JavaScript
var Person = function(firstName) {
	this.firstName = firstName;
};

Person.prototype.walk = function(){
	console.log("I am walking!");
};

Person.prototype.sayHello = function(){
	console.log("Hello, I’m " + this.firstName);
};

// Define child
function Student(firstName, subject) {
	// Call the parent constructor explicitly
	Person.call(this, firstName);

	// Initialize our Student-specific properties
	this.subject = subject;
};

//Now we ensure that the methods from the parent class are available to the child class.
Student.prototype = Object.create(Person.prototype);

//We then set the constructor to refer to our Student function.
Student.prototype.constructor = Student;

// We can now edit and add member functions.
Student.prototype.sayHello = function() {
	console.log("Hello, I’m " + this.firstName +
	". I’m studying " + this.subject + ".");
};

Student.prototype.sayGoodBye = function() {
	console.log("Goodbye!");
};

// Example Usage
var student1 = new Student("Janet", "Applied Physics");
student1.sayHello(); // Hello, I’m Janet. I’m studying Applied Physics.
student1.walk(); // I am walking!
student1.sayGoodBye(); //Goodbye!
```
