//
//  FixedIncomeModel.swift
//  CIIA
//
//  Created by dujia on 05/07/2017.
//  Copyright © 2017 dujia. All rights reserved.
//

import Foundation


class FixedIncomeModel: NSObject {
    
    /*
    Yield to maturity 到期收益率
    Expiry date   到期期限
    final payment 最终支付价格
     
    return  除息价格
     */
    class func ex_dividend_price(final_payment : Float , yield_to_maturity : Float ,expiry_date:Float) -> Float
    {
        
        
        let ex_dividend_price = final_payment /  pow((1 + yield_to_maturity), expiry_date)
        
        return ex_dividend_price
    }
    
    
    
    
}
