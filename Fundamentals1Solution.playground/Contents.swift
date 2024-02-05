import UIKit


// Exercise #1:
// Declare a variable score and a constant maxScore. Assign initial values and print them.

// Write your code here
var score: Int = 15
let maxScore = 100
print(score)
print(score, maxScore)

// Exercise #2:
// Rewrite the following variables and constants with proper naming conventions

// Rewrite the code by renaming these variables here
//var Lastname: String
//let number_of_wheels: Int

var lastName: String
let numberOfWheels: Int

// Exercise #3:
// Declare a constant with an explicit type annotation for a floating-point number and assign a value to it.
let number: Double = 15.2

//Exercise 4: Declare a simple function
// Write a function that prints to the console, "Hello, CodePath!" and then call that function

func helloWorld(){
    print("Hello, CodePath!")
}

helloWorld()


// Exercise #5: Declare a function with parameters
// Write a function that takes in someone's age and increases it by one. You'll need to declare
// the age variable. Print the new age to the console

var codePathAge = 7

func birthday(age: Int){
    var age = age + 1
    print(age)
}

birthday(age: codePathAge)


// Exercise #6: Declare a function that takes two numbers and returns if the sum is even

func isEven(x: Int, y: Int) -> Bool{
    if (x+y) % 2 == 0 {
        return true
    } else {
        return false
    }
}

isEven(x: 2, y: 5)


