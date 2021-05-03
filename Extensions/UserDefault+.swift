//
//  UserDefault+.swift
//  RootViewControllerTest
//
//  Created by 山田　天星 on 2021/05/03.
//

import UIKit
import Foundation

extension UserDefaults {
  //Computed property：計算型プロパティ
  //set節がないため、get{}の記述は不要
  private var loginedKey: String { "logined" }

  //同様にComputed
  //こちらはそれぞれset,getを持っているため省略不可　*順序は自由
  var isLogined: Bool {
    set {
      //.setはUserDefaultの追加・更新メソッド
      //コード上は.setValueとしているが、newValueの値によってオーバーロードメソッドが呼ばれる
      self.setValue(newValue, forKey: loginedKey)
    }
    get {
      self.bool(forKey: loginedKey)
    }
  }
}
