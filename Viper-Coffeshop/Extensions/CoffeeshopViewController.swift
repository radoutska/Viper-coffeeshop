//
//  CoffeeshopViewController.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 7/19/22.
//

import UIKit

class CoffeeshopViewController: UIViewController, PresenterToViewProtocol {
    
    var presentor: ViewToPresenterProtocol?
    
    init() {
        super.init(nibName: nil, bundle: nil)
        presentor = CoffeeshopPresenter()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func showMenu(menu: Array<MenuItem>) {
        // self.uiTableView.reloadData()
        // hideProgressIndicator(view: self.view)
        
    }
    
    func showError() {
        
        //  hideProgressIndicator(view: self.view)
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching Menu", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}

