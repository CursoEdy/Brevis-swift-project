//
//  HotKeyModel.swift
//  Brevis
//
//  Created by ednardo alves on 17/11/24.
//

import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    var description: String {
        "\(modifiers) \(character.capitalized)"
    }
    
}
