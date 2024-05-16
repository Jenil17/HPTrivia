//
//  Instructions.swift
//  HP Trivia
//
//  Created by Jenil Jariwala on 2024-05-07.
//

import SwiftUI

struct Instructions: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        ZStack{
           InfoBackgroundImage()
            VStack{
                Image("appiconwithradius")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .padding(.top)
                
                ScrollView{
                    Text("How to Play")
                        .font(.largeTitle)
                        .padding()
                    
                    VStack(alignment: .leading){
                            Text("Welcome to HP Trivia! In this game, you will be asked random questions from the HP books and you must guess the right answer or you will lose points!")
                            .padding([.horizontal, .bottom])
                        
                        Text("Each question is worth 5 points, but if you  guess a wrong answerm you loose 1 point.")
                            .padding([.horizontal, .bottom])
                        
                        Text("If you are struggling with a question, there is an option to reveal ahint or reveal the book that answer the question and they will be added to your total score")
                            .padding([.horizontal, .bottom])
                        
                        Text("When you select the correct answer, you will be awarded all the point left for that question and they will be added tio your total score.")
                            .padding(.horizontal)
                    }
                    Text("Good Luck!")
                        .font(.title)
                }
                .foregroundColor(.black)
                Button("Done"){
                    dismiss()
                }
                .doneButton()
               
            }
            .font(.title3)
        }
        
    }
        
}

#Preview {
    Instructions()
}
