import UIKit
import Foundation
import Darwin

// Task 1

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name: String { get set }
}

struct Farmer: Movable {
    var name: String
    func run() {
        print("\(name) can run!")
    }
}

struct Villager: Movable {
    var name: String
    func run() {
        print("\(name) can run!")
    }
}

struct Butcher: Fightable {
    var name: String
    func fight() {
        print("\(name) can fight!")
    }
}

struct Dealer: Fightable {
    var name: String
    func fight() {
        print("\(name) can fight!")
    }
}

struct Hunter: Hero {
    var name: String
    func run() {
        print("\(name) can run!")
    }
    func fight() {
        print("\(name) can fight!")
    }
}

struct Cowboy: Hero {
    var name: String
    func run() {
        print("\(name) can run!")
    }
    func fight() {
        print("\(name) can fight!")
    }
}

let someFarmer = Farmer(name: "Jack")
let someVillager = Villager(name: "John")

let someButcher = Butcher(name: "Bob")
let someDealer = Dealer(name: "Mike")

let someCowboy = Cowboy(name: "Sam")
let someHunter = Hunter(name: "Arthur")


class Tavern {
    var fighters: [Fightable]
    var movers: [Movable]
    
    init(fighters: [Fightable], movers: [Movable]) {
        self.fighters = fighters
        self.movers = movers
    }
    
    func enterTavern(hero: Hero) {
        hero.fight()
        for mover in movers {
            mover.run()
        }
        for fighter in fighters {
            fighter.fight()
        }
    }
}

let fighters: [Fightable] = [someButcher, someDealer]
let movers: [Movable] = [someFarmer, someVillager]

let someTavern = Tavern(fighters: fighters, movers: movers)
//someTavern.enterTavern(hero: someCowboy)

// Task 2, 4

protocol MakingOrder {
    func makeOrder()
}

protocol AcceptOdrer {
    func acceptOrder()
}

protocol MakingСoffee {
    func makeCoffee()
}

protocol Drink {
    func drinkCoffe()
    func expressionOfEmotions()
}

struct Barista: AcceptOdrer, MakingСoffee {
    var name: String
    func acceptOrder() {
        print("\(name) accepted the orders!")
    }
    
    func makeCoffee() {
        print("\(name) is making your coffee!")
    }
}

struct Guest: MakingOrder, Drink {
    var name: String
    var coffeeName: String?
    func makeOrder() {
        if coffeeName == nil {
            print("\(name) didn't order anything!")
        } else {
            print("\(name) orders \(coffeeName ?? "")!")
        }
    }
    func drinkCoffe() {
        if coffeeName != nil {
            print("\(name) is drinking \(coffeeName ?? "")!")
        }
    }
    
    func expressionOfEmotions() {
        if coffeeName != nil {
            print("\(name) says it's the perfect \(coffeeName ?? "")!")
        }
    }
}

extension Guest {
    func takeOrder() {
        if coffeeName != nil {
            print("\(name) tooks his \(coffeeName ?? "")!")
        }
    }
}
let barista1 = Barista(name: "Bob")
let guest1 = Guest(name: "Johnsson", coffeeName: "Espresso")
let guest2 = Guest(name: "William", coffeeName: "Americano")
let guest3 = Guest(name: "Oliver", coffeeName: nil)

class CoffeeHouse {
    var guests: [Guest]
    var barista: Barista
    
    init(guests: [Guest], barista: Barista) {
        self.guests = guests
        self.barista = barista
    }
    
    func enterCoffeShop() {
        for guest in guests {
            guest.makeOrder()
        }
        print()
        barista.acceptOrder()
        barista.makeCoffee()
        print()
        
        for guest in guests {
            guest.takeOrder()
            guest.drinkCoffe()
            guest.expressionOfEmotions()
        }

    }
}
let guests = [guest1, guest2, guest3]
let starbucks = CoffeeHouse(guests: guests, barista: barista1)
starbucks.enterCoffeShop()

// Task 3

extension Int {
    func exponentiation(exp: Int) -> Int {
        var number: Int = self
        if exp == 0 {
            return 1
        }
        for _ in 1..<exp {
            number = number * self
        }
        return number
    }
}

12.exponentiation(exp: 2)
2.exponentiation(exp: 4)
312.exponentiation(exp: 0)

extension String {
    var isPalindrome: Bool {
        let lowercased = self.lowercased()
        return String(lowercased.reversed()) == lowercased
    }
}

let someString = "Abba"
let lowercased1 = someString.lowercased()
//print(String(lowercased1.lowercased()))
someString.isPalindrome

// Task 5

func swap<T>(element1: T, element2: T) -> [T] {
    let someElement = element1
    let element1 = element2
    let element2 = someElement
    return [element1, element2]
}
let someArray = swap(element1: 5, element2: 10)
//print(someArray)

func makingTuple<T, D: Sequence>(element1: T, element2: D) -> (T, D) {
    return (element1, element2)
}
let someTuple = makingTuple(element1: 56, element2: "Bob")
//print(someTuple)

func sum<T: Numeric>(el1: T, el2: T) -> T {
    el1 + el2
}
let sum1 = sum(el1: 4, el2: 12)
//print(sum1)

struct Dictionary<T: Hashable, D> {
    var allElements = [T : D]()
    
    mutating func addAndCallElement(key: T, val: D) -> [T : D] {
        allElements[key] = val
        return allElements
    }
    
    mutating func getValue(key: T) -> D? {
        return allElements[key]
    }
}

var dict = ["Alice": 18, "John": 15, "Bob": 27]
var genericDict = Dictionary(allElements: dict)
//print(genericDict.getValue(key: "John") ?? 0)
//print(genericDict.addAndCallElement(key: "Someone", val: 65))

// Task 6

// Stack

struct Stack<T> {
    var someArray: Array<T> = []
    
    mutating func push(element: T) -> [T] {
        someArray.append(element)
        return someArray
    }
    mutating func pop() -> T? {
        someArray.removeLast()
    }
}

var array = [14, 15]
var someStack = Stack(someArray: array)
someStack.pop()
someStack.push(element: 56)
print(someStack)
