//
//  Third.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/06.
//

import UIKit

class ThirdViewController: UIViewController {
    
    static func instanced(countModel:CountModel) -> ThirdViewController {
      let vc = UIStoryboard.thirdViewController
        vc.countModel = countModel
      return vc
    }
    
    private var countModel = CountModel.init(count: 0)
    
    @IBOutlet private weak var countLabel: UILabel!{
        didSet{
            countLabel.text = "前の画面から渡された情報:\(countModel.count.description)"
        }
    }
    
    
    @IBOutlet private weak var reStartButton: UIButton! {
      didSet {
        //RootViewContorller.root.reStart()
        //Unbalanced calls to begin/end appearance transitions for <UINavigationControllerにより画面が作成されない
        //意味としてはNavigationControllerの起動と終了表示の遷移を呼んでいて不安定
        
        //touchUpInsideによるイベントのため初期化時にインスタンスが生成されたのみでは影響しない
        reStartButton.addTarget(self, action: #selector(tapReStartButton(_:)), for: .touchUpInside)
      }
    }

    @objc private func tapReStartButton(_ sender: UIResponder) {
      RootViewContorller.root.reStart()
    }
    
    
    
    
}
