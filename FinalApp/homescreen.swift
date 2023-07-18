//
//  homescreen.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct homescreen: View {
    var body: some View {
        ZStack {
         
                    
            Image("homescreen")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode:.fit)
            NavigationStack {
                NavigationLink (destination: random_or_personalized()) {
                    Text("Generate Prompt")
                    
                }
            }
        }
    }
    
    struct homescreen_Previews: PreviewProvider {
        static var previews: some View {
            homescreen()
        }
    }
}
