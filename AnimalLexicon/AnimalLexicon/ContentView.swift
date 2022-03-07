//
//  Created by August Backhaus on 03/03/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            // JSON Subview
            JSONListedView().tabItem {
                Label("JSON Overview", systemImage: "list.bullet.rectangle.portrait")
            }
            
            // Info Subview
            InfoView().tabItem{
                Label("App Info", systemImage: "info.circle")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
