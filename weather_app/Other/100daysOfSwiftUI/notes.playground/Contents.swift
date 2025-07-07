import SwiftUI

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

// pulsating animation
Button("Tap me") {
    //animationAmount += 1
}
.padding(50)
.background(.red)
.foregroundStyle(.white)
.clipShape(.circle)
.overlay(
    Circle()
        .stroke(.red)
        .scaleEffect(animationAmount)
        .opacity(2 - animationAmount)
        .animation(
            .easeOut(duration: 1)
            .repeatForever(autoreverses: false),
            value: animationAmount)
)
.onAppear {
    animationAmount = 2
}

// more animations
Button("Animate") {
    withAnimation(.spring(duration: 1, bounce: 0.5)) {
        animationAmount += 360
    }
}

Button("Tap me") {
    enabled.toggle()
}
.frame(width: 200, height: 200)
.background(enabled ? .blue : .red)
.foregroundStyle(.white)
.animation(nil, value: enabled)
.clipShape(.rect(cornerRadius: enabled ? 60 : 0))
.animation(.spring(duration: 1, bounce: 0.6), value: enabled)

LinearGradient(colors: [.yellow, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
    .frame(width: 300, height: 200)
    .clipShape(.rect(cornerRadius: 10))
    .offset(dragAmount)
    .gesture(DragGesture()
        .onChanged { dragAmount = $0.translation }
        .onEnded { _ in
            withAnimation(.bouncy) {
                dragAmount = .zero
            }
        }
    )

// Drag animation
HStack(spacing: 0) {
    ForEach(0..<letters.count, id: \.self) { num in
        Text(String(letters[num]))
            .padding(5)
            .font(.title)
            .background(enabled ? .blue : .red)
            .offset(dragAmount)
            .animation(.linear.delay(Double(num) / 20), value: dragAmount)
    }
}
.gesture(
    DragGesture()
        .onChanged { dragAmount = $0.translation }
        .onEnded { _ in
            dragAmount = .zero
            enabled.toggle()
        }
)

// more anim
VStack{
    Button("Tap me") {
        withAnimation{
            isShowingRed.toggle()
        }
    }
    if isShowingRed {
        Rectangle()
            .fill(.red)
            .frame(width: 200, height: 200)
            .transition(.asymmetric(insertion: .scale, removal: .opacity))
    }
}

// Custom transitions using ViewModifier
struct CornerRotateModifier: ViewModifier {
    let amount: Double
    let anchor: UnitPoint
    
    func body(content: Content) -> some View {
        content
            .rotationEffect(.degrees(amount), anchor: anchor)
            .clipped()
    }
}

extension AnyTransition {
    static var pivot: AnyTransition {
        .modifier(
            active: CornerRotateModifier(amount: -90, anchor: .topLeading),
            identity: CornerRotateModifier(amount: 0, anchor: .topLeading)
        )
    }
}
// example usage
ZStack {
    Rectangle()
        .fill(.blue)
        .frame(width: 200, height: 200)
    
    if isShowingRed {
        Rectangle()
            .fill(.red)
            .frame(width: 200, height: 200)
            .transition(.pivot)
    }
}
.onTapGesture {
    withAnimation {
        isShowingRed.toggle()
    }
}

// Store user settings
@AppStorage("tapCount") private var tapCount = 0

// or
struct User: Codable {
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    @State private var user = User(firstName: "Taylor", lastName: "Swift")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "user")
            }
        }
    }
}

// scale image
Image(.oman)
    .resizable()
    .scaledToFit()
    .containerRelativeFrame(.horizontal) { size, axis in
        size * 0.8
    }

// Adding haptic effects the more complicated way
struct ContentView: View {
    @State private var counter = 0
    @State private var engine: CHHapticEngine?
    
    var body: some View {
        Button("Play haptic:", action: complexSuccess)
            .onAppear(perform: prepareHaptics)
    }
    
    func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {
            return
        }
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("There was an error creating the engine: \(error.localizedDescription)")
        }
    }
    
    func complexSuccess() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        var events = [CHHapticEvent]()
        
        for i in stride(from: 0, to: 1, by: 0.1) {
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: 1)
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1)
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: i)
            events.append(event)
        }
        
        for i in stride(from: 0, to: 1, by: 0.1) {
            let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: Float(1 - i))
            let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: Float(1 - i))
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 1 + i)
            events.append(event)
        }
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Failed to play pattern: \(error.localizedDescription)")
        }
    }
}


// Started a course on Coursera day 1

