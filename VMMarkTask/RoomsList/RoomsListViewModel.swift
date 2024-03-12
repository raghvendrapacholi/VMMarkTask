//
//  RoomsListViewModel.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Foundation

// MARK: - RoomsListViewModel

final class RoomsListViewModel: ObservableObject {
    // MARK: - Properties

    @Published var roooms: Rooms?
    @Published var isLoading = false

    @MainActor
    func getRoomsList() async {
        isLoading = true
        do {
            let rooms = try await NetworkDataService().getData(_type: Rooms.self, urlEndpoint: ApiEndPoints.rooms)
            self.roooms = rooms
            self.isLoading = false

        } catch {
            self.isLoading = false
            print(error.localizedDescription)
        }
    }
}
