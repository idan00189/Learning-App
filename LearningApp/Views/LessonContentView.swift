//
//  LessonContentView.swift
//  LearningApp
//
//  Created by idan Cohen on 26/04/2022.
//

import SwiftUI

struct LessonContentView: View {
    @EnvironmentObject var model : TopicModel
    var topicid : Int
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct LessonContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonContentView(topicid: 0)
            .environmentObject(TopicModel())
    }
}
