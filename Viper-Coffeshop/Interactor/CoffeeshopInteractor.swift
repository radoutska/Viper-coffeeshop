//
//  CoffeeshopInteractor.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/18/22.
//

import Foundation

class CoffeeshopInteractor {
    
    var presenter: InteractorToPresenterProtocol?
    
    var menuItem: Array<MenuItem> = []
    
    var service = MenuFetchService()
    
}

extension CoffeeshopInteractor: PresenterToInteractorProtocol {
    func fetchMenu() {
        // TODO: Add request to service
        return
    }
    
    
}

// TODO: Запросы ко всем серверам

