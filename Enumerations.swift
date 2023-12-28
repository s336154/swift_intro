import Foundation


enum Animals {
    case cat
    case dog
    case rabbit
   case hedgeHog
}


enum wildAnimals {
    case lion, tiger, bear
}


let cat = Animals.cat
    
if cat == Animals.cat {
    "This is cat"
} else if cat == Animals.dog {
    "This is dog"
} else {
    "This is something else"
}

switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
case .hedgeHog:
    "This is a hedgehog"
    break
}

func describeAnimal(_ animal: Animals) {
    
    switch animal {
    case .cat:
        "This is a cat"
        break
    case .dog:
        "This is a dog"
        break
    default:
        "This is something else"
        break
    }
}

describeAnimal(Animals.rabbit)



enum Shortcut {
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(path: URL(string: "https://apple.com")!)

switch wwwApple {
case let .fileOrFolder(
    path:  path0,
    name:  name0
):
    path0
    name0
    break
    
case  let .wwwUrl(
    path: path1
):
    path1
    break
case .song(
    artist: let artist2,
    songName: let songName2
):
    artist2
    songName2
    break
}


//if case let .wwwURL(path) = wwwApple {
//    path
//}

let withoutYou = Shortcut.song(
    artist: "Symphony X",
    songName: "Without You")

if case let .song(_, songName) = withoutYou {
    songName
}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, Yearmade: Int)
    
    var Manufacturer: String{
        switch self {
        case let .car(manufacturer, _),
        let .bike(manufacturer, _):
            return manufacturer
        }
    }
}




let car = Vehicle.car(manufacturer: "Tesla", model: "X")

car.Manufacturer

let bike = Vehicle.bike(manufacturer: "HD", Yearmade: 1987)

bike.Manufacturer


/* switch bike {
case let .car(manufacturer, _):
    manufacturer
    break
    
case let .bike(manufacturer, _):
    manufacturer
    break
}
 */

enum FamilyMember : String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue


enum FavoriteEmoji: String, CaseIterable {
    case blush = "😊"
    case rocket = "🚀"
    case fire = "🔥"
}

FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)
FavoriteEmoji.blush.rawValue

if let blush = FavoriteEmoji(rawValue: "😊") {
    "Found the blush emoji"
    blush
} else {
    "This emoji doesn't exist"
}

if let snow = FavoriteEmoji(rawValue: "❄️") {
    "Snow exists?! Really?"
    snow
} else {
    "As expected, snow doesn't exist"
}



enum Height {
    case short, medium, long
    mutating func makeLong() {
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    
    func calculateResult(
        of operation: IntOperation? = nil
    ) -> Int {
        switch operation ?? self {
            
        case let .add(lhs, rhs):
            return lhs + rhs
            
        case let .subtract(lhs, rhs):
            return lhs - rhs
            
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}


let freeHand = IntOperation.freeHand(.add(2,4))
freeHand.calculateResult()




