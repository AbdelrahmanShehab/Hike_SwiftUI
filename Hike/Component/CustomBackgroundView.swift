//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Abdelrahman Shehab on 01/07/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            // MARK: -  DEPTH
            Color.GreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: -  LIGHT
            Color.GreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: -  SURFACE
            LinearGradient(colors: [
                .GreenLight, .GreenMedium
            ],
            startPoint: .top,
            endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
