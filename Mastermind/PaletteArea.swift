//
//  PaletteArea.swift
//  MastermindStarter
//
//  Created by Ali A. Kooshesh on 3/3/21.
//

import SwiftUI

struct PaletteArea: View {
    @State private var offset: CGSize = .zero

    var currColor = 0
    
    let colors: [Color]
   let circleDiameter: CGFloat
    @ObservedObject var viewModel = MasterMindViewModel<CGFloat>()
    
   var body: some View {
                
        return VStack(alignment: .leading, spacing: 10) {
            ForEach(0..<colors.count) { colorIdx in
                GameCircle(diameter: circleDiameter, color: colors[colorIdx], id: colorIdx)
                    .onTapGesture {
                        viewModel.storeSelectedColor(colorSelection: colorIdx+1)
                        print(viewModel.getSelectedColor())
                        
                    }
            }
        }
    }
}
