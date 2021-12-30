import Foundation

struct Movie: Equatable {
    let name: String 
}

let movies = [Movie(name: "Batman"), Movie(name: "Spiderman"), Movie(name: "Superman")]
let numbers = [1,2,3,4,5,6,7,8,9,10]
let names = ["Alex", "John", "Mary", "Steve"]

func findIndex<T: Equatable>(from list: [T], valueToFind: T) -> Int? {
    return list.firstIndex { (item) -> Bool in 
        return item == valueToFind
    }
}

print(findIndex(from: names, valueToFind: "John"))

let batmanMovie = Movie(name: "Batman")
print(findIndex(from: movies, valueToFind: batmanMovie))