//
//  bi.swift
//  miniProject
//
//  Created by Hanan Dashti on 03/01/2021.
//

import Foundation

struct res : Identifiable {
    
    let name : String
    let nob : String
    let hb : String
    let Tpr : String
    
    var id = UUID()
    
    
}

struct pic : Identifiable {
    var id = UUID()
    
    let namePic: String
    let price : Double
    
}


let pic1 = [

    pic(namePic: "1", price: 5.0),
    pic(namePic: "2", price: 5.0),
    pic(namePic: "3", price: 5.0),
    pic(namePic: "4", price: 5.0),
    pic(namePic: "5", price: 5.0),
    pic(namePic: "6", price: 5.0),
    pic(namePic: "7", price: 5.0),
    

]
