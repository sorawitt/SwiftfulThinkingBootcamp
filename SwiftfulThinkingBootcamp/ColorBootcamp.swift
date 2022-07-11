//
//  ColorBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 11/7/2565 BE.
//

import SwiftUI

struct ColorBootcamp: View {
    var body: some View {
        Capsule(style: .circular)
            .fill(
                //Color.primary
                Color("CustomColor")
            )
            .frame(width: 300, height: 100)
            //.shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct ColorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootcamp()
            
            
    }
}
