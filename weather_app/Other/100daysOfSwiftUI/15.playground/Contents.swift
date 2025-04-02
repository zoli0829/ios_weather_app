import Cocoa

// Errors
//
enum PasswordError: Error {
    case short
    case obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 8 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}

do {
    let result = try checkPassword("12345")
    print("Rating is \(result)")
} catch PasswordError.obvious {
    print("The password is too obvious!!!!")
} catch {
    print("There was an error!")
}

// Closures
//
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

sayHello("Zoltan")

let team = ["Gloria", "Zoltan", "Gergely", "Tasha", "Tiffany"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)

// Trailing closures and shorthand syntax
let onlyZ = team.filter({ name in
    name.hasPrefix("Z")
})
print(onlyZ)

// trailing closure syntax
let onlyG = team.filter { name in
    name.hasPrefix("G")
}
print(onlyG)

// short parameter names
let onlyGShort = team.filter {
    $0.hasPrefix("G")
}
print(onlyGShort)

// Property observers
//
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10

// Static properties
//
struct AppData {
    static let version = "1.3 beta 2"
    static let settingsFile = "settings.json"
}

print(AppData.version)

//Optionals
//
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing Input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

// Nil coalescing
//
let tvShows = ["Archer", "Rick and Morty", "The Good Place"]
let favorite = tvShows.randomElement() ?? "No favorite"

let input = ""
let number = Int(input) ?? 0
print(number)

// Optional chaining
//
let names = ["Alice", "Bob", "Charlie", "Arya", "Bran", "Rob", "Sansa"]
// if the optional has a value inside then uppercase it
let chosen = names.randomElement()?.uppercased()
print("Next in line: \(chosen ?? "No one")")

// Optional try?
//
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 123) {
    print("User: \(user)")
}
