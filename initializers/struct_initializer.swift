import Foundation

// With Default Initializer 
struct Student {
    let firstName: String 
    let lastName: String 
    let grade: String 
}

let student = Student(firstName: "Paige", lastName: "Shin", grade: "24")

// With Explicit Initializer
struct Student2 {
    let firstName: String 
    let lastName: String 
    let grade: String

    init(firstName: String, lastName: String) {
        self.firstName = firstName 
        self.lastName = lastName
        self.grade = ""
    }

}

let student2 = Student2(firstName: "Sunghee", lastName: "Kim")

// Default & Explicit Initializer 
struct Student3 {
    let firstName: String 
    let lastName: String 
    let grade: String 
}

extension Student3 {

    init(firstName: String, lastName: String) {
        self.firstName = firstName 
        self.lastName = lastName 
        self.grade = ""
    }

}

let student3 = Student3(firstName: "Paige", lastName: "Shin", grade: "24")
let student4 = Student3(firstName: "Sunghee", lastName: "Kim")