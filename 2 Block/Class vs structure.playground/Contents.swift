import UIKit

class Animal {
    
    var name: String = ""
    var age: Int = 0
    
    init() {
        print("Animal - init")
    }
    
    func move() {
        print("I can move!")
    }
    
    deinit {
        print("Animal - deinit")
    }
}

//func doSomething() {
//    let animal1 = Animal()
//    animal1.move()
//}
//
//doSomething()

// Наследование: Fish. Метка final

final class Fish: Animal {
    override func move() {
        //        super.move()
        print("I can swim!")
    }
}

// Переопределение: Bird

class Bird: Animal {
    override func move() {
        super.move()
        print("I can fly!")
    }
}

let fish1 = Fish()
fish1.move()

//let bird1 = Bird()
//bird1.move()

// Struct: инициализатор

struct House {
    var numberOfRooms: Int = 0
    var height: Int
}

let house1 = House(height: 3)

// Practice

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
    func mod() {
        let mod = number1 % number2
        print("Modulo is \(mod)")
    }
}

//let calculator1 = Calculator(n1: 4, n2: 7)
//calculator1.add()
//calculator1.sub()
//calculator1.mult()
//calculator1.div()
//calculator1.mod()

class SuperCalculator: Calculator {
    override func add() {
        super.add()
        print("I'm SuperCalculator!")
        print()
    }
    override func sub() {
        super.sub()
        print("I'm SuperCalculator!")
        print()
    }
    override func mult() {
        super.mult()
        print("I'm SuperCalculator!")
        print()
    }
    override func div() {
        super.div()
        print("I'm SuperCalculator!")
        print()
    }
    override func mod() {
        super.mod()
        print("I'm SuperCalculator!")
        print()
    }
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

let calculator2 = SuperCalculator(n1: 6, n2: 3)
calculator2.exp()
calculator2.percent()
calculator2.add()
calculator2.sub()
calculator2.mult()
calculator2.div()
calculator2.mod()



