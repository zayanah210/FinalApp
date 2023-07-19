//
//  savedpromptsview.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct savedpromptsview: View {
    var body: some View {
        Image("saved_prompts")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
    }
}

struct savedpromptsview_Previews: PreviewProvider {
    static var previews: some View {
        savedpromptsview()
    }
}
