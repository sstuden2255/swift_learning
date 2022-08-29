import Cocoa

//function that accepts an optional array of integers
// returns one of the  integers randomly
// if the array is missing or empty, return a new random number between 1 and 100
//  write  this function in a single line of code

let arr1 = [1, 5, 6, 10]
let arr2 = [Int]()
let arr3: [Int]? = nil

func getRandomNumber(in nums: [Int]?) -> Int { return nums?.randomElement() ?? Int.random(in: 1...100) }

print(getRandomNumber(in: arr1))
print(getRandomNumber(in: arr2))
print(getRandomNumber(in: arr3))
