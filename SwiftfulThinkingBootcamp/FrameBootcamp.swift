//
//  FrameBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 12/7/2565 BE.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World! Hello again!")
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.pink)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.blue)
            .frame(height: 400)
            .background(Color.yellow)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.purple)
            //.frame(width: 300, height: 300, alignment: .leading)
            //.background(Color.red)
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            //.background(Color.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
