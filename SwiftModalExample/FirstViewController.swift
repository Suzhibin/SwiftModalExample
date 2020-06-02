//
//  FirstViewController.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.white
        // Do any additional setup after loading the view.
        let myView = CustomView(frame:CGRect (x: 100, y: 100, width: 200, height:200))
        myView.backgroundColor=UIColor .red
        view.addSubview(myView)
        
        let myView1 = CustomView(frame:CGRect (x: 100, y: 200, width: 200, height:200))
        myView1.backgroundColor=UIColor .gray
        view.addSubview(myView1)
        
        let myView2 = CustomView(frame:CGRect (x: 200, y: 400, width: 200, height:200))
        myView2.backgroundColor=UIColor .green
        view.addSubview(myView2)
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
