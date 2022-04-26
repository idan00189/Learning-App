//
//  TopicModel.swift
//  LearningApp
//
//  Created by idan Cohen on 25/04/2022.
//

import Foundation
class TopicModel : ObservableObject {
    
    @Published var topics : [Topic]
    @Published var navigationid : Int?
    
    
    init() {
        
        self.topics = Services.getLocalData()
        self.topics += Services.getRemoteData()
        
    }
    
    func AddStyling(_ htmlString : String) -> NSAttributedString {
        
        var resultString = NSAttributedString()
        
        let styledata  = Bundle.main.url(forResource: "style", withExtension: "html")
        if styledata != nil{
            do{
                var data = try Data(contentsOf: styledata!)
                data.append(Data(htmlString.utf8))
                
                if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                    resultString = attributedString
                }
                
            }
            catch{
                print("idan")
            }
            
        }
        
        
        
        
        return resultString
        
    }
    
    
}
