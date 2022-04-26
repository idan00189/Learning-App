//
//  TestView.swift
//  LearningApp
//
//  Created by idan Cohen on 26/04/2022.
//

import SwiftUI

struct TestView: View {
    @EnvironmentObject var model : TopicModel
    var topicid : Int
    var questionid = 0
    @State var selectedIndex : Int?
    @State var isSubmites = false
    
    var body: some View {
        
        VStack(){
            
            Text("Question \(String(questionid + 1)) of \(String(model.topics[topicid].test.questions.count))")
                .padding()
            
            LessonTextCodeView(nsss: model.AddStyling(model.topics[topicid].test.questions[questionid].content))
                
            ForEach(0..<model.topics[topicid].test.questions[questionid].answers.count){ index in
                
                
                VStack(spacing: 20.0){
                        Button {
                            selectedIndex = index
                        } label: {
                            ZStack{
                            Rectangle()
                                .frame(height: 50)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                                
                                Text(model.topics[topicid].test.questions[questionid].answers[index])
                            }
                        }.disabled(isSubmites)

                        
                        
                            
                }.padding(.vertical, 5.0)
                
                
            
            }
            Button {
                isSubmites = true
            } label: {
                ZStack{
                Rectangle()
                    .frame(height: 48)
                    .cornerRadius(10)
                    .foregroundColor(.green)
                    .shadow(radius: 5)
                Text("Submit")
                        .bold()
                        .foregroundColor(.white)
                        
                }
                
            }
            .padding()
        }
        .foregroundColor(.black)
        .navigationTitle("\(model.topics[topicid].category) Test")
        .padding()
        }
        
        
    }


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(topicid: 0)
            .environmentObject(TopicModel())
    }
}
