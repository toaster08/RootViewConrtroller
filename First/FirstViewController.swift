//
//  FIrstViewController.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/02.
//

import UIKit

class FirstViewContorller: UIViewController {
    
    static func instanced() -> FirstViewContorller {
        let vc = UIStoryboard.firstViewController
      return vc
    }
    
    
}
