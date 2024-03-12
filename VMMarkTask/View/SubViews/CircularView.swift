//
//  CircularView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 12/03/24.
//

import SwiftUI

// MARK: - CircularView

struct CircularView: View {
    // MARK: - Properties
    
    var diameter: CGFloat
    var objectAvailablity: Bool

    var body: some View {
        Circle().frame(width: diameter, height: diameter).foregroundColor(objectAvailablity ? .red : .green)
    }
}

#Preview {
    CircularView(diameter: 15, objectAvailablity: true)
}
