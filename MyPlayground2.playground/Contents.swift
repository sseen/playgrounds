
import UIKit
import Foundation

let o = [1, 2, 3, 4, 5].filter { $0 > 2 }
print(o)

let values: [Int?] = [1, 2, 3, nil, 4]
let s = values.filter { $0 != nil }.map { $0! }
print(s)

let values2: [Int?] = [1, 2, 3, nil, 4]
let v = values2.flatMap { $0 }
print(v)



let array = [1,2,3,2,4,5]

let maped = array.map { "No." + String($0) }
print(maped) // ["No.1", "No.2", "No.3", "No.4", "No.5"]

let flapMaped = array.flatMap { "No." + String($0) }
print(flapMaped) // ["No.1", "No.2", "No.3", "No.4", "No.5"]

let arrayNested =  [ [[1, 2, 3, 4, 5], [6, 7]], [[1, 2, 3, 4, 5], [6, 7]] ]
                //[[[1,2,3,4,5],[6,7]],[1,2]] as [Any]

let maped2 = arrayNested.map { $0 }
print(maped2) // [[1, 2, 3, 4, 5], [6, 7]]

let flaped2 = arrayNested.flatMap { $0 }
print(flaped2) // [1, 2, 3, 4, 5, 6, 7]

let flaped3 = flaped2.flatMap { $0 }
print(flaped3) // [1, 2, 3, 4, 5, 6, 7]




class Parent {
    var name: String
    var child: Child?
    init(name: String) {
        self.name = name
    }
}
class Child {
    var name: String
    weak var parent: Parent!
    init(name: String, parent: Parent) {
        self.name = name
        self.parent = parent
    }
}

var parent: Parent! = Parent(name: "John")
var child: Child! = Child(name: "Alan", parent: parent)
parent = nil
