/*:
## Exercise - Create a Subclass

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game. The base class `Spaceship` has been provided for you below.
 */
class Spaceship {
    var name: String = ""
    var health = 100
    var position = 0
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
    
    
}
//:  Define a new class `Fighter` that inherits from `Spaceship`. Add a variable property `weapon` that defaults to an empty string and a variable property `remainingFirePower` that defaults to 5.
class Fighter : Spaceship {
    var weapon : String = ""
    var remainingFirePower : Int = 0
    
    func fire() {
            if remainingFirePower > 0 {
                remainingFirePower -= 1
            } else {
                print("You have no more fire power.")
            }
        }
    
}

//:  Create a new instance of `Fighter` called `destroyer`. A `Fighter` will be able to shoot incoming objects to avoid colliding with them. After initialization, set `weapon` to "Laser" and `remainingFirePower` to 10. Note that since `Fighter` inherits from `Spaceship`, it also has properties for `name`, `health`, and `position`, and has methods for `moveLeft()`, `moveRight()`, and `wasHit()` even though you did not specifically add them to the declaration of `Fighter`. Knowing that, set `name` to "Destroyer," print `position`, then call `moveRight()` and print `position` again.
var destroyer = Fighter()
destroyer.name = "Destroyer"
destroyer.weapon = "Laser"
destroyer.remainingFirePower = 10
print("The initial position of the \(destroyer.name) is \(destroyer.position)")
destroyer.moveRight()
print("The new position of the \(destroyer.name) is \(destroyer.position)")

//:  Try to print `weapon` on `falcon`. Why doesn't this work? Provide your answer in a comment or a print statement below, and remove any code you added that doesn't compile.
let falcon = Spaceship()
//print(falcon.weapon)
print("This line will not compile because the Spaceship class does not have a property named 'weapon'. It is only defined in the subclass Fighter.")


//:  Add a method to `fighter` called `fire()`. This should check to see if `remainingFirePower` is greater than 0, and if so, should decrement `remainingFirePower` by one. If `remainingFirePower` is not greater than 0, print "You have no more fire power." Call `fire()` on `destroyer` a few times and print `remainingFirePower` after each method call.
destroyer.fire()
print("Remaining fire power:", destroyer.remainingFirePower)

destroyer.fire()
print("Remaining fire power:", destroyer.remainingFirePower)

destroyer.fire()
print("Remaining fire power:", destroyer.remainingFirePower)

destroyer.fire()
print("Remaining fire power:", destroyer.remainingFirePower)

/*:
[Previous](@previous)  |  page 2 of 4  |  [Next: Exercise - Override Methods and Properties](@next)
 */
