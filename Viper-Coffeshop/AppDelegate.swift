//
//  AppDelegate.swift
//  Viper-Coffeshop
//
//  Created by Anna Radoutska on 7/18/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.backgroundColor = .white
        window?.rootViewController = CoffeeshopRouter.createModule()
        window?.makeKeyAndVisible()
        
        return true

    }


}
