//
//  OpeningView.swift
//  oishiramen
//
//  Created by T on 18/02/23.
//

import SwiftUI

struct OpeningView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                CircularPattern()
                VStack {
                    Text("OISHIRAMEN")
                    Text("Japanese")
                }.foregroundColor(.white)
                Image("")
            }
        }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
