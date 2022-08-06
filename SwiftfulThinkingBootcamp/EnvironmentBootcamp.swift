//
//  EnvironmentBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Sorawit Trutsat on 6/8/2565 BE.
//

import SwiftUI

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        dataArray.append("iPhone")
        dataArray.append("iPad")
        dataArray.append("iMac")
    }
    
    func updateVM() {
        dataArray.append("Update by ObservedObject")
    }
}

struct EnvironmentBootcamp: View {
    @StateObject private var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    let selectedItem: String
    
    var body: some View {
        ZStack {
            // background
            Color.orange.edgesIgnoringSafeArea(.all)
            
            // foreground
            
            VStack {
                
                NavigationLink {
                    FinalView()
                } label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(30)
                }
            }

        }
    }
}

struct FinalView: View {
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(gradient: Gradient(colors: [.pink, .orange]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                            .font(.title)
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct EnvironmentBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentBootcamp()
    }
}
