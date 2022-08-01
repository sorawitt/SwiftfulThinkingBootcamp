//
//  ContextMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 1/8/2565 BE.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State private var bgColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Sorawit")
                .font(.headline)
            Text("Menu")
                .font(.subheadline)
        }
        .padding(20)
        .foregroundColor(.white)
        .background(bgColor)
        .cornerRadius(20)
        .contextMenu {
            Button("Pink") {
                bgColor = .pink
            }
            Button("Blue") {
                bgColor = .blue
            }
            Button("Green") {
                bgColor = .green
            }
        }
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
