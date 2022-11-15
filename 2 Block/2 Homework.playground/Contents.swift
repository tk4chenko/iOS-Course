import UIKit
import Foundation
import Darwin

// Task 1:

class Sailor {
    var name: String
    
    init(n: String) {
        name = n
    }
    func introduceMyself(){
        print("Привіт, мене звати \(name)!")
    }
}

//let sailor1 = Sailor(n: "Jack")
//sailor1.introduceMyself()

// Task 2, Task 3:

class Ship {
    var name: String
    var sailors: Array<Sailor>
    init (n: String, s: Array<Sailor>){
        name = n
        sailors = s
    }
    func introduceAll() {
        for sailor in sailors {
        sailor.introduceMyself()
        }
        print("Ми з корабля \(name)!")
    }
}
//let sailor1 = Sailor(n: "Jack Sparrow")
//let sailor2 = Sailor(n: "Hector Barbossa")
//let sailor3 = Sailor(n: "Will Turner")
//let sailor4 = Sailor(n: "Elizabeth Swann")
//let sailor5 = Sailor(n: "Joshamee Gibbs")
////let sailors1 = Ship(n: "The Black Pearl", s: [sailor1, sailor2, sailor3, sailor4, sailor5])
////sailors1.introduceAll()
//let array = [sailor1, sailor2, sailor3, sailor4, sailor5]
//let sailors = Ship(n: "Ukraine", s: array)
//sailors.introduceAll()

// Task 4

class Titanic: Ship {
    override func introduceAll() {
        super.introduceAll()
        print("We are from the ship \(name)!")
    }
}

class TitanicSailor: Sailor {
    override func introduceMyself() {
        print("Hi, my name is \(name)!")
    }
}

let sailor1 = TitanicSailor(n: "Jack Sparrow")
let sailor2 = TitanicSailor(n: "Hector Barbossa")
let sailor3 = TitanicSailor(n: "Will Turner")
let sailor4 = TitanicSailor(n: "Elizabeth Swann")
let sailor5 = TitanicSailor(n: "Joshamee Gibbs")
let titanic = Titanic(
let sailors = Titanic(n: "The Black Pearl", s: [sailor1, sailor2, sailor3, sailor4, sailor5])
sailors.introduceAll()

// Task 5:

class Calculator {
    var number1: Int
    var number2: Int
    
    init(n1: Int, n2: Int) {
        number1 = n1
        number2 = n2
    }
    
    func add() {
        let add = number1 + number2
        print("Sum is \(add)")
    }
    func sub() {
        if number1 > number2 {
            let sub = number1 - number2
            print("Subtraction is \(sub)")
        }  else {
            let sub = number2 - number1
            print("Subtraction is \(sub)")
        }
    }
    
    func mult() {
        let mult = number1 * number2
        print("Multiplication is \(mult)")
    }
    
    func div() {
        if number1 > number2 {
            let div = Double(number1) / Double(number2)
            print("Division is \(div)")
        }  else {
            let div = Double(number2) / Double(number1)
            print("Division is \(div)")
        }
    }
}

class CalculatorPro: Calculator {
    func exp() {
        let exp = pow(Double(number1), Double(number2))
        print("Exponentiation is \(exp)")
        print()
    }
    
    func percent() {
        let percent = Double(number1) / 100 * Double(number2)
        print("Percent is \(percent)")
        print()
    }
}

// Task 5.1*:

class SuperProCalс {
    var i: Double
    var a: Double
    var t: Double
    var n: Double
    
    init(initialDepositAmount: Double, annualInterestRate: Double, timesTheInterestRateCalculated: Double, numbersOfYears: Double) {
        i = initialDepositAmount // початкова сума депозиту
        a = annualInterestRate // річна процентна ставка
        t = timesTheInterestRateCalculated // скільки разів на рік розраховується процентна ставка
        n = numbersOfYears // кількість років, на яку оформлено депозит
    }
    
    func compoundInterest() {
        let compoundInterest = i * pow((1+(a/100)/t), (t*n))
        print("Let's say you invested \(Int(i)) UAH at \(Int(a))% per annum for \(Int(n)) years. And, let's say, recalculation goes \(Int(t)) times a year.")
        print("In total, after \(Int(n)) years you will have: \(Int(compoundInterest)).")
        print("The profit will be: \(Int(compoundInterest - i)).")
    }
}

let calculation = SuperProCalс(initialDepositAmount: 1000, annualInterestRate: 5, timesTheInterestRateCalculated: 12, numbersOfYears: 2)

calculation.compoundInterest()

// Task 6:

var battery = 70

switch battery {
case 100: print("Device is charged!")
case 70...80: print("You need to charge the device for 6 hours!")
case 20...40: print("Put your device on charge!")
case 0: print("The device is completely discharged!")
default: print("?")
}

