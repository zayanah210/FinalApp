//
//  promptsfantasy.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptsfantasy: View {
    
    let fantasy_prompts = ["In a world where everyone's memories can be bought and sold, a character discovers a black market for stolen memories.", "In a world where robots have taken over most jobs, describe the relationship between a human worker and their robot colleague.", "In a post-apocalyptic world, a survivor finds a journal with cryptic entries detailing the location of a hidden paradise. Write a story about their journey to find it.", "Create a world where music has magical properties, and a talented musician discovers that their melodies can heal or harm, depending on their intentions.", "In a society governed by an oppressive AI, write a story about a hacker who discovers a way to bypass the AI's control and plans to liberate the people.", "In a future where technology controls every aspect of life, explore the journey of a person who chooses to live 'off the grid' to find genuine human connection and freedom.", "Create a dystopian society where people are assigned their professions at birth, and a person fights against their predetermined fate to pursue their true passion.","In the mystical Enchanted Forest, a courageous young adventurer embarks on a quest to find the lost 'Crystal Heart',' a powerful artifact of balance and harmony. Along the way, they encounter magical creatures, face challenges, and uncover secrets that will determine the fate of their world and beyond. Will they succeed in their quest and restore peace to the realms?","In a world where dreams come to life, a young dreamweaver discovers an ancient book of forgotten dreams. As they unlock its pages, they inadvertently release powerful and chaotic dreams into reality. Now, the dreamweaver must navigate through a fantastical realm filled with whimsical wonders and terrifying nightmares. Will they learn to control the dreams and restore order, or will the world be forever lost in a surreal and unpredictable fantasy?"]
    
    @State private var promptUser = "Click Generate"
    
    var body: some View {
        
        let randFantasyPrompt = fantasy_prompts.randomElement()!
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
                    promptUser = randFantasyPrompt
                    
                }
            }
            Spacer()
        }
    }
}


struct promptsfantasy_Previews: PreviewProvider {
    static var previews: some View {
        promptsfantasy()
    }
}
