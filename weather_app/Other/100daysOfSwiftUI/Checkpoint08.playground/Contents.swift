import Cocoa

protocol Building {
    var rooms: Int {get}
    var cost: Int {get set}
    var name: String {get set}
    
    func printSummary()
}

extension Building {
    func printSummary() {
        print("This building has \(rooms) rooms, it costs \(cost) and the agent is called \(name)")
    }
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var name: String
    
    func printSummary() {
        print("This house has \(rooms) rooms, it costs \(cost) and the agent is called \(name)")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var name: String
    
    func printSummary() {
        print("This office has \(rooms) rooms, it costs \(cost) and the agent is called \(name)")
    }
}

var house = House(rooms: 4, cost: 500_000, name: "Dave")
house.printSummary()

var office = Office(rooms: 20, cost: 1_000_000, name: "Peter")
office.printSummary()

