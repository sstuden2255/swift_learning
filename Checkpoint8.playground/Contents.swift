import Cocoa

// Extension to insert commas so that the prices are formattted better.
extension Int {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value: self)) ?? "\(self)"
    }
}

protocol Building {
    var numRooms: Int { get }
    var cost: Int { get }
    var realEstateAgent: String { get }
    func summary()-> Void
}

struct House: Building {
    var numRooms: Int
    var cost: Int
    var realEstateAgent: String
    func summary() {
        print("This house is listed at $\(cost.withCommas()). It has \(numRooms) rooms and is managed by \(realEstateAgent).")
    }
}

struct Office: Building {
    var numRooms: Int
    var cost: Int
    var realEstateAgent: String
    
    func summary() {
        print("This Office is listed at $\(cost.withCommas()). It has \(numRooms) rooms and is managed by \(realEstateAgent).")
    }
}

var house = House(numRooms: 4, cost: 1_500_000, realEstateAgent: "Angelina Carol")
var office = Office(numRooms: 50, cost: 10_000_000, realEstateAgent: "Robert Smith")

house.summary()
office.summary()
