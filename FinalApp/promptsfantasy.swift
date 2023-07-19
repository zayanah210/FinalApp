//
//  promptsfantasy.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptsfantasy: View {
    var body: some View {
        VStack {
            Text("Which Fantasy topic would you like?")
                .font(.title2)
            
            Text("Dystopian fantasy option")
        
            Text("Magical Fantasy option")
        }
        
    }
}

struct promptsfantasy_Previews: PreviewProvider {
    static var previews: some View {
        promptsfantasy()
    }
}
