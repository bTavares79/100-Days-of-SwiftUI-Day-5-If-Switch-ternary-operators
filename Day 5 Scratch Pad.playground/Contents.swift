import UIKit


// basics of if then statements
let score = 85

if score > 80{
    print("Well done")
}


let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads")
}

if percentage < 85 {
    print("Sorry you failed the test")
}

if age >= 18 {
    print("You're eligble to vote")
}


let ourName = "Brian"
let friendName = "Arnold"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
} else {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

// This is checking if the two values are equal this requires the == operator
if country == "Australia" {
    print("G-Day")
}


let name = "Taylor Swift"

// This is the not equals to operator
if name != "Annoymous" {
    print("Welcome \(name)")
}


var username = "taylorswift13"

// This operation behind the scenes is slower. When doing a count Swift checks every single letter in the
// string to find the total count. This take more time.
if username == "" {
    username = "Anonymous"
}

// Or you can do this comparison this way which is faster
if username.isEmpty {
    username = "Annonymous"
}

print(username)


// ================================================ How to check multiple conditions ====================
let temp = 25

if temp > 25 {
    print("The temp is high today")
} else {
    print("The temp is low today")
}

let a = 10
let b = 20

if a > 10 {
    print("A is the winner")
} else if b == 20 {
    print("B is the winner")
} else {
    print("Nobody won")
}

if temp > 20 && temp < 30 {
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum transportOptions {
    case Car,
         Bus,
         Plane,
        Helicopter
}

let tranport = transportOptions.Plane

if tranport == .Plane {
    print("You are flying by plane")
}


// =========================================== Switch Statements ==================================
// Must check all possible value in a switch statement
// Same thing really as a state machine in a PLC
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Charleston"

// When using strings in a switch sttaement you will need to add the default: to cover the cases that are not in the string.
// Swift requires you to do this to cover all case
switch place {
case "Gotham":
    print("You are batman")
case "Mega City One":
    print("You are judge dread")
default:
    print("Who are you")
}

let day = 5
print("My true love gave to me")

// Switch case with fallthrough function. not used to often in the code
switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("and a partridge in a pear tree")
}



// ============================================== how to use ternary conditional operators for quick tests ==================================
let voterAge = 18

// This is a ternary operator this is basically a if then else statement condesed
let canVote = voterAge >= 18 ? "Yes" : "No"

print(canVote)


let hour = 23
print(hour < 12 ? "Before Noon" : "It's afternoon")


let names = ["James", "kyle", "Brian", "Casey"]
let crewcount = names.isEmpty ? "No One" : "\(names.count) people"

print(crewcount)

enum theme {
    case light,
    dark
}

let Theme = theme.dark

let background = Theme == .dark ? "black" : "white"
print(background)
