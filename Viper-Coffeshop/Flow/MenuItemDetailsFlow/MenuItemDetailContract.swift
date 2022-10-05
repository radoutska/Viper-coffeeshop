//
//  MenuItemDetailContract.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 10/5/22.
//

import Foundation
import UIKit

// MARK: View Output (Presenter -> View)
protocol PresenterToViewItemDetailProtocol: class {
    
    func onGetImageFromURLSuccess(_ item: MenuItem, character: String, image: UIImage)
    func onGetImageFromURLFailure(_ item: MenuItem, character: String)
}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterItemDetailProtocol: class {
    
    var view: PresenterToViewItemDetailProtocol? { get set }
    var interactor: PresenterToInteractorItemDetailProtocol? { get set }
    var router: PresenterToRouterItemDetailProtocol? { get set }

    func viewDidLoad()
    
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorItemDetailProtocol: class {
    
    var presenter: InteractorToPresenterItemDetailProtocol? { get set }
    
    var item: MenuItem? { get set }
    
    func getImageDataFromURL()
    
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterItemDetailProtocol: class {
    
    func getImageFromURLSuccess(item: MenuItem, data: Data?)
    func getImageFromURLFailure(item: MenuItem)
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterItemDetailProtocol: class {
    
    static func createModule(with item: MenuItem) -> UIViewController
}
