//
//  NSMutableAttributedStringExtensionViewController.swift
//  FoundationExtensionsExample
//
//  Created by 李泽群 on 2019/5/10.
//  Copyright © 2019 dancewithpeng@gmail.com All rights reserved.
//

import UIKit
import FoundationExtensions

class NSMutableAttributedStringExtensionViewController: UIViewController {
    
    @IBOutlet weak var displayView: UITextView!
    
    @IBOutlet weak var displayView2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // 修改文字样式
        let attText: NSMutableAttributedString = NSMutableAttributedString(string: "属性字符串的便捷方法，设置颜色、字间距、行间距、对齐方式等")
        attText.addStyle(color: .red, font: UIFont.boldSystemFont(ofSize: 18), lineSpace: 5, wordSpace: 10, alignment: .center, at: NSRange(location: 0, length: attText.length))
        
        displayView.attributedText = attText

        
        // 添加图片
        let attText2: NSMutableAttributedString = NSMutableAttributedString(string: "200万")
        attText2.addStyle(color: .orange, font: UIFont.boldSystemFont(ofSize: 18), at: NSRange(location: 0, length: attText2.length))
        attText2.append(image: UIImage(named: "悬赏金额")!, space: 5, rect: CGRect(x: 0, y: -2.5, width: 18, height: 18), at: NSRange(location: 0, length: 0))
        displayView2.attributedText = attText2

    }
}
