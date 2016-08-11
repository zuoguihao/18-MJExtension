//
//  DSUserModel.swift
//  18-MJExtension
//
//  Created by zhaoyou on 16/7/29.
//  Copyright © 2016年 zhaoyou. All rights reserved.
//

import UIKit

enum Sex {
    case SexMale;
    case SexFemale
}

class DSUserModel: NSObject {

    /// 名称
    var name: String?
    /// 头像
    var icon: String?
    /// 基本数据类型必须有默认值！！！
    /// 年龄
    var age: UInt = 0
    /// 身高
    var height: NSNumber?
    /// 财富
    var money: NSDecimalNumber?
    /// 性别
    var sex: Sex?
    /// 基本数据类型必须有默认值！！！
    /// 同性恋
    var gay: Bool = false
}
