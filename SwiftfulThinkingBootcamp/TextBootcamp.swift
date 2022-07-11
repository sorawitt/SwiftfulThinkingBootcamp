//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 11/7/2565 BE.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        //Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot")
        Text("Hello World!".uppercased())
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
            //.underline(true, color: Color.red)
            //.italic()
            //.strikethrough()
            //.strikethrough(true, color: Color.green)
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            //.baselineOffset(50.0)
            //.kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(Color.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
