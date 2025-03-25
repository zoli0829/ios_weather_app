import Cocoa

// functions
func showWelcome(){
    print("Something")
}

func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

// because there’s only one line of code in the function Swift knows that’s the one that must return data
func areLettersIdentical2(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)

func pythagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")


func getUser2() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user2 = getUser2()
print("Name: \(user.firstName) \(user.lastName)")
