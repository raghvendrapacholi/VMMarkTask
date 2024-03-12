//
//  RoomsView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import SwiftUI

// MARK: - RoomsView

struct RoomsView: View {
    // MARK: - Properties

    @ObservedObject var roomsViewModel = RoomsListViewModel()
    var rooms: Rooms?
    
    var body: some View {
        List(roomsViewModel.roooms ?? [], id: \.id) { room in
            HStack {
                VStack(alignment: .leading) {
                    Text(room.id)
                    Text("Maximum Occupancy: \(room.maxOccupancy)")
                }
                Spacer()
                VStack {
                    CircularView(diameter: 20, objectAvailablity: room.isOccupied)
                }
            }

        }.onAppear {
            Task {
                await roomsViewModel.getRoomsList()
            }
        }
        if roomsViewModel.isLoading {
            ProgressLoader(scale: 3.0)
        }
    }
}

#Preview {
    RoomsView()
}
