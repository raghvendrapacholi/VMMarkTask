//
//  AlertView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 12/03/24.
//

import SwiftUI

// MARK: - AlertView

struct AlertView: View {
    // MARK: - Properties
    
    var title: String
    var message: String
    var body: some View {
        AlertView(title: title, message: message)
    }
}

#Preview {
    AlertView(title: "Error", message: "Sample Error")
}
