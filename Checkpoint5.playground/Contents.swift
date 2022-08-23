import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
/* Steps:
  1. filter out numbers that are even
  2. sort array in ascending order
  3. Map them to strings in the format "7 is the lucky number"
  4. Print the resulting array one item per line
*/

let luckyStrings = luckyNumbers.filter({ num in
    return num % 2 != 0
}).sorted().map({ num -> String in
    return "\(num) is the lucky number"
})

for luckyString in luckyStrings {
    print(luckyString)
}
