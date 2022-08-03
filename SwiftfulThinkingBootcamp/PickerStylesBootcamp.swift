//
//  PickerStylesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 3/8/2565 BE.
//

import SwiftUI

struct PickerStylesBootcamp: View {
    @State private var selection: String = "Most Recent"
    @State private var filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    var body: some View {
        Picker(selection: $selection) {
            ForEach(filterOptions, id: \.self) { filter in
                Text(filter)
                    .tag(filter)
            }
        } label: {
            Text("Filter: \(selection)")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(.blue)
                .cornerRadius(10)
                .shadow(color: .blue.opacity(0.3),
                        radius: 10, x: 0, y: 10)
        }
        .pickerStyle(.menu)
    }
}

struct PickerStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerStylesBootcamp()
    }
}
