//
//  FirstViewController.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let myView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.white
        // Do any additional setup after loading the view.
        myView.frame=CGRect(x: 100, y: 100, width: 200, height: 200)
        myView.backgroundColor=UIColor .red
        view.addSubview(myView)
        
        let myButton=CustomButton(frame: CGRect (x: 100, y: 350, width: 200, height:200))
        myButton.backgroundColor=UIColor .gray
        UIApplication.shared.keyWindow?.addSubview(myButton)

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myView .removeFromSuperview()
        DispatchQueue.main.asyncAfter(deadline: .now()+1, execute: {
            //removeFromSuperview之后 view 还存在内存当中没有被删除
            print(self)
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
