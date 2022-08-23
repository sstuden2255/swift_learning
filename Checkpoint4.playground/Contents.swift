import Cocoa

enum OutOfBoundsError: Error {
    case tooLarge
    case tooSmall
    case noSquareRoot
}

func integerSquareRoot(_ num: Int) throws -> Int {
    if num > 10_000 {
        throw OutOfBoundsError.tooLarge
    }
    if num < 1 {
        throw OutOfBoundsError.tooSmall
    }
    
    if num == 1 {
        return 1
    }
    
    for i in 1...num {
        if (i * i) > num {
            return i - 1
        }
    }
    throw OutOfBoundsError.noSquareRoot
}

do {
    try print(integerSquareRoot(81))
} catch OutOfBoundsError.tooLarge {
    print("The number you input is too large. Must be a number between 1 and 10,000 inclusive.")
} catch OutOfBoundsError.tooSmall {
    print("The number you input is too small. Must be a number between 1 and 10,000 inclusive.")
} catch OutOfBoundsError.noSquareRoot {
    print("There is no integer square root for this number.")
}
