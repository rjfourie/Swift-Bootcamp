import Foundation

class Card : NSObject {
    var color : Color
    var value : Value

    init(color : Color, value : Value) {
        self.color = color
        self.value = value
    }

    override var description : String {
        return "\(self.value) of \(self.color)"
    }

    override func isEqual(_ Object: Any?) -> Bool {
        if let temp = Object as? Card {
            return(self.value == temp.value && self.color == temp.color)
        }
        else {
            return false;
        }
    }

    static func ==(first: Card, second: Card) -> Bool {
        return first.value == second.value && first.color == second.color
    }
}