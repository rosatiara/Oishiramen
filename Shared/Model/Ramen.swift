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
    let price: String
    let isLiked: Bool = false
}

let ramens = [
    Ramen(ramenImage: "chikinkare", ramenName: "Chikinkare", ramenRating: "⭐⭐⭐⭐", price: "$5.4"),
    Ramen(ramenImage: "arigatou", ramenName: "Arigatou Ramen", ramenRating: "⭐⭐⭐⭐⭐", price: "$8.9"),
    Ramen(ramenImage: "midoriro", ramenName: "Midoriro Yasai", ramenRating: "⭐⭐⭐⭐⭐", price: "$6.3"),
    Ramen(ramenImage: "niko", ramenName: "Niko To Kinoko", ramenRating: "⭐⭐⭐⭐⭐", price: "$8.9"),

]
