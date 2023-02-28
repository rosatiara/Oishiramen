//
//  DetailView.swift
//  oishiramen
//
//  Created by T on 18/02/23.
//

import SwiftUI

struct DetailView: View {
    @EnvironmentObject var baseData: BaseViewModel
    var animation: Namespace.ID
    var body: some View {
        if let ramen = baseData.currentRamen, baseData.showDetail {
            VStack (spacing: 15) {
                HStack {
                    // chevron left
                    Button {
                        withAnimation {
                            baseData.showDetail = false
                        }
                    } label: {
                        Image("chevron")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .padding(15)
                            .background(Color("gray").opacity(0.45))
                            .cornerRadius(20)
                        
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("option")
                            .renderingMode(.template)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .padding(15)
                            .background(Color("gray").opacity(0.45))
                            .cornerRadius(20)
                        
                    }
                    
                    // option
                }.padding(.horizontal)
                ZStack { // Menu Detail
                    Rectangle()
                        .cornerRadius(70)
                        .offset(y: 180)
                        .foregroundColor(Color("gray").opacity(0.45))
                    VStack {
                        Image(ramen.ramenImage)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 320, height: 320)
                        // ramen image
                        // plus button
                        ZStack {
                            Rectangle()
                                .frame(width: 120, height: 50)
                                .cornerRadius(20)
                            HStack {
                                Text("-")
                                Text("1")
                                Text("+")
                            }.foregroundColor(Color.black)
                                .font(.system(size: 20, weight: .bold))
                                .frame(maxWidth: .infinity)
                        }
                        // ramen title
                        Text(ramen.ramenName)
                            .foregroundColor(Color.white)
                            .font(.system(size: 40, weight: .heavy))
                            .frame(alignment: .trailing)
                        HStack {
                            Text("⭐")
                            Text(ramen.ramenRatingNum)
                            
                            Text("⭐")
                            Text("pork, lard")
                            
                            Text("⭐")
                            Text("free ocha")
                            // pork, lard
                            // free ocha
                        }
                        // Description
                        HStack { // Bowl Sizes
                            // Text Bowl Size
                            // Bowl sizes (S, M, L)
                        }
                    }
                }
            }.padding(.vertical)
                .frame(maxWidth: .infinity , maxHeight: .infinity, alignment: .top)
                .background(Color.black)
                .transition(.opacity)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        // DetailView()
    }
}
