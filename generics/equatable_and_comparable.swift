import Foundation

// Equatable: == 
// Comparable: < > 

enum Card: Comparable {

    case ace 
    case king 
    case queen 

    static func <(lhs: Card, rhs: Card) -> Bool {
        switch(lhs, rhs) {
            case (king, ace): return true 
            case (queen, king): return true 
            case (queen, ace): return true 
            default: return false 
        }
    }

}


func lowest<T: Comparable & Equatable>(list: [T]) -> T? {
    let sortedList = list.sorted {
        return $0 < $1 
    }
    return sortedList.first 
}

print(lowest(list: [4, 5, 6, 1, 200]))
print(lowest(list: ["b", "c", "a", "z"]))
print(lowest(list: [Card.ace, Card.queen, Card.king]))