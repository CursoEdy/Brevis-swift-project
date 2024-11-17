//
//  HotkeySectionView.swift
//  Brevis
//
//  Created by ednardo alves on 17/11/24.
//

import SwiftUI

struct HotkeySectionView: View {
    
    let hotkeyCategoryName: String
    let hotkeyModels: [HotkeyModel]
    let searchQuqery: String
    
    //TODO: use a theme
    let sectionHeaderFont: Font = .title
    let fontWeight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red
    
    //TODO: filter according to 'searchQuqery'
    var filteredHotkeyModels: [HotkeyModel] {
        hotkeyModels
    }
    
    var body: some View {
        if !filteredHotkeyModels.isEmpty {
            Section {
                ForEach(filteredHotkeyModels) { hotkeyModel in
                    Text("\(hotkeyModel.character) \(hotkeyModel.text)")
                }
            } header: {
                Text(hotkeyCategoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(sectionHeaderColor)
            }
        }
    }
}

#Preview {
    Form {
        HotkeySectionView(
            hotkeyCategoryName: "Navigation",
            hotkeyModels: [
                .init(
                modifiers: [.command],
                character: "1",
                text: "Project"),
                .init(
                modifiers: [.command],
                character: "2",
                text: "Source Control"),
            ],
            searchQuqery: ""
        )
    }
}
