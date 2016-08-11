//
//  ViewController.swift
//  18-MJExtension
//
//  Created by zhaoyou on 16/7/29.
//  Copyright © 2016年 zhaoyou. All rights reserved.
//

import UIKit
import MJExtension

class ViewController: UIViewController {

    // MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK: Initialization
    /**
     初始化UI
     */
    private func setupUI() {
        // 属性设置
        
        // 添加控件
        view.addSubview(myButton)
        
        // 布局控件
        myButton.frame = CGRect(x: 10, y: 100, width: 150, height: 40)
    }
    
    // MARK: Private Method
    /// 简单的字典 -> 模型
    private func keyValues2object() {
        let dict: [String: AnyObject]? = [
            "name" : "Jack",
            "icon" : "lufy.png",
            "age" : "20",
            "height" : 1.55,
            "money" : "100.9",
//            "sex" : Sex.SexFemale,
            "gay" : "1"
        //  @"gay" : @"NO"
        //  @"gay" : @"true"
        ]
        
        let user = DSUserModel.mj_objectWithKeyValues(dict)
        print(user)
    }
    
    /// JSON字符串 -> 模型
    private func keyValues2object1() {
        let jsonString = "{\"name\":\"Jack\", \"icon\":\"lufy.png\", \"age\":20, \"height\":333333.7}"
        let user = DSUserModel.mj_objectWithKeyValues(jsonString)
        print(user)
    }
    
    /// 复杂的字典 -> 模型 (模型里面包含了模型)
    private func keyValues2object2() {
        let dict = [
            "text": "是啊，今天天气不错啊",
            "user": ["name": "Jack", "icon": "lufy.png"],
            "retweetedStatus": [["text": "今天天气真好"], ["user": ["name": "Rose", "icon": "nami.png"]]]
            ]
        let status = DSStatusModel.mj_objectWithKeyValues(dict)
        
        print(status)
    }
    
    /// 复杂的字典 -> 模型 (模型的数组属性里面又装着模型)
    private func keyValues2object3() {
        let dict = [
            "statuses": [
                ["text": "今天天气真不错！", "user": ["name": "Rose", "icon": "nami.png"]],
                ["text": "明天去旅游了！", "user": ["name": "Jack", "icon": "lufy.png"]],
            ],
            "ads" : [
                ["image": "ad01.png", "url": "http://www.小码哥ad01.com"],
                ["image": "ad02.png", "url": "http://www.小码哥ad02.com"],
            ],
            "totalNumber": "2016",
            "previousCursor": "13476589",
            "nextCursor": "13476599"
        ]
        
//        let result = DSStatusResultModel.mj_objectWithKeyValues(dict)
        let result = DSStatusResultModel.ds_ObjectWithKeyValues(dict)
//        let result = DSStatusResultModel.he_objectWithKeyValues(dict) as! DSStatusResultModel
        
        
        
        print((result.statuses!))
        
        
//        for status in ((result.statuses! as NSArray) as! [DSStatusModel]) {
//            let text = status.text
//            let name = status.user?.name
//            let icon = status.user?.icon
//            print("text = \(text), name = \(name), icon = \(icon)")
//        }
        
    }
    
    /// 简单的字典 -> 模型（key替换，比如ID和id，支持多级映射）
    private func keyValues2object4() {
        
    }
    
    /// 字典数组 -> 模型数组
    private func keyValuesArray2objectArray() {
        
    }
    
    /// 模型转字典
    private func object2keyValues() {
        
    }
    
    /// 模型数组 -> 字典数组
    private func objectArray2keyValuesArray() {
        
    }
    
    /// CoreData示例
    private func coreData() {
        
    }
    
    /// NSCoding示例
    private func coding() {
        
    }
    
    /// 统一转换属性名（比如驼峰转下划线）
    private func replacedKeyFromPropertyName121() {
        
    }
    
    /// 过滤字典的值（比如字符串日期处理为NSDate、字符串nil处理为@""）
    private func newValueFromOldValue() {
        
    }
    
    /// 使用MJExtensionLog打印模型的所有属性
    private func logAllProperties() {
        
    }
    
    // MARK: Action
    func btnClick() {
//        keyValues2object()
//        keyValues2object1()
//        keyValues2object2()
        keyValues2object3()
        keyValues2object4()
        keyValuesArray2objectArray()
        object2keyValues()
        objectArray2keyValuesArray()
        coreData()
        coding()
        replacedKeyFromPropertyName121()
        newValueFromOldValue()
        logAllProperties()
    }
    
    // MARK: Lazy
    /// 懒加载btn
    private lazy var myButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("点我测试", forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        btn.setTitleColor(UIColor.darkGrayColor(), forState: UIControlState.Highlighted)
        btn.backgroundColor = UIColor.brownColor()
        
        btn.sizeToFit()
        
        btn.addTarget(self, action: #selector(self.btnClick), forControlEvents: UIControlEvents.TouchUpInside)
        
        return btn
    }()


}

