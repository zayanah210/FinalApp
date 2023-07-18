//
//  prompts.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI


struct prompts: View {
    
    var romance_prompts = ["Character A suggests teaching Character B their hobby, unaware that Character B is a professional. However, Character B goes along with it for a while before revealing themselves.","Character A suggests going into a haunted mansion because they know Character B hates them. Little do they know that Character B always acts scared just so they can cling to Character A’s arms.","Character A, usually very intimidating and timid, shows up wearing a pink sweater and all their friends are confused and laugh. Later, Character B shows up and hugs Character A for wearing the sweater they spent a month on."
    ]
    @State private var promptUser = "Click Generate"
    
    var body: some View {
        
        let randomRomancePrompt = romance_prompts.randomElement()
        
        VStack {
            ZStack{
                Image("prompts_screen")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Text(promptUser)
                Spacer()
                Button("Generate") {
                    promptUser = romance_prompts[2]
                }
            }
            Spacer()
        }
    }
}

struct prompts_Previews: PreviewProvider {
    static var previews: some View {
        prompts()
        
    }
}
