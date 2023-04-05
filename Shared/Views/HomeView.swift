//
//  HomeView.swift
//  oishiramen
//
//  Created by Rosa Tiara Galuh on 05/04/23.
//

import SwiftUI

struct HomeView: View {
    @Namespace var animation
    @EnvironmentObject var baseData: BaseViewModel
    
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
                    Text("Oishiramen")
                        .bold()
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
                                .onTapGesture {
                                    withAnimation {
                                        baseData.currentRamen = ramen
                                        baseData.showDetail = true
                                    }
                                }
                        }
                    }
                }
            }.padding()
        }
        .overlay(DetailView(animation:animation).environmentObject(baseData))
    }
    //            ScrollView (.vertical, showsIndicators: false) {
    @ViewBuilder func CardView(ramen: Ramen) -> some View {
        VStack() {
            Image(ramen.ramenImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(15)
                .offset(y: -40)
                .frame(width: 150, height: 150)
            // .border(.red)
            VStack {
                Text(ramen.ramenName)
                Text(ramen.ramenRating)
                Text(ramen.ramenRatingNum)
                Text(ramen.price)
            }.offset(y: -55)
        }.padding(5)
            .frame(width: 160, height: 180)
            .background(Color.white, in: RoundedRectangle(cornerRadius: 25))
            .padding(.top, 60)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
