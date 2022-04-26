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
    var leassonORtests : String
    var time : String
    var body: some View {
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .shadow(color: .gray, radius: 5, x: -2, y: 2)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            
            HStack(){
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                    .padding(.leading , 10)
                    
                VStack(alignment: .leading){
                    
                    Text(category)
                        .bold()
                        .font(Font.system(size: 20))
                        
                    
                    Text(description)
                        .font(.caption)
                        .padding(.bottom, 10.0)
                        
                        
                        
                        
                        
                    
                    HStack{
                        
                        HStack(spacing: 5){
                        Image(systemName: "text.book.closed")
                        Text(leassonORtests)
                            .font(.caption)
                        }
                        HStack(spacing: 5){
                        Image(systemName: "clock")
                        Text(time)
                            .font(.caption)
                        }
                    }
                    
                    
                    
                }.padding(.horizontal)
                
                
                
            }
                
            
            
        }
        .padding(.horizontal)
        
        
        
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview(image: "swift", category: "swift", description: "some descriptionkdn fdkngkdfng dkgndkgmkdg gknf kldmfnskjfnsd osdinfgoisfgniodfjgoidf ionfdngoefo oingoif nodngjnfgn fgjnhb", leassonORtests: " 10 lessons", time: "3 houers")
    }
}
