import Foundation

struct Movie {
    let name: String 
}

let movies = [Movie(name: "Batman"), Movie(name: "Spiderman"), Movie(name: "Superman")]
let numbers = [1,2,3,4,5,6,7,8,9,10]
let names = ["Alex", "John", "Mary", "Steve"]

func firstLast<T>(_ list: [T]) -> (T, T) {
    return (list[0], list[list.count - 1])
}

let (first, last) = firstLast(movies);
print(first)
print(last)
