//
//  ViewController.swift
//  math103
//
//  Created by iOS Student on 9/30/16.
//  Copyright © 2016 iOS Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_p1: UILabel!
    
    @IBOutlet weak var lbl_p2: UILabel!
    
    @IBOutlet weak var btn_b1: UIButton!
    
    @IBOutlet weak var btn_b2: UIButton!
    
    @IBOutlet weak var btn_b3: UIButton!
    
    @IBOutlet weak var lbl_time1: UILabel!
    var i1 = 0
    @IBOutlet weak var lbl_time2: UILabel!
    var i2 = 0
    @IBOutlet weak var timerlabel: UILabel!
    
    var count = 10
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
    }
    
    func countdown(){
        if(count > 0){
            count -= 1
            timerlabel.text = String(count)
            if count == 0 {
                count = 10
             i1 = 0
                lbl_time1.text = "0"
            i2 = 0
                lbl_time2.text = "0"
            }
    }
    }
    
    
    
    
    
    
    

        @IBAction func Ibn_action(_ sender: UIButton) {
    
    
        if (ketqua == Int(sender.currentTitle!))
        {
            i1 = sum(p1: i1, p2: 1)
            lbl_time1.text = String(i1)
            
        }
        else
        {
            i2 = sum(p1: i2, p2: 1)
            lbl_time2.text = String(i2)
        }
        
        setRandom()
        
    }
    
    
    
    
    
    
    
    var ketqua = 0
    
    
    
    func setRandom()
    {
        let random1 = Int(arc4random_uniform(4)) + 1
        let random2 = Int(arc4random_uniform(4)) + 1
        
        print("\(random1)\(random2)")
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        
        let random11 = sum(p1: random1, p2: random2) - 1
        let random12 = sum(p1: random1, p2: random2) + 1
        
        
        setResult(randomA: random11, randomB: random12,randomC: sum(p1: random1, p2: random2))
        
        
        
        
    }
    
    func setResult(randomA: Int, randomB: Int, randomC: Int)
    {
        ketqua = randomC
        let randomposition = Int(arc4random_uniform(3))
        if (randomposition == 0)
        {
            btn_b1.setTitle(String(randomC), for: .normal)
            btn_b2.setTitle(String(randomA), for: .normal)
            
            btn_b3.setTitle(String(randomB),for: .normal)
        }
        else if (randomposition == 1)
        {
            btn_b1.setTitle(String(randomB), for: .normal)
            btn_b2.setTitle(String(randomC),for: .normal)
            btn_b3.setTitle(String(randomA), for: .normal)
            
        }
        else
        {
            btn_b1.setTitle(String(randomB), for: .normal)
            btn_b2.setTitle(String(randomA), for: .normal)
            btn_b3.setTitle(String(randomC), for: .normal)
        }
        
    }
    
    
    
    func sum(p1: Int, p2: Int) ->Int
    {
        
        return p1+p2;
    }
    
}


