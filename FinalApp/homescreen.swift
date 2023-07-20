//
//  homescreen.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct homescreen: View {
    var body: some View {
        NavigationStack {
        ZStack {
            Image("homescreen")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode:.fit)
            
          
            VStack{
                NavigationLink (destination: TextFile1()) {
                                    Text("+")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                                              }
                                .padding(.leading, 11)
                                .padding(.top, 260)
            }
            .padding(.trailing, 320.0)
            VStack{

                NavigationLink (destination: random_or_personalized()) {
                    Text("Generate Prompt")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.top, 470.0)
                }
            
            }
            .padding(.trailing)
            }
        }
    }
    
    struct homescreen_Previews: PreviewProvider {
        static var previews: some View {
            homescreen()
        }
    }
}
