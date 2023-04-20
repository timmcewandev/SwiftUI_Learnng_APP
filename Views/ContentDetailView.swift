//
//  ContentDetailView.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 4/9/23.
//

import SwiftUI
import AVKit

struct ContentDetailView: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        let lesson = model.currentLesson
        let url = URL(string: "\(Constants.baseGithubURL)\(lesson?.video ?? "")")
        VStack {
            if url != nil {
                VideoPlayer(player: AVPlayer(url: (url!)))
                    .cornerRadius(10)
                    .padding()
            }
            
            //Description on next Lesson
            CodeTextView()
            
            if model.isThereANextLesson() == true {
                //Button
                Button {
                    model.nextLesson()
                } label: {
                    
                    ZStack {
                        Rectangle()
                            .frame(height: 48)
                            .foregroundColor(.green)
                            .cornerRadius(10)
                        .shadow(radius: 5)
                        Text("Next Lesson: \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)").foregroundColor(.white).bold()
                    }.padding()
            }
            

        }
        
        
        }
        .navigationTitle(lesson?.title ?? "")
}
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
            .environmentObject(ContentModel())
    }
}
