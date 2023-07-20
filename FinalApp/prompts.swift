//
//  prompts.swift
//  FinalApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI


struct prompts: View {
    
    let romance_prompts = ["Character A suggests teaching Character B their hobby, unaware that Character B is a professional. However, Character B goes along with it for a while before revealing themselves.","Character A suggests going into a haunted mansion because they know Character B hates them. Little do they know that Character B always acts scared just so they can cling to Character A’s arms.","Character A, usually very intimidating and timid, shows up wearing a pink sweater and all their friends are confused and laugh. Later, Character B shows up and hugs Character A for wearing the sweater they spent a month on."]
    
    
    @State private var promptUser = "Click 'Generate'⬇️"
    
    var body: some View {
        
        let randRomancePrompt = romance_prompts.randomElement()!
        ZStack{
            Image("prompts_screen")
                               .resizable(resizingMode: .stretch)
                               .aspectRatio(contentMode: .fit)
            VStack {
               
                Spacer()
                
                Text(promptUser)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.87, saturation: 0.323, brightness: 0.665))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.trailing, 150.0)
                    .frame (width: 300.0, height: 200.0)
                
                
                Spacer()
                Button("Generate") {
                    promptUser = randRomancePrompt
                    
//                    NavigationStack {
//                        NavigationLink(destination: random_or_personalized()) {
//                            Text("Fantasy")
                }
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
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
