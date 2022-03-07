//
//  Created by August Backhaus on 01/03/2022.
//

import SwiftUI

struct AnimalDetail: View {
    var animalType : String
    var name : String
    var age : Int
    var image : String
    var description : String
    var URLString : String
    var animalSound : String
    
    var body: some View {
        VStack{

            // Image
            Image(image)
                .resizable()
                .scaledToFill()
                .padding(.top, -30)
            
            HStack{
                Spacer()
                
                // Name of the animal
                VStack{
                    Text("Name:").foregroundColor(.secondary)
                    Text(name).font(.system(size: 40))
                }
 
                Spacer()
                
                // Age of the animal
                VStack{
                    Text("Age:").foregroundColor(.secondary)
                    Text(String(age)).font(.system(size: 40))
                }
                
                Spacer()
            }.padding(.bottom, -3)
            
            Divider().padding([.leading, .trailing], 10)
            
            
            ScrollView {
                VStack(alignment: .leading,spacing: 40) {
                    
                    // Description of animal
                    Text(description)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    // Button for animal sound
                    HStack{
                        Text("Listen to the animal    ").italic()
                        Button(action: {
                            playSound(key: animalSound)
                        }, label: {
                            Image(systemName: "play.circle.fill").foregroundColor(Color.black).font(.system(size: 30))
                        })
                    }.padding([.top, .bottom], -15)
                    
                    // Link to webside for additional reading
                    HStack{
                        Text("Read more about " + animalType.lowercased() + "s at this")
                        Link("link", destination: URL(string: URLString)!)
                        Text(".")
                    }
                }.frame(maxWidth: .infinity, alignment: .topLeading).padding([.leading, .trailing], 10)
            }
            Spacer()
        }
    }
}

struct AnimalDetail_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetail(animalType: "dog" ,name: "Dwight", age: 20, image: "dog", description: "dog, (Canis lupus familiaris), domestic mammal of the family Canidae (order Carnivora). It is a subspecies of the gray wolf (Canis lupus) and is related to foxes and jackals. The dog is one of the two most ubiquitous and most popular domestic animals in the world (the cat is the other). For more than 12,000 years it has lived with humans as a hunting companion, protector, object of scorn or adoration, and friend. The dog evolved from the gray wolf into more than 400 distinct breeds. Human beings have played a major role in creating dogs that fulfill distinct societal needs. Through the most rudimentary form of genetic engineering, dogs were bred to accentuate instincts that were evident from their earliest encounters with humans. Although details about the evolution of dogs are uncertain, the first dogs were hunters with keen senses of sight and smell. Humans developed these instincts and created new breeds as need or desire arose.", URLString: "https://www.britannica.com/animal/dog", animalSound: "dog_sound")
    }
}
