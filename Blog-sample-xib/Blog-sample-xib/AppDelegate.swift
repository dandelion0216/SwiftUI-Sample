//
//  AppDelegate.swift
//  Blog-sample-xib
//
//  Created by Nobuharu Kusama on 2023/03/19.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navi = UINavigationController(rootViewController: ViewController())
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navi
        window?.makeKeyAndVisible()
        return true
    }
}

