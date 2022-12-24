//
//  ContentModel.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/23/22.
//

import Foundation


class ContentModel: ObservableObject {
    @Published var conentStore: [Module] = []
    var styleData: Data?
    init() {
        self.conentStore = NetworkLayer.getInfo()
        self.styleData = NetworkLayer.getStyleData()
    }
}
