import UIKit

// Маски для параметров функций

func sum(number1 val1: Int, number2 val2: Int) -> Int {
    let result = val1 + val2
    return result
}

//sum(val1: 123, val2: 123)
//sum(123, 123)
//sum(number1: 123, number2: 123)

// Дефолтные параметры

func mult(val1: Int, val2: Int = 10) -> Int {
    let result = val1 * val2
    return result
}

mult(val1: 12, val2: 12)
mult(val1: 12)

// Функции с одинаковыми названиями или "Перегрузка функций"

func doSomeStuff(line: String) {
    
}

func doSomeStuff(num: Int) {
    print(num)
}

func doSomeStuff(val: Bool) {
    
}

//doSomeStuff(num: 12)

// Рекурсия

//func doSomeImportantStuff() {
//    doSomeImportantStuff()
//}
//
//doSomeImportantStuff()

//  Замыкание (closure)

func doIt(closure: (String) -> ()) {
    closure("Hey!")
}
doIt(closure: { someValue in
    print(someValue)
})

// Practice:

func aboutSomeone(_ name: String, job: String = "iOS Developer", vacation: Int = 20) {
    print("My name is \(name), I work as a \(job) and I have \(vacation) days vacation")
}

aboutSomeone("Artem", job: "Junior iOS Developer", vacation: 19)
aboutSomeone("Bob")
aboutSomeone("John", vacation: 21)
aboutSomeone("Jack", job: "Java Developer")

func sum(num1: String, num2: String) -> String {
    let result = num1 + num2
    return result
}

func sum(num1: Double, num2: Double) -> Double {
    let result = num1 + num2
    return result
}

func sum(num1: Int, num2: Int) -> Int {
    let result = num1 + num2
    return result
}

let a1 = "2"
let b1 = "3"
let a2 = 2
let b2 = 3
let a3 = 2.5
let b3 = 3.5

sum(num1: a1, num2: b1)
sum(num1: a2, num2: b2)
sum(num1: a3, num2: b3)

// Practice *:

func someName(name: String, closure: (String) -> ()){
    if name.isEmpty {
        closure("Bob")
    } else {
        closure(name)
    }
}

someName(name: "Artem") { name in
    print(name)
}
        
