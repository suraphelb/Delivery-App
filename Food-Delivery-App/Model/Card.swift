//
//  Card.swift
//  Food-Delivery-App
//
//  Created by Suraphel Birhane on 8/31/24.
//

import Foundation

struct Card : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
    var stars : Int
    var price = "$\(Int.random(in: 10...25)).00"
    var expand : Bool
}

var TrendingCard = [
    Card(id: 0, image: "maxresdefault1", title: "Beef Burger", descrip: "Best Seller",stars: 5, expand: false),
    Card(id: 1, image: "maxresdefault2", title: "Veggie Combo", descrip: "Veggie Combo",stars: 3, expand: false),
    Card(id: 2, image: "maxresdefault3", title: "Chinese Salad", descrip: "Best Seller",stars: 4, expand: false),
    Card(id: 3, image: "maxresdefault1", title: "Chicken Sandwich", descrip: "KoreanBBQ",stars: 5, expand: false),
    Card(id: 4, image: "maxresdefault2", title: "Shrimp Fries", descrip: "Hot Sauce",stars: 3, expand: false),
    Card(id: 5, image: "maxresdefault3", title: "Fruit punch", descrip: "dont buy it",stars: 1, expand: false),
]

var FoodTypes = ["Pizza","Drinks","Tacos","Burger","Fries","Top"]
