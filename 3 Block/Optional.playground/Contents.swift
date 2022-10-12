import UIKit

var test: String? = nil
test = "Some value"

// Force unwrap

//print(test!)

// Safe unwrap

let new = test ?? ""
//print(new)

if let test = test {
    //    print(test)
}

//func unwrapIt() {
//    guard let test = test else {
//        return
//    }
//    print(test)
//}

//unwrapIt()

// Practice

var stringVar: String? = "Some text"
var intVar: Int? = 43
var boolVar: Bool? = true
var floatVar: Float? = 32

//print(string!)
//print(float)

if let stringVar = stringVar {
    //    print(stringVar)
}

let newString = stringVar ?? ""
//print(newString)

func unwrapIt1() {
    guard let stringVar = stringVar else {
        return
    }
    //    print(stringVar)
}

unwrapIt1()

if let floatVar = floatVar {
    //    print(floatVar)
}

func unwrapIt2() {
    guard let floatVar = floatVar else {
        return
    }
    //    print(floatVar)
}

unwrapIt2()

class B {
    var text: String
    init(name: String) {
        text = name
    }
}

class A {
    var someProperty: B?
    init(someProperty: B?) {
        self.someProperty = someProperty
    }
}

let someSample1 = B(name: "Artem")
//print(someSample1)

let someSample2 = A(someProperty: someSample1)
//print(someSample2.someProperty?.text)

//if let someSample3 = someSample2.someProperty?.text {
//    print(someSample3)
//}

let new1 = someSample2.someProperty?.text ?? ""
print(new1)

//func someFunc() {
//    guard let someSample3 = someSample2.someProperty?.text else {
//        return
//    }
//    print(someSample3)
//}
//
//someFunc()
