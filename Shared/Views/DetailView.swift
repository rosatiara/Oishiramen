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
            VStack (spacing: 0) {
                HStack {
                    // chevron left
                    // option
                }
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
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        //DetailView()
    }
}
