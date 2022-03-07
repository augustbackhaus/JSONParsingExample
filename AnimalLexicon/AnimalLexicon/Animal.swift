//
//  Created by August Backhaus on 01/03/2022.
//

import Foundation

// Struct to conform to the JSON file
struct Animal: Identifiable, Decodable {
    var id : Int
    var name : String
    var age : Int
    var image : String
    var type : String
    var URLString : String
    var sound : String
    var description : String
}
