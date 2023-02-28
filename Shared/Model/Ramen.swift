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
    let price: String
    let isLiked: Bool = false
}

let ramens = [
    Ramen(ramenImage: "chikinkare", ramenName: "Kyoto Assari", ramenRating: "⭐⭐⭐⭐", ramenRatingNum: "4.2/5 (89)", price: "$5.4"),
    Ramen(ramenImage: "arigatou", ramenName: "Kumamoto", ramenRating: "⭐⭐⭐⭐⭐", ramenRatingNum: "4.8/5 (178)",price: "$8.9"),
    Ramen(ramenImage: "midoriro", ramenName: "Miroran Curry", ramenRating: "⭐⭐⭐⭐⭐", ramenRatingNum: "4.7/5 (66)",price: "$6.3"),
    Ramen(ramenImage: "niko", ramenName: "Tori-Paitan", ramenRating: "⭐⭐⭐⭐⭐",ramenRatingNum: "4.9/5 (1564)", price: "$8.9"),

]
