//
//  ContentView.swift
//  Shared
//
//  Created by T on 18/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Color.black.edgesIgnoringSafeArea(.all)
        VStack {
            Text("Hello, world!")
                .font(Font.custom("cairo", size: 30))
            Image("chikinkare")
                .frame(width: 200, height: 150)
                .accentColor(.red)
                .foregroundColor(.red)
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
