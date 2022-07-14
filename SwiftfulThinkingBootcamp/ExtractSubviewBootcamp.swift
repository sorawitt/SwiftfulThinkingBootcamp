//
//  ExtractSubviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 14/7/2565 BE.
//

import SwiftUI

struct ExtractSubviewBootcamp: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItemView(count: 1, title: "Apples", color: .red)
            MyItemView(count: 2, title: "Oranges", color: .orange)
        }
    }
}

struct ExtractSubviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewBootcamp()
    }
}

struct MyItemView: View {
    var count: Int
    var title: String
    var color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
