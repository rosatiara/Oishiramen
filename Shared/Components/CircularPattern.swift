//
//  CircularPattern.swift
//  oishiramen
//
//  Created by T on 18/02/23.
//

import Foundation
import SwiftUI

// create circular pattern for the upper-right corner of the app opening

struct CircularPattern: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.myOrange)
                .padding(5)
            Circle()
                .fill(Color.black)
                .padding(15)
            Circle()
                .fill(Color.white)
                .padding(25)
            Circle()
                .fill(Color.myOrange)
                .padding(35)
            Circle()
                .fill(Color.black)
                .padding(45)
            Circle()
                .fill(Color.white)
                .padding(55)
            Circle()
                .fill(Color.myOrange)
                .padding(65)
            Circle()
                .fill(Color.black)
                .padding(75)
            Circle()
                .fill(Color.white)
                .padding(85)
            
        }
        .frame(width: 250, height: 900)
        .padding()
    }
}

struct CircularPattern_Previews: PreviewProvider {
    static var previews: some View {
        CircularPattern()
    }
}
