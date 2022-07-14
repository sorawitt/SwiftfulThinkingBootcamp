//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 14/7/2565 BE.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool = false
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "STARTING STATE!!!" : "ENDING STATE.")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 45.0)
                .fill(isStartingState ? .blue : .red)
                .frame(width: 200, height: 100)
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
