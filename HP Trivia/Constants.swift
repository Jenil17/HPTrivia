//
//  Constants.swift
//  HP Trivia
//
//  Created by Jenil Jariwala on 2024-05-02.
//

import Foundation
import SwiftUI

enum Constants{
    static let hpFont = "PartyLetPlain"	
    static let previewQuestion = try! JSONDecoder().decode([Question].self, from: Data(contentsOf: Bundle.main.url(forResource: "trivia", withExtension: "json")!))[0]
    
}
struct InfoBackgroundImage: View{
    var body: some View{
        Image("parchment")
            .resizable()
            .ignoresSafeArea()
            .background(.brown)
    }
}
extension Button{
    func doneButton() -> some View{
        self
            .font(.largeTitle)
            .padding()
            .buttonStyle(.borderedProminent)
            .tint(.brown)
            .foregroundColor(.white)
    }
}
// Thanks paul hudson
extension FileManager{
    static var documentsDirectory: URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
