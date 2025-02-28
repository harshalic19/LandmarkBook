//
//  LandmarkListRow.swift
//  LandmarkBook
//
//  Created by Harshali Chaudhari on 28/02/25.
//

import SwiftUI

struct LandmarkListRow: View {
    
    var landmark: LandmarkModel
    
    var body: some View {
        HStack {
            Image(landmark.imageName).resizable().aspectRatio(contentMode: .fit).frame(width: 80, height: 80, alignment: .leading)
            
            Text(landmark.landmark).foregroundColor(.blue)
        }
    }
}

#Preview {
    LandmarkListRow(landmark: landmark1)
}
