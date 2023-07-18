//
//  survey1.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct survey1: View {
    var body: some View {
        ZStack {
            Image("survey")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
        }
    }
    
    struct survey1_Previews: PreviewProvider {
        static var previews: some View {
            survey1()
        }
    }
}
