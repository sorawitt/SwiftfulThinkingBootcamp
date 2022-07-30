//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 30/7/2565 BE.
//

import SwiftUI

// Sheet
// Transition
// Animations

struct PopoverBootcamp: View {
    @State private var showPopup: Bool = false
    
    var body: some View {
        ZStack {
            Color
                .pink
                .edgesIgnoringSafeArea(.all)
            
            Button {
                withAnimation(.spring()) {
                    showPopup.toggle()
                }
            } label: {
                Text("Press Me!")
            }
            // METHOD 1: Sheet
//            .sheet(isPresented: $showPopup) {
//                MySecondPopoverView(showPopover: $showPopup)
//            }
            
            // METHOD 2: Transition
//            ZStack {
//                if showPopup {
//                    MySecondPopoverView(showPopover: $showPopup)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD 3: Animation Offset
            
            MySecondPopoverView(showPopover: $showPopup)
                .offset(y: showPopup ? 0 : UIScreen.main.bounds.height)

        }
    }
}

struct MySecondPopoverView: View {
    @Binding var showPopover: Bool
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color
                .green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                withAnimation(.spring()) {
                    showPopover.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
                    .padding(.top, 10)
            }
        }
    }
}

struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
    }
}
