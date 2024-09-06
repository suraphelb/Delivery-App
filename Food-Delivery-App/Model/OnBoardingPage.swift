// Here I found some error that I fix earlier. Just so you know.
//  OnBoardingPage.swift
//  Food-Delivery-App
//
//  Created by Suraphel Birhane on 8/31/24.
//

import Foundation

struct Page : Identifiable {
    var id : Int
    var image : String
    var title : String
    var descrip : String
}

var Data = [
    Page(id: 0, image: "discover", title: "Explore Local Restaurants", descrip: "Easily find the best places to eat around you. Enter your address, and we'll take care of the rest."),
    Page(id: 1, image: "choose", title: "Select Your Favorite Dish", descrip: "Browse a variety of delicious options and choose the meal that satisfies your cravings."),
    Page(id: 2, image: "pick", title: "Your Order is on Its Way", descrip: "Your chosen meal is being prepared and will be delivered to your doorstep soon. Enjoy!")
]
