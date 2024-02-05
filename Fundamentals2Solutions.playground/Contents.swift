//  Exercise 1: Declaring and Unwrapping Optionals
//  Declare an optional string variable named nickname that initially has no
//  value. Then assign a value and safely unwrap it with an if let statement to
//  print it.

var nickname: String?

nickname = "SwiftMaster"


if let name = nickname {
    print("Nickname: \(name)")
} else {
    print("No nickname provided")
}

// Exercise #2: Create a class `Person` with an optional property `nickname`. Then instantiate a `Person` and use optional chaining to print the nickname if it exists.

class Person {

    // Properties
    var nickname: String? // Means creating a person comes w/ optional name.
}

let person1 = Person()


if let name = person1.nickname {
    print("Nickname: \(name)")
} else {
    print("The value is nil")
}


// Exercise #3: Can you explain about an Implicitly unwrapped optional is? Write up an example of implicity wrapping an optional and explain why that might be good or bad for your app's behavior.
// Food for thought: Why would you use an implicitly unwrapped optional?
// Answer: It's often used when a value cannot be set during initialization but is guaranteed to be available before use, like with UIKit properties connected to storyboard outlets

// Example: let's develop a new dog class w/ a name and nickname properties

class Dog {
    var name: String
    var nickname: String!  // Implicitly unwrapped optional

    init(name: String, nickname: String? = nil){
        self.name = name
        self.nickname = nickname
    }
}

// Instantiating dogs
let bestDogs = [Dog(name: "Tiggy"), Dog(name: "Teddy", nickname: "Bear"), Dog(name: "Brenda"), Dog(name: "Dahlia", nickname: "moomers"), Dog(name: "Shadow", nickname: "chongohead")]

// Iterating over bestDogs and printing nicknames
for dog in bestDogs {
    // No need for if-let or guard-let since we're assuming the nickname will be there when we need it
    print("\(dog.name) goes by \(dog.nickname ?? "no nickname")")
}

print("")

// Example of potentially dangerous behavior
// The following would be risky and could crash if a Dog instance doesn't have a nickname:
for dog in bestDogs {
    print("\(dog.name) goes by \(dog.nickname)") // Risky: Could crash if nickname is nil
}


// Exercise #4: Type Casting w/ Optionals
//  Create an array of different types (Int, String, Double) as [Any], then write a function that iterates over the array and prints the type and value of each element using optional casting.

// Create an array of different types wrapped as 'Any', which behaves like 'Object' in Java but even broader
// You get breadth and lose depth when using `Any` to represent a different type
let mixedArray: [Any] = [42, "A string", 3.14, "Another string", 100, 2.718]

// Define the function to iterate over the array and print types and values
func printTypesAndValues(from array: [Any]) {
    for element in array {
        if let intValue = element as? Int {
            print("Int: \(intValue)")
        } else if let stringValue = element as? String {
            print("String: \(stringValue)")
        } else if let doubleValue = element as? Double {
            print("Double: \(doubleValue)")
        } else {
            print("Unknown type")
        }
    }
}
// Call the function with the mixedArray
printTypesAndValues(from: mixedArray)


// Exercise #5: Advanced Optional Handling with guard
// Create a Cat class that includes a method that uses 'guard let' to safely unwrap the nickname

class Cat {
    var name: String
    var nickname: String?  // Optional

    init(name: String, nickname: String? = nil){
        self.name = name
        self.nickname = nickname
    }
    
    func printNickname() {
        guard let nickname = self.nickname else {
            print("\(self.name) does not have a nickname.")
            return
        }
        print("\(self.name)'s nickname is \(nickname).")
    }
}

// Instantiate cats and call the new method
let cats = [Cat(name: "Whiskers"), Cat(name: "Bella", nickname: "Bells")]
for cat in cats {
    cat.printNickname()
}
