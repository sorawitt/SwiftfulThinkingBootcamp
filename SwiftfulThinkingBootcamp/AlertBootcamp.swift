//
//  AlertBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 1/8/2565 BE.
//

import SwiftUI

struct AlertBootcamp: View {
    @State private var showAlert: Bool = false
    @State private var bgColor: Color = .white
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            Button {
                showAlert.toggle()
            } label: {
                Text("Change Color")
            }.alert(Text("Error"), isPresented: $showAlert) {
                Button(role: .cancel) {
                } label: {
                    Text("Cancel")
                }
                Button(role: .destructive) {
                    bgColor = .yellow
                } label: {
                    Text("OK")
                }
            } message: {
                Text("Unable to find location")
            }
        }

    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
