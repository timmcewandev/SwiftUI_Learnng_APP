//
//  ContentModel.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/23/22.
//

import Foundation


class ContentModel: ObservableObject {
    @Published var modules: [Module] = []
    // Selected Module
    @Published var currentModule: Module?
    var currentModuleIndex = 0
    
    @Published var currentLesson: Lessons?
    var cureentLessonIndex = 0
    
    var styleData: Data?
    
    init() {
        self.modules = NetworkLayer.getInfo()
        self.styleData = NetworkLayer.getStyleData()
    }
    
    // MARK: - Module navigation methods
    
    func beginModuleID(_ moduleID: Int) {
        for index in 0..<modules.count {
            if modules[index].id == moduleID {
                currentModuleIndex = index
                break
            }
        }
        currentModule = modules[currentModuleIndex]
    }
    
    func beginLesson(_ lessonIndex: Int) {
        if lessonIndex < currentModule!.content.lessons.count {
            cureentLessonIndex = lessonIndex
        } else {
            cureentLessonIndex = 0
        }
        currentLesson = currentModule!.content.lessons[cureentLessonIndex]
    }
}
