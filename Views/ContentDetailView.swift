//
//  ContentDetailView.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 4/9/23.
//

import SwiftUI

struct ContentDetailView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        let lesson = model.currentLesson
        Text(lesson?.title ?? "Bogus")
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
            .environmentObject(ContentModel())
    }
}
