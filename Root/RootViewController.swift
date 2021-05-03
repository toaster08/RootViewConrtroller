//
//  RootViewController.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/02.
//
import UIKit

final class RootViewContorller {
    
    static let root: RootViewContorller = .init()
    private init(){}
    
    private (set) var window: UIWindow?
    
    func showInitialView(window: UIWindow?) {
        
        if !UserDefaults.standard.isLogined {
            let vc = FirstViewContorller.instanced()
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav
        } else {
            let vc = SecondViewContorller.instanced()
            let nav = UINavigationController(rootViewController: vc)
            window?.rootViewController = nav
        }
        window?.makeKeyAndVisible()
        self.window = window
    }
    
}
