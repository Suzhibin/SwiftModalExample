//
//  CustomView.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class CustomView: UIButton {
    override init(frame: CGRect) {
        super.init(frame:frame)
        setTitle("点我消失", for: .normal)
        setTitleColor(UIColor.white, for: .normal)
        addTarget(self, action: #selector(btn_Action), for: .touchUpInside)

    }
    @objc func btn_Action(sender:UIButton) {
        UIView.animate(withDuration: 0.3, animations: {
            self.alpha = 0.2
        }) { finished in
            self.removeFromSuperview()
        }
    }
    required init?(coder aDecoder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
