import Foundation

func generateRandomNumber(range: ClosedRange<Int>) -> Int {
    return Int.random(in: range)
}

func getUserInput() -> Int? {
    print("Enter your guess: ", terminator: "")
    guard let input = readLine(), let number = Int(input) else {
        print("Invalid input. Please enter a valid number.")
        return nil
    }
    return number
}

func runGame() {
    let lowerBound = 1
    let upperBound = 100
    let randomNumber = generateRandomNumber(range: lowerBound...upperBound)
    
    print("Welcome to the Guess the Number game!")
    print("I'm thinking of a number between \(lowerBound) and \(upperBound). Try to guess it!")

    var hasGuessedCorrectly = false
    var attempts = 0

    while !hasGuessedCorrectly {
        guard let guess = getUserInput() else { continue }
        attempts += 1
        
        if guess < randomNumber {
            print("Your guess is too low.")
        } else if guess > randomNumber {
            print("Your guess is too high.")
        } else {
            hasGuessedCorrectly = true
            print("Congratulations! You've guessed the number correctly in \(attempts) attempts.")
        }
    }
}

runGame()
