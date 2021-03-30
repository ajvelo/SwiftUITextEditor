//
//  ContentView.swift
//  SwiftUITextEditor
//
//  Created by Andreas Velounias on 29/03/2021.
//

import SwiftUI
import LoremIpsum

struct ContentView: View {
    @State private var text = ""
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TextEditor(text: $text)
                .font(.body)
                .lineSpacing(16)
                .accessibility(identifier: "texteditor")
                .disableAutocorrection(true)
                .padding()
            
            Text("\(text.wordCount()) words")
                .font(.headline)
                .accessibility(identifier: "wordcount")
                .foregroundColor(.secondary)
                .padding(.trailing)
        }
        
        Button("Add random paragraph") {
            text.append(String.loremIpsum(paragraphs: 1))
        }.accessibility(identifier: "generateparagraphbtn")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
