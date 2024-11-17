//
//  MainHotkeyView.swift
//  Brevis
//
//  Created by ednardo alves on 17/11/24.
//

import SwiftUI

struct MainHotkeyView: View {
    @State private var searchQuery: String = ""
    
    var vm: HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                List(vm.hotkeyCategoryModels) {
                    hotkeyCategory in
                    HotkeySectionView(
                        hotkeyCategoryName: hotkeyCategory.name,
                        hotkeyModels: hotkeyCategory.hotkeyModels,
                        searchQuqery: searchQuery
                    )
                }
                
            }.navigationTitle("Xcode Hotkeys")
                .searchable(text: $searchQuery, prompt: "Search...")
            
            KeySymbolView()
        }
    }
}

#Preview {
    MainHotkeyView()
}
