//
//  ContentView.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 1/10/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var module: ContentModel
    var body: some View {
        ScrollView {
            LazyVStack {
                if module.currentModule != nil {
                    ForEach(0..<module.currentModule!.content.lessons.count) { index in
                        NavigationLink {
                            ContentDetailView()
                                .onAppear {
                                    module.beginLesson(index)
                                }
                        } label: {
                            ContentViewRow(index: index)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
