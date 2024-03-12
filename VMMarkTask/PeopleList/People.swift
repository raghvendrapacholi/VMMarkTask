//
//  People.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Foundation

// MARK: - Person

struct Person: Codable {
    // MARK: - Properties
    
    let createdAt, firstName: String
    let avatar: String
    let lastName, email, jobtitle, favouriteColor: String
    let id: String
    let data: DataClass?
    let to, fromName, name, type: String?
    let size, empty: String?

    enum CodingKeys: String, CodingKey {
        case createdAt, firstName, avatar, lastName, email, jobtitle, favouriteColor, id, data, to, fromName, name, type, size
        case empty = "{}"
    }
}

// MARK: - DataClass

struct DataClass: Codable {
    // MARK: - Properties
    
    let title, body, id, toID: String
    let fromID, meetingid: String

    enum CodingKeys: String, CodingKey {
        case title, body, id
        case toID = "toId"
        case fromID = "fromId"
        case meetingid
    }
}

typealias People = [Person]
