import UIKit

// Stepper
Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)

// Date picker
DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
    .labelsHidden()

// DateComponents
func someDates() {
//        var components = DateComponents()
//        components.hour = 8
//        components.minute = 0
//        let date = Calendar.current.date(from: components) ?? .now
    
    let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
    let hour = components.hour ?? 0
    let minute = components.minute ?? 0
}

Text(Date.now.formatted(date: .long, time: .shortened))

// url

func testBundles() {
    if let fileURL = Bundle.main.url(forResource: "somefile", withExtension: "txt") {
        if let fileContent = try? String(contentsOf: fileURL) {
            // we loaded the file into a string
        }
    }
}

// Check strings
func testStrings() {
    let input = "a b c"
    let letters = input.components(separatedBy: " ")
    let letter = letters.randomElement()
    let trimmed = letter?.trimmingCharacters(in: .whitespacesAndNewlines)
}

func testStrings2() {
    let word = "swift"
    let checker = UITextChecker()
    
    let range = NSRange(location: 0, length: word.utf16.count)
    let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
    
    let allGood = misspelledRange.location == NSNotFound
}

//
