//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 11/7/2565 BE.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        Capsule(style: .circular)
        //Rectangle()
        //RoundedRectangle(cornerRadius: 100)
            //.fill(Color.green)
            .foregroundColor(.pink)
            //.stroke(Color.red)
            //.stroke(Color.green, lineWidth: 20)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [10, 50, 30]))
            //.trim(from: 0.45, to: 1.0)
            //.stroke(Color.pink, lineWidth: 50)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
