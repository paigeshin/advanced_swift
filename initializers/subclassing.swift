import Foundation

class Car {

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


class Tesla: Car {
    var range: Double

    // when you override, you can use convenience initializer
    override init(make: String, model: String, color: String) {
        self.range = 300 
        super.init(make: make, model: model, color: color)
    }

    // init(make: String, model: String, color: String, range: Double) {
    //     self.range = range 
    //     super.init(make: make, model: model, color: color)
    // }

}

let tesla = Tesla(make: "Tesla", model: "Model", color: "color")