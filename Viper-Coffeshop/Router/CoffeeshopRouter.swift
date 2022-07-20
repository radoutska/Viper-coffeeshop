//
//  CoffeeshopRouter.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 7/18/22.
//

import Foundation
import UIKit

enum RoutingDestinations {
    case mainPage
    case itemDescription(Int)
}
class CoffeshopRouter {
    
    var navigationController: UINavigationController = UINavigationController()
    
    
    func pushToScreen(destination: Int) {
        
        let detailsModule = CoffeshopRouter.createModule(destination: RoutingDestinations.itemDescription(destination))
        detailsModule.view.backgroundColor = .red
        navigationController.pushViewController(detailsModule, animated: true)
    }
}

extension CoffeshopRouter: PresenterToRouterProtocol {
    
    static func createModule(destination: RoutingDestinations) -> UIViewController {
        
        
        let presenter: ViewToPresenterProtocol & InteractorToPresenterProtocol = CoffeeshopPresenter()
        
        let viewController: CoffeeshopViewController & PresenterToViewProtocol
        switch destination {
        case .mainPage:
            viewController = CoffeeshopMainViewController(presenter: presenter)
            return viewController
        case .itemDescription(let int):
            viewController = CoffeeshopDescriptionViewController(presenter: presenter)
        }

        let interactor: PresenterToInteractorProtocol = CoffeeshopInteractor()
        let router:PresenterToRouterProtocol = CoffeshopRouter()
//
        viewController.presentor = presenter
        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return viewController
    }
    
}

//TODO: Ссылка на вьюконтроллер


