import UIKit

// Свойства и методы

class Animal {
    var name: String
    var age: Int
    
    init(n: String, a: Int) {
        name = n
        age = a
    }
    
    convenience init() {
        self.init(n: "", a: 0)
    }
    
    func eat() {
        print("I can eat!")
    }
}

// Экземпляры класса и операции над ними

let animal1 = Animal()
animal1.name = "Tom"
animal1.age = 10
//animal1.eat()

let animal2 = Animal(n: "Jack", a: 12)

let arrayOfAnimals = [animal1, animal2]
//arrayOfAnimals.first?.eat()

// Инициализация классов

let animal3 = Animal(n: "Bob", a: 7)

// Practice

class Phone {
    var number = 0
    var model = "xr"
    var weight = 194
    
    init(n: Int, m: String, w: Int) {
        number = n
        model = m
        weight = w
    }
    convenience init(weight: Int, model: String) {
        self.init(n: 0, m: "", w: 0)
    }
    init() {
        
    }
    
    func recieveCall(name: String, number: Int){
        print("\(name) is calling, number: \(number)")
    }
    func sendMessage(number: Int) {
        print("Message from this number: \(number)")
    }
}

let phone1 = Phone(n: 1, m: "xs", w: 177)
let phone2 = Phone(n: 2, m: "xs max", w: 208)

//phone1.recieveCall(name: "Artem")
//phone2.getNUmber(number: 0987777777)

let array = [phone1, phone2]

for phone in array {
    phone.recieveCall(name: "Jack", number: 0987777777)
    phone.sendMessage(number: 0968888888)
}

// Practice *:


