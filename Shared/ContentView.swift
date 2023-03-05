//
//  ContentView.swift
//  Shared
//
//  Created by T on 18/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: BaseView(),
                    label: {
                        EmptyView()
                    })
                
                OpeningView()
            }
        }
    }
}

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

