import UIKit

struct Tutorial {
    var difficulty: Int = 1
}

var tutorial1 = Tutorial()
var tutorial2 = tutorial1
tutorial2.difficulty = 2

print(tutorial1.difficulty)
print(tutorial2.difficulty)


class Manual {
    var difficult:Int = 1
}

var manual1 = Manual()
var manual2 = manual1
manual2.difficult = 2

print(manual1.difficult)
print(manual2.difficult)


public class ThermometerClass {
    private(set) var temperature: Double = 0.0
    public func registerTemperature(_ temperature: Double) {
        self.temperature = temperature
    }
}

let thermometerClass = ThermometerClass()
thermometerClass.registerTemperature(56.0)

public struct ThermometerStruct {
    private(set) var temperature: Double = 0.0
    public mutating func registerTemperature(_ temperature: Double) {
        self.temperature = temperature
    }
}

var thermometerStruct = ThermometerStruct()
thermometerStruct.registerTemperature(56.0)

class OtherExample {
    var hola:String = ""
}

let exemplo = OtherExample()
exemplo.hola = "sdsd"



struct Country {
    let name: String
    let capital: String
    var visited: Bool
}

let canada = Country(name: "Canada", capital: "Ottawa", visited: true)
let australia = Country(name: "Australia", capital: "Canberra", visited: false)

extension Country: Comparable {
    
    static func == (lhs: Country, rhs: Country) -> Bool {
        return lhs.name == rhs.name &&
            lhs.capital == rhs.capital &&
            lhs.visited == rhs.visited
    }
    
    static func < (lhs: Country, rhs: Country) -> Bool {
        return lhs.name < rhs.name ||
            (lhs.name == rhs.name && lhs.capital < rhs.capital) ||
            (lhs.name == rhs.name && lhs.capital == rhs.capital && rhs.visited)
    }
}

let bucketList = [canada,australia]


bucketList.sorted()


extension Array where Element: Comparable {
    func countUniques() -> Int {
        let sortedValues = sorted()
        let initial: (Element?, Int) = (.none, 0)
        let reduced = sortedValues.reduce(initial) {
            ($1, $0.0 == $1 ? $0.1 : $0.1 + 1)
        }
        return reduced.1
    }
}


[1, 2, 3, 3,4,4,6,7,7,7,7].countUniques()
