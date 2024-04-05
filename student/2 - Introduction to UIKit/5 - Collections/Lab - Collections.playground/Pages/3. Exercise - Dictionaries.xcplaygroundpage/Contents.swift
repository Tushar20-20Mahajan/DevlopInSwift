/*:
## Exercise - Dictionaries

 Create a variable `[String: Int]` dictionary that can be used to look up the number of days in a particular month. Use a dictionary literal to initialize it with January, February, and March. January contains 31 days, February has 28, and March has 31. Print the dictionary.
 */
var noOfDaysInAParticularMonth = [String:Int]()

noOfDaysInAParticularMonth = ["January":31 , "Febuary":28 , "March":31]
print(noOfDaysInAParticularMonth)

//:  Using subscripting syntax to add April to the collection with a value of 30. Print the dictionary.
noOfDaysInAParticularMonth["April"] = 30

print(noOfDaysInAParticularMonth)
//:  It's a leap year! Update the number of days in February to 29 using the `updateValue(_:, forKey:)` method. Print the dictionary.
noOfDaysInAParticularMonth.updateValue(29, forKey:"Februray")
print(noOfDaysInAParticularMonth)

//:  Use if-let syntax to retrieve the number of days under "January." If the value is there, print "January has 31 days", where 31 is the value retrieved from the dictionary.
if(noOfDaysInAParticularMonth["January"]==31){
    print ("January has 31 days")
}else{
    print ("January not has 31 days")
}

//:  Given the following arrays, create a new [String : [String]] dictionary. `shapesArray` should use the key "Shapes" and `colorsArray` should use the key "Colors." Print the resulting dictionary.
var shapesArray = ["Circle","Square"]
var colorsArray = ["Red","Yellow","Green"]
var shapesWithTheirColors = [String:[String]]()
shapesWithTheirColors = [shapesArray[0]:colorsArray ,shapesArray[1]:colorsArray]

print(shapesWithTheirColors)

//:  Print the last element of `colorsArray`, accessing it through the dictionary you've created. You'll have to use if-let syntax or the force unwrap operator to unwrap what is returned from the dictionary before you can access an element of the array.
if let lastColors = shapesWithTheirColors["Square"] {
    if let lastColor = lastColors.last {
        print("Last color of Square:", lastColor)
    } else {
        print("No colors found for Square.")
    }
} else {
    print("Square not found in the dictionary.")
}

/*:
[Previous](@previous)  |  page 3 of 4  |  [Next: App Exercise - Pacing](@next)
 */
