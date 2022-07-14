//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 14/7/2565 BE.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.flexible(), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
    ]
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 1")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.blue)
                            .padding()
                    }
                    
                    Section {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    } header: {
                        Text("Section 2")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.red)
                            .padding()
                    }
                }
//            LazyVGrid(columns: columns) {
//
//            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
