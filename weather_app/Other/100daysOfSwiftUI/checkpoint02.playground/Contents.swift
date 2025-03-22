import Cocoa

let names = ["Zoltan", "Karoly", "Laszlo", "Zoltan"]
print(names.count)
let namesSet = Set(names)
print("Number of unique names: \(namesSet.count)")
