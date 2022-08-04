//
//  StepperBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 4/8/2565 BE.
//

import SwiftUI

struct StepperBootcamp: View {
    @State private var value: Int = 10
    var body: some View {
        Stepper("Stepper: \(value)", value: $value)
            .padding(50)
            .background(.black)
            .foregroundColor(.white)
            .tint(.white)
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
