//
//  RecCard.swift
//  LearningApp
//
//  Created by idan Cohen on 27/04/2022.
//

import SwiftUI

struct RecCard: View {
    var color : Color
    var body: some View {
        
        Rectangle()
            .cornerRadius(10)
            .shadow(radius: 5)
            .foregroundColor(color)
    }
}

