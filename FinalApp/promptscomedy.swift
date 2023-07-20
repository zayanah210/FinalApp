//
//  promptscomedy.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptscomedy: View {
    
    let comedy_prompts = ["Write a story about a person who wakes up one morning to find that they have switched bodies with their pet.","In a whimsical town filled with talking animals and magical creatures, a friendly competition is underway to determine the silliest, wackiest, and funniest resident. Kids from all around the town eagerly sign up for the 'Craziest Capers Contest.'","Write a dialogue between two aliens who are trying to decipher the strange behavior of humans during a casual visit to Earth.","In a parallel universe, people have random, temporary superpowers based on the last thing they ate. Describe the hilarious adventures of a food-powered hero.","Write a story about a group of misfit ghosts who are terrible at haunting and try to scare a skeptic living in their haunted house.","Write a series of humorous diary entries from the perspective of a house cat, documenting their daily life and observations of their human family.","In a not-so-distant future, the world faces a peculiar and comically bizarre predicament. An eccentric scientist accidentally creates a device that alters the laws of physics, leading to hilarious and darkly humorous consequences.","Create a humorous dialogue between a self-aware computer program and its frustrated user.","In a futuristic society where robots serve as personal assistants, write a funny story about a quirky robot that develops a sarcastic but dangerous personality.","In a satirical world of magic and technology, a misfit group of students attends an unconventional academy with absurd courses like 'Witchcraft for Accountants' and 'Zombie Marketing.' Follow their darkly humorous journey through outlandish lessons, eccentric faculty, and unexpected friendships. Hilarity ensues as the absurd meets the fantastical in this quirky and whimsical academy."]
    
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
                    .frame (width: 300.0, height: 200.0)
                
                
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


struct promptscomedy_Previews: PreviewProvider {
    static var previews: some View {
        promptscomedy()
    }
}
