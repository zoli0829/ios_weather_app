import Cocoa

struct Car {
    let model: String
    let seats: Int
    private(set) var currentGear: Int
    
    mutating func changeGear(newGear: Int) {
        if newGear < 1 || newGear > 10 {
            print("Please enter a number between 1 and 10.")
        } else {
            print("Changed gear to \(newGear)")
            currentGear = newGear
        }
    }
}

var opel = Car(model: "Astra", seats: 4, currentGear: 3)
opel.changeGear(newGear: 11)
opel.changeGear(newGear: 6)
