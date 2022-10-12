import UIKit

// Example of protocol

protocol Movable1 {
    var name: String { get set }
    func move() // не содержат реализацию, только описание
}

struct Fox: Movable1 {
    var name: String
    
    func move() {
        print("I can move!")
    }
}

struct Eagle: SuperUnit {
    var name: String
    
    func move() {
        print("I can move!")
    }
    func fly() {
        print("I can fly!")
    }
}
let eagle1 = Eagle(name: "Alex")
//eagle1.move()


// Conforming Multiple Protocols

protocol Flyable {
    func fly()
}

// Protocol Interitance

protocol SuperUnit: Movable1, Flyable { }

// Polymorphism

func startDay(unit: Movable1) {
    unit.move()
}

let fox = Fox(name: "Fox")
let eagle = Eagle(name: "Eagle")

//startDay(unit: fox)
//startDay(unit: eagle)

// Practice

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
someTavern.enterTavern(hero: someCowboy)

