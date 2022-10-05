//
//  CoffeeshopMainView.swift
//  Viper-Coffeeshop
//
//  Created by Anna Radoutska on 7/19/22.
//

import Foundation
import UIKit

protocol CoffeeshopMainViewDelegate: AnyObject {

    func didTap()
}


final class CoffeeshopMainView: UIView {
    
    weak var delegate: CoffeeshopMainViewDelegate?
    
    let testButton = UIButton()
    
    init(){
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        setupLayout()
        setupActions()
    }
    
    private func setupLayout() {
        
        self.addSubview(testButton)
        testButton.backgroundColor = .darkGray
        testButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            testButton.heightAnchor.constraint(equalToConstant: 100),
            testButton.widthAnchor.constraint(equalToConstant: 100),
            testButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            testButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 100)
        ])
        testButton.addTarget(self, action: #selector(buttonAction), for: UIControl.Event.touchUpInside)
        // TODO: Create layout
    }
    
    private func setupActions() {
        // TODO: Setup delegates here
    }
    
    @objc
    private func buttonAction() {
        delegate?.didTap()
    }
}
