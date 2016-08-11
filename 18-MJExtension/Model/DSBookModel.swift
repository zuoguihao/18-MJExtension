//
//  DSBookModel.swift
//  18-MJExtension
//
//  Created by zhaoyou on 16/7/29.
//  Copyright © 2016年 zhaoyou. All rights reserved.
//

import UIKit
import MJExtension

class DSBookModel: NSObject {

    /// <#Description#>
    var name: String?
    
    var publisher: String?
    
    var publishedTime: NSDate?
    
    var box: DSBoxModel?
    
//    override func mj_newValueFromOldValue(oldValue: AnyObject!, property: MJProperty!) -> AnyObject! {
//        if property.name == "publisher" {
//            if oldValue == nil {
//                return ""
//            }
//        } else if property.type.typeClass == NSDate().classForCoder {
//            let fmt = NSDateFormatter()
//            fmt.dateFormat = "yyyy-MM-dd"
//            return fmt.dateFromString(oldValue as! String)
//        }
//        return oldValue
//    }
}
