//
//  ViewController.swift
//  Janken
//
//  Created by AtsushiShimizu on 2020/04/11.
//  Copyright © 2020 ats432. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        // 新しいジャンケンの結果を一時的に格納する変数を設ける
        var newanswerNumber = 0
        
        // ランダムに結果を出力するが、前回の結果と異なる場合のみ採用
        // repeat while文の使用
        repeat {
            newanswerNumber = Int.random(in: 0 ..< 3)
        } while answerNumber == newanswerNumber
        
        answerNumber = newanswerNumber
        
        if answerNumber == 0 {
            // グー
            answerLabel.text = "グー"
            answerImageView.image = UIImage(named:"gu")
            
        }else if answerNumber == 1 {
            // チョキ
            answerLabel.text = "パー"
            answerImageView.image = UIImage(named:"pa")
            
        }else if answerNumber == 2 {
            // パー
            answerLabel.text = "チョキ"
            answerImageView.image = UIImage(named:"choki")
            
        }
        
    
    }
    
}

