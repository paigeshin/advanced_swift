import Foundation

// FORCE UNWRAPPING

struct Student {
    let firstName: String 
    let lastName: String 
    let grade: String? 
}

let student = Student(firstName: "Paige", lastName: "Shin", grade: nil)

print(student.grade!)

guard let url = URL(string: "www.abc.com") else { 
    fatalError("URL is not defined!")
    return 
}

print(url)