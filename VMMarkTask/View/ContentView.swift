//
//  ContentView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import Combine
import CoreData
import SwiftUI

// MARK: - ContentView

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                PeopleView().navigationTitle("Contacts")
            }.tabItem { Label("Contacts", systemImage: "person.circle.fill")
            }

            NavigationView {
                RoomsView().navigationTitle("Rooms")
            }.tabItem { Label("Rooms", systemImage: "calendar.circle.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
