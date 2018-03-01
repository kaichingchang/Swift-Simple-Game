//
//《程式語言教學誌》的範例程式
// http://kaiching.org/
// 檔名：Guess.swift
// 功能：猜數字遊戲的 Model 類別
// 作者：張凱慶
//

import Foundation

class Guess {
    let number = arc4random_uniform(10)
    
    func answer(_ guess:Int) -> Int {
        if number == guess {
            return 0
        }
        else {
            if number > guess {
                return 1
            }
            else {
                return 2
            }
        }
    }
}
