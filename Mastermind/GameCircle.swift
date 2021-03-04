//
//  GameCircle.swift
//  MastermindStarter
//
//  Created by Ali A. Kooshesh on 3/3/21.
//

import SwiftUI

struct GameCircle: View, Identifiable {
    let diameter: CGFloat
    let color: Color
    let id: Int
    
    var body: some View {
        return Circle()
            .fill(color)
            .frame(width: diameter, height: diameter)
    }

}