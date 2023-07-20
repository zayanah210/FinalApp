//
//  promptsrandom.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptsrandom: View {
    
    let random_prompts = ["In a world where everyone's memories can be bought and sold, a character discovers a black market for stolen memories.", "In a world where robots have taken over most jobs, describe the relationship between a human worker and their robot colleague.", "In a post-apocalyptic world, a survivor finds a journal with cryptic entries detailing the location of a hidden paradise. Write a story about their journey to find it.", "Create a world where music has magical properties, and a talented musician discovers that their melodies can heal or harm, depending on their intentions.", "In a society governed by an oppressive AI, write a story about a hacker who discovers a way to bypass the AI's control and plans to liberate the people.","Write a story about a person who wakes up one morning to find that they have switched bodies with their pet.","In a whimsical town filled with talking animals and magical creatures, a friendly competition is underway to determine the silliest, wackiest, and funniest resident. Kids from all around the town eagerly sign up for the 'Craziest Capers Contest.'","Write a dialogue between two aliens who are trying to decipher the strange behavior of humans during a casual visit to Earth.","In a parallel universe, people have random, temporary superpowers based on the last thing they ate. Describe the hilarious adventures of a food-powered hero.","Character A suggests teaching Character B their hobby, unaware that Character B is a professional. However, Character B goes along with it for a while before revealing themselves.","Character A suggests going into a haunted mansion because they know Character B hates them. Little do they know that Character B always acts scared just so they can cling to Character A’s arms.","Character A, usually very intimidating and timid, shows up wearing a pink sweater and all their friends are confused and laugh. Later, Character B shows up and hugs Character A for wearing the sweater they spent a month on.","In the depths of an abandoned asylum, a group of friends stumbles upon an old, dusty journal containing cryptic messages and disturbing drawings. As they delve deeper into its eerie contents, they unknowingly awaken a malevolent presence that haunts their every step. Will they unravel the journal's secrets and escape the asylum, or will they become trapped in a nightmarish reality from which there is no escape? Your choice","A reclusive writer moves to a remote cabin for inspiration but discovers forbidden manuscripts that blur the line between imagination and reality. As they delve deeper, their sanity begins to unravel. Will they escape their own creation before it's too late?","Write a suspenseful thriller about a detective who becomes obsessed with solving a mysterious cold case that has haunted them for years.","When a famous antique shop owner disappears, a local resident discovers a cryptic note pointing to a hidden treasure. They embark on a thrilling quest to unravel the mystery and find the missing owner. But as they follow the clues, they must beware of cunning deception. Will they succeed or be led astray?","During a harvest festival in a quaint village, a valuable heirloom disappears. A young sleuth must find the culprit and recover the cherished item before the festival ends. Will they solve the mystery in time?","Create a mystery involving a puzzle master who leaves riddles at the scene of each crime, challenging the detective to solve the case before the next crime occurs.","In a quaint coastal town, residents are shaken by a series of eerie events, each leaving behind cryptic messages seemingly directed at a single person. As the tension rises, a group of old friends, now estranged, is mysteriously drawn back together by an anonymous letter, each claiming to have information about the strange occurrences.","Uncover the forgotten heroes and heroines of history, shedding light on their remarkable contributions and legacy. Let's delve into the life and legacy of Harriet Tubman, an iconic figure in history known for her bravery and efforts in leading enslaved people to freedom through the Underground Railroad during the 19th century.","In the mythical land of Eldoria, an ancient legend speaks of the Celestial Eclipse—a rare event when the two moons align, bathing the world in an ethereal glow. According to folklore, during this celestial convergence, an ancient portal opens, granting access to an otherworldly realm of untold power and magic. In your narrative, craft a fictional historical account that delves into the lore and significance of the Celestial Eclipse of your choosing.","Explore the groundbreaking discovery of penicillin, one of the most significant scientific breakthroughs in medical history. Craft a nonfiction narrative that delves into the life and work of Sir Alexander Fleming, the Scottish biologist, and pharmacologist responsible for the serendipitous find.","Explore the groundbreaking discovery of CRISPR-Cas9, a revolutionary gene-editing technology that has the potential to transform medicine and biotechnology. Craft a nonfiction narrative that delves into the history of CRISPR-Cas9, from its initial identification as a bacterial immune system to its application as a precise and versatile tool for genetic modification."]
    
    @State private var promptUser = "Click 'Generate'⬇️"
    
    var body: some View {
        
        let randRandomPrompt = random_prompts.randomElement()!
        ZStack{
            Image("prompts_screen")
                               .resizable(resizingMode: .stretch)
                               .aspectRatio(contentMode: .fit)
            VStack {
               
                Spacer()
                
                Text(promptUser)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.938, saturation: 0.945, brightness: 0.754))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.trailing, 150.0)
                    .frame (width: 300.0, height: 200.0)

                
                
                Spacer()
                  
                Button("Generate") {
                    promptUser = randRandomPrompt
                    
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
    
struct promptsrandom_Previews: PreviewProvider {
    static var previews: some View {
        promptsrandom()
    }
}
