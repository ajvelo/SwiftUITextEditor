//
//  ContentView.swift
//  SwiftUITextEditor
//
//  Created by Andreas Velounias on 29/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var text = ""
    @State private var wordCount: Int = 0
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            TextEditor(text: $text)
                .font(.title)
                .lineSpacing(24)
                .accessibility(identifier: "textedit")
                .disableAutocorrection(true)
                .padding()
                .onChange(of: text) { value in
                    let words = text.split {
                        $0 == " " || $0.isNewline
                    }
                    self.wordCount = words.count
                }
            
            Text("\(wordCount) words")
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.trailing)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
