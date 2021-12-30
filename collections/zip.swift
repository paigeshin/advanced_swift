import Foundation

let students = ["Alex", "Mary", "John", "Steven"]
let grades = [3.4, 2.8]

// merge arrays as tuples
let pair = zip(students, grades)

for studentAndGrande in pair {
    print(studentAndGrande.0)
    print(studentAndGrande.1)
}