//
//  CoffeeshopDescriptionViewController.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/19/22.
//

import Foundation
import UIKit

class CoffeeshopDescriptionViewController: CoffeeshopViewController {
    
    init(presenter: ViewToPresenterProtocol) {
        super.init()
        self.presentor = presenter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

