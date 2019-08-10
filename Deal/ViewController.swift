//
//  ViewController.swift
//  Deal
//
//  Created by ben on 8/9/19.
//  Copyright © 2019 ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
    
        //left wins
        if leftNumber > rightNumber {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        //right wins
        else if leftNumber < rightNumber {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        //draw
        else {
            rightScore += 1
            leftScore += 1
            rightScoreLabel.text = String(rightScore)
            leftScoreLabel.text = String(leftScore)
        }
    }
}

