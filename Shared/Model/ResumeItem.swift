//
//  ResumeItem.swift
//  MyResume
//
//  Created by Xie on 2022/4/3.
//

import Foundation
struct ResumeItem: Identifiable {
    var id = UUID()
    var name: String
    var content: String
    var imageName: String
}
