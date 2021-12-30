import Foundation

struct Pizza {
    let dough: String 
    let toppings: [String]
}

enum PizzBuilderError: Error {
    case doughBurnt 
    case noToppings(String)
}

struct PizzaBuilder {

    func prepare() -> Pizza? {
        do {
            let dough = try prepareDough()
            let toppings = try prepareToppings() 
            // return pizza
            return Pizza(dough: dough, toppings: toppings)
        } catch {
            print("Unable to prepare pizza")
            return nil 
        }
    }

    private func prepareDough() throws -> String {
        
        // prepare the dough 

        throw PizzaBuilderError.doughBurned

    }

    private func prepareToppings() throws -> [String] {

        // prepare the toppings

        throw PizzaBuilderError.noToppings("Chicken and onions are missing!")

    }


}