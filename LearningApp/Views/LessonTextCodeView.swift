//
//  LessonTextCodeView.swift
//  LearningApp
//
//  Created by idan Cohen on 26/04/2022.
//

import SwiftUI

struct LessonTextCodeView: UIViewRepresentable {
    @EnvironmentObject var model : TopicModel
    var nsss : NSAttributedString
    
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        
        return textView
    }
    
    func updateUIView(_ textView: UITextView, context: Context) {
        textView.attributedText = nsss
        textView.scrollRectToVisible(CGRect(x: 0, y: 0, width: 1, height: 1), animated: false)
    }
}
/*struct LessonTextCodeView_Previews: PreviewProvider {
    static var previews: some View {
        LessonTextCodeView()
            .environmentObject(TopicModel())
    }
}
*/
