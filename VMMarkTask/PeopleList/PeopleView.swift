//
//  PeopleView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import SwiftUI

// MARK: - PeopleView

struct PeopleView: View {
    // MARK: - Properties

    @ObservedObject var peopleViewModel = ContactsListViewModel()
    var people: People?
    
    var body: some View {
        ZStack {
            List(peopleViewModel.people ?? [], id: \.id) { person in
                NavigationLink {
                    PersonDetailsView(person: person)
                } label: {
                    HStack {
                        ZStack(alignment: .bottomTrailing) {
                            ProfileImageView(avatarString: person.avatar, diameter: 50).frame(alignment: .top)
                            CircularView(diameter: 15, objectAvailablity: person.data?.meetingid != "")
                        }
                        VStack(alignment: .leading) {
                            Text(person.firstName+" "+person.lastName).font(.headline)
                            Text(person.jobtitle).font(.subheadline)
                            if let meetingId = person.data?.meetingid {
                                Text("Meeting Id : \(meetingId)")
                            }
                        }
                    }
                }

            }.onAppear {
                Task {
                    await peopleViewModel.getContactList()
                }
            }
            if peopleViewModel.isLoading {
                ProgressLoader(scale: 3.0)
            }
        }
    }
}

#Preview {
    PeopleView()
}
