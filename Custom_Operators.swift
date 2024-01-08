import Foundation


let firstname : String? = "Foo"
let lastname : String? = "Bar"
let fullname = firstname + lastname

func + (
    lhs: String?,
    rhs: String?
) -> String? {
    switch (lhs,rhs) {
    case(.none, .none):
        return nil
    case let (.some(value), .none), let (.none, .some(value)):
        return value
    case let (.some(lhs), .some(rhs)):
        return lhs + rhs
        
    }
    
}


prefix operator ^

prefix func ^ (value: String) -> String {
    value.uppercased()
}

// unary prefix

let lowercaseName = "Foo Bar"
let upperCaseName = ^lowercaseName

postfix operator *
postfix func * (value: String) -> String {
    "*** \(value) ***"
    }


// unary postfix
let withStrats = lowercaseName*


struct Person {
    let name: String
    
}


struct Family {
    let members: [Person]
    
}

func + (
    lhs: Person,
    rhs: Person
) -> Family {
    Family (members: [
    lhs,
    rhs
    ])
}

func + (
    lhs: Family,
    rhs: Person
) -> Family {
    var members = family.members
    members.append(rhs)
    return Family(members: members)
    
}

func + (
    lhs: Family,
    rhs: [Person]
) -> Family {
    var members = lhs.members
    members.append(contentsOf: rhs)
    return Family(members: members)
}


let mom = Person(name: "Mom")
let dad = Person(name: "Dad")
let son = Person(name: "Son")
let daughter1 = Person(name: "Daughter 1")
let daughter2 = Person(name: "Daughter 2")

let family = mom + dad
family.members.count

let familyWithSon = family + son
familyWithSon.members.count


let familyWithDaughters = familyWithSon + [daughter1, daughter2]
familyWithDaughters.members.count
