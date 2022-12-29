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
        Text("Hello")
    }
}

struct HomeViewRow_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeViewRow()
    }
}
