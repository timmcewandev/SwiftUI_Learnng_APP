//
//  ContentView.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/23/22.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("What would you like to learn")
                    .padding(.leading, 20)
                ScrollView {
                    LazyVStack {
                        ForEach(model.modules) { module in
                            NavigationLink {
                                ContentView()
                                    .onAppear {
                                        model.beginModuleID(module.id)
                                    }
                            } label: {
                                HomeViewRow(image: module.content.image, category: module.category, description: module.content.description, countOflessons: module.content.lessons.count, timeOfLessons: module.content.time)
                            }.foregroundColor(.black)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Get Started")
            .navigationBarTitleDisplayMode(.large)
        }.navigationViewStyle(.stack)
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
