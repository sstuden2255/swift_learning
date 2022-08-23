import Cocoa

let nbaPlayers = ["Lebron James", "James Harden", "Kevin Durant", "James Harden"]

let numPlayers = nbaPlayers.count
let uniquePlayers = Set(nbaPlayers).count

print("Number of NBA Players: \(numPlayers)")
print("Number of unique NBA Players: \(uniquePlayers)")
