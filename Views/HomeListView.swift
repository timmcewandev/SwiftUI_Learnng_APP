//
//  HomeListView.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/26/22.
//

import SwiftUI

struct HomeListView: View {
    var model: Module
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                LazyVStack {
                    ForEach(model.content.lessons) { content in
                        ZStack {
                            Rectangle()
                                .aspectRatio(CGSize(width: 200, height: 40), contentMode: .fit)
                                .cornerRadius(10)
                                .foregroundColor(.white)
                                .shadow(radius: 4)
                            Spacer()
                            HStack {
                                Text("\(content.id + 1)")
                                    .font(.largeTitle)
                                    .padding(.leading, 25)
                                Spacer()
                                VStack(alignment: .center) {
                                    Text(content.title)
                                        .fontWeight(.bold)
                                    
                                    Text(content.duration)
                                        .fontWeight(.regular)
                                        .font(Font.system(size: 14))
                                }
                                Spacer()
                            }
                        }
                    }
                }
                
                .padding()
                .navigationTitle(model.category + " Lessons")
            }
            
        }
        
    }
}

struct HomeListView_Previews: PreviewProvider {
    static var previews: some View {
        HomeListView(model: Module(id: 1, category: "Swift", content: Content(id: 0, image: "swift", time: "17 minutes", description: "Swift is a hard language", lessons: [Lessons(id: 1, title: "What is a var", video: "939wioe9e9", duration: "19 minutes", explanation: "Cats are killer")]), test: Test(id: 1, image: "swift", time: "18 minutes", description: "whatever whatever", questions: [Questions(id: 0, content: "What is swift", correctIndex: 1, answers: ["var", "let", "enum"])])))
    }
}
