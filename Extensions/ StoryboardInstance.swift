//
//  File.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/02.
//

import UIKit

extension UIStoryboard {
    
    static var firstViewController: FirstViewContorller {
        UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewContorller
    }
    
    static var secondViewController: SecondViewContorller {
        UIStoryboard.init(name: "Second", bundle: nil).instantiateInitialViewController() as! SecondViewContorller
    }
    
    
}
