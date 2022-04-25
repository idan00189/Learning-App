//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by idan Cohen on 25/04/2022.
//

import SwiftUI

@main
struct LearningAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(TopicModel())
        }
    }
}
