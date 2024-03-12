//
//  ErrorHandler.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 12/03/24.
//

import Foundation

// MARK: - ErrorHandler

enum ErrorHandler: LocalizedError {
    
    // MARK: - Cases
    
    case invalidURL
    case invalidData

    var errorDescription: String? {
        switch self {
        case .invalidURL: return "invalid URL found."
        case .invalidData: return "Unable to parse JSON response."
        }
    }
}
