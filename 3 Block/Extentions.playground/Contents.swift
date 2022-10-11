import UIKit

// Пример расширения с Computed properties (вычесляемыми свойствами)

extension Double {
    //    var somVal = 10
    var km: Double { return self * 1000 }
    var m: Double { return self }
    var cm: Double { return self / 100 }
}

let distance = 5.km + 34.m + 45.cm
//print(distance)

// Расширение протокола

//protocol Flyable {
//    func fly()
//}
//
//extension Flyable {
//    func fly() { print("I can fly!") }
//}
//
//struct Bird: Flyable {
//}
//
//let bird1 = Bird()
//bird1.fly()

// Расширение типов для соответствия протоколам

struct Airplane {
    // func
    // func
    // func
    // func
    // func
    // func
    // func
}

//extension Airplane: Flyable {
//    func fly(){ }
//}

// Practice

extension Int {
    var square: Int { return self * self }
}

//print(46.square)

extension String {
    var firstWord: String { return self.components(separatedBy: " ").first ?? "" }
    var firstPartBeforeComma: String { return self.components(separatedBy: ",").first ?? ""}
    var firstSentence: String { return self.components(separatedBy: ".").first ?? ""}
    func sentenceWithExclamationPoint() -> String {
        var result = ""
        for char in self {
            result += String(char)
            if char == "." {
                result = ""
            } else if char == "!" {
                result.removeFirst()
            }
        }
        return result
    }
}

let someWords: String = "Hello, Jack. Hello my friend, Bob!"
//print(someWords.firstWord)
//print(someWords.firstPartBeforeComma)
//print(someWords.firstSentence)
//print(someWords.sentenceWithExclamationPoint())

protocol Runnable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    func eat()
    func grow()
}

extension Alive {
    func breath() {
        print("I can breath!")
    }
    func eat() {
        print("I can eat!")
    }
}

struct Lion: Alive, Runnable {
    var name: String
    func grow() {
        print("\(name) - Grow!")
    }
    func run() {
        print("Lion - Run!")
    }
}

struct Monkey: Alive {
    func grow() {
        print("Monkey - Grow!")
    }
}

struct Parrot: Alive, Flyable {
    func grow() {
        print("I can grow!")
    }
    func fly() {
        print("I can fly!")
    }
}

struct Owl: Alive, Flyable {
    func grow() {
        print("Owl - Grow!")
    }
    func fly() {
        print("Owl - Fly!")
    }
}

struct Сheetah: Alive, Runnable {
    func grow() {
        print("I can grow!")
    }
    
    func run() {
        print("I can run!")
    }
}

struct Elephant: Alive {
    func grow() {
        print("I can grow!")
    }
}


//let monkey = Monkey()
//monkey.grow()
//
//let elephant = Elephant()
//elephant.breath()

let lion = Lion(name: "Alex")
lion.grow()

extension Int {
    var square1: Int { return self * self }
}

5.square1





