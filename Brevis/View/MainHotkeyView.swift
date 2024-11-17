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
                //Sections for each category
                List(vm.hotkeyCategoryModels) {
                    hotkeyCategory in
                    Text(hotkeyCategory.name) // TODO: implement some section view
                }
            }.navigationTitle("Xcode Hotkeys")
                .searchable(text: $searchQuery, prompt: "Search...")
        }
    }
}

#Preview {
    MainHotkeyView()
}
