//
//  HomeViewRow.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/26/22.
//

import SwiftUI

struct HomeViewRow: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(10)
                .foregroundColor(.white)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                .shadow(radius: 5)
            ForEach(0..<model.conentStore.count, id: \.self) {index in
                HStack {
                    Image(model.conentStore[index].content.image)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 50, height: 50)
                        .padding(.horizontal, 5)
                    VStack {
                        Text(model.conentStore[index].category)
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 3.0)
                        
                        Text(model.conentStore[index].content.description)
                            .font(.footnote)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .lineLimit(4)
                        HStack {
                            Spacer()
                            Image(systemName: "clock")
                            Text(model.conentStore[index].content.time)
                                .font(.caption)
                                .fontWeight(.thin)
                            Spacer()
                            Image(systemName: "film")
                            Text("\(model.conentStore[index].content.lessons.count) lessons")
                                .font(.caption)
                                .fontWeight(.thin)
                            Spacer()
                        }.padding(.top)
                    }.padding(.trailing, 20)
                }
            }
            
        }
        .padding()
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeViewRow()
    }
}
