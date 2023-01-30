//
//  ItemModel.swift
//  kingsims
//
//  Created by Marknel Pogi on 1/20/23.
//

import Foundation

struct Item : Identifiable {
    var id : Int
    var title : String
    var imageName : String
}
 
var lastItem = [Item(id: 0, title: "placeholder-carousel", imageName: "placeholder-carousel"),
                   Item(id: 1, title: "placeholder-carousel", imageName: "placeholder-carousel"),
                   Item(id: 2, title: "placeholder-carousel", imageName: "placeholder-carousel"),
                   Item(id: 3, title: "placeholder-carousel", imageName: "placeholder-carousel"),
                   Item(id: 4, title: "placeholder-carousel", imageName: "placeholder-carousel")]
