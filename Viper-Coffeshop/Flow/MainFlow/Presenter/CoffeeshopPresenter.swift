//
//  CoffeeshopPresenter.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/18/22.
//

import Foundation
import UIKit

class CoffeeshopPresenter: InteractorToPresenterProtocol {
    
    weak var view: PresenterToViewProtocol?
       
    var interactor: PresenterToInteractorProtocol?
       
    var router: PresenterToRouterProtocol? = CoffeeshopRouter()
    
}

extension CoffeeshopPresenter: ViewToPresenterProtocol {

    func startFetchingMenu() {
        interactor?.fetchMenu()
    }
    
    func redirectToDetailView(item: MenuItem) {
        print("Start Pushing")
        router?.pushToItemDetail(on: view!, with: item)
    }
}


extension CoffeeshopPresenter {
    
    func menuFetchedSuccess(menu: Array<MenuItem>) {
        // TODO: Finish
    }
    
    func menuFetchFailed() {
        // TODO: Finish
    }
    
    
}
