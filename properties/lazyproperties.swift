import Foundation

/* Without Lazy Properties */

/***

enum Level {
    case easy 
    case medium 
    case hard 
}

struct Exam {

    var level: Level 
    
    var questions: [String] {

        sleep(5)

        switch level {
            case .easy: 
                return ["What is 1+2", "What is 1+2", "What is 2+2"]
            case .medium:
                return ["What is 11+22", "What is 11+22", "What is 32+42"]
            case .hard:
                return ["What is 122+332", "What is 441+255", "What is 266+250"]
        }
    }

}

let exam = Exam(level: .easy)
print(exam.questions)
print("wait for 1 seocond")
sleep(1) // this makes 5 + 1 seconds, but questions are the same questions, but why do we have to wait?
print(exam.questions) // it's initialized again..

***/

enum Level {
    case easy 
    case medium 
    case hard 
}

struct Exam {

    var level: Level 
    
    // When you access lazy properties, then they will be initialized
    // Lazy properties are initialized once
    // After they have been initalized, if you request lazy properties to return, they are returned instantly.
    lazy private(set) var questions: [String] = {

        sleep(5)

        switch level {
            case .easy: 
                return ["What is 1+2", "What is 1+2", "What is 2+2"]
            case .medium:
                return ["What is 11+22", "What is 11+22", "What is 32+42"]
            case .hard:
                return ["What is 122+332", "What is 441+255", "What is 266+250"]
        }
    }()


    // private(set) => initialization is only possible within structure or class

}

// when using with lazy, it must be used with `mutable variable`
var exam = Exam(level: .easy)
print(exam.questions) // access questions, delay the property so that it guarantees initialization only once.
print("wait for 1 seocond")
sleep(1) // this makes 5 + 1 seconds, but questions are the same questions, but why do we have to wait?
print(exam.questions)

// you can't assign lazy properties again 
// exam.questions = ["What is the captital of US?"]

// Test 
var hardExam = exam 
hardExam.level = .hard
print("[Hard Exam]")
print(hardExam.questions) 
// This doesn't change. Still easy questions are printed out. 
// When you access `exam.questions` (.eazy), this will delay the property, so that it has been initialized and no more.
// How to solve this?
// Don't access exam.questions if you want to change property
