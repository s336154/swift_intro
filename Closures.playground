import Foundation


let add: (Int, Int) -> Int = {
    (lhs: Int, rhs: Int) -> Int in lhs + rhs
}

add(23,22)


func customAdd(
    _ lhs: Int,
    _ rhs: Int,
    using function1: (Int,Int) -> Int
)
-> Int {
        function1(lhs, rhs)
    }

customAdd(11, 14, using: { (lhs: Int, rhs: Int) -> Int in lhs + rhs })

customAdd(2, 4){ (lhs: Int, rhs: Int) -> Int in lhs + rhs}

customAdd(2, 3){ (lhs, rhs) in lhs + rhs}



customAdd( 20 , 30) {
    $0 + $1
}


let ages = [21, 34, 17, 9, 20, 40,66,23, 36]
ages.sorted(by: >)
ages.sorted(by: <)

func doAddition(
    on value: Int,
    using function: (Int) -> Int ) -> Int {
        function(value)
    }

func add10To(_ value: Int) -> Int {
    value + 10
}

func add23To(_ value: Int) -> Int {
    value + 23
}

doAddition(on: 20)  {  (value) in value + 46 }

doAddition(on: 20, using: add10To(_: )
)
           
           
doAddition(on: 20, using: add23To(_: )
)


