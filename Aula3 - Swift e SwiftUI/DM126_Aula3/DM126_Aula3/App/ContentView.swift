//
//  ContentView.swift
//  DM126_Aula3
//
//  Created by user270232 on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
            Divider()
            ScrollView {
                VStack(spacing: 30) {
                    FeatureGrid()
                    CarouselTabView().frame(height: 300)
                    GoalContainer()
                }
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
