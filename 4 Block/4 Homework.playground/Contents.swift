import UIKit

// Task 1 (Enum)

enum Months: Int {
    case January, March, May, July, August, October, December = 31
    case April, June, September, November = 30
    case February = 29
}

let someMonth = Months.December
someMonth.rawValue

enum PricesInMcDonaldsMenu {
    case BigMac
    case BigTasty
    case McNuggets
    case frenchFries
    case McFlurry
    
    func FoodType() -> String {
        switch self{
        case .BigMac, .BigTasty: return "It's burger!"
        case .McFlurry: return "It's desert!"
        case .McNuggets, .frenchFries: return "It's snacks"
        }
    }
}

let someItem = PricesInMcDonaldsMenu.BigMac
//print(someItem.FoodType())

enum Price {
    case UAH(Double)
    case Dollar(Double)
    func inWhatCurrency() -> String {
        switch self {
        case .Dollar(let priceDollar):
            return "It costs in dollars: \(priceDollar)"
        case .UAH(let priceUAN):
            return "It costs in hryvnia: \(priceUAN)"
        }
    }
}

let somePriceInUAH = Price.UAH(1000)
let somePriceInDollars = Price.Dollar(25)

somePriceInUAH.inWhatCurrency()
somePriceInDollars.inWhatCurrency()

// Task 2 (POP)

enum VehicleType {
    case electric
    case nonElectric
}

protocol Vehicle {
    var weight: Float { get }
    var speed: Float { get }
    var type: VehicleType { get }
    var canFly: Bool { get }
    func prepare()
}

extension Vehicle {
    func prepare() {
        switch type {
        case .electric:
            print("Charge")
        case .nonElectric:
            print("Refuel")
        }
    }
    var canFly: Bool {
        return false
    }
}

protocol FlyableVehicle {
    func getMaxHight() -> Float
}

extension Vehicle where Self: FlyableVehicle {
    var canFly: Bool {
        return true
    }
    var type: VehicleType {
        return .nonElectric
    }
    func getMaxHight(weight: Float, speed: Float) -> Float {
        switch type {
        case .electric:
            return weight + speed
        case .nonElectric:
            return weight * speed
        }
    }
}
struct Car: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct ElectricCar: Vehicle {
    var weight: Float
    var speed: Float
    var type: VehicleType
}

struct AirPlane: Vehicle, FlyableVehicle {
    func getMaxHight() -> Float {
        switch type {
        case .electric:
            return weight + speed
        case .nonElectric:
            return weight * speed
        }
    }
    var weight: Float
    var speed: Float
}
struct ElectricalAirplane: Vehicle, FlyableVehicle {
    var type: VehicleType {
        return .electric
    }
    var weight: Float
    var speed: Float
    
    func getMaxHight() -> Float {
        switch type {
        case .electric:
            return weight + speed
        case .nonElectric:
            return weight * speed
        }
    }
}

let someCar = Car(weight: 12, speed: 13, type: .nonElectric)
someCar.canFly
someCar.type
someCar.prepare()

let someElectricCar = Car(weight: 10, speed: 32, type: .electric)
someElectricCar.canFly
someElectricCar.type
someElectricCar.prepare()

let someAirplane = AirPlane(weight: 32, speed: 12)
someAirplane.canFly
someAirplane.getMaxHight()

let someElectricalAirplane = ElectricalAirplane(weight: 43, speed: 4)
someElectricalAirplane.getMaxHight()


