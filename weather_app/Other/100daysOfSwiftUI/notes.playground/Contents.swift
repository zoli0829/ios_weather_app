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

// 
