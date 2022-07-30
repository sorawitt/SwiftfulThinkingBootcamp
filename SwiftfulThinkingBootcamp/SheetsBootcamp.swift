//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 30/7/2565 BE.
//

import SwiftUI

// https://www.hackingwithswift.com/quick-start/swiftui/how-to-present-a-new-view-using-sheets

struct SheetsBootcamp: View {
    @State private var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color
                .green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Press Me!")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
//            .sheet(isPresented: $showSheet) {
//                MySecondView()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                MySecondView()
            }
        }
    }
}

struct MySecondView: View {
//    @Environment(\.presentationMode) var presentationMode
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color
                .red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                dismiss()
//                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .padding(.top)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
    }
}
