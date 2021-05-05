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
    
    func showSecond(from:UIViewController){
        let vc = SecondViewContorller.instanced()
        show(from: from, next: vc)
    }

}
    
private extension RootViewContorller {
  //animatedはデフォルトとしてtrueに指定
  func show(from: UIViewController, next: UIViewController, animated: Bool = true) {
    if let nav = from.navigationController {
      //pushViewControllerはnavigationControllerでなければ使うことができない
      //そのため、if letで存在を確かめている
      //.navigationControllerはUINavigationController class
      //UINavigationControllerはUIViewControllerを継承している
      //そのためparameterとして取得できる
      nav.pushViewController(next, animated: animated)
    } else {
      //NavigationControllerによらないtransition
      from.present(next, animated: animated, completion: nil)
    }
  }
}


