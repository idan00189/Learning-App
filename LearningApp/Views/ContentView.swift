//
//  ContentView.swift
//  LearningApp
//
//  Created by idan Cohen on 25/04/2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model : TopicModel
    var body: some View {
        
        NavigationView{
            VStack(alignment: .leading){
                Text("What would you like to learn today?")
                    .padding(.leading)
            ScrollView{
                LazyVStack(spacing : 15){
                    
                    ForEach(model.topics){ topic in
                    
                    NavigationLink {
                        LessonListView(topicid: topic.id)
                    } label: {
                        Preview(image: topic.content.image, category: "learn \(topic.category)", description: topic.content.description, leassonORtests:"\(String( topic.content.lessons.count)) lessons", time: topic.content.time)
                        
                            
                    }
                        
                  
                        NavigationLink {
                            
                        } label: {
                            Preview(image: topic.test.image, category: "\(topic.category) Test", description: topic.test.description, leassonORtests: "\(String( topic.test.questions.count)) question", time: topic.test.time)
                                
                        }
                }
                    
                }
                
                
                
                
            }.foregroundColor(.black)
                    
                
            }.navigationTitle("Get Started")
                
                
                
            
            
        }.navigationViewStyle(.stack)
            
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TopicModel())
    }
}
