import Foundation

public enum BeerStyle : String , Codable{
    case ipa
    case stout
    case kolsch
    // ...
}

public struct Beer : Codable {
    let name: String
    let brewery: String
    let style: BeerStyle
}


