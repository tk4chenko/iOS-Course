import UIKit

/*
var value1: Float = 5
var value2: Float = 10

// Арифметичиские операторы и Операторы присваивания

let arm1 = value1 + value2
let arm2 = value1 - value2
let arm3 = value1 * value2
let arm4 = value1 / value2

value1 += 7
value2 *= 1

// Операторы сравнения

let c1 = value1 == value2
let c2 = value1 != value2
value1 > value2
value1 < value2

// Условия if else

if value1 > value2{
    print("\(value1) > \(value2)")
} else if value1 < value2 {
    print("\(value1) < \(value2)")
} else {
    print("\(value1) = \(value2)")
}

// Логические операторы

if (!c1 && c2) || (c1 || c2) {
    print("C1")
} else if c2 {
    print("C2")
}
*/

// MARK: Practice

let value1 = 1
let value2 = 2
let value3 = 3
let value4 = 5
let value5 = 8
let value6 = 13

var sum = value1 + value2 + value3 + value4 + value5 + value6
var mult =  value1 * value2 * value3 * value4 * value5 * value6

sum -= 10
mult /= sum
var sub = mult - sum
//print(sub)

var a = 5
var b = 7
var c = 10
var d = 3

if a > b {
    if a + b < c{
        print("4")
    } else if a + b > c {
        print("5")
    }
    print("1")
} else if a < b {
    if a < c || b < c {
        print("6")
    } else if a > d && c > d && d > b{
        print("7")
    }
    print("2")
} else {
    if !(a > 0) {
        print("8")
    }
    print("3")
}
