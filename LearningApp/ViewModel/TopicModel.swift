//
//  TopicModel.swift
//  LearningApp
//
//  Created by idan Cohen on 25/04/2022.
//

import Foundation
class TopicModel : ObservableObject {
    
    @Published var topics : [Topic]
    @Published var navigationid = 0
    
    
    init() {
        
        self.topics = Services.getLocalData()
        
        
    }
    
    
}
