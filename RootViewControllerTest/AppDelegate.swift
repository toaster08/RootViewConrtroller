//
//  AppDelegate.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/02.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UserDefaults.standard.isLogined = [true, false].randomElement()!
        RootViewContorller.root.showInitialView(window: UIWindow(frame: UIScreen.main.bounds))
        return true
    }

  

}

