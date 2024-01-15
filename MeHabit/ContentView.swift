//
//  ContentView.swift
//  MeHabit
//
//  Created by Leila on 1/11/24.
//

import SwiftUI

struct ContentView: View {
    @State private var data = Activities()
    @State private var addingNewHabit = false
    
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
            .toolbar {
                Button("Add new habit", systemImage: "plus") {
                    addingNewHabit.toggle()
                }
            }
            .sheet(isPresented: $addingNewHabit) {
                AddActivity(data: data)
            }
        }
    }
}

#Preview {
    ContentView()
}
