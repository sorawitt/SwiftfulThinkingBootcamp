//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 13/7/2565 BE.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen. It is multiple lines and we weill align the text to the leading edge.")
        }
        .padding()
        .padding(.vertical, 30)
        .background(Color.white
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.3),
                    radius: 10, x: 0.0, y: 5))
        .padding(.horizontal, 10)
            //.frame(maxWidth: .infinity, alignment: .leading)
            //.background(Color.red)
            //.padding(.leading, 20)
            //.background(Color.yellow)
            //.padding()
            //.padding(.all, 10)
            //.background(Color.red)
            //.padding(.leading, 20)
            //.background(Color.blue)
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
