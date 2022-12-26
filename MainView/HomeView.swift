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
                Text("What would you like to learn today")
                    .padding(.leading, 10)
                ScrollView {
                    LazyVStack {
                        ForEach(model.conentStore) { module in
                            VStack(spacing: 15.0) {
                                HomeViewRow(image: module.content.image, title: module.category, decription: module.content.description, count: module.content.lessons.count, time: module.content.time)
                                
                                HomeViewRow(image: module.test.image, title: module.category, decription: module.content.description, count: module.content.lessons.count, time: module.content.time)
                                
                                
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("Get Started")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
    }
}
