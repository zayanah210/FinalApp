//
//  promptshorror.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI




struct promptshorror: View {
    
    let horror_prompts = ["In the depths of an abandoned asylum, a group of friends stumbles upon an old, dusty journal containing cryptic messages and disturbing drawings. As they delve deeper into its eerie contents, they unknowingly awaken a malevolent presence that haunts their every step. Will they unravel the journal's secrets and escape the asylum, or will they become trapped in a nightmarish reality from which there is no escape? Your choice","A reclusive writer moves to a remote cabin for inspiration but discovers forbidden manuscripts that blur the line between imagination and reality. As they delve deeper, their sanity begins to unravel. Will they escape their own creation before it's too late?","Write a suspenseful thriller about a detective who becomes obsessed with solving a mysterious cold case that has haunted them for years.","During a stormy night at a secluded cabin, friends experience strange occurrences. As they uncover dark secrets, a malevolent presence hunts them one by one. Suspicion and paranoia rise, and they must survive the night. Can they make it out alive?"]
    
    @State private var promptUser = "Click 'Generate'⬇️"
    
    var body: some View {
        
        let randHorrorPrompt = horror_prompts.randomElement()!
        ZStack{
            Image("prompts_screen")
                               .resizable(resizingMode: .stretch)
                               .aspectRatio(contentMode: .fit)
            VStack {
               
                Spacer()
                
                Text(promptUser)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.trailing, 150.0)
                    .frame (width: 300.0, height: 200.0)
                
                
                Spacer()
                Button("Generate") {
                    promptUser = randHorrorPrompt
                    
//                    NavigationStack {
//                        NavigationLink(destination: random_or_personalized()) {
//                            Text("Fantasy")
                }
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
                .controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
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
