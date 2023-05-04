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
                HomeView()
                    .environmentObject(baseData)
                    .tag(Tab.Home)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundColor(Color("orange"))
                    .background(Color.black)
                Text("Favorite")
                    FavoriteView()
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
                        .offset(x: -20)
                    // search button
                    Button {
                        
                    } label: {
                        Image("search")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 26, height: 26)
                            .foregroundColor(Color("orange"))
                            .padding(17)
                            .background(Color("gray").opacity(0.5))
                            .clipShape(Circle())
                        
                            .shadow(color: Color.orange.opacity(0.04), radius: 5, x: 0, y: 3)
                            
                        
                    }.offset(y: -30)
                    
                    TabButton(Tab: .Notification)
                        .offset(x: 20)
                    TabButton(Tab: .Person)

                }.background(Color("gray").opacity(0.45)
                                .clipShape(CustomCurveButton())
                            )
                // hide base when the detail view is opened
                    .offset(y: baseData.showDetail ? 200 : 0)
                ,alignment: .bottom
            )

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
                .background(Color("gray").opacity(0.45))
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
