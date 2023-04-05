//
//  HomeView.swift
//  oishiramen
//
//  Created by Rosa Tiara Galuh on 05/04/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack(spacing: 15) {
                HStack {
                    Button {
                        
                    } label : {
                        Image("location")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                    Spacer()
                    Button {
                        
                    } label : {
                        Image("menu")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                    }
                }.foregroundColor(.myOrange)
//                Text("heyyyyy")
//                    .font(.system(size: 40))
//                    .foregroundColor(.white)
                // Product view
                ScrollView(.vertical, showsIndicators: false) {
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
                    
                    LazyVGrid(columns: columns,spacing: 18) {
                        ForEach(ramens) { ramen in
                            CardView(ramen: ramen)
                        }
                    }
                }
            }.padding()
        }
    }
    //            ScrollView (.vertical, showsIndicators: false) {
    @ViewBuilder func CardView(ramen: Ramen) -> some View {
        VStack() {
            Image(ramen.ramenImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(15)
                .offset(y: -70)
                .frame(width: 150, height: 150)
               // .border(.red)
            
            Text(ramen.ramenName)
            Text(ramen.ramenRatingNum)
        }.padding(5)
            .background(Color.white, in: RoundedRectangle(cornerRadius: 25))
            .padding(.top, 60)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
