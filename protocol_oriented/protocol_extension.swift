import Foundation

protocol Parser {

    associatedtype Input 
    associatedtype Output

    func parse(input: Input) -> Output

}

extension Parser {

    // if parse() is not implemented,
    // the function below will be provided as default
    func parse(input: String) -> [String] {
        return ["<html></html>", "<p></p>"]
    }

}

class XHTMLParser: Parser {

}

let xhmlPraser = XHTMLParser() 
xhmlPraser.parse(input: "sdfdsf")