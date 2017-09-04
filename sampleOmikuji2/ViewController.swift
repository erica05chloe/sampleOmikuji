//
//  ViewController.swift
//  sampleOmikuji2
//
//  Created by erica chloe on 2017/09/04.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]

    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapUranai(_ sender: UIButton) {
        let r = Int(arc4random()) % omikuji.count
        
        let alert = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            if r == 0 {self.myImageView.image = UIImage(named: "daikichi.png")
            };if r == 1 {self.myImageView.image = UIImage(named: "kichi.png")
            };if r == 2 {self.myImageView.image = UIImage(named: "chuukichi.png")
            };if r == 3 {self.myImageView.image = UIImage(named: "shoukichi.png")
            };if r == 4 {self.myImageView.image = UIImage(named: "suekichi.png")
            };if r == 5 {self.myImageView.image = UIImage(named: "kyou.png")
            };if r == 6 {self.myImageView.image = UIImage(named: "daikyou.png")
            }
            
        }))
        
        present(alert,animated: true,completion:
            nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

