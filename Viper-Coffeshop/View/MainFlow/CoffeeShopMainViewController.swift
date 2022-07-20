//
//  CoffeeshopMainViewController.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/19/22.
//

import Foundation
import UIKit

class CoffeeshopMainViewController: CoffeeshopViewController {
        
    var menu: [MenuItem]?
    
    var contentView = CoffeeshopMainView()
    
    init(presenter: ViewToPresenterProtocol) {
        super.init()
        self.presentor = presenter
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = contentView
        contentView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func showMenu(menu: Array<MenuItem>) {
        
        self.menu = menu
       // self.uiTableView.reloadData()
       // hideProgressIndicator(view: self.view)
        
    }
}


extension CoffeeshopMainViewController: CoffeeshopMainViewDelegate {
    func didTap() {
        presentor?.redirectToOtherView(destination: 1)
    }
    
    
}
