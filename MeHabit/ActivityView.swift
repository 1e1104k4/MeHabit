//
//  ActivityView.swift
//  MeHabit
//
//  Created by Leila on 1/15/24.
//

import SwiftUI

struct ActivityView: View {
    var data: Activities
    var activity: Activity
    
    var body: some View {
        List {
            if activity.description.isEmpty == false {
                Section {
                    Text(activity.description)
                }
            }
            Section {
                Text("Completion count: \(activity.competionCount)")
                Button("Mark Completed") {
                    var newActivity = activity
                    newActivity.competionCount += 1
                    
                    if let index = data.activities.firstIndex(of: activity) {
                        data.activities[index] = newActivity
                    }
                }
            }
        }
        .navigationTitle(activity.title)
    }
}

#Preview {
    ActivityView(data: Activities(), activity: .example)
}
