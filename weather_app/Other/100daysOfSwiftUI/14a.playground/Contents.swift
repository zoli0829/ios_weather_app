import Cocoa

// How to handle multiple optionals using optional chaining
//
let names = ["Aryan", "Shubham", "Robb", "Amit"]
let chosen = names.randomElement()?.uppercased() ?? "No Name"
print("Next in Line: \(chosen)")

// We have an optional instance of a Book struct
// The book might have an author, or might be anonymous
// If it has an author, attempt to read the first letter
// If the first is there, uppercase it.

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


// How to handle function failure with optionals
//
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
