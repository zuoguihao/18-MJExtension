//
//  DSStatusResultModel.swift
//  18-MJExtension
//
//  Created by zhaoyou on 16/7/29.
//  Copyright © 2016年 zhaoyou. All rights reserved.
//

import UIKit

class DSStatusResultModel: DSBaseObjectModel, DictModelProtocol {

    /// 存放着某一页微博数据（里面都是Status模型）
    var statuses: NSMutableArray?
    /// 存放着一堆的广告数据（里面都是MJAd模型）
    var ads: NSArray?
    /// 总数
    var totalNumber: NSNumber?
    /// 上一页的游标
    var previousCursor: CLongLong?
    /// 下一页的游标
    var nextCursor: CLongLong?
    
//    override static func mj_objectClassInArray() -> [NSObject : AnyObject]! {
//        return ["statuses": "DSStatusModel", "ads": "DSAdModel"]
//    }
    
    static func customClassMapping() -> [String : String]? {
        return ["statuses": "DSStatusModel"]
    }
}
