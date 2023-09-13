import Foundation

struct JokeFetching {
    static private let url = URL(string: "https://v2.jokeapi.dev/joke/Miscellaneous,Programming,Dark,Pun,Spooky,Christmas?&type=single")!
    
    static func getJoke() async throws -> Joke {
        async let (data, _) = URLSession.shared.data(from: url)
        let response = try await JSONDecoder().decode(Joke.self, from: data)
        return response
    }
}
