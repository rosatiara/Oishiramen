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
                .padding(15)
            Circle()
                .fill(Color.black)
                .padding(20)
            Circle()
                .fill(Color.white)
                .padding(25)
            Circle()
                .fill(Color.myOrange)
                .padding(30)
            Circle()
                .fill(Color.black)
                .padding(35)
            Circle()
                .fill(Color.white)
                .padding(40)
            Circle()
                .fill(Color.myOrange)
                .padding(45)
            Circle()
                .fill(Color.black)
                .padding(50)
            Circle()
                .opacity(100.0)
                .padding(55)
            
        }
        .frame(width: 250, height: 250)
        .padding()
    }
}

struct CircularPattern_Previews: PreviewProvider {
    static var previews: some View {
        CircularPattern()
    }
}
