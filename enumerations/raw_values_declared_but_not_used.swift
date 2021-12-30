import Foundation

enum NetworkError: Error {
    case badURL 
    case decodingError
}

// Declaring is good
// Recommended not to use rawValue even if it's declared
enum TemperatureUnit: String {
    case imperial = "F" 
    case metric = "C"
}

// It doesn't depend on rawValue, even though rawValue is declared
private func getWeatherURL(unit: TemperatureUnit) -> URL? {
    switch unit {
        case .imperial:
            return URL(string: "www.weather.com/?unit=fahrenheit")
        case .metric:
            return URL(string: "www.weather.com/?unit=celsius")
    }
}

func getWeather(unit: TemperatureUnit) throws {

    guard let weatherURL = getWeatherURL(unit: unit) else {
        throw NetworkError.badURL
    }
    
    print(weatherURL)

    // code to call the weather API 

}

do {
    try getWeather(unit: .imperial)
} catch {
    print(error)
}
