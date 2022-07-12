//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 12/7/2565 BE.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
                //LinearGradient(gradient: Gradient(colors: [.red, .orange]),
                               //startPoint: .top,
                               //endPoint: .bottom)
                //RadialGradient(gradient: Gradient(colors: [.blue, .green]),
                               //center: .center,
                               //startRadius: 5,
                               //endRadius: 200)
                AngularGradient(gradient: Gradient(colors: [.blue, .pink]), center: .center, angle: .degrees(45))
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
