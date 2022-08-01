//
//  ActionsheetBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 1/8/2565 BE.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    @State private var showActionsheet: Bool = false
    var body: some View {
        Button {
            showActionsheet.toggle()
        } label: {
            Text("Click Me")
        }
        .confirmationDialog(Text("This is an title"),
                            isPresented: $showActionsheet,
                            titleVisibility: .visible,
                            actions: {
            Button {
                
            } label: {
                Text("Cancel")
            }
            
            Button(role: .destructive) {
                
            } label: {
                Text("OK")
            }
            
        })
        
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
