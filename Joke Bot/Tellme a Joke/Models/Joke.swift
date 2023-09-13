import Foundation

struct Joke: Codable {
    var error: Bool
    var category: String
    var type: String
    var joke: String
    var flags: Flag
    var id: Int
    var safe: Bool
    var lang: String
}

extension Joke {
    static let jokeTest = Joke(error: false, category: "", type: "", joke: "", flags: Flag.testFlags, id: 0, safe: false, lang: "")
}
