//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 12/7/2565 BE.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .resizable()
            //.aspectRatio(contentMode: .fill)
            .scaledToFill()
            //.font(.largeTitle)
            //.font(.system(size: 50))
            .foregroundColor(.pink)
            .frame(width: 300, height: 300)
            //.clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
