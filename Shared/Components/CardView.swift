//
//  CardView.swift
//  oishiramen
//
//  Created by T on 19/02/23.
//

import SwiftUI

struct Card {
    let id: Int
    let image: Image
    let menu: String
    let rate: String
    let price: String
    
}

struct CardView: View {
  
    
    let cards = [
        Card(id: 1, image: Image("chikinkare"), menu: "Chikinkare", rate: "⭐️⭐️⭐️⭐️", price: "$5.4"),
        Card(id: 2, image: Image("arigatou"), menu: "Arigatou Ramen", rate: "⭐️⭐️⭐️⭐️⭐️", price: "$8.9"),
        Card(id: 3, image: Image("midoriro"), menu: "Midoriro Yasai", rate: "⭐️⭐️⭐️⭐️⭐️", price: "$6.3"),
        Card(id: 4, image: Image("niko"), menu: "Niko To Kinoko", rate: "⭐️⭐️⭐️⭐️⭐️", price: "$8.9")
    ]
    
    var body: some View {
        ZStack {
            Color.black
            VStack {
                // location - menu (foreach) - action bar
                HStack {
                    
                }
                // card forEach goes here
                ForEach(cards, id: \.id) { card in
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.white)
                            .frame(width: 180, height: 225, alignment: .center)
                            .padding()
                            .border(.red)
                        VStack {
                            // location menu bar
                            card.image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 220, height: 220)
                                .aspectRatio(contentMode: .fit)
                                .offset(y: -60)
                            Text(card.menu)
                                .foregroundColor(.black)
                            HStack {
                                // heart, price, plus
                            }
                        }
                    }

                }
                // action bar goes here
            }
        }

        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
