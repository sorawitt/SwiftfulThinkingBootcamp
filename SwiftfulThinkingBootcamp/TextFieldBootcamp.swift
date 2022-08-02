//
//  TextFieldBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 2/8/2565 BE.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State private var textFieldText: String = ""
    @State private var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                TextField("Type something here...",
                          text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.3).cornerRadius(10))
                .foregroundColor(.red)
                .font(.headline)
                
                Button {
                    save()
                } label: {
                    Text("Press me.")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                }
                
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func save() {
        dataArray.append(textFieldText)
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
