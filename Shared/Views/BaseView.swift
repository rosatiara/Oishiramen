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
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabView(selection: $baseData.currentTab) {
            Text("Home")
                .tag(Tab.Home)
            Text("Favorite")
                .tag(Tab.Favorite)
            Text("Notification")
                .tag(Tab.Notification)
            Text("Person")
                .tag(Tab.Person)
            
        }
        .overlay(
            HStack(spacing: 0) {
                TabButton(Tab: .Home)
                TabButton(Tab: .Favorite)
                TabButton(Tab: .Home)
                TabButton(Tab: .Home)

            }
            
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
                .foregroundColor(baseData.currentTab == Tab ? Color("orange") : Color.gray.opacity(0.5))
                .frame(width: 25, height: 25)
                .frame(maxWidth: .infinity)
            
        }
    }
    
    
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
