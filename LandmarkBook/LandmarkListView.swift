//
// LandmarkListView.swift
// LandmarkBook
//
//  Created by Harshali Chaudhari on 28/06/24.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationView {
            List(landmarkArray) { landmark in
                NavigationLink(destination: LandmarkDetailView(landmark: landmark)) {
                    LandmarkListRow(landmark: landmark)
                }
            }.navigationTitle(Text("Landmarks"))
        }
    }
}

#Preview {
    LandmarkListView()
}
