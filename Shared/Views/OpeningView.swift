//
//  OpeningView.swift
//  oishiramen
//
//  Created by T on 18/02/23.
//

import SwiftUI

struct OpeningView: View {
    @State private var goToBaseView = false
    
    var body: some View {
        ZStack {
            
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                CircularPattern()
                    .offset(x: 200, y: -60)
                VStack {
                    Text("OISHIRAMEN")
                        .font(.system(size: 48, weight: .black))
                        .foregroundColor(Color("orange"))
                    Text("素晴らしいラーメン")
                        .font(.system(size: 28))
                        .foregroundColor(.white)
                }.offset(y:-60)
                
                Image("opening")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth:.infinity)
                    .offset(y:-100)
            }
        }
        .onTapGesture{goToBaseView = true}
        .fullScreenCover(isPresented: $goToBaseView) {
                    BaseView()
                }
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        OpeningView()
    }
}
