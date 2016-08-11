//
//  DSStatusModel.swift
//  18-MJExtension
//
//  Created by zhaoyou on 16/7/29.
//  Copyright © 2016年 zhaoyou. All rights reserved.
//

import UIKit

class DSStatusModel: NSObject {

    /// 微博文本内容
    var text: String?
    /// 微博作者
    var user: DSUserModel?
    /// 转发的微博
    var retweetedStatus: DSStatusModel?
}
