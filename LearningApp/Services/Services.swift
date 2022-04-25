//
//  Services.swift
//  LearningApp
//
//  Created by idan Cohen on 25/04/2022.
//

import Foundation

struct Services {
    
    
    static func getLocalData() -> [Topic] {
        
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if pathString != nil{
        
            let url = URL(fileURLWithPath: pathString!)
            do{
                let data = try Data(contentsOf: url)
                do{
                    let decoder = JSONDecoder()
                    let topics = try decoder.decode([Topic].self, from: data)
                    return topics
                }
                catch{
                    print("couldent create Json decoder")
                }
            }
            catch{
                print("error with creating data")
            }
            
        }
        return [Topic]()
    }
    
    
    
}
