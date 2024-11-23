//
//  AppDelegate.swift
//  Rune
//
//  Created by sovinskii on 07.10.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var navController = UINavigationController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let mainViewController = MainViewController()
        self.navController = UINavigationController(rootViewController: mainViewController)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = self.navController
        self.window?.makeKeyAndVisible()
        

        return true
    }



}

