import Foundation

let hello: (String) -> () = { 
    print("Hello \($0)!")
}

hello("Paige Shin")

let pow: (Int, Int) -> Int = { (number1, number2) in 
    return number1 * number2
}

let result = pow(5, 3)
print(result)

// When you pass closure to another function
// And the closure you passed in is non-escaping, 
// which basically means that you can't reslly use the closure after the function has already returned 
// In order to avoid that situation, we need to mark with `@escaping`

// @escaping means that it's OK if the function actually returns or escapes, we will go ahead and we will be able to call that closure.
func getPosts(completion: @escaping([String]) -> Void) {

    var posts: [String] = []

    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        posts = ["Hello World", "Introudction to Closures"]
        /* Normally closures are non-escaping, which means closures cannot be executed after function has already returned */
        /* But by marking `@escaping`, it allows to execute closure after function has already returned */
        /* In short, @escaping makes closure executable with `returned function` */
        completion(posts)
    }

}

getPosts { items in 
    print("get post called!")
    print(items)
}