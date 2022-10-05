//
//  MenuItemDetailRouter.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 10/5/22.
//

import Foundation
import UIKit

class MenuItemDetailRouter: PresenterToRouterItemDetailProtocol {
    
    // MARK: Static methods
    static func createModule(with item: MenuItem) -> UIViewController {
        print("QuoteDetailRouter creates the QuoteDetail module.")
        let viewController = MenuItemDetailViewController()
        
        let presenter: ViewToPresenterItemDetailProtocol & InteractorToPresenterItemDetailProtocol = MenuItemDetailPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = MenuItemDetailRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MenuItemDetailInteractor()
        viewController.presenter?.interactor?.item = item
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
