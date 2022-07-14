//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 14/7/2565 BE.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title: String = "This is my title"
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                title = "BUTTON WAS PRESSED"
            }
            .tint(.red)
            
            Button {
                title = "Button #2 was pressed"
            } label: {
                HStack {
                    Image(systemName: "heart.fill")
                    Text("Press me!")
                        .font(.headline)
                        .fontWeight(.semibold)
                }
                .padding(.all, 10)
                .foregroundColor(.white)
                .background(Color.blue.cornerRadius(10))
            }
        }
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
