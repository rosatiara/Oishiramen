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
    Ramen(ramenImage: "chikinkare", ramenName: "Kyoto Assari", ramenRating: "⭐⭐⭐⭐", price: "$5.4"),
    Ramen(ramenImage: "arigatou", ramenName: "Kumamoto", ramenRating: "⭐⭐⭐⭐⭐", price: "$8.9"),
    Ramen(ramenImage: "midoriro", ramenName: "Miroran Curry", ramenRating: "⭐⭐⭐⭐⭐", price: "$6.3"),
    Ramen(ramenImage: "niko", ramenName: "Tori-Paitan", ramenRating: "⭐⭐⭐⭐⭐", price: "$8.9"),

]
