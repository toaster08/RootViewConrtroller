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
    

    private var countModel = CountModel.init(count: 0)
    
    
    @IBOutlet private weak var countLabel: UILabel!{
        didSet{
            countLabel.text = countModel.count.description
        }
        
    }
    
    @IBOutlet weak var countUpButton: UIButton!{
        didSet{
            countUpButton.addTarget(self, action: #selector(tapToCountUp(_:)), for: .touchUpInside)
        }
    }
    
    @objc private func tapToCountUp(_ sender:UIResponder){
        countModel.count += 1
        countLabel.text = countModel.count.description
    }
    
    
    @IBOutlet private weak var nextButton: UIButton!{
        didSet{
            nextButton.addTarget(self, action: #selector(tapNextButton(_:)), for: .touchUpInside)
        }
    }

    @objc func tapNextButton(_ sender:UIResponder){
        RootViewContorller.root.showThird(from: self,countModel: countModel)
    }
    
 
        
}
