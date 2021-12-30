import Foundation

// without generic 
let numbers = [1,2,3,4,5,6,7,8,9,10]
let names = ["Alex", "John", "Mary", "Steve"]

func firstLast(_ numbers: [Int]) -> (Int, Int) {
    return (numbers[0], numbers[numbers.count - 1])
}

// func firstLast(_names: [String]) -> (String, String) {
//     return (numbers[0], numbers[numbers.count - 1])
// }

let (first, last) = firstLast(numbers);
print(first)
print(last)