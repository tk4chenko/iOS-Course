import UIKit

// Выражение guard else

func printKidsAge(age: Int) {
    guard age < 18 else {
        print("I am not a kid!")
        return
    }
    print(age)
}

//printKidsAge(age: 58)

// Тернарный оператор

var score = 710
var highScore = 700
let message = score > highScore ? "New high score!" : "\(score)"
//print(message)

// Switch case: age

var age = 22

//switch age {
//case 14: print("Can't drive")
//case 28: print("Can drive")
//default: print("?")
//}

// Switch case: range

//switch age {
//case 0...16: print("Can't drive")
//case 17...70: print("Can drive")
//case 70...100: print("Can't drive")
//default: print("?")
//}

// * Switch case: fallthrough / where

let isCarOwner = true

//switch age {
//case 0...16: print("Can't drive")
//case 17...70 where isCarOwner: print("Can drive")
//case 70...100: print("Can't drive")
//default: print("?")
//}

// Practice

var myMark = 95
let passableMark = 80

var isStudent = false

switch myMark {
case 0..<passableMark:
    print("Unfortunately, your mark is lower passing!")
case passableMark...100 where !isStudent:
    print("Congratulations! You have entered!")
default: print("You are already a student!")
}

func isEntered(myMark: Int){
    guard myMark > passableMark else {
        print("Unfortunately, your mark is lower passing")
        return
    }
    print("Congratulations! You have entered!")
}

//isEntered(myMark: 90)

// Practice *:

var day = 5

switch day {
case 1: print("Monday")
case 2: print("Tuesday")
case 3: print("Wednesday")
case 4: print("Thursday")
case 5: print("Friday")
case 6: print("Saturday")
case 7: print("Sunday")
default: print("?")
}
