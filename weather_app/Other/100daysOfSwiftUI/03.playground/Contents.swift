import Cocoa

// Arrays
var beatles = ["John", "Paul", "George"]
beatles.append("Adrian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokio", "Rome", "Budapest"]
print(cities.sorted())
print(cities.reversed())

// Dictionaries
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["LeBron James"] = 206
// duplicates would overwrite themselves

// Sets
// stores the items in the order it wants
var actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicholas Cage",
    "Samuel L Jackson"
])
print(actors)
actors.insert("The Rock")
print(actors)

// Enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum WeekEndDays {
    case saturday, sunday
}

var day = Weekday.monday
day = .tuesday
day = .friday
