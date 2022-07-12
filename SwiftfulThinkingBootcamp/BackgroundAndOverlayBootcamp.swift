//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 12/7/2565 BE.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(
        //                //Color.red
        //                //LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing)
        //                Circle()
        //                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .trailing, endPoint: .leading))
        //                    .frame(width: 100, height: 100, alignment: .center)
        //            )
        //
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 120, height: 120, alignment: .center)
        //            )
        //        Circle()
        //            .fill(Color.pink)
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.blue)
        //                    .frame(width: 110, height: 110)
        //            )
        
        //        Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(alignment: .bottomTrailing) {
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 50, height: 50)
        //            }
        //            .background(alignment: .topLeading) {
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 150, height: 150)
        //            }
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))]), startPoint: .bottomTrailing, endPoint: .topLeading))
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .blue, radius: 10, x: 0.0, y: 0.0)            .overlay(
                        alignment: .bottomTrailing) {
                            Circle()
                                .fill(.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                )
                        }
            )
        
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
