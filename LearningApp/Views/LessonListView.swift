//
//  LessonListView.swift
//  LearningApp
//
//  Created by idan Cohen on 26/04/2022.
//

import SwiftUI

struct LessonListView: View {
    @EnvironmentObject var model : TopicModel
    var topicid : Int
    var body: some View {
        
        ScrollView{
            
            VStack(spacing: 15.0){
                
                ForEach(0..<model.topics[topicid].content.lessons.count){ index in
                    NavigationLink {
                        LessonContentView(topicid: topicid, lessonid: index)
                    } label: {
                        ZStack{
                            Rectangle()
                                .frame(height: 75, alignment: .center)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                         
                            HStack(alignment: .top){
                                
                                Text(String(index + 1))
                                    .font(.body)
                                    .fontWeight(.bold)
                                    .padding()
                                    
                                    
                                
                                VStack(alignment: .leading, spacing: 5.0){
                                    
                                    Text(model.topics[topicid].content.lessons[index].title)
                                        .fontWeight(.bold)
                                    
                                    Text(model.topics[topicid].content.lessons[index].duration)
                                        .font(.headline)
                                        .fontWeight(.light)
                                }
                                Spacer()
                                
                            }
                            
                            
                        }
                    }.foregroundColor(.black)

                    
                    
                }
                
            }
            .navigationBarTitle("Learn \(model.topics[topicid].category)")
            .padding()
            
        }
        
    }
}

struct LessonListView_Previews: PreviewProvider {
    static var previews: some View {
        LessonListView(topicid: 0)
            .environmentObject(TopicModel())
    }
}
