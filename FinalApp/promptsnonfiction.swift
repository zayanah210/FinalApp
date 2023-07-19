//
//  promptsnonfiction.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptsnonfiction: View {
    
    let comedy_prompts = ["Explore the groundbreaking discovery of penicillin, one of the most significant scientific breakthroughs in medical history. Craft a nonfiction narrative that delves into the life and work of Sir Alexander Fleming, the Scottish biologist, and pharmacologist responsible for the serendipitous find.","Explore the groundbreaking discovery of CRISPR-Cas9, a revolutionary gene-editing technology that has the potential to transform medicine and biotechnology. Craft a nonfiction narrative that delves into the history of CRISPR-Cas9, from its initial identification as a bacterial immune system to its application as a precise and versatile tool for genetic modification.", "Reflect on the unprecedented global event of the COVID-19 pandemic and its impact on the world. Craft a non-fiction narrative that delves into the origins of the virus, the early days of its spread, and the measures taken by governments and health organizations to combat its rapid transmission.", "In the year 2016, a team of scientists from the Laser Interferometer Gravitational-Wave Observatory (LIGO) made a historic breakthrough by detecting gravitational waves for the first time in history. Craft a non-fiction narrative that explores this groundbreaking event, detailing the years of research and collaboration that led to the momentous discovery."]
    
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
    
    

struct promptsnonfiction_Previews: PreviewProvider {
    static var previews: some View {
        promptsnonfiction()
    }
}
