//
//  ContentView.swift
//  MeHabit
//
//  Created by Leila on 1/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var data = Activities()
    
    var body: some View {
        NavigationStack {
            List(data.activities) { activity in
                NavigationLink {
                    Text("Detail view")
                } label: {
                    HStack {
                        Text(activity.title)
                        Spacer()
                        Text(String(activity.competionCount))
                    }
                }
            }
            .navigationTitle("MeHabit")
        }
    }
}

#Preview {
    ContentView()
}
