//
//  MenuItem.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/19/22.
//

import Foundation


struct MenuItem {
    
    var name: String
    var weight: Int
    
    var description: String
    var price: Double
    
    
    init(){
        self.name = "Espresso"
        self.weight = 100
        self.description = "Straight coffee"
        self.price = 3.75
    }
}
