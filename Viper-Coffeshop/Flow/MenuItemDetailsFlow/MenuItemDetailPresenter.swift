//
//  MenuItemDetailPresenter.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 10/5/22.
//

import Foundation

class MenuItemDetailPresenter: ViewToPresenterItemDetailProtocol {
    
    // MARK: Properties
    weak var view: PresenterToViewItemDetailProtocol?
    var interactor: PresenterToInteractorItemDetailProtocol?
    var router: PresenterToRouterItemDetailProtocol?
    
    func viewDidLoad() {
        print("Presenter is being notified that the View was loaded.")
        interactor?.getImageDataFromURL()
    }
}

extension MenuItemDetailPresenter: InteractorToPresenterItemDetailProtocol {
    
    func getImageFromURLSuccess(item: MenuItem, data: Data?) {
        print("Presenter receives the result from Interactor after it's done its job.")

//        view?.onGetImageFromURLSuccess(quote.quote!, character: quote.character!, image: ImageDataService.shared.convertToUIImage(from: data!))
    }
    
    func getImageFromURLFailure(item: MenuItem) {
        print("Presenter receives the result from Interactor after it's done its job.")
//        view?.onGetImageFromURLFailure(quote.quote!, character: quote.character!)
    }
    
}
