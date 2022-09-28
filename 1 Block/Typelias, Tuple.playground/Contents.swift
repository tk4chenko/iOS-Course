import UIKit
/*
// MARK: - Подробнее о примитивных типах

// Объявление переменных

let line: String = "Some line"
let line2 = "Some line"
let line3: String
line3 = "Some line"

// Привидение типов

let number: Int = 10
let div: Float = Float(number / 2)

let numberString: String = String(number)

//  Float VS Double

let someFloat: Float = 1.1244689090877635
let someDouble: Double = 1.1244689090877635

// Number with 8 16 32 64

let someAnotherFloat: Float64 = 1.123456789009775447

// Char

let someChar: Character = "4"
someChar.asciiValue

// MARK: - Typealias

typealias EUR = Double
var myAmoutOfMoney: EUR = 0.0

// MARK: - Tuple

// Create a Tuple

let some: (String, Int, Double) = ("Mac", 1000, 500.0)

// Access to elements

print(some.0)
some.1
some.2

// Named Tuples

var car: (name: String, year: Int) = ("Audi", 2016)
print(car.name, car.year)
// Modify Tuple element

car.name = "BMW"

print(car.name, car.year)
*/

// MARK: Practice
var someInt: Int = 10
var someString = "32"
var someFloat: Float = 15.32321

let sum: Double = Double(someInt) + Double(someString)! + Double(someFloat)

typealias UAH = Float
let mySalary: UAH = 20600.6456

//typealias name = String
//et myFriendsName: name = "John"

typealias numbers = Int
let numberOfCars: numbers = 3

typealias name = String
typealias capital = String
typealias year = Int
typealias price = Int

var film: (name, year) = ("Top Gun: Maverick", 2022)
var smartphone: (name, price) = ("iPhone 13", 700)
var country: (name, capital) = ("Uktaine", "Kyiv")

print(film.0, smartphone.0, country.0)
print()
print(film.1, smartphone.1, country.1)

