//
//  Extensions.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Foundation
import SwiftUI

public extension String {
    
    // MARK: - Properties
    
    static var withFractionalSeconds = ISO8601DateFormatter()

    func parseISO8601Date() -> Self {
        let formatter = ISO8601DateFormatter()
        formatter.formatOptions = [.withFullDate]
        guard let date = formatter.date(from: self) else { return "" }
        return formatter.string(from: date)
    }
}

public extension Color {
    
    static let baseColor = Color("base")
}
