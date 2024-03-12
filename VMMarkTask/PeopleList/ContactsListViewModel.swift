//
//  ContactsListViewModel.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Foundation

// MARK: - ContactsListViewModel

final class ContactsListViewModel: ObservableObject {
    // MARK: - Properties

    @Published var people: People?
    @Published var isLoading = false

    @MainActor
    func getContactList() async {
        isLoading = true
        do {
            let people = try await NetworkDataService().getData(_type: People.self, urlEndpoint: ApiEndPoints.people)
            self.people = people
            self.isLoading = false
        } catch {
            self.isLoading = false
            print(error.localizedDescription)
        }
    }
}
