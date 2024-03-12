//
//  Room.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Foundation

// MARK: - Room

struct Room: Codable {
    // MARK: - Properties
    
    let createdAt: String
    let isOccupied: Bool
    let maxOccupancy: Int
    let id: String
}

typealias Rooms = [Room]
