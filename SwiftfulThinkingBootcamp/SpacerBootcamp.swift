//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 13/7/2565 BE.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 100)
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
