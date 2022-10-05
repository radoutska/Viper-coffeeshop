//
//  CoffeeshopRouter.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/18/22.
//

import Foundation
import UIKit

class CoffeeshopRouter {
        
    func pushToItemDetail(on view: PresenterToViewProtocol, with item: MenuItem) {
        print("QuotesRouter is instructed to push QuoteDetailViewController onto the navigation stack.")
        let itemDetailViewController = MenuItemDetailRouter.createModule(with: item)
        
        let viewController = view as! CoffeeshopViewController
        viewController.navigationController?
            .pushViewController(itemDetailViewController, animated: true)
    }
    
}

extension CoffeeshopRouter: PresenterToRouterProtocol {
    static func createModule() -> UINavigationController {
            
            print("QuotesRouter creates the Quotes module.")
            let viewController = CoffeeshopMainViewController()
            let navigationController = UINavigationController(rootViewController: viewController)
            
            let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = CoffeeshopPresenter()
            
            viewController.presenter = presenter
            viewController.presenter?.router = CoffeeshopRouter()
            viewController.presenter?.view = viewController
            viewController.presenter?.interactor = CoffeeshopInteractor()
            viewController.presenter?.interactor?.presenter = presenter
            
            return navigationController
        }
}
