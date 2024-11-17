//
//  HotkeyCategoryModel.swift
//  Brevis
//
//  Created by ednardo alves on 17/11/24.
//

import Foundation


struct HotkeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name: String
    let hotkeyModels: [HotkeyModel]
}
