//
//  HomeViewRow.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/26/22.
//

import SwiftUI

struct HomeViewRow: View {
    @EnvironmentObject var model: ContentModel
    var image: String
    var category: String
    var description: String
    var countOflessons: Int
    var timeOfLessons: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 116, height: 116)
                    .clipShape(Circle())
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    Text("learn \(category)")
                        .bold()
                    Text(description)
                        .font(.caption)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 20)
                    HStack {
                        //Num of Lessons
                        Image(systemName: "text.book.closed")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text("\(countOflessons) Lessons")
                            .font(Font.system(size: 10))
                        // num of minutes
                        Image(systemName: "clock")
                            .resizable()
                            .frame(width: 15, height: 15)
                        Text(timeOfLessons)
                            .font(Font.system(size: 10))
                    }
                }
                .padding(.leading, 20)
            }
            .padding(.horizontal, 15.0)
        }
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeViewRow(image: "swift", category: "Swift", description: "learning swift", countOflessons: 8, timeOfLessons: "40 minutes")
            .environmentObject(ContentModel())
    }
}
