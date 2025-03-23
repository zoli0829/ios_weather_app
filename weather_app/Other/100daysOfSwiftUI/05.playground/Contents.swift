import Cocoa

// If statements
let score = 85

if score > 80 {
    print("Great job!")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we are going, we dont need roads.")
}

if percentage < 85 {
    print("Sorry you have failed.")
}

if age >= 18 {
    print("You are eligible to vote.")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
    print(numbers)
}

let countrey = "Canada"

if countrey == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymus" {
    print("Welcome \(name)!")
}

var username = ""

if username.isEmpty {
    username = "Anonymus"
}

print("Welcome, \(username)!")

// multiple conditions

let age2 = 16

if age2 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you are too young to vote.")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bycicle, car, escooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Lets fly!")
} else if transport == .bycicle {
    print("I hope there is a bike path.")
} else if transport == .car {
    print("stuck in traffic")
} else {
    print("hire a scooter")
}

// Switch case
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("Sunny")
case .rain:
    print("Rainy")
case .wind:
    print("Windy")
case .snow:
    print("Snowy")
case .unknown:
    print("weather forecast is broken")
}

// default case
// default:
    // print()


// ternary conditional operator
let age3 = 18
let canVote = age3 >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? "Its before noon" : "Its after noon")
