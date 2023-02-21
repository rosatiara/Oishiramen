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
}

enum Tab: String {
    case Home = "home"
    case Heart = "heart"
    case Notification = "notification"
    case Person = "person"
}
