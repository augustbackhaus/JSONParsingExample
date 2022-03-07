//
//  Created by August Backhaus on 07/03/2022.
//

import SwiftUI

struct JSONListedView: View {
    var body: some View {
        VStack{

            // NavigationView created from each element in the JSON file
            NavigationView {
                List(){
                    ForEach(animals) { animal in
                        // Destination of the AnimalDetail (detailed view)
                        NavigationLink(destination:
                                        AnimalDetail(animalType: animal.type, name: animal.name, age: animal.age, image: animal.image, description: animal.description, URLString: animal.URLString, animalSound: animal.sound)) {
                            
                            // Label including image + text
                            HStack{
                                SmallImage(image: animal.image).padding(.trailing, 20)
                                
                                Text(animal.type).foregroundColor(.black)
                            }
                            
                        }.padding([.top, .bottom], 5)
                    }
                }
                .navigationTitle("Animal overview")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

struct JSONListedView_Previews: PreviewProvider {
    static var previews: some View {
        JSONListedView()
    }
}
