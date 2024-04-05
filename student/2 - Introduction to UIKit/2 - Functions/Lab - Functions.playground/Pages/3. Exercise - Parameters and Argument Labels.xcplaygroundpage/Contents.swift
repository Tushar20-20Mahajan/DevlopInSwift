/*:
## Exercise - Parameters and Argument Labels
 
 Write a new introduction function called `introduction`. It should take two `String` parameters, `name` and `home`, and one `Int` parameter, `age`. The function should print a brief introduction. I.e. if "Mary," "California," and 32 were passed into the function, it might print "Mary, 32, is from California." Call the function and observe the printout.
 */
func introduction ( name:String , home:String , age:Int){
    print("\(name), \(age), is from \(home)")
}
introduction(name:"Tushar Mahajan", home: "India", age: 21)

//:  Write a function called `almostAddition` that takes two `Int` arguments. The first argument should not require an argument label. The function should add the two arguments together, subtract 2, then print the result. Call the function and observe the printout.
func almostAddition( num1:Int , num2:Int ){
    let result = num1+num2
    print("My first number is \(num1) and my second number is \(num2) and its sum is \(result) and the desired result is \(result-2)")
}
almostAddition(num1: 5, num2: 10)
//:  Write a function called `multiply` that takes two `Double` arguments. The function should multiply the two arguments and print the result. The first argument should not require a label, and the second argument should have an external label, `by`, that differs from the internal label. Call the function and observe the printout.
func multiply( num1 : Double ,to num2 : Double){
    let result = num1*num2
    print("My first number is \(num1) and my second number is \(num2) and its multiplication result is \(result) ")
}
multiply(num1: 8, to: 19)
/*:
[Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Progress Updates](@next)
 */
