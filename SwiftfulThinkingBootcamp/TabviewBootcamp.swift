//
//  TabviewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 4/8/2565 BE.
//

import SwiftUI

struct TabviewBootcamp: View {
    @State private var selection: Int = 0
    var body: some View {
        TabView(selection: $selection) {
            HomeView(selection: $selection)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)
            
            HeartView(selection: $selection)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Browse")
                }
                .tag(1)
        }
        .accentColor(.white)
        .tabViewStyle(.page)
    }
}

struct TabviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabviewBootcamp()
    }
}


struct HomeView: View {
    @Binding var selection: Int
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    selection = 1
                } label: {
                    Text("Go to Browse Tab")
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .foregroundColor(.red)

            }
        }
    }
}

struct HeartView: View {
    @Binding var selection: Int
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button {
                    selection = 0
                } label: {
                    Text("Go to Home Tab")
                }
                .padding()
                .background(.white)
                .cornerRadius(10)
                .foregroundColor(.blue)

            }
        }
    }
}
