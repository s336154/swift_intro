import Foundation


protocol CanBreath {
    func breath()
}


struct Animal: CanBreath {
    func breath() {
        "Animal breathing"
    }
}

struct Person: CanBreath {
    func breath() {
        "Person breathing..."
    }
}

let dog = Animal()
dog.breath()
let foo = Person()
foo.breath()


protocol CanJump {
    func jump()
}
    
extension CanJump {
        func jump() {
            "Jumping..."
        }
    }


struct Cat: CanJump {
    
}

let whiskers = Cat()
whiskers.jump()

protocol HasName {
    var name: String { get }
    var age: Int {get set}
    mutating func increaseAge()
}

extension HasName {
    func describeMe() -> String {
        "Your name is \(name) and you are \(age) years old"
    }
    
   mutating func increaseAge() {
        self.age += 1
    }
}


struct Dog: HasName {
    let name: String
    var age:  Int
    
}

var woof = Dog(name: "Woof", age: 10)

woof.name
woof.age

/* woof.age = 12
woof.age

woof.name = "Doggie"
woof.name */

woof.age += 1
woof.age

woof.describeMe()

woof.increaseAge()
woof.age
woof.describeMe()




protocol Vehicle {
    var speed: Int { get set}
    mutating func increaseSpeed(by value: Int)
}

extension Vehicle {
    mutating func increaseSpeed(
        by value :Int
    ) {
        self.speed += value
    }
}


/*
class Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
} */

struct Bike: Vehicle {
    var speed: Int
    init() {
        self.speed = 0
    }
}


var bike = Bike()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed

func describe(obj: Any){
    if obj is Vehicle {
        "obj conforms to Vehicle protocol"
    } else {
        "obj does NOT conform to the vehicle protocol"
    }
}

describe(obj: bike)


func increaseSpeedIfVehicle(
    objec: Any){
        if var vehicle = objec as? Vehicle {
            vehicle.speed
            vehicle.increaseSpeed(by: 10)
            vehicle.speed
        } else {
            "This is NOT a vehicle"
        }
    }
increaseSpeedIfVehicle(objec: bike)
bike.speed
