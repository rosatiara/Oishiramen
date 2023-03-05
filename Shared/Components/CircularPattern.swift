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
                .padding(13)
            Circle()
                .fill(Color.white)
                .padding(21)
            Circle()
                .fill(Color.myOrange)
                .padding(29)
            Circle()
                .fill(Color.black)
                .padding(37)
            Circle()
                .fill(Color.white)
                .padding(45)
            Circle()
                .fill(Color.myOrange)
                .padding(53)
            Circle()
                .fill(Color.black)
                .padding(61)
            Circle()
                .fill(Color.black.opacity(0))
                .padding(69)
            
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
