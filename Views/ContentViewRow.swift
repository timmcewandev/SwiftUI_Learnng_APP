//
//  ContentViewRow.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 2/21/23.
//

import SwiftUI

struct ContentViewRow: View {
    @EnvironmentObject var model: ContentModel
    var index: Int
    var body: some View {
        let lesson = model.currentModule!.content.lessons[index]
        ZStack(alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            HStack(spacing: 20) {
                Text(String(index + 1))
                    .bold()
                VStack {
                    Text(lesson.title)
                    Text(lesson.duration)
                }
                Spacer()
            }
            .padding()
        }
        .padding(.bottom, 10)
    }
}

struct ContentViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewRow( index: 1)
    }
}
