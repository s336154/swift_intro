import Foundation

struct Person{
    let name: String
    let age: Int
}

let Sari = Person(name: "Sari",
    age: 31)

Sari.name
Sari.age


struct CommodoreComputer {
    let name: String
 //   let manufacturer: String
    let manufacturer = "Commodore"
    
   // init(name: String){
   //     self.name = name
   //     self.manufacturer = "Commodore"
    //}
}

let c64 = CommodoreComputer(name: "c64")

c64.name
c64.manufacturer


struct Person2 {
    let firstname: String
    let lastname: String
    var fullname: String {
        "\(firstname) \(lastname)"
    }
}

let Adey = Person2(firstname: "Jamila", lastname: "Mohammed")

Adey.fullname
Adey.firstname
Adey.lastname



struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        
        "Driving. . ."
        currentSpeed = speed
    }
}


let immutableCar = Car(currentSpeed: 25)

immutableCar.currentSpeed

//immutableCar.drive(speed: 21)


var mutableCar = Car(currentSpeed: 12)
let copy = mutableCar

mutableCar.drive(speed: 16)

mutableCar.currentSpeed
copy.currentSpeed


struct Bike {
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike {
        Bike(
            manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
    
}


let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)

let bike2 = bike1.copy(currentSpeed: 26)
bike1.currentSpeed
bike2.currentSpeed
