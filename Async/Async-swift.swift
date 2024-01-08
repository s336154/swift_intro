import Foundation
import PlaygroundSupport
import _Concurrency

PlaygroundPage.current.needIndefiniteExecution = true

func calculateFullname (
    firstname: String,
    lastname: String
) async -> String {
    try? await Task.sleep(for: seconds(1))
    return "\(firstname) \(lastname)"
}

task {
    let result1 = await calculateFullname(firstname: "Boo",
                                          lastname: "Bar"
    )
    
    async let result2 = calculateFullname(firstname: "Boo",
                                          lastname: "Bar"
    )
    await result2
    
}


enum Clothe {
    case socks, shirt, trousers
    
}


func buySocks() async throws -> Clothe {
    try await Task.sleep(for: .seconds(1))
    return Clothe.socks
}

func buyShirt() async throws -> Clothe {
    try await Task.sleep(for: .seconds(1))
    return Clothe.shirt
}


func buyTrousers() async throws -> Clothe {
    try await Task.sleep(for: .seconds(1))
    return Clothe.trousers
}


struct Ensemble : CustomDebugStringConvertible {
    let clothes: [Clothe]
    let totalPrice: Double
    
    var debugDescription: String {
        "Clothes = \(clothes), price = \(totalPrice)"
    }
}

func buyWholeEnsemble() async throws -> Ensemble {
    async let socks = buySocks()
    async let shirt = buyShirt()
    async let trousers = buyTrousers()
    let ensemble = Ensemble(
        clothes: await [
            try socks,
            try shirt,
            try trousers
        ], totalPrice: 200    )
    return ensemble
}

Task {
    if let ensemble = try? await buyWholeEnsemble() { ensemble
        
    } else {
        "Something went wrong"
    }
}





func getFullName (
    delay: Duration,
    calculator: () async -> String
) async -> String {
    try? await Task.sleep(for: delay)
    return await calculator()
    
}

func fullName() async -> String { "Foo Bar" }

Task {
    await getFullName(
        delay: .seconds(1)
      //  calculator:
    ) {
        async let name = fullName()
        return await name
    }
}
