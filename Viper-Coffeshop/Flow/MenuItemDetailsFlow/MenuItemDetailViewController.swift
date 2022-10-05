//
//  MenuItemDetailViewController.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 10/5/22.
//

import Foundation
import UIKit

class MenuItemDetailViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()        
        presenter?.viewDidLoad()
        print("Detail View")
    }

    // MARK: - Properties
    var presenter: ViewToPresenterItemDetailProtocol?
  
}

extension MenuItemDetailViewController: PresenterToViewItemDetailProtocol {
    
    func onGetImageFromURLSuccess(_ item: MenuItem, character: String, image: UIImage) {
        print("View receives the response from Presenter and updates itself.")
//        quoteLabel.text = quote
//        characterImageView.image = image
//        self.navigationItem.title = character
    }
    
    func onGetImageFromURLFailure(_ item: MenuItem, character: String) {
        print("View receives the response from Presenter and updates itself.")
//        quoteLabel.text = quote
//        self.navigationItem.title = character
    }
    
}
