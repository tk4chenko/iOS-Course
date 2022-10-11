import UIKit

// Пример generic функции с несколькими типами

func wrap<T,D>(key: T, val: D) -> [T: D] {
    [key: val]
}

let someDict = wrap(key: 5, val: "Bob")
//print(someDict)

// Generic параметры, которые соответствуют протоколу

func isEquel<T: Comparable & Flyable>(val1: T, val2: T) -> Bool {
    val1.fly()
    return val1 == val2
}

protocol Flyable {
    func fly()
}

// Пример generic типа

struct Storage<Element> {
    
    var allElements: [Element] = []
    
    mutating func addElement(element: Element) {
        allElements.append(element)
    }
}

var storage = Storage<Int>()
storage.addElement(element: 12)
storage.addElement(element: 10)
storage.addElement(element: 1221)
//print(storage.allElements)

// Расширения generic типа

extension Storage {
    func getFirst() -> Element? {
        allElements.first
    }
}

//print(storage.getFirst() ?? 0)

// Practice

func swap<T>(element1: T, element2: T) -> [T] {
    let someElement = element1
    let element1 = element2
    let element2 = someElement
    return [element1, element2]
}
let someArray = swap(element1: 5, element2: 10)
//print(someArray)

func makingTuple<T, D: Sequence>(element1: T, element2: D) -> (T, D) {
    return (element1, element2)
}
let someTuple = makingTuple(element1: 56, element2: "Bob")
//print(someTuple)

func sum<T: Numeric>(el1: T, el2: T) -> T {
    el1 + el2
}
let sum1 = sum(el1: 4, el2: 12)
//print(sum1)

struct GenericDict<T: Hashable, D> {
    var allElements = [T : D]()
    
    mutating func addAndCallElement(key: T, val: D) -> [T : D] {
        allElements[key] = val
        return allElements
    }
    
    mutating func getValue(key: T) -> D? {
        allElements[key]
    }
}

var dict = ["Artem": 18, "Vanya": 15, "Bob": 27]
var genericDict1 = GenericDict(allElements: dict)
print(genericDict1.getValue(key: "Artem") ?? 0)
print(genericDict1.addAndCallElement(key: "Someone", val: 65))

// Practice* :





