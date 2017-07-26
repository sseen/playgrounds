//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport


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



let myData = "{\"code\":6,\"content\":\"http://10.70.2.194:8080/cas/qrcode/verify?scriptid=fRRc4mpgjBfo!VycXf9yuXNh2lCNknUCfRl/zg7PfRl-A8UmFT63z\"}"

do {
    let promoJson = try JSONSerialization.jsonObject( with: myData.data(using: .utf8)!, options: [])
    print(promoJson)
//    if let promtions = promoJson as? [[String: AnyObject]] {
//        for promtion in promtions {
//            if let picture = promtion["picture"] as? String {
//                myPicture.append(picture)
//            }
//            if let path = promtion["path"] as? String {
//                myPath.append(path)
//            }
//            if let label = promtion["label"] as? String {
//                mylabel.append(label)
//            }
//        }
//    }
} catch let error as NSError {
    print(error.debugDescription)
}


let jsonString = """
{
    "name": "Endeavor",
    "abv": 8.9,
    "brewery": "Saint Arnold",
    "style": "ipa"
}
"""
let jsonData = jsonString.data(using: .utf8)!
let decoder = JSONDecoder()
let beer = try! decoder.decode(Beer.self, from: jsonData)

let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted
let data = try! encoder.encode(beer)
print(String(data: data, encoding: .utf8)!)

