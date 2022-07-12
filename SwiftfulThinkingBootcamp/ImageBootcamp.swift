//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 12/7/2565 BE.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("luca")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFill()
            .frame(width: 300, height: 300)
            //.foregroundColor(.red)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(Circle())
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
