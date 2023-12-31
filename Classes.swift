import Foundation

//struct Person {
//    var name: String
//    var age: Int
//}

class Person {
    var name: String
    var age: Int
    
    init(
        name: String,
        age: Int
    ) {
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }
}


let foo = Person(name: "Foo", age: 20)

foo.age
foo.increaseAge()
foo.age


let bar = foo
bar.increaseAge()
bar.age
foo.age += 10
foo.age
bar.age


if foo === bar {
    "Foo and Bar point to the same memory"
} else {
    "Foo and Bar does not point to the same memory"
}

class Vehicle {
    func goVroom() {
        "Vroom vroom"
    }
}


class Car: Vehicle {
    
}

let car = Car()
car.goVroom()

class Person2 {
// you can not change age by this method: baz.age += 1
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
}


let baz = Person2(age: 20)
baz.age
//baz.age += 1
baz.increaseAge()
baz.age


class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        
        // default value for Tesla
        self.model = "X"
        self.year = 2023
    }
    
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    
    convenience init(
        // model name will only be designated
        model: String
    ) {
        self.init(
            // year os by default 2023
            model: model,
            year: 2023
        )
    }
}


class TeslaModelY: Tesla {
    
   override init() {
       super.init(
        model: "Y",
        year: 2023
        )
    //   super.init(model: "Y")
    }
}


let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer


let fooBar = Person2(age: 20)
fooBar.age
func doSomething(with person: Person2) {
    person.increaseAge()
}

doSomething(with: fooBar)
fooBar.age


class MyClass {
    init() {
        "Initialized"
    }
    
    func doSomething() {
        "Do something .. "
        
    }
    
    deinit {
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}

myClosure
