//
//  promptshistorical.swift
//  FinalApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct promptshistorical: View {
    
    let historical_prompts = ["Uncover the forgotten heroes and heroines of history, shedding light on their remarkable contributions and legacy. Let's delve into the life and legacy of Harriet Tubman, an iconic figure in history known for her bravery and efforts in leading enslaved people to freedom through the Underground Railroad during the 19th century.","In the mythical land of Eldoria, an ancient legend speaks of the Celestial Eclipse—a rare event when the two moons align, bathing the world in an ethereal glow. According to folklore, during this celestial convergence, an ancient portal opens, granting access to an otherworldly realm of untold power and magic. In your narrative, craft a fictional historical account that delves into the lore and significance of the Celestial Eclipse of your choosing."]
    
    @State private var promptUser = "Click 'Generate'⬇️"
    
    var body: some View {
        
        let randHistoricalPrompt = historical_prompts.randomElement()!
        ZStack{
            Image("prompts_screen")
                               .resizable(resizingMode: .stretch)
                               .aspectRatio(contentMode: .fit)
            VStack {
               
                Spacer()
                
                Text(promptUser)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(hue: 0.682, saturation: 0.782, brightness: 0.786))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.trailing, 150.0)
                    .frame (width: 300.0, height: 200.0)
                
                
                Spacer()
                Button("Generate") {
                    promptUser = randHistoricalPrompt
                    
//                    NavigationStack {
//                        NavigationLink(destination: random_or_personalized()) {
//                            Text("Fantasy")
                }
                .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .controlSize(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/2.0/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
    }
}
    


struct promptshistorical_Previews: PreviewProvider {
    static var previews: some View {
        promptshistorical()
    }
}
