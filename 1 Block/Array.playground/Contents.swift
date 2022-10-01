import UIKit

// MARK: Theory
// What's array?

let city = "Kyiv"
var citiesOfUkraine = ["Dnipro", "Zaporizhzhya", "Kharkiv", city]

// Create empty array

let emptyArray1 = [""]
let emptyArray2 = [String()]
let emptyArray3: [String] = []
let emptyArray4: Array<String> = []
let emptyArray5: Array<String>
emptyArray5 = []

// Access array elements

//print(citiesOfUkraine[0])
//print(citiesOfUkraine.last)
//print(citiesOfUkraine.first)

//"Add" and "insert" elements to array

citiesOfUkraine.append("Chernihiv")
citiesOfUkraine.insert("Lviv", at: 0)

// Add one array to another

var citiesOfUS = ["NY", "LA", "SF"]
let allCities = citiesOfUkraine + citiesOfUS
citiesOfUkraine.append(contentsOf: citiesOfUS)

// Remove elements

citiesOfUS.remove(at: 0)
citiesOfUS
citiesOfUkraine.removeLast()

// Popular functions: .count, .isEmpty

//print(citiesOfUS.count)
citiesOfUS.removeAll()
//print(citiesOfUS.isEmpty)

// Array with Any types

let arrayOfAll: [Any] = ["Boob", 123, true, false, 123.0]

// MARK: Practice

var students = ["John", "Jack", "Mike", "Olivia", "Emma"]

let newStudent1 = "Sophia"
let newStudent2 = "Robert"

students.append(newStudent1)
students.insert(newStudent2, at: 0)
students.count

students.remove(at: 5)
students.removeFirst()

let newStudents = ["Thomas", "Charles"]

var group = students + newStudents

print(group.first, group.last)
print(group[1], group[2])

print("The array contains \(group.count)")
print("Is the array empty: \(group.isEmpty)")

let newGroup = group
group.removeAll()
print(newGroup)

