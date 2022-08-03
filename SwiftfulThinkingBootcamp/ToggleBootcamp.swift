//
//  ToggleBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 3/8/2565 BE.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State private var toggleIsOn: Bool = false
    var body: some View {
        Toggle(isOn: $toggleIsOn) {
            Text("Label")
        }
        .toggleStyle(.button)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
