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
    
    
    @IBOutlet private weak var nextButton: UIButton!{
        didSet{
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }

    @objc func tapNextButton(_ sender:UIResponder){
        RootViewContorller.root.showFirst(from: self)
    }
    
}
