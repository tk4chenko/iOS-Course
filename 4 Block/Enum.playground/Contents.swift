import UIKit
import Foundation

// Example of enum

enum Degree {
    case bachelors
    case masters
}

struct Person {
    var name: String
    var degree: Degree
}

var alice = Person(name: "Alice", degree: .bachelors)
alice.degree = .masters

// Enum in switch

//switch alice.degree {
//case .bachelors: print("Cool!")
//case .masters: print("Even better!")
//}

// CaseIterable + allCases, функции в enum

enum Day: CaseIterable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
    
    func dayType() -> String {
        switch self {
        case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday:
            return "Week day!"
        case .Saturday, .Sunday:
            return "Weekend day!"
        }
    }
}
let dayOfAWeek = Day.Monday
let arrayOfValues = Day.allCases
let dayType = dayOfAWeek.dayType()

// Raw Values

enum SizeOfPizza: Int {
    case small = 12
    case madium = 18
    case large = 25
    case extraLarge = 50
}

let somePizza = SizeOfPizza.small
//print(somePizza)
//print(somePizza.rawValue)

let newSize = SizeOfPizza(rawValue: 50)
//print(newSize!)
//print(newSize?.rawValue ?? 0)

// Associated Values

enum Distance {
    case km(Int)
    case mi(Float)
}
let distanceToMySchool = Distance.km(18)
let distanceToMyKinderGarten = Distance.mi(1)

func getMessage(distance: Distance) -> String {
    switch distance {
    case .km(let distanceKm):
        return "Distance in kilometers \(distanceKm)"
    case .mi(let distanceMiles):
        return "Distance in miles is \(distanceMiles)"
    }
}

let message = getMessage(distance: distanceToMySchool)
let message2 = getMessage(distance: distanceToMyKinderGarten)
//print(message)
//print(message2)

// Practice

enum Months: Int {
    case January, March, May, July, August, October, December = 31
    case April, June, September, November = 30
    case February = 29
}

let someMonth = Months.December
someMonth.rawValue

enum PricesInMcDonaldsMenu {
    case BigMac
    case BigTasty
    case McNuggets
    case frenchFries
    case McFlurry
    
    func FoodType() -> String {
        switch self{
        case .BigMac, .BigTasty: return "It's burger!"
        case .McFlurry: return "It's desert!"
        case .McNuggets, .frenchFries: return "It's snacks"
        }
    }
}

let someItem = PricesInMcDonaldsMenu.BigMac
//print(someItem.FoodType())

enum Price {
    case UAH(Double)
    case Dollar(Double)
    func inWhatCurrency() -> String {
        switch self {
        case .Dollar(let priceDollar):
            return "It costs in dollars: \(priceDollar)"
        case .UAH(let priceUAN):
            return "It costs in hryvnia: \(priceUAN)"
        }
    }
}

let somePriceInUAH = Price.UAH(1000)
let somePriceInDollars = Price.Dollar(25)

somePriceInUAH.inWhatCurrency()
somePriceInDollars.inWhatCurrency()



