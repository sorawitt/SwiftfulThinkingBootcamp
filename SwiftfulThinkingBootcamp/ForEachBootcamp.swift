//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 13/7/2565 BE.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Kong", "Bell"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices, id: \.self) { index in
                Text("NEW ITEM: \(data[index])")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
