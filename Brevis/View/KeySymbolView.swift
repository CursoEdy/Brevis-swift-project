//
//  KeySymbolView.swift
//  Brevis
//
//  Created by ednardo alves on 17/11/24.
//

import SwiftUI

struct KeySymbolView: View {
    var body: some View {
        let midIndex = Modifier.allCases.count / 2
        
        HStack (alignment: .top) {
            KeySymbolViewColumn(lowerIndex: 0, upperIndex: midIndex)
            KeySymbolViewColumn(lowerIndex: midIndex, upperIndex: Modifier.allCases.count)
        }
    }
}

struct KeySymbolViewColumn: View {
    let lowerIndex: Int
    let upperIndex: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(lowerIndex..<upperIndex, id: \.self) { i in
                keyValueRow(modifier: Modifier.allCases[i])
            }
        }.frame(maxWidth: .infinity)
    }
}

struct keyValueRow: View {
    let modifier: Modifier
    
    let modifierFont: Font = .body
    var body: some View {
        Text("\(modifier.rawValue) = \(modifier.description)")
            .font(modifierFont)
    }
}

#Preview {
    KeySymbolView()
//    KeySymbolViewColumn(lowerIndex: 10, upperIndex: 10)
}
