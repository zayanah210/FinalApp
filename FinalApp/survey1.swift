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
                
                
                HStack {
                    VStack (spacing: 16.8){
                        
                        NavigationLink(destination: promptsfantasy()) {
                            Text("Fantasy")
                                .foregroundColor(Color.white)
                                .padding(0.0)
                        }
                        NavigationLink(destination: promptscomedy()) {
                            Text("Comedy")
                                .foregroundColor(Color.white)
                        }
                        NavigationLink(destination: prompts()) {
                            Text("Romance")
                                .foregroundColor(Color.white)
                        }
                        NavigationLink(destination: promptshorror()) {
                            Text("Horror")
                                .foregroundColor(Color.white)
                        }
                        NavigationLink(destination: promptsmystery()) {
                            Text("Mystery")
                                .foregroundColor(Color.white)
                        }
                        NavigationLink(destination: promptshistorical()) {
                            Text("Historical")
                                .foregroundColor(Color.white)
                        }
                        NavigationLink(destination: promptsnonfiction()) {
                            Text("Nonfiction")
                                .foregroundColor(Color.white)
                        }
                        
                    }
                    
                    
                }
                .padding(.trailing, 137.0)
                .padding(.top, 231.0)
                .frame(height: 0.0)
            }
            
        }
    }
}
    
    struct survey1_Previews: PreviewProvider {
        static var previews: some View {
            survey1()
        }
    }

