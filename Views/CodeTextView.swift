//
//  CodeTextView.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 4/18/23.
//

import SwiftUI

struct CodeTextView: UIViewRepresentable {
    @EnvironmentObject var model: ContentModel
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.isEditable = false
        return textView
    }
    
    func updateUIView(_ textView: UITextView, context: Context) {
        textView.attributedText = model.lessonDecription
        textView.scrollRangeToVisible(NSRange(location:0, length:0))
    }
    
}

struct CodeTextView_Previews: PreviewProvider {
    static var previews: some View {
        CodeTextView()
    }
}
