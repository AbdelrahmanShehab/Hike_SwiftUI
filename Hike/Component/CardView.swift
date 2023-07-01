//
//  CardView.swift
//  Hike
//
//  Created by Abdelrahman Shehab on 01/07/2023.
//

import SwiftUI

struct CardView: View {
    // MARK: -  PROPERTIES
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: -  FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
            imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: -  HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 50))
                            .foregroundStyle(
                                LinearGradient(colors: [.GrayLight, .GrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                            print("Make Action")
                        } label: {
                            CustomButtonView()
                        }

                    }//: HSTACK
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.GrayMedium)
                }//: VSTACK - HEADER
                .padding(.horizontal, 30)
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeInOut, value: imageNumber)
                }// ZSTACK
                
                // MARK: -  FOOTER
                
                Button {
                    randomImage()
                } label: {
                    Text("Explore more")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.GreenLight, .GreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
                
            }//: VSTACK
        }// ZSTACK - CARD -
        .frame(width: 320, height: 570)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
