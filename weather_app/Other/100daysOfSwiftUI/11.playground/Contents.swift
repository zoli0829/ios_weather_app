import Cocoa

// How to limit access to internal data using access control
struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

// private
// fileprivate
// public
// private(set)

// Static properties and methods
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// self The current value of a struct
// Self the current type of struct

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}
AppData.version

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}
