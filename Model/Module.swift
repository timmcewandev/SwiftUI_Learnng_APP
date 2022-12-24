//
//  Module.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/23/22.
//

import Foundation
import SwiftUI

struct Module: Identifiable, Decodable {
    var id: Int
    var category: String
    var content: Content
    var test: Test
}

struct Content: Identifiable, Decodable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var lessons: [Lessons]
    
}

struct Lessons: Identifiable, Decodable {
    var id: Int
    var title: String
    var video: String
    var duration: String
    var explanation: String
}

struct Test: Identifiable, Decodable {
    var id: Int
    var image: String
    var time: String
    var description: String
    var questions: [Questions]
}

struct Questions: Identifiable, Decodable {
    var id: Int
    var content: String
    var correctIndex: Int
    var answers: [String]
}



