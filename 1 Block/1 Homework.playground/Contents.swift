import UIKit

// Task 1:

var numbers = [-2, 3, -3, 4, -5, 7, 10, 2, -14, -12]

func changeAllNegativeValues(array: [Int]) -> [Int]{
for i in 0..<numbers.count {
    if numbers[i] < 0{
        numbers.remove(at: i)
        numbers.insert(0, at: i)
    }
}
    return array
}
changeAllNegativeValues(array: numbers)

// Task 2:

var minNumber = 0
var maxNumber = 0

for number in numbers {
    if number < minNumber {
        minNumber = number
    }
    else if maxNumber < number {
        maxNumber = number
    }
}

//print(minNumber)
//print(maxNumber)

print(numbers.min()!)
print(numbers.max()!)

// Task 3:

var sum = 0

for number in numbers {
    sum += number
}
//print(sum)

// Task 4:

var monthsArray = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

var monthsDic: Dictionary <Int, String> = [:]

for i in 0..<monthsArray.count {
    monthsDic[i+1] = monthsArray[i]
}
//print(monthsDic)

// Task 5:

var dictionary = ["first": 1, "second": 2, "third": 3, "fourth": 4]

var someItem = dictionary["first"]
dictionary["first"] = dictionary["fourth"]
dictionary["fourth"] = someItem
//print(dictionary)

// Task 6:

var calendar : [Int: Any] = [:]

for i in 1970...2022{
    calendar[i] = monthsArray
}
//print(calendar)

// Task 7: 

monthsArray.append("Березень")

for i in 1970...2022{
    calendar[i] = monthsArray
}

print(calendar)

// Task 7.1:

var amountOfDays: [Int] = []

for i in 1 ... 31{
    amountOfDays.append(i)
}

var calendarPro = [Int : Dictionary<String, Array<Int>>]()
var daysOfMonths = Dictionary<String, Array<Int>>()

for i in 1970...2022 {
    for month in monthsArray {
        daysOfMonths[month] = amountOfDays
    }
    calendarPro[i] = daysOfMonths
}
//print(calendarPro[2019]!["September"]![0])

// Task 8:

var a = 21
var b = 18
var sum1 = a + b

if a == b {
    print(sum1*3)
} else if a != b {
    if sum1 % 2 == 0 {
        print(sum1)
    } else {
//        print("The sum is not a pair number!")
    }
}

// Task 9:

let somePhrase = "Hello my friend, Jack!"

let somePhraseArray = somePhrase.components(separatedBy: [" ", "!"])
//let firstWord = somePhraseArray.first!
//let lastWord = somePhraseArray.last!.dropLast()
print(somePhraseArray[0], somePhraseArray[3])
//print(firstWord)
//print(lastWord)
