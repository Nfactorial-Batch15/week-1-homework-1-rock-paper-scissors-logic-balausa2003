import UIKit

print("Helloy.Let's play a game Rock-Paper-Scissors")

enum rps {
    case rock
    case paper
    case scissors
}
protocol CanPlayRPS {
    var choice: rps { get  }
    
}

struct Player: CanPlayRPS {
    let name: String
    var score: Int = 0
    var choice: rps
    
}
class StartPlaying {
    func result(p1: Player , p2: Player) -> String {
        var p1Score = p1.score
        var p2Score = p2.score
        switch(p1.choice, p2.choice) {
        case (.paper , .rock),(.rock,.scissors),(.scissors,.paper) :
            p1Score += 1
            return "\(p1.name) is win. Score is \(p1Score)"
        case (.rock , .paper), (.scissors,.rock),(.paper,.scissors):
            p2Score += 1
            return "\(p2.name) is win. Score is \(p2Score)"
        default:
            return "Draw"
        }
 
    }

    }

var p1 = Player(name: "Adil", choice: .scissors)
var p2 = Player(name: "Erik", choice: .rock)
print("Name First Player: \(p1.name)")
print("Name Second Player: \(p2.name)")
print("Let's start!!!!!")
print("............")
print("   ")
p1.choice = .paper
p2.choice = .scissors
print("\(p1.name)'s choice: \(p1.choice)")
print("\(p2.name)'s choice: \(p2.choice)")
let result = StartPlaying().result(p1: p1, p2:p2)
print(result)




