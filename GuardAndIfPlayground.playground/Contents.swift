//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let optionalNumbersArray:[Int?]  = [1, 2, nil, 4, 5]

for num in optionalNumbersArray {
    guard let num = num else {
        print("_")
        continue
    }
    
    print(num)
}

for num in optionalNumbersArray {
    if let num2 = num  {
        print("_")
        continue
    }
    
    print(num)
}
