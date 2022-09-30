import UIKit

// What's dictionary?

var phoneBook = ["Alice": 000, "Bob": 111]
//print(phoneBook)

// Create empty dictionary

let myDict1 = ["": 0]
let myDict2 = [String(): Int()]
let myDict3 = [String: Int]()
let myDict4: [String: Int] = [:]
let myDict5: Dictionary <String, Int> = [:]

// Access dictionary elements

let myElement = phoneBook["Bob"]

// Add new elements to dictionary

phoneBook["Tom"] = 222

// Remove elements

phoneBook.removeValue(forKey: "Bob")
//phoneBook["Alice"] = nil

// What if we call "nil" element?

let myArray = [1, 2, 3, 4]
let myNewVar = phoneBook["Chuck"]

// Popular functions: .count, .isEmpty

let countOfElements = phoneBook.count
let isItEmpty = phoneBook.isEmpty

// Access keys/values as an Array

//let allKeys = phoneBook.keys
//let allValues = phoneBook.values

// MARK: Practice

var countriesAndCapitals = ["Ukraine": "Kyiv", "France": "Paris", "Italy": "Rome"]
var postalСodesOfСities: Dictionary <String, Int> = ["NY": 01001, "Paris": 75000]
var isHeAStudent: [String: Bool] = ["Bob": false, "Tom": true]

var allItems = [String: Any]()
allItems["Ukraine"] = countriesAndCapitals["Ukraine"]
allItems["NY"] = postalСodesOfСities["NY"]
allItems["Bob"] = isHeAStudent["Bob"]
print(allItems)

countriesAndCapitals.removeValue(forKey: "Ukraine")
postalСodesOfСities.removeValue(forKey: "Paris")
isHeAStudent.removeValue(forKey: "Tom")

let allKeys = allItems.keys
let allValues = allItems.values
print(allKeys)
print(allValues)

var someItem = allItems["Ukraine"]
allItems["Ukraine"] = allItems["Bob"]
allItems["Bob"] = someItem
print(allItems)
