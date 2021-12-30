import Foundation

struct Student: CustomStringConvertible {
    let firstName: String 
    let lastName: String 
    let middleName: String? 
    let grade: String?

    var description: String {
        
        var studentDescription = "\(firstName)"
        
        if let middleName = middleName {
            studentDescription += "\(middleName)"
        }

        studentDescription = " \(lastName)"

        if let grade = grade {
            studentDescription += "\(grade)"
        }

        return studentDescription
    }

}

let student = Student(firstName: "Paige", lastName: "Shin", middleName: "Shin", grade: "SSS")
print(student.description)