//
//  CustomCircleView.swift
//  Hike
//
//  Created by Abdelrahman Shehab on 01/07/2023.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        .IndigoMedium,
                        .SalmonLight
                    ],
                       startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                       endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        }//: ZSTACK
        .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
