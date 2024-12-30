import Foundation

enum GridPosition: String {
    case empty = " "
    case player1 = "o"
    case player2 = "x"
}

struct TicTacToe {
    var gridStorage: [[GridPosition]] = []
    
    init () {
        for _ in 0..<3 {
            gridStorage.append(Array(repeating: .empty, count: 3)) // [.empty, .empty, .empty]
        }
        // print(self.gridStorage)
        // [ [.empty, .empty, .empty],
        //   [.empty, .empty, .empty],
        //   [.empty, .empty, .empty] ]
    }
    
    func gameStateString() -> String {
        var stateString = "----------\n"
        for row in gridStorage {
            stateString += printableString(forRow: row)
        }
        stateString += "----------\n"
        return stateString
    }
    
    func printableString(forRow row: [GridPosition]) -> String {
        var rowString = "|"
        for position in row {
            rowString += position.rawValue + "|"
        }
        return rowString + "\n"
    }
}

var game = TicTacToe()
game.gridStorage[1][1] = .player1
game.gridStorage[0][2] = .player2
print(game.gameStateString())
