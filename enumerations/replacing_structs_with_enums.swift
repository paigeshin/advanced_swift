import Foundation

/*
struct Session {
    let title: String 
    let speaker: String 
    let date: Date 
    let isKeynote: Bool
    let isWorkshop: Bool
    let isRercorded: Bool
    let isNormal: Bool
    let isJoinSession: Bool
    var jointSpeakers: [String]? 
}

let session = Session(
    title: "Introduction to Swift", 
    speaker: "Paige Shin", 
    date: Date(), 
    isKeynote: false, 
    isWorkshop: false, 
    isRercorded: true, 
    isNormal: true, 
    isJoinSession: false
)
*/

/*
Why this approach is more valuable?
This makes code more maintainable instead of having a structure with all of these different properties.
Some structure doesn't use all of their properties. Then, this approach is viable.
*/

enum Session {
    case keynote(title: String, speaker: String, date: Date, isRecorded: Bool)
    case normal(title: String, speaker: String, date: Date)
    case workshop(title: String, speaker: String, date: Date, isRecorded: Bool)
    case joint(title: String, speakers: [String], date: Date)
}

// initialize with enum
let keynote: Session = Session.keynote(title: "WWDC 201", speaker: "Tim Cook", date: Date(), isRecorded: true)

// display keynote session 
// example of how to handle enum in switch
func displaySession(session: Session) {
    switch session {
        case let .keynote(title: title, speaker: speaker, date: date, isRecorded: isRecorded):
            print("\(title) - \(speaker) - \(date) - \(isRecorded)")
        case let .normal(title: title, speaker: speaker, date: date):
            print("\(title) - \(speaker) - \(date)")
        default: 
            print("")
    }

    // particular session type 
    /*
    if case let Session.keynote(title: title, speaker: speaker, date: date, isRecorded: isRecorded) = session {
        // it is a keynote session 
    }
    */
}

displaySession(session: keynote)