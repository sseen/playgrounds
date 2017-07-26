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
    
    enum CodingKeys : String, CodingKey {
        case name
        case brewery = "brewery_name"
        case style
    }
}


