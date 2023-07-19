//
//  survey1.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct survey1: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("survey")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                HStack (alignment: .top) {
                    VStack {
                        
                        
                        
                        
                        NavigationLink(destination: promptsfantasy()) {
                            Text("Fantasy")
                        }
                        NavigationLink(destination: promptscomedy()) {
                            Text("Comedy")
                        }
                        NavigationLink(destination: promptshorror()) {
                            Text("Horror")
                        }
                        NavigationLink(destination: promptsmystery()) {
                            Text("Mystery")
                        }
                        NavigationLink(destination: promptshistorical()) {
                            Text("Historical")
                        }
                        NavigationLink(destination: promptsnonfiction()) {
                            Text("Nonfiction")
                        }
                        
                    }
                    
                    
                }
            }
            
        }
    }
}
    
    struct survey1_Previews: PreviewProvider {
        static var previews: some View {
            survey1()
        }
    }

