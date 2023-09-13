import Foundation

@MainActor
class JokeData: ObservableObject {
    @Published var joke: Joke = Joke.jokeTest
    
    init () {
        Task {
            await loadJoke()
        }
    }
    
    func refreshJoke() {
        Task{
            await loadJoke()
        }
    }
    
    func loadJoke() async {
        do{
            let joke = try await JokeFetching.getJoke()
            self.joke = joke
        }catch {
            print("[JOKEDATA] \(error)")
        }
    }
}
