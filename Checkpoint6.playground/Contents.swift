import Cocoa

struct Car {
    let model: String
    var currentGear: Int {
        didSet {
            print("Changed to gear \(currentGear)")
        }
    }
    let numSeats: Int
    
    init(model: String, currentGear: Int, numSeats: Int) {
        self.model = model
        if currentGear > 10 {
            print("The gear you chose is too high. Starting at the higest gear (10).")
            self.currentGear = 10
        } else if currentGear < 0 {
            print("The gear you chose is too low. Starting at the lowest gear (1).")
            self.currentGear = 1
        } else {
            self.currentGear = currentGear
        }
        self.numSeats = numSeats
    }
    
    mutating func shiftUp() {
        if currentGear == 10 {
            print("Cannot shift up, currently in higest gear.")
        } else {
            currentGear +=  1
        }
    }
    
    mutating func shiftDown() {
        if currentGear == 1 {
            print("Cannot shift down, currently in lowest gear.")
        } else {
            currentGear -= 1
        }
    }
}

var car1 = Car(model: "Subaru WRX Premium", currentGear: 5, numSeats: 5)

print(car1.model)
print(car1.currentGear)
print(car1.numSeats)

car1.shiftDown()
car1.shiftUp()

for i in 1...8 {
    car1.shiftUp()
}
