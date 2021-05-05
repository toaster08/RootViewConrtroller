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
    
    @IBOutlet private weak var nextButton: UIButton!{
        didSet{
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }

    @objc func tapNextButton(_ sender:UIResponder){
        RootViewContorller.root.showSecond(from: self)
    }
}
