//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 30/7/2565 BE.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State private var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button") {
                    withAnimation(.spring()) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .opacity))
//                    .transition(.move(edge: .bottom))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
