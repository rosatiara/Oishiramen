//
//  Ramen.swift
//  oishiramen (iOS)
//
//  Created by T on 25/02/23.
//

import SwiftUI

struct Ramen: Identifiable {
    let id = UUID().uuidString
    let ramenImage: String
    let ramenName: String
    let ramenRating: String
    let ramenRatingNum: String
    let ramenDesc: String
    let price: String
    let isLiked: Bool = false
}

let ramens = [
    Ramen(ramenImage: "chikinkare", ramenName: "Tonkotsu Ramen", ramenRating: "⭐⭐⭐⭐", ramenRatingNum: "4.2/5 (89)", ramenDesc: "A rich and creamy pork broth with thin, straight noodles topped with sliced pork, green onions, and a soft-boiled egg.", price: "$5.4"),
    Ramen(ramenImage: "arigatou", ramenName: "Miso Ramen", ramenRating: "⭐⭐⭐⭐⭐", ramenRatingNum: "4.8/5 (178)", ramenDesc: "A hearty and savory miso-based broth combined with chicken or pork broth, with curly, thick noodles and toppings like sliced pork, bean sprouts, corn, and butter.", price: "$8.9"),
    Ramen(ramenImage: "midoriro", ramenName: "Shoyu Ramen", ramenRating: "⭐⭐⭐⭐⭐", ramenRatingNum: "4.7/5 (66)", ramenDesc: "A lighter-colored, soy sauce-based broth with straight, thin noodles and toppings like sliced pork, green onions, and bamboo shoots.", price: "$6.3"),
    Ramen(ramenImage: "niko", ramenName: "Tsukemen Ramen", ramenRating: "⭐⭐⭐⭐⭐",ramenRatingNum: "4.9/5 (1564)", ramenDesc: "A dipping-style ramen dish where thicker, chewier noodles are served separate from the thicker, richer broth in a separate bowl alongside toppings like sliced pork, green onions, and a soft-boiled egg.", price: "$8.9"),

]
