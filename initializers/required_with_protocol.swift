import Foundation

protocol CarType {
    init(make: String, model: String)
}

class Car: CarType {

    var make: String 
    var model: String 
    var color: String 

    init(make: String, model: String, color: String) {
        self.make = make 
        self.model = model
        self.color = color 
    }

    required convenience init(make: String, model: String) {
        self.init(make: make, model: model, color: "White")
    }
}


let car = Car(make: "String", model: "")