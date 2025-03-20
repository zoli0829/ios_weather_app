import Cocoa

// Bools
let goodDogs = true
var gameOver = false
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated

gameOver.toggle()

//Strings
let firstPart = "Hello "
let secondPart = "World!"
let greetng = firstPart + secondPart

// interpolation
let name = "Taylor"
let age = 26

let message = "Hello my name is \(name) and I'm \(age) years old."
print(message)

