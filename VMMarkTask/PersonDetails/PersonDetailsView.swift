//
//  PersonDetailsView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import SwiftUI

// MARK: - PersonDetailsView

struct PersonDetailsView: View {
    // MARK: - Properties
    
    var person: Person
    var body: some View {
        NavigationView {
            LazyVStack {
                ProfileImageView(avatarString: person.avatar, diameter: 200)
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name:").font(.headline)
                            Text(person.firstName+" "+person.lastName)
                        }
                        Spacer()
                        Text("Created At:").font(.headline)
                        Text(person.createdAt.parseISO8601Date())
                    }

                    VStack(alignment: .leading) {
                        Text("Job Title:").font(.headline)
                        Text(person.jobtitle)
                    }
                    Text("Email:\(person.email)")
                    Text("Fav. Color:\(person.favouriteColor)")
                    if let meetingData = person.data {
                        Text("Meeting Id:\(meetingData.meetingid)")
                        Text("Email:\(meetingData.title)")
                        Text("Favourite Color : \(meetingData.body)")
                    }
                }
            }.padding(.horizontal, 16)
        }.toolbar {
            ToolbarItem(placement: .principal) {
                Text(person.firstName+" "+person.lastName).font(.headline)
            }
        }
    }
}

#Preview {
    PersonDetailsView(person: Person(createdAt: "2022-01-24T22:19:04.810Z", firstName: "Jimmie", avatar: "https://randomuser.me/api/portraits/men/58.jpg", lastName: "Olson", email: "Carroll50@gmail.com", jobtitle: "Investor Marketing Administrator", favouriteColor: "black", id: "65", data: DataClass(title: "First contact", body: "body call", id: "2", toID: "7 AM", fromID: "7 PM", meetingid: "322"), to: nil, fromName: nil, name: nil, type: nil, size: "cxv", empty: "cxvcx"))
}
