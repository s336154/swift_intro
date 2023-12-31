import Foundation


var Sari = ["Sari", "Siraj", "Abdalla", "Ali"]
var copy = Sari
Sari.append("Abdalla")
let Mother = "Jamila"
Sari.append(Mother)
Sari.remove(at: 4)
Sari
copy


let oldArray = NSMutableArray(
    array: [
    "Father", Mother
    ]
    )
oldArray
var newArray = oldArray
newArray.remove("Father")
newArray.insert(Sari, at: 1)
oldArray
newArray
oldArray.removeObject(at: 0)
oldArray
newArray


func changeTheArray(_ array: NSArray) {
    let copied = array as! NSMutableArray
    copied.add("Mohammed")
}

changeTheArray(oldArray)
oldArray
newArray

var uniaryPrefix = !false

let name = Optional("Vandad")
type(of: name)
let uniaryPostFix = name!
type(of: uniaryPostFix)


let age = 18

let message = age >= 30 ? "You are an adult" : "You are not an adult yet"

message

type(of: message)
