import Foundation

struct Movie: Encodable {
    let title: String 
}

func serializeToData<T: Encodable>(_ value: T) -> Data? {
    return try? JSONEncoder().encode(value)
}

print(serializeToData(Movie(title: "Batman")))

