//
//  Created by August Backhaus on 07/03/2022.
//

import SwiftUI

struct InfoView: View {
    
    let attributedString = try! AttributedString(
        markdown: "This app is developed by _August Backhaus_ as a demonstration for primarily showing the ability to parse a JSON file amongs others. The developer of the app does _NOT_ own the rights to any of the images or sounds used throughout the app.")
    
    var body: some View {
        
        VStack{
            Text("Info").font(.system(size: 24, weight: .heavy))
            
            Divider().padding(10)
            
            Text(attributedString)
                    .font(.system(size: 18, weight: .regular))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding([.leading, .trailing], 15)

            Spacer()
            
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
