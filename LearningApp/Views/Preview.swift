//
//  Preview.swift
//  LearningApp
//
//  Created by idan Cohen on 25/04/2022.
//

import SwiftUI

struct Preview: View {
    var image : String
    var category : String
    var description : String
    var leassonORtests : Int
    var time : String
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack(spacing: 10.0){
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                    
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Learn\(category)")
                        .bold()
                        .font(Font.system(size: 20))
                        
                    
                    Text(description)
                        .font(.caption)
                        .padding(.bottom , 10)
                        
                        
                        
                        
                    
                    HStack{
                        
                        Image(systemName: "text.book.closed")
                        Text("\(String(leassonORtests)) Lessons")
                            .font(.caption)
                        Spacer()
                        Image(systemName: "clock")
                        Text(time)
                            .font(.caption)
                        Spacer()
                    }
                    
                    
                    
                }.padding(.horizontal)
                
                
            }.padding(.horizontal)
                
            
            
        }
        
        
        
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview(image: "swift", category: "swift", description: "some description", leassonORtests: 10, time: "3 houers")
    }
}
