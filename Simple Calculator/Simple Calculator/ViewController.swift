//
//  ViewController.swift
//  Simple Calculator
//
//  Created by ooshiro yukiya on 2016/12/01.
//  Copyright © 2016年 ooshiro yukiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var left: UITextField!
    @IBOutlet weak var right: UITextField!
    @IBOutlet weak var fourArithmetic: UIPickerView!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var label: UILabel!
    
    var arithmetic = ["+","-","×","÷"]
    
    @IBAction func calculate(sender: AnyObject) {
        
        let GetLeftNum : Int = Int(left.text!)!
        let GetRightNum: Int = Int(right.text!)!
        
        //1列目の選択されている値のインデックス番号を取得する
        switch fourArithmetic.selectedRowInComponent(0) {
        case 0:
            result.text = String(GetLeftNum + GetRightNum)
        case 1:
            result.text = String(GetLeftNum - GetRightNum)
        case 2:
            result.text = String(GetLeftNum * GetRightNum)
        case 3:
            result.text = String(GetLeftNum / GetRightNum)
        default:
            break
            
        }
        
    }
    
    @IBAction func button(sender: AnyObject) {
        //ボタンが押された際のアクション（動作）を
        //ここに記載していく
        
        //ラベルにテキストフィールドの文字を代入（表示）する
        label.text = result.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //PickerViewの初期値
        //fourArithmetic.selectRow(1, inComponent: 0, animated: false)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /* PickerView関数 */
    //pickerに表示する列数を返す(実装必須)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1  //1列表示
        
    }

    //pickerに表示する行数を返す(実装必須)
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return arithmetic.count;  //選択肢の数
    }

    //PickerViewへの文字列の表示
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) ->
        String? {
        
        return arithmetic[row]  //文字の表示
    }
    
    

}

