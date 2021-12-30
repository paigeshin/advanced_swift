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

    // Since you are calling self.init, every single subclass should be able to call self.init 
    // We need to make accessible by marking convenience init with `required` keyword
    // Self => it returns any type of car (super class or subclass)
    class func makeCar(make: String, model: String) -> Self {
        let car = self.init(make: make, model: model)
        // setup engine
        // setup fuel lines 
        // setup tires 
        return car 
    }

}


class Tesla: Car {
    var range: Double

    // Designated initializer
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