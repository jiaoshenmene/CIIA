//
//  ViewController.swift
//  CIIA
//
//  Created by dujia on 05/07/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       let a = FixedIncomeModel.ex_dividend_price(final_payment: 100, yield_to_maturity: 0.0331, expiry_date: 7.2)
        print(a)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

