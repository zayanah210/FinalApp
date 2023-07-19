//
//  promptshorror.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI




struct promptshorror: View {
    
    let comedy_prompts = ["In the depths of an abandoned asylum, a group of friends stumbles upon an old, dusty journal containing cryptic messages and disturbing drawings. As they delve deeper into its eerie contents, they unknowingly awaken a malevolent presence that haunts their every step. Will they unravel the journal's secrets and escape the asylum, or will they become trapped in a nightmarish reality from which there is no escape? Your choice","A reclusive writer moves to a remote cabin for inspiration but discovers forbidden manuscripts that blur the line between imagination and reality. As they delve deeper, their sanity begins to unravel. Will they escape their own creation before it's too late?","Write a suspenseful thriller about a detective who becomes obsessed with solving a mysterious cold case that has haunted them for years.","During a stormy night at a secluded cabin, friends experience strange occurrences. As they uncover dark secrets, a malevolent presence hunts them one by one. Suspicion and paranoia rise, and they must survive the night. Can they make it out alive?"]
    
    @State private var promptUser = "Click Generate"
    
    var body: some View {
        
        let randComedyPrompt = comedy_prompts.randomElement()!
        ZStack{
            Image("prompts_screen")
                               .resizable(resizingMode: .stretch)
                               .aspectRatio(contentMode: .fit)
            VStack {
               
                Spacer()
                
                Text(promptUser)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.trailing, 150.0)
                    .frame(height: 200.0)
                
                
                Spacer()
                Button("Generate") {
                    promptUser = randComedyPrompt
                    
//                    NavigationStack {
//                        NavigationLink(destination: random_or_personalized()) {
//                            Text("Fantasy")
                }
            }
            Spacer()
        }
    }
}


    var body: some View {
        Text("horror")
    }



struct promptshorror_Previews: PreviewProvider {
    static var previews: some View {
        promptshorror()
    }
}
