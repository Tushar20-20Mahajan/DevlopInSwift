/*:
## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greetings (to name: String)-> String{
    return ("Hello \(name) , Hope you have a great Day!")
}
var result = greetings(to: "Tushar Mahajan")
print(result)

//:  Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
func almostMultiply(num1:Int , num2:Int )->Int{
    return (num1*num2)+2
}
var resultOfAlmostMultiplication = almostMultiply(num1: 8, num2: 9)
print(resultOfAlmostMultiplication)
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
 */
