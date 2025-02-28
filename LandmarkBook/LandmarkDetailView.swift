//
//  LandmarkDetailView.swift
//  LandmarkBook
//
//  Created by Harshali Chaudhari on 28/06/24.
//

import SwiftUI
import MapKit

struct LandmarkDetailView: View {
    
    var landmark: LandmarkModel
    
    var body: some View {
        ZStack{
            
            VStack {
                Map(initialPosition: MapCameraPosition.region(
                    MKCoordinateRegion(
                        center: landmark.location,
                        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                    )
                )).frame(height: UIScreen.main.bounds.height * 0.4)
                
                Spacer()
            }
            
            VStack {
                LandmarkImage(image: Image(landmark.imageName))
                
                Text(landmark.landmark)
                    .font(.largeTitle).bold()
                    .foregroundColor(.brown)
                    .padding()
                
                HStack {
                    Text(landmark.country)
                        .font(.title).bold()
                        .foregroundColor(.black)
                        .padding()
                    Spacer()
                    Text(landmark.builtIn)
                        .font(.title)
                        .foregroundColor(.orange)
                        .padding()
                    
                }
            }
        }
    }
}

#Preview {
    LandmarkDetailView(landmark: landmark1)
}
