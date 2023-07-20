//
//  TextFile1.swift
//  FinalApp
//
//  Created by scholar on 7/20/23.
//

import SwiftUI

struct TextFile1: View {
    @State var textvar = "type here"
    @State var yourprompt = ""
    var body: some View {
        ZStack {
            Image("text_file_base")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            
            
            VStack {
                
                TextField("Your prompt here", text: $yourprompt, axis: .vertical)
                    .frame(height: 100)
                
            }
            .padding(.bottom, 380.0)
            .padding(.leading, 120.0)
            VStack {
                
                TextField(textvar, text: $textvar, axis: .vertical)
                    .frame(width: 250.0, height: 700.0)
                    .font(.caption)
                
            }
            
            
            VStack {

                Button(action: {
                                    textvar = ""
                                }) {
                                    Text("delete")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                }
                
            }
            .padding(.top, 520.0)
            .padding(.leading, 290.0)
        }
        .padding(.leading)
        .padding(.bottom, 10)
    }
}

struct TextFile1_Previews: PreviewProvider {
    static var previews: some View {
        TextFile1()
    }
}
