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
    @ObservedObject var viewModel = SingletonVM.sharedInstance.globalViewModel
    
   var body: some View {
                
        return VStack(alignment: .leading, spacing: 10) {
            ForEach(0..<colors.count) { colorIdx in
                GameCircle(diameter: circleDiameter, color: colors[colorIdx], id: colorIdx)
                    .onTapGesture {
                        viewModel.storeSelectedColor(colorSelection: colorIdx)
//                        viewModel.storeSelectedColor(colorSelection: colorIdx)
                        print(viewModel.getSelectedColor())
                        
                    }
            }
            GameCircle(diameter: circleDiameter, color: colors[viewModel.getSelectedColor()], id: 9999)
                .padding(.top, 275)
        }
    }
}
