//
//  LandmarkImage.swift
//  LandmarkBook
//
//  Created by Harshali Chaudhari on 28/06/24.
//

import SwiftUI

struct LandmarkImage: View {
    var image: Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width * 0.6)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 6))
            .shadow(radius: 15)
            .padding()
    }
}

#Preview {
    LandmarkImage(image: Image("LondonBridge"))
}
