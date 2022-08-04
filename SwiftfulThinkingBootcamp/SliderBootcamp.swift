//
//  SliderBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 4/8/2565 BE.
//

import SwiftUI

struct SliderBootcamp: View {
    @State private var sliderValue: Double = 3
    var body: some View {
        VStack {
            Text("rating:")
            Text("\(sliderValue)")
//            Slider(value: $sliderValue, in: 1...5)
            Slider(value: $sliderValue, in: 1...5, step: 1.0)
                .tint(.red)
                .padding()
        }
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
