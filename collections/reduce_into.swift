import Foundation

let ratings = [4, 8.5, 9.5, 2, 6, 3, 5.5, 7, 2.8, 9.8, 5.9, 1.5]

// Make values to dictionary
// This approaches can be laggard if there are hundred thousands of array ratings
let results = ratings.reduce([:]) { (results: [String: Int], rating: Double) in 

    // make brand new dictionary
    var copy = results 

    switch rating {
        case 1..<4: copy["Very Bad", default: 0] += 1 
        case 4..<6: copy["Ok", default: 0] += 1 
        case 6..<8: copy["Good", default: 0] += 1 
        case 8..<11: copy["Excellent", default: 0] += 1 
        default: break
    }

    return copy 
}

print(results);
// ["Ok": 3, "Good": 2, "Excellent": 3, "Very Bad": 4]


// with `into`
// much better performance because this method is not copying existing arrays 
// inout means `results` can be modified inside the block
let results2 = ratings.reduce(into: [:]) { (results: inout [String: Int], rating: Double) in

    switch rating {
        case 1..<4: results["Very Bad", default: 0] += 1 
        case 4..<6: results["Ok", default: 0] += 1 
        case 6..<8: results["Good", default: 0] += 1 
        case 8..<11: results["Excellent", default: 0] += 1 
        default: break
    }
}

print(results2);