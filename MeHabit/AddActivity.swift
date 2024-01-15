//
//  AddActivity.swift
//  MeHabit
//
//  Created by Leila on 1/14/24.
//

import SwiftUI

struct AddActivity: View {
    var data: Activities
    
    @State private var title = ""
    @State private var description = ""
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Title", text: $title)
                TextField("Description", text: $description)
            }
            .navigationTitle("Add habit")
            .toolbar {
                Button("Save") {
                    let trimmedTitle = title.trimmingCharacters(in: .whitespaces)
                    guard trimmedTitle.isEmpty == false else { return }
                    
                    let activity = Activity(title: trimmedTitle, description: description)
                    data.activities.append(activity)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddActivity(data: Activities())
}
