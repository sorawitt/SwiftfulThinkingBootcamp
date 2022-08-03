//
//  TextEditorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 3/8/2565 BE.
//

import SwiftUI

struct TextEditorBootcamp: View {
    @State private var textEditerText: String = "This is start text.."
    @State private var saveText: String = ""
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditerText)
                    .frame(height: 200)
                    .cornerRadius(10)
                Button {
                    saveText = textEditerText
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                }
                
                Text(saveText)
                
                Spacer()

            }
            .padding()
            .background(.green)
            .navigationTitle("Text Editor Bootcamp")
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
