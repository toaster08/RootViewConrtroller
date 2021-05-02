//
//  SecondViewController.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/02.
//

import UIKit

class SecondViewContorller: UIViewController {
    
    static func instanced() -> SecondViewContorller {
      let vc = UIStoryboard.secondViewController
      return vc
    }
    
    
}
