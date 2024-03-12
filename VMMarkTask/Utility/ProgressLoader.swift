//
//  ProgressLoader.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 12/03/24.
//

import SwiftUI

// MARK: - ProgressLoader

struct ProgressLoader: View {
    
    // MARK: - Properties
    var scale: CGFloat
    var body: some View {
        ProgressView().scaleEffect(scale, anchor: .center).progressViewStyle(CircularProgressViewStyle(tint: .red))
    }
}

#Preview {
    ProgressLoader(scale: 1)
}
