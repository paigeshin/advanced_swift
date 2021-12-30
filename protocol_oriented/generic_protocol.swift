import Foundation

protocol Parser {

    associatedtype Input 
    associatedtype Output

    func parse(input: Input) -> Output

}

class TextFileParser: Parser {
    
    func parse(input: String) -> String {
        return ""
    }

}

class HTMLParser: Parser {
    
    func parse(input: String) -> [String] {
        return []
    }

}

class JSONParser: Parser {

    typealias Input = String 
    typealias Output = [String:String]

    func parse(input: Input) -> Output {
        return [:]
    }

}

func runParser<P: Parser>(parser: P, input: [P.Input]) where P.Input == JSONParser {
    input.forEach {
        _ = parser.parse(input: $0)
    }
}