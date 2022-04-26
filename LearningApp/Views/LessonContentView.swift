//
//  LessonContentView.swift
//  LearningApp
//
//  Created by idan Cohen on 26/04/2022.
//

import SwiftUI
import AVKit

struct LessonContentView: View {
    @EnvironmentObject var model : TopicModel
    var topicid : Int
    @State var lessonid : Int
    var body: some View {
        VStack(alignment: .leading){
            
            let urlString = Services.videoHostUrl + model.topics[topicid].content.lessons[lessonid].video
            let url = URL(string: urlString)
            if url != nil {
                let avPlayer = AVPlayer(url: url!)
                VideoPlayer(player: avPlayer)
                    .cornerRadius(10)
                    .padding()
            }
            
            LessonTextCodeView(nsss: model.AddStyling(model.topics[topicid].content.lessons[lessonid].explanation))
            
            Button {
                if lessonid + 1 < model.topics[topicid].content.lessons.count {
                    lessonid += 1
                }
                else{
                    model.navigationid = nil
                }
            } label: {
                ZStack{
                Rectangle()
                    .frame(height: 75, alignment: .center)
                    .cornerRadius(10)
                    .foregroundColor(.green)
                    .shadow(radius: 5)
                if lessonid + 1 < model.topics[topicid].content.lessons.count {
                    Text("Next Lesson : \(model.topics[topicid].content.lessons[lessonid+1].title)")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        
                }
                    else{
                        Text("Complete")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                }
            }.padding()
                

            
        
            
    }.navigationBarTitle(model.topics[topicid].content.lessons[lessonid].title)
}

struct LessonContentView_Previews: PreviewProvider {
    static var previews: some View {
        LessonContentView(topicid: 0 , lessonid: 0)
            .environmentObject(TopicModel())
    }
}
}
