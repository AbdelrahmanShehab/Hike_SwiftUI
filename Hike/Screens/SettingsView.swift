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
            
            // MARK: -  SECTION ICONS
            
            // MARK: -  SECTION ABOUT
            Section {
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS,iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "iShehab", rowTintColor: .indigo)
                
                CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Abdelrahman Shehab", rowTintColor: .pink)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowLinkLabel: "GitHub", rowLinkDestination: "https://github.com/AbdelrahmanShehab", rowTintColor: .GreenDark)
            } header: {
                Text("About The App")
            } footer: {
                HStack {
                    Spacer()
                    Text("Copyright © All Rights reserved.")
                    Spacer()
                }
                .padding(.vertical, 8)
            }//: SECTION

        }//: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
