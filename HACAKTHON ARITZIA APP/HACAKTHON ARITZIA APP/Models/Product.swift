//
//  Product.swift
//  HACAKTHON ARITZIA APP
//
//  Created by Shadan Namazi on 2023-01-13.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var color: String
    var image: String
    var type: String
}

var productList = [Product(name: "Lydia Top", color: "pink", image: "t1", type: "top"),
                   Product(name: "Sculpt Knit Criss Cross Tank", color: "white", image: "t2", type: "top"),
                   Product(name: "The Super Puff Shorty", color: "black", image: "t3", type: "top"),
                   Product(name: "Contour Scoopneck Longsleeve", color: "black", image: "t4", type: "top"),
                   Product(name: "Sculpt Knit Criss Cross Cropped Tank", color: "blue", image: "t5", type: "top"),
                   Product(name: "Sunday Best Rider Skirt", color: "beige", image: "b1", type: "bottom"),
                   Product(name: "The Melina Pant", color: "brown", image: "b2", type: "bottom"),
                   Product(name: "Dashwood Pant", color: "brown", image: "b3", type: "bottom"),
                   Product(name: "Supply Cargo Pant", color: "blue", image: "b4", type: "bottom"),
                   Product(name: "Cozy Fleece Mega Sweatpant", color: "red", image: "b5", type: "bottom")
]

var productNameList = [ "Lydia Top",
                        "Sculpt Knit Criss Cross Tank",
                        "The Super Puff Shorty","Contour Scoopneck Longsleeve",
                        "Sunday Best Rider Skirt",
                        "The Melina Pant",
                        "Dashwood Pan",
                        "Supply Cargo Pant",
                        "Cozy Fleece Mega Sweatpant"]
