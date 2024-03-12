//
//  ProfileImageView.swift
//  VMMarkTask
//
//  Created by Raghvendra Pacholi on 11/03/24.
//

import SwiftUI

// MARK: - ProfileImageView

struct ProfileImageView: View {
    // MARK: - RoomsView
    
    var diameter: CGFloat
    @ObservedObject var imageProvider: ImageProvider

    init(avatarString: String, diameter: CGFloat) {
        self.imageProvider = ImageProvider(urlString: avatarString)
        self.diameter = diameter
    }

    var body: some View {
        Image(uiImage: imageProvider.image)

            .resizable().aspectRatio(contentMode: .fit).clipShape(.circle)
            .frame(width: diameter, height: diameter)
    }
}

#Preview {
    ProfileImageView(avatarString: "https://randomuser.me/api/portraits/women/11.jpg", diameter: 50)
}
