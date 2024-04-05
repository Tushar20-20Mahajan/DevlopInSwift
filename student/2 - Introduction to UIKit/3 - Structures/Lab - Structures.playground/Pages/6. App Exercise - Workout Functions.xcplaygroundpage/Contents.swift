/*:
## App Exercise - Workout Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 A `RunningWorkout` struct has been created for you below. Add a method on `RunningWorkout` called `postWorkoutStats` that prints out the details of the run. Then create an instance of `RunningWorkout` and call `postWorkoutStats()`.
 */
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    func postWorkoutStatus(){
        print("Distance is \(distance) miles ")
        print("Total time is \(time) minutes")
        print("Total elevation is \(elevation) feet")
        
    }
    
}

let totalWorkout = RunningWorkout(distance: 158.9, time: 35, elevation: 14)
totalWorkout.postWorkoutStatus()


//:  A `Steps` struct has been created for you below, representing the day's step-tracking data. It has the goal number of steps for the day and the number of steps taken so far. Create a method on `Steps` called `takeStep` that increments the value of `steps` by one. Then create an instance of `Steps` and call `takeStep()`. Print the value of the instance's `steps` property before and after the method call.
struct Steps {
    var steps: Int
    var goal: Int
    
    mutating func takeStep(){
        steps+=1
    }
}
var myWorkout = Steps(steps: 7089, goal: 1000)
print("My Step count is \(myWorkout.steps) and my goal is \(myWorkout.goal)")
myWorkout.takeStep()
print("My Step count is \(myWorkout.steps) after taking one more step by calling tekeStrep() and my goal is \(myWorkout.goal)")

/*:
[Previous](@previous)  |  page 6 of 10  |  [Next: Exercise - Computed Properties and Property Observers](@next)
 */
