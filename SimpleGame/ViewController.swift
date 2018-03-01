//
//《程式語言教學誌》的範例程式
// http://kaiching.org/
// 檔名：ViewController.swift
// 功能：猜數字遊戲的 Controller 類別
// 作者：張凱慶
//

import Cocoa

class ViewController: NSViewController {
    var g = Guess()
    var count = 0
    var flag = 0

    @IBOutlet weak var display: NSTextField!
    @IBOutlet weak var input: NSTextField!
    @IBOutlet weak var button: NSButton!
    
    @IBAction func guess(_ sender: NSButton) {
        count += 1
        let result = g.answer(Int(input.stringValue)!)
        switch (result) {
        case 0:
            display.stringValue = "答對！你猜了" + String(count) + "次..."
            flag = 1
            button.isEnabled = false
        case 1:
            display.stringValue = "大一點！"
        case 2:
            display.stringValue = "小一點！"
        default:
            display.stringValue = "不正確的輸入..."
        }
        
        if (flag == 0 && count == 3) {
            display.stringValue = "猜了三次也沒猜對，答案是" + String(g.number) + "。"
            button.isEnabled = false
        }
        
        input.stringValue = ""
    }
    
    @IBAction func again(_ sender: NSButton) {
        g = Guess()
        count = 0
        flag = 0
        button.isEnabled = true
        input.stringValue = ""
        display.stringValue = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

