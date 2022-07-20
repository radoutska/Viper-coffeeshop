//
//  CoffeeshopPresenter.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 7/18/22.
//

import Foundation
import UIKit

class CoffeeshopPresenter {
    
    var view: PresenterToViewProtocol?
       
    var interactor: PresenterToInteractorProtocol?
       
    var router: PresenterToRouterProtocol? = CoffeshopRouter()
    
}

extension CoffeeshopPresenter: ViewToPresenterProtocol {


    func startFetchingMenu() {
        interactor?.fetchMenu()
    }
    
    func showViewController() {
        let destination: Int = 1
        router?.pushToScreen(destination: destination)
       }
    
    func redirectToOtherView(destination: Int) {
        let destination: Int = 2
        router?.pushToScreen(destination: destination)
    }
    
}


extension CoffeeshopPresenter: InteractorToPresenterProtocol {
    func menuFetchedSuccess(menu: Array<MenuItem>) {
        // TODO: Finish
    }
    
    func menuFetchFailed() {
        // TODO: Finish
    }
    
    
}
