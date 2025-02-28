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
    @State var isLiked: Bool = false
    @State var numberOfLikes: Int = 0
    
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
                
                Text("\(landmark.country), \(landmark.builtIn)")
                    .font(.title2)
                    .foregroundColor(.black)
            }
            
        }
        
        HStack {
            Button {
                //Like code
                self.isLiked.toggle()
                self.numberOfLikes = isLiked ? numberOfLikes + 1 : numberOfLikes - 1
            } label: {
                HStack {
                    Text("Like")
                        .font(.title).bold()
                        .foregroundColor(.black)
                    Image(isLiked ? "heart_filled" : "heart")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
            
            Spacer()
            
            Text(String(numberOfLikes))
                .font(.title2)
                .foregroundColor(.black)
        }.padding(30)
    }
}

#Preview {
    LandmarkDetailView(landmark: landmark1)
}
