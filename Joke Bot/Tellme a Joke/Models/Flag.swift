import Foundation

struct Flag: Codable {
    var nsfw: Bool
    var religious: Bool
    var political: Bool
    var racist: Bool
    var sexist: Bool
    var explicit: Bool
}

extension Flag {
    static let testFlags = Flag(nsfw: false, religious: false, political: false, racist: false, sexist: false, explicit: false)
}
