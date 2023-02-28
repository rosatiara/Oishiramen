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
                    VStack {
                        // ramen image
                        // plus button
                        // ramen title
                        HStack {
                            // rating
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
        //DetailView()
    }
}
