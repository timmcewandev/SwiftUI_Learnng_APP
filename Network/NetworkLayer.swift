//
//  NetworkLayer.swift
//  The_Learning_App
//
//  Created by Tim McEwan on 12/23/22.
//

import Foundation

class NetworkLayer {
    
    static func getInfo() -> [Module] {
        // File path
        let filePath = Bundle.main.url(forResource: "data", withExtension: "json")
        guard let surePath = filePath else { return [] }
        do {
            let data = try Data(contentsOf: surePath)
            let decoder = JSONDecoder()
            let arrayModule = try decoder.decode([Module].self, from: data)
            return arrayModule
        }
        catch {
            print(error.localizedDescription)
        }
        return []
    }
    
    static func getStyleData() -> Data? {
        let fileString = Bundle.main.path(forResource: "style", ofType: "html")
        guard let surePath = fileString else { return nil }
        let url = URL(fileURLWithPath: surePath)
        do {
            let data = try Data(contentsOf: url)
            return data
        }
        catch {
            print(error.localizedDescription)
        }
        
        
        return nil
    }
}
