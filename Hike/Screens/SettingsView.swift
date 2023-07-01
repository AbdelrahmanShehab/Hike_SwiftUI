//
//  SettingsView.swift
//  Hike
//
//  Created by Abdelrahman Shehab on 01/07/2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: -  SECTION: HEADER
            Section {
                
                HStack {
                    Spacer()
                    
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors' Chioce")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    
                    Spacer()
                }//: HSATCK
                .foregroundStyle(
                    LinearGradient(colors: [
                        .GreenLight,
                        .GreenMedium,
                        .GreenDark],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which look gorgous in photos, but it's even better once you are acutally there. the hike that you hope to do again someday, \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust the boots! It's time for walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.GreenMedium)
                }//: VSTACK
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            }//: HEADER
            .listRowSeparator(.hidden)
        }//: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
