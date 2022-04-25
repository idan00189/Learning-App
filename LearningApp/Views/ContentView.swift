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
            
            
            ScrollView{
                LazyVStack{
                    ForEach(model.topics){ topic in
                    
                    NavigationLink {
                        
                    } label: {
                        Preview(image: topic.content.image, category: topic.category, description: topic.content.description, leassonORtests: topic.content.lessons.count, time: topic.content.time)
                    }
                  
                        NavigationLink {
                            
                        } label: {
                            Preview(image: topic.test.image, category: topic.category, description: topic.test.description, leassonORtests: topic.test.questions.count, time: topic.test.time)
                        }
                }
                    
                }
                
                
                
                
            }.foregroundColor(.black)
            
            
        }.navigationTitle("Get Started")
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TopicModel())
    }
}
