//
//  CoffeeshopProtocols.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/19/22.
//

import Foundation
import UIKit

protocol ViewToPresenterProtocol: AnyObject {
    
    var view: PresenterToViewProtocol? {get set}
    var interactor: PresenterToInteractorProtocol? {get set}
    var router: PresenterToRouterProtocol? {get set}
    func startFetchingMenu()
    func redirectToDetailView(item: MenuItem)
}

protocol PresenterToViewProtocol: AnyObject{
    func showMenu(menu: Array<MenuItem>)
    func showError()
}

protocol PresenterToRouterProtocol: AnyObject {
    static func createModule()-> UINavigationController
    func pushToItemDetail(on view: PresenterToViewProtocol, with item: MenuItem) 
}

protocol PresenterToInteractorProtocol: AnyObject {
    var presenter:InteractorToPresenterProtocol? {get set}
    func fetchMenu()
}

protocol InteractorToPresenterProtocol: AnyObject {
    func menuFetchedSuccess(menu: Array<MenuItem>)
    func menuFetchFailed()
}

