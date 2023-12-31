import Foundation

//value is optional that by default is nil
func multiplyByTwo(_ value: Int? = nil) -> Int {
    
// if value is present and not equal to "nil"
    if let value {
        return value * 2
    } else {
        return 0
    }
}

multiplyByTwo()
multiplyByTwo(6)
multiplyByTwo(nil)
multiplyByTwo(8)

//age is optional that by default is nil
let age: Int? = nil
if age != nil {
    "Age is there! How odd!"
} else {
    "Age is nil. Correct"
}

// if age is present and not equal to "nil"
if let age {
    "Age is there. How odd! Its value is \(age)"
    
}else{
        "No age is present. As expected"
    }

func checkAge() {
//    if age == nil {
//        "Age is nil as expected"
//        return
//    }
    
    guard age != nil else {
        " Age is nil as expected"
        return
    }
    "Age is not nil here. Strange!"

}

checkAge()


let age2: Int? = nil

func checkAge2() {
    guard let age2 else {
        "Age is nil. How strange"
        return
    }
    "Age2 is not nil as expected. Value = \(age2)"
}

checkAge2()


switch age {
    
case .none:
    "Age has no value as expected"
    break
    
case let .some(value):
    "Age has the value of \(value)"
    break
}


if age2 == 0 {
    "Age2 is 0 as expected, and is not nil"
} else {
    "Age2 is not 0. How strange!"
}


if age2 == .some(0) {
    "Age2 is 0 as expected, and is not nil"
} else {
    "Age2 is not 0. How strange!"
}


struct Person {
    
//Address is optional here and within it (its structure) there is an optional property
    
    let name: String
    let address: Address?
    
    struct Address {
        let firstLine: String?
    }
}

let foo: Person = Person(name: "Foo", address: nil)


if let fooFirstAddressLine = foo.address?.firstLine {
    fooFirstAddressLine
}else {
    "Foo doesn't have an address with first line as expected."
}


// this is how we can grab the firstline of the address
if let fooAddress = foo.address,
   let firstLine = fooAddress.firstLine {
    fooAddress
    firstLine
}

let bar: Person? = Person(name: "Bar", address: Person.Address(firstLine: nil))


if bar?.name == "Bar",
   bar?.address?.firstLine == nil {
    "Bar's name is bar and has no first line of address"
} else {
    "Seems like something isn't working right!"
}


let baz: Person? = Person(name: "Baz", address: Person.Address(firstLine: "Baz first line"))


switch baz?.address?.firstLine {
case let .some(firstLine) where
    firstLine.starts(with: "Baz"):
    "Baz first address line = \(firstLine)"
case let .some(firstLine):
    "Baz first address line that didn't match the previous case"
    firstLine
case .none:
    "Baz first address line is nil??? Weird!"
}


func getFullName(
    firstName: String,
    lastName: String?
) -> String? {
    if let lastName {
        return "\(firstName) \(lastName)"
    } else {
        return nil
    }
}


getFullName(firstName: "Foo", lastName: nil)
 
getFullName(firstName: "Foo", lastName: "Bar")



func getFullName2(
    firstName: String,
    lastName: String?
) -> String? {
    guard let lastName else {
       return nil
    }
    return "\(firstName) \(lastName)"
}

getFullName(firstName: "Foo", lastName: nil)
 
getFullName(firstName: "Foo", lastName: "Bar")
