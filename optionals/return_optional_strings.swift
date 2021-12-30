import Foundation

struct Student {

    let firstName: String? 
    let lastName: String?

    var displayName: String? {
        switch (firstName, lastName) {
            case let (first?, last?): return "\(first) \(last)"
            case let (first?, nil): return first
            case let (nil, last?): return last 
            default: return nil 
        }
    }

}

let student = Student(firstName: nil, lastName: nil)

func createGreetingMessage(student: Student) -> String {
    return """
        Dear \(student.displayName ?? "Student"), Welcome to Swift University
    """
}

let message = createGreetingMessage(student: student)
print(message)