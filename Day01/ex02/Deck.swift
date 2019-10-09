import Foundation

class Deck : NSObject
{
    static let allSpades : [Card] = Value.allValues.map({
        let card = Card(color: Color.Spades, value: $0)
        return card
    })

    static let allDiamonds : [Card] = Value.allValues.map({
        let card = Card(color: Color.Diamonds, value: $0)
        return card
    })

    static let allHearts : [Card] = Value.allValues.map({
        let card = Card(color: Color.Hearts, value: $0)
        return card
    })

    static let allClubs : [Card] = Value.allValues.map({
        let card = Card(color: Color.Clubs, value: $0)
        return card
    })

    static let allCards : [Card] = allSpades + allDiamonds + allHearts + allClubs 
}