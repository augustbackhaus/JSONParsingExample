//
//  Created by August Backhaus on 01/03/2022.
//

import Foundation

//
var animals: [Animal] = load("animalData.json")

// Function to decode JSON file
func load<T: Decodable>(_ filename: String) -> T {
    
    // Create data variable
    let data: Data

    // Loading resources from app bundle
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    // Assign the context of the resource to the data variable
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    // Decode the data variable (JSON) file
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
