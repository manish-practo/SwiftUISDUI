//
//  ListData.swift
//  CustomServerDrivenUI
//
//  Created by Manish Pandey on 27/07/21.
//

import Foundation

struct ListData: Decodable {
    let list: ListDataObjects
    
    enum CodingKeys: String, CodingKey {
        case list = "List"
    }
}

struct ListDataObjects: Decodable {
    let leftView: LeftProfileViewModel?
    let rightView: RightProfileViewModel?
    
    enum CodingKeys: String, CodingKey {
        case leftView = "LeftProfileView"
        case rightView = "RightProfileView"
    }
}
