//
//  UIBarButtonItem-extension.swift
//  PLLive
//
//  Created by zpz on 2018/3/15.
//  Copyright © 2018年 zpz. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    convenience init(imageName: String, hightImageName : String = "", size : CGSize = CGSize(width: 0, height: 0)) {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        if hightImageName != "" {
            btn.setImage(UIImage(named: hightImageName), for: .highlighted)
        }
        if size == CGSize(width: 0, height: 0) {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        }
        self.init(customView: btn)
    }
    
}
