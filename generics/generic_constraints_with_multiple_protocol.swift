import Foundation

protocol Fly {
    func fly() 
}

protocol Teleport {
    func teleport() 
}

protocol Strenth {
    func throwObject() 
}

typealias SuperHero = Fly & Teleport & Strenth

struct Electronman: SuperHero {
    func fly() {
    
    }
    func teleport() {
    
    }
    func throwObject() {
    
    }
}

func attack<T: SuperHero>(value: T) {

}

let electronMan = Electronman() 
attack(value: electronMan)

print(electronMan)
