import Foundation

// Basic Concept

/*

struct Website {

    var url: String {
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url 
        }
    }

}

// www.movies.com/?search=Lord of the rings => This url is not encoded
var website = Website(url: "www.movies.com/?search=Lord of the rings")
// encode website url with `property observer, didSet`
website.url = "www.movies.com/?search=Lord of the rings" 
print(website)
// output, "www.movies.com%2F%3Fsearch=Lord%20of%20the%20rings"

*/ 

// Advanced

struct Website {

    init(url: String) {
        // when code block execution finished, code inside `defer` block will be executed
        defer { self.url = url }
        self.url = url 
    }

    var url: String {
        didSet {
            url = url.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? url 
        }
    }

}

var website = Website(url: "www.movies.com/?search=Lord of the rings")
print(website)
// output, "www.movies.com%2F%3Fsearch=Lord%20of%20the%20rings"