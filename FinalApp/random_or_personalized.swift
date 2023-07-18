//
//  random_or_personalized.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct random_or_personalized: View {
    var body: some View {
        ZStack {
            Image("random_or_personalized")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
            HStack {
                
                NavigationStack {
                    NavigationLink(destination: survey1()) {
                        Text("Personalized")
                    }
                }
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
