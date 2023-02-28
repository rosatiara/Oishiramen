//
//  BaseViewModel.swift
//  oishiramen
//
//  Created by T on 21/02/23.
//

import SwiftUI

class BaseViewModel: ObservableObject {
    // tab bar
    @Published var currentTab: Tab = .Home
    @Published var homeTab = "Ramens"
    
    @Published var currentRamen: Ramen?
    @Published var showDetail = false
    
}

enum Tab: String {
    case Home = "home"
    case Favorite = "favorite"
    case Notification = "notification"
    case Person = "person"
}
