import Foundation

let numbers = [1,2,3,4]
numbers.count
numbers.last
numbers.first
numbers.map(-)


var mutatingNumbers = [0,1,2]
mutatingNumbers.append(7)
mutatingNumbers.insert(3, at: 0)
mutatingNumbers.insert(contentsOf: [0,1,3], at: 0)

for value in numbers {
    value
}

for value in numbers where value % 2 == 0 {
    value
}

let generic = numbers.map {
    (value: Int) -> String in
    String(value*2)
}

type(of: generic)

// this code has little info for compiler
numbers.map { $0*2}


numbers.filter { (value: Int) -> Bool in
    value >= 3
}

// compactmap is a combination of map and filter in the same time
numbers.compactMap{ (value: Int) -> String? in
value % 2 == 0
? String(value)
: nil
    }

let numbers2: [Int?] = [1,2, nil, 4, 5]

numbers2.count

/*
let notNils = numbers2.filter {
    (value:Int?) -> Bool in
    value != nil
}
*/


let noNils = numbers2.compactMap{ (value:Int?) -> Int? in
    value
}


let numbers3 = [1,2,1,2]
numbers3.count

let staff1 = [
1,
"Hello",
2,
"World"
] as [Any]

staff1.count

let staff2 : [Any] = [
1,
"Hello",
2,
"World"
]

staff2.count





// SET

let uniqueNumbers = Set([1,2,3,2,1])
uniqueNumbers.count
uniqueNumbers.map(-)

let myNumbers = Set([1,2,3,nil,5])

let noNilNumbers = Set(
    myNumbers.compactMap { $0
    
    })

noNilNumbers

let staff3: Set<AnyHashable> = [
1,2,3, "Vandad"
]

staff3.count

let insInStaff1 = staff1.compactMap {
    (value: Any) -> Int? in value as? Int
}

let StringInStaff1 = staff1.compactMap {
    (value: Any) -> String? in value as? String
}


let insInStaff3 = staff3.compactMap {
    (value: AnyHashable) -> Int? in value as? Int
    
}

type(of: insInStaff3)
type(of: staff3)

struct Person : Hashable{
    let id: UUID
    let name: String
    let age: Int
    
}


let fooId = UUID()
let foo = Person(id: fooId, name: "Foo", age: 20)
let bar = Person(id: fooId, name: "Bar", age: 30)

let people : Set<Person> = [foo, bar]
people.count

struct Person2 : Hashable{
    let id: UUID
    let name: String
    let age: Int
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    
    static func == (
        lhs: Self,
        rhs: Self
    ) -> Bool {
        lhs.id == rhs.id
    }
}
let bazId = UUID()

let baz = Person2(id: bazId, name: "Baz", age: 20)
let qux = Person2(id: bazId, name: "Qux", age: 30)

if baz == qux {
    "They are equal"
}

let people2 = Set([baz,qux])
people2.count
people2.first!.name





// D I C T I O NA R Y


let userInfo = [
    "name": "Foo",
    "age": 20,
    "address": [
        "line1": "Address line 1",
        "postCode" : "12345"
    ]
] as [String: Any]

userInfo["name"]
userInfo["age"]
userInfo["address"]

// this can crash the application and is not recommended syntax
(userInfo["address"] as! [String: String])["postCode"]


userInfo.keys
userInfo.values



for (key, value) in userInfo {
    print(key)
    
    print(value)
    
}


for (key, value) in userInfo where value is Int {
    key
    value
}


for (key, value) in userInfo where value is Int && key.count > 2 {
    key
    value
}














