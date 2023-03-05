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
                    .offset(x: 200, y: -80)
                VStack {
                    Text("OISHIRAMEN")
                    Text("Japanese")
                }.foregroundColor(.white)
                Image("opening")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth:.infinity)
                    .offset(y: 30)
            }
        }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
