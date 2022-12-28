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
                    VStack {
                        ForEach(model.conentStore) { model in
                            VStack(spacing: 15.0) {
                                NavigationLink {
                                    HomeListView(model: model)
                                } label: {
                                    HomeViewRow()
                                }.foregroundColor(.black)
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
