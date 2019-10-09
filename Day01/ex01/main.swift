
var firstcard = Card(color: Color.Hearts, value: Value.Jack)
    print(firstcard.description)

var secondcard = Card(color: Color.Diamonds, value: Value.King)
    print(secondcard.description)

if firstcard == secondcard 
{
    print("is Equal")
}
else 
{
    print("Not equal") 
}

if firstcard.isEqual(secondcard) 
{
    print("is Equal")
}
else 
{
    print("not Equal") 
}