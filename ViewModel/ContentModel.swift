//
//  ContentModel.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/23/22.
//

import Foundation


class ContentModel: ObservableObject {
    @Published var conentStore: [Module] = []
    // Selected Module
    @Published var currentModule: Module?
    static var currentModuleIndex = 0
    var currentIndex = 0
    var styleData: Data?
    
    init() {
        self.conentStore = NetworkLayer.getInfo()
        self.styleData = NetworkLayer.getStyleData()
    }
    
    // MARK: - Module navigation methods
    
    func beginModuleID(_ moduleID: Int) {
        for index in 0..<conentStore.count {
            if conentStore[index].id == moduleID {
                currentIndex = index
                break
            }
        }
        currentModule = conentStore[currentIndex]
    }
}
