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
    
    
    /*
     Accrued interest 应计利息
     
     interest rate  含息价格
     */
    
    func interest_rate(final_payment: Float , interest_rate : Float) -> Float {
        return final_payment + interest_rate
    }
    
    /*
     Combination weight  组合权重
     
     */
    
    class func combination_weight(combination : [Double] , single_item : Double) -> [Double] {
        var sum :Double = 0.0
        for (_ , item) in combination.enumerated() {
            sum = sum + item
        }
        var results : [Double] = []
        
        for (_ , item) in combination.enumerated() {
            let result = item / sum * 100
            results.append(result)
        }
        return results
        
    }
    
    
    /*
     
     */
    
}
