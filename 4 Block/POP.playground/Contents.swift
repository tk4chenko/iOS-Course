import UIKit

// Theory

class HumanClass {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct HumanStruct {
    var name: String
    var age: Int
}

var bobClass = HumanClass(name: "Bob", age: 18)

let chuckClass = bobClass
chuckClass.age = 20
chuckClass.name = "Chuck"
//print(bobClass.age)
//print(bobClass.name)

var bobStruct = HumanStruct(name: "Bob", age: 18)
var chuckStruct = bobStruct

chuckStruct.age = 20
chuckStruct.name = "Chuck"
//print(bobStruct.age)
//print(bobStruct.name)

// Practice

// OOP

class BirdClass {
    var name: String = ""
    var canFly: Bool = true
    var flySpeed: Double = 0
    func distance(seconds: Float) -> Float {
        return 0
    }
    
}

class SwanWhiteClass: BirdClass {
    
}

class SwanBlackClass: BirdClass {
    
}

class PenguinClass: BirdClass {
    
}

// POP

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol FlyingBird {
    var flySpeed: Float { get }
}

extension Bird {
    var canFly: Bool {
        return false
    }
}

extension Bird where Self: FlyingBird {
    var canFly: Bool {
        return true
    }
}

extension FlyingBird {
    func distance(seconds: Float) -> Float {
        seconds * flySpeed
    }
}

struct Penguin: Bird {
    var name: String
}

let myPenguin = Penguin(name: "Penguin")
myPenguin.canFly

enum Swan: String, Bird, FlyingBird{
    case white
    case black
    
    var flySpeed: Float {
        switch self {
        case .white: return 100
        case .black: return 150
        }
    }
    
    var name: String {
        return self.rawValue
    }
}

var myFirstSwan = Swan.black
myFirstSwan.canFly
myFirstSwan.flySpeed
myFirstSwan.distance(seconds: 5)

