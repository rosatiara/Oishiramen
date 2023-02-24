//
//  BaseView.swift
//  oishiramen
//
//  Created by T on 21/02/23.
//

import SwiftUI

struct BaseView: View {
    
    @StateObject var baseData = BaseViewModel()
    
    init() {
        UITabBar.appearance().isHidden = false
    }
    
    var body: some View {
            TabView(selection: $baseData.currentTab) {
                Text("Home")
                    .tag(Tab.Home)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(Color("orange"))
                    .background(Color.black)
                Text("Favorite")
                    .tag(Tab.Favorite)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(Color("orange"))
                    .background(Color.black)
                Text("Notification")
                    .tag(Tab.Notification)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(Color("orange"))
                    .background(Color.black)
                Text("Person")
                    .tag(Tab.Person)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(Color("orange"))
                    .background(Color.black)
                
            }
            .overlay(
                HStack(spacing: 0) {
                    TabButton(Tab: .Home)
                    TabButton(Tab: .Favorite)
                    // search button
                    Button {
                        
                    } label: {
                        Image("search")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                            .foregroundColor(Color("orange"))
                            .padding(20)
                            .background(Color("gray"))
                            .clipShape(Circle())
                            
                        
                    }.offset(y: -28)
                    
                    TabButton(Tab: .Notification)
                    TabButton(Tab: .Person)

                }.background(Color.black
                                .clipShape(CustomCurveButton())
                                
                            )
                // .shadow(color: Color.orange.opacity(0.2), radius: 2, x: -1, y: -1)
                ,alignment: .bottom
    
            ) // Add this line to ensure the TabView is displayed above the black background
    }
    
    @ViewBuilder
    func TabButton(Tab: Tab)-> some View {
        Button {
            withAnimation {
                baseData.currentTab = Tab
            }
            
        } label: {
            Image(Tab.rawValue)
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .foregroundColor(Color("orange"))
                .frame(width: 25, height: 25)
                .frame(maxWidth: .infinity)
                
            
        }
    }
    
    
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BaseView()
        }
    }
}
