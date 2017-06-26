//: Playground - noun: a place where people can play

import UIKit

func printIfTrue(predicate: ()-> Bool){
    if predicate(){
        print("the result is true")
    }
}

printIfTrue { () -> Bool in
    return 2 > 1
}

printIfTrue(predicate:  { return 2 > 1 })

printIfTrue(){ return 2 > 1}

printIfTrue(predicate:  {2 > 1})

printIfTrue{2 > 1}

func printIfTrue2( predicate: @autoclosure () -> Bool) {
    if predicate(){
        print("the result is true")
    }
}

printIfTrue2(predicate:  2 > 1)

let input:( helo:String,world:String) = ("2", "3")
print(input.helo)
let input2:(String) = ("2")
print(input2)
