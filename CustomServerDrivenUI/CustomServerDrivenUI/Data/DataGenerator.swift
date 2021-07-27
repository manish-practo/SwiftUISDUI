//
//  DataGenerator.swift
//  CustomServerDrivenUI
//
//  Created by Manish Pandey on 27/07/21.
//

import Foundation

struct DataGenerator {
    
    func generate() -> ListData? {
        if let path = Bundle.main.path(forResource: "CustomList", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                
                return try JSONDecoder().decode(ListData.self, from: data)
            } catch {
                return nil
            }
        }
        
        return nil
    }
    
}
