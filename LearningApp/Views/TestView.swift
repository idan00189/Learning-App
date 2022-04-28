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
    @State var questionid = 0
    @State var selectedIndex :Int?
    @State var isSubmites = false
    
    var body: some View {
        
        VStack(){
            
            Text("Question \(String(questionid + 1)) of \(String(model.topics[topicid].test.questions.count))")
                .padding()
            
            LessonTextCodeView(nsss: model.AddStyling(model.topics[topicid].test.questions[questionid].content))
                
            ForEach(0..<model.topics[topicid].test.questions[questionid].answers.count){ index in
                
                
                VStack(spacing: 20){
                        Button {
                            model.testSelectedIndex = index
                        } label: {
                            ZStack{
                                RecCard(color: index == model.testSelectedIndex ? .gray : .white)
                                    .frame( height: 40)
                                
                                
                                Text(model.topics[topicid].test.questions[questionid].answers[index])
                            }
                        }.disabled(model.testIsSubmited ?? false)
                        

                        
                        
                            
                }.padding(.vertical, 5.0)
                
                
            
            }
            Button {
                model.testIsSubmited = true
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
            .disabled(model.testSelectedIndex == nil)
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
