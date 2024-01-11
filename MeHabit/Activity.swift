//
//  Activity.swift
//  MeHabit
//
//  Created by Leila on 1/11/24.
//

import Foundation

struct Activity: Codable, Equatable, Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var competionCount = 0
    
    static let example = Activity(title: "Example Activity", description: "Test Activity")
}
