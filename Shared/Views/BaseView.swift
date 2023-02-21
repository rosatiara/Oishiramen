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
        Color.black.edgesIgnoringSafeArea(.all)
        TabView(selection: $baseData.currentTab) {
            Text("Home")
                .tag(Tab.Home)
                .foregroundColor(.myOrange)
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
                TabButton(Tab: .Notification)
                TabButton(Tab: .Person)

            },alignment: .bottom
            
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
