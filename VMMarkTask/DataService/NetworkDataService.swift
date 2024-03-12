//
//  NetworkDataService.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Combine
import Foundation

// MARK: - NetworkDataServiceProtocol

protocol NetworkDataServiceProtocol {
    func getData<T: Decodable>(_type: T.Type, urlEndpoint: String) async throws -> T?
}

// MARK: - NetworkDataService

class NetworkDataService {
    func getData<T: Decodable>(_type: T.Type, urlEndpoint: String) async throws -> T? {
        let url = Constants.baseUrl + urlEndpoint
        guard let serviceUrl = URL(string: url) else { throw ErrorHandler.invalidURL }
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "GET"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let (data, _) = try await session.data(for: request)
        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw ErrorHandler.invalidData
        }
    }
}
