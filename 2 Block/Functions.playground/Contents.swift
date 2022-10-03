import UIKit

// Формат описания функции

func printStras() {
    print("*")
    print("*")
}

//print("1")
//printStras()
//print("2")
//printStras()
//print("1")

// Вызов функции и порядок вызова функций

func one() {
    print("1")
}

//two()

func two() {
    print("2")
}

//one()

// Функция с параметрами

//printMyadress(country: "Ukraine", city: "Kyiv")


func printMyadress(country: String, city: String) {
    print("I live in \(country), \(city)")
}

//printMyadress(country: "Germany", city: "Munich")

// Функция возвращающая значение

func mult(num1: Int, num2: Int) -> Int {
    let result = num1 * num2
    return result
}

let mult1 = mult(num1: 14, num2: 15)
let mult2 = mult(num1: 145352411, num2: 11231165765)
let mult3 = mult(num1: 1133213574, num2: 158963421)

// Practice:

func printFullName(name: String, surname: String) {
    print("\(name) \(surname)" )
}

//printFullName(name: "Artem", surname: "Tkachenko")

func squareRoot(num: Double) -> Double{
    let result = num.squareRoot()
    return result
}
squareRoot(num: 6)

func square(num: Double) -> Double {
    let result = num * num
    return result
}
square(num: 5)

func sum(num1: Double, num2: Double ) -> Double {
    let result = squareRoot(num: num1) + square(num: num2)
    return result
}

sum(num1: 4.0, num2: 5.0)

for index1 in 1...10 {
    for index2 in 1...10 {
        sum(num1: Double(index1), num2: Double(index2))
    }
}










