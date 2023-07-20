//
//  random_or_personalized.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct random_or_personalized: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("random_or_personalized")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                HStack {
                    VStack (spacing: 75.0){
                    
                        NavigationLink(destination: promptsrandom()) {
                            Text("Random")
                            .foregroundColor(Color.white)
                            .bold()
                            
                        }
                        NavigationLink(destination: survey1()) {
                            Text("Personalized")
                            .foregroundColor(Color.white)
                            .bold()
                        }
                    }
                }
                .padding(.trailing, 150.0)
                .padding(.top, 200.0)

                    Spacer()
                }
            }
        }
    }



struct random_or_personalized_Previews: PreviewProvider {
    static var previews: some View {
        
        random_or_personalized()
    }
}
