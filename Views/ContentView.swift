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
                    ForEach((module.currentModule!.content.lessons)) {lesson in
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(height: 66)
                            HStack {
                                Spacer()
                                Text("\(lesson.id + 1)")
                                Spacer()
                                VStack {
                                    Text(lesson.title)
                                    Text(lesson.duration)
                                }
                                Spacer()
                            }
                        }
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
