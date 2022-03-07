//
//  Created by August Backhaus on 02/03/2022.
//

import SwiftUI

struct SmallImage: View {
    
    var image : String
    
    var body: some View {
        
        // Image for the list
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            //.scaledToFit()
            .frame(maxWidth: 125, maxHeight: 125)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(radius: 2)

    }
}

struct SmallImage_Previews: PreviewProvider {
    static var previews: some View {
        SmallImage(image: "cat")
    }
}
