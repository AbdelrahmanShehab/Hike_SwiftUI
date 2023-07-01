//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Abdelrahman Shehab on 01/07/2023.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                
                configuration.isPressed ?
                LinearGradient(colors: [.GrayLight, .GrayMedium], startPoint: .top, endPoint: .bottom)
                :
                LinearGradient(colors: [.GrayMedium, .GrayLight], startPoint: .top, endPoint: .bottom)

            )
            .cornerRadius(40)
    }
}
