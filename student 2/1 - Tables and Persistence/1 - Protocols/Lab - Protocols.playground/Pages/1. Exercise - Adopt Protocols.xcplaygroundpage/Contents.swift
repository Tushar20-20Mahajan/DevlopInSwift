/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */
//class Human {
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//var humanOne = Human(name: "Tushar Mahajan", age: 21)
//var humanTwo = Human(name : "Tarish Mahajan", age: 18)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.

//class Human :CustomStringConvertible{
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    var description : String{
//        return "Name of the human is \(name) and his age is \(age)"
//    }
//}
//
//var humanOne = Human(name: "Tushar Mahajan", age: 21)
//var humanTwo = Human(name : "Tarish Mahajan", age: 18)
//
//print(humanOne)
//print(humanTwo)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
//class Human :CustomStringConvertible , Equatable{
//    var name : String
//    var age : Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    var description : String{
//        return "Name of the human is \(name) and his age is \(age)"
//    }
//    
//    public static func == (lhs : Human , rhs : Human) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//}
//
//var humanOne = Human(name: "Tushar Mahajan", age: 21)
//var humanTwo = Human(name : "Tarish Mahajan", age: 18)
//
//
//print("Are humanOne and humanTwo equal? \(humanOne == humanTwo)")
//print("Are humanOne and humanTwo not equal? \(humanOne != humanTwo)")
//print(humanOne)
//print(humanTwo)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).


//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
//class Human: CustomStringConvertible, Equatable, Comparable {
//    var name: String
//    var age: Int
//    
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//    
//    var description: String {
//        return "Name: \(name), Age: \(age)"
//    }
//    
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//    
//    static func < (lhs: Human, rhs: Human) -> Bool {
//        return lhs.age < rhs.age
//    }
//}
//
//var humanOne = Human(name: "Tushar Mahajan", age: 21)
//var humanTwo = Human(name: "Tarish Mahajan", age: 18)
//var humanThree = Human(name: "John Doe", age: 30)
//var humanFour = Human(name: "Jane Doe", age: 25)
//var humanFive = Human(name: "Alice", age: 35)
//
//print("Are humanOne and humanTwo equal? \(humanOne == humanTwo)")
//print("Are humanOne and humanTwo not equal? \(humanOne != humanTwo)")
//print(humanOne)
//print(humanTwo)
//
//var people = [humanOne, humanTwo, humanThree, humanFour, humanFive]
//
//var sortedPeople = people.sorted()
//
//for human in sortedPeople {
//    print(human)
//}

//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
import Foundation
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    var description: String {
        return "Name: \(name), Age: \(age)"
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}

var humanOne = Human(name: "Tushar Mahajan", age: 21)
var humanTwo = Human(name: "Tarish Mahajan", age: 18)
var humanThree = Human(name: "John Doe", age: 30)
var humanFour = Human(name: "Jane Doe", age: 25)
var humanFive = Human(name: "Alice", age: 35)

print("Are humanOne and humanTwo equal? \(humanOne == humanTwo)")
print("Are humanOne and humanTwo not equal? \(humanOne != humanTwo)")
print(humanOne)
print(humanTwo)

var people = [humanOne, humanTwo, humanThree, humanFour, humanFive]

var sortedPeople = people.sorted()

for human in sortedPeople {
    print(human)
}

// Encoding a Human object to JSON data
let encoder = JSONEncoder()
if let encodedData = try? encoder.encode(humanOne) {
    if let jsonString = String(data: encodedData, encoding: .utf8) {
        print("Encoded Human object as JSON string:")
        print(jsonString)
    }
}

/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */
