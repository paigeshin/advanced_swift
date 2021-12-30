import Foundation

struct Course {
    let courseNumber: String 
    let name: String 
    let creditHours: Int 
}

protocol Student {
    var courses: [Course] { get set }
    mutating func enroll(_ course: Course)
}

extension Student {
    mutating func enroll(_ course: Course) {
        courses.append(course)
    }
}

// Any object or struct conforming to `VerifiedStudent` should also conform to Student
// where Self: Students means that. 
protocol VerifiedStudent where Self: Student {
    func verify() -> Bool 
}

extension VerifiedStudent {
    
    func enroll(_ course: Course) {
        if verify() {
            print("Verified and Enrolled")
        }
    }

    func verify() -> Bool {
        return true 
    }

}

struct InternationalStudent: Student, VerifiedStudent {
    var courses: [Course] = [] 
}