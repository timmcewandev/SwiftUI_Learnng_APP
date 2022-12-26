//
//  HomeViewRow.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/26/22.
//

import SwiftUI

struct HomeViewRow: View {
    var image: String
    var title: String
    var decription: String
    var count: Int
    var time: String
    @EnvironmentObject var model: ContentModel
    var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(10)
                .foregroundColor(.white)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                .shadow(radius: 5)
            
            HStack {
                Spacer()
                Image(image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .padding([.leading, .trailing])
                Spacer()
                HStack {
                    VStack {
                        Text(title)
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 3.0)
                        
                        Text(decription)
                            .font(.footnote)
                            .fontWeight(.light)
                            .multilineTextAlignment(.leading)
                            .lineLimit(4)
                        HStack {
                            Spacer()
                            Image(systemName: "clock")
                            Text(time)
                                .font(.caption)
                                .fontWeight(.thin)
                            Spacer()
                            Image(systemName: "film")
                            Text("\(count) lessons")
                                .font(.caption)
                                .fontWeight(.thin)
                            Spacer()
                        }.padding(.top)
                    }.padding(.trailing, 20)
                }
                Spacer()
            }
        }
        .padding(.all, 5)
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeViewRow(image: "swift", title: "Learn swift", decription: "You will learn enums and stuff", count: 10, time: "40 hours")
            .environmentObject(ContentModel())
    }
}
