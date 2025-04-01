import Cocoa

// Optionals
let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is: \(marioOpposite)")
}

var username: String? = nil

if let unwrappedUsername = username {
    print("Hello, \(unwrappedUsername)!")
} else {
    print("The optional is nil!")
}

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    number * number
}

var number: Int? = 5

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

if let number2 = number {
    print(square(number: number2))
}

// How to unwrap optionals with guard
//
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

var myVar: Int? = 3

if let unwrapped = myVar {
    // run if myVar has a value inside
}

guard let unwrapped = myVar else {
    // Run if myVar doesnt have a value inside
}

// Swift requires you to use return if a guard check fails.
// If the optional you're unwrapping has a value, you can use it after the guard code finishes.

// Unwrap optionals with nil coalescin
//
let captains = ["Enterprise": "Captain Picard", "Star Trek" : "Captain Kirk", "Defiant" : "Captain Sisko"]
let new = captains["Serenity", default: "N/A"]

let tvShows = ["Archer", "Rick and Morty", "The Good Place"]
let favorite = tvShows.randomElement() ?? "No favorite"

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Unknown"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
