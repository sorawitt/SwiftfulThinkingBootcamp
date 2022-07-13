//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 13/7/2565 BE.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack -> Vertical
    // HStack -> Hotizontal
    // ZStack -> zIntdex (back to front)
    var body: some View {
//        HStack(alignment: .bottom, spacing: 0) {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 120, height: 120)
//
//            Rectangle()
//                .fill(Color.orange)
//                .frame(width: 100, height: 100)
//        }
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150, alignment: .center)
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.black)
//        }
        
        VStack(alignment: .center, spacing: 20) {
            Text("5")
                .font(.largeTitle)
                .underline()
            
            Text("Items in your cart:")
                .font(.caption)
                .foregroundColor(.gray)
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
