//
//  promptsmystery.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI


struct promptsmystery: View {
    
    let mystery_prompts = ["When a famous antique shop owner disappears, a local resident discovers a cryptic note pointing to a hidden treasure. They embark on a thrilling quest to unravel the mystery and find the missing owner. But as they follow the clues, they must beware of cunning deception. Will they succeed or be led astray?","During a harvest festival in a quaint village, a valuable heirloom disappears. A young sleuth must find the culprit and recover the cherished item before the festival ends. Will they solve the mystery in time?","Create a mystery involving a puzzle master who leaves riddles at the scene of each crime, challenging the detective to solve the case before the next crime occurs.","In a quaint coastal town, residents are shaken by a series of eerie events, each leaving behind cryptic messages seemingly directed at a single person. As the tension rises, a group of old friends, now estranged, is mysteriously drawn back together by an anonymous letter, each claiming to have information about the strange occurrences.","In a luxurious mansion, a renowned psychiatrist invites a select group of strangers to participate in a unique experiment. As they gather, the psychiatrist reveals they all share an unsettling connection from their past. The guests must confront their haunting pasts while navigating a series of mind-bending challenges within the mansion.","Write a mystery set in a haunted mansion where the ghost of a former resident is guiding the protagonist to uncover the truth about their death."]
    
    @State private var promptUser = "Click 'Generate'⬇️"
    
    var body: some View {
        
        let randMysteryPrompt = mystery_prompts.randomElement()!
        ZStack{
            Image("prompts_screen")
                               .resizable(resizingMode: .stretch)
                               .aspectRatio(contentMode: .fit)
            VStack {
               
                Spacer()
                
                Text(promptUser)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.984, brightness: 0.636))
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.trailing, 150.0)
                    .frame (width: 300.0, height: 200.0)
                    
                
                
                Spacer()
                Button("Generate") {
                    promptUser = randMysteryPrompt
                    
//                    NavigationStack {
//                        NavigationLink(destination: random_or_personalized()) {
//                            Text("Fantasy")
                }
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                
            }
            Spacer()
        }
    }
}

struct promptsmystery_Previews: PreviewProvider {
    static var previews: some View {
        promptsmystery()
    }
}
