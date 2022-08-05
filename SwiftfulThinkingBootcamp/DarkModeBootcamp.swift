//
//  DarkModeBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 5/8/2565 BE.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    Text("This color is globally ADAPTIVE")
                        .foregroundColor(Color("AdaptiveColor"))
                    Text("This color is locally ADAPTIVE")
                        .foregroundColor(colorScheme == .light ? .red : .green)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
