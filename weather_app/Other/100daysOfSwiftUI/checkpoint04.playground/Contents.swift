import Cocoa

enum sqrtErrors: Error {
    case outOfBounds, noRoot
}

func squareRoot(number: Int) throws -> Int{
    if number < 1 || number > 10_000 {
        throw sqrtErrors.outOfBounds
    }
    
    // find sqrt() without using the built in function
    let squareRoot = pow(Double(number), 0.5)
    
    // check if sqrt is an int
    if squareRoot.truncatingRemainder(dividingBy: 1) == 0 {
        return Int(squareRoot)
    } else {
        throw sqrtErrors.noRoot
    }
}

do {
    let sqrtNum = try squareRoot(number: 100000)
    print("Square root is: \(sqrtNum)")
} catch sqrtErrors.outOfBounds {
    print("The number should be between 1 and 10000")
} catch sqrtErrors.noRoot {
    print("Number has no int square root")
} catch {
    print("There was an error: \(error.localizedDescription)")
}
