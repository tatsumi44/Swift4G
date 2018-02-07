//
//  ViewController.swift
//  Swift4password
//
//  Created by tatsumi kentaro on 2018/02/02.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var num1: UILabel!
    @IBOutlet var num2: UILabel!
    @IBOutlet var num3: UILabel!
    @IBOutlet var num4: UILabel!
    
    
    @IBOutlet var countup: UILabel!
    
    
    var password: Int = 5693
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func start(){
        
        for i in 0...9999 {
            countup.text = String(i)
            RunLoop.main.run(until: Date(timeIntervalSinceNow: 0.0005))
            if i == password{
                
                print(i)
                
                
//
                var array = [Int]()

                

                for _ in 0...3{
                    array.append(password % 10)
                    password = password / 10
                }
                 num1.text = String(array[3])
                 num2.text = String(array[2])
                 num3.text = String(array[1])
                 num4.text = String(array[0])
                
                break
            }
        }
        
    }
    
    @IBAction func reset(){
        
        password = 5693
        countup.text = "パスワードの解析を開始"
        
        num1.text = String(0)
        num2.text = String(0)
        num3.text = String(0)
        num4.text = String(0)
        
        
        
    }


}

