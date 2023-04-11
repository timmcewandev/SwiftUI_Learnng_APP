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
    var currentLessonIndex = 0
    
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
            currentLessonIndex = lessonIndex
        } else {
            currentLessonIndex = 0
        }
        currentLesson = currentModule!.content.lessons[currentLessonIndex]
    }
    
    func nextLesson() {
        currentLessonIndex += 1
        
        if currentLessonIndex < currentModule!.content.lessons.count {
            currentLesson = currentModule?.content.lessons[currentLessonIndex]
        } else {
            currentLessonIndex = 0
            currentLesson = nil
        }
    }
    
    func isThereANextLesson() -> Bool {
        return  currentLessonIndex + 1 < currentModule!.content.lessons.count
    }
    
    func getTextForNextLesson() -> String {
        if currentModuleIndex + 1 < currentModule!.content.lessons.count {
            let index = currentModuleIndex + 1
            return (currentModule?.content.lessons[index].title)!
        }
        return ""
    }

}
