//
//  ListModel.swift
//  TestSwiftUI
//
//  Created by Sourabh Jain on 13/12/24.
//

import Foundation

// MARK: - Models
struct ListModel {
    let image: String
    let title: String
    let subTitle: String
    
    init(image: String, title: String, subTitle: String) {
        self.image = image
        self.title = title
        self.subTitle = subTitle
    }
}
