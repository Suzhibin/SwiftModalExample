//
//  ThirdViewController.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showRedVC()
    }
  
    func showRedVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        vc.view.backgroundColor=UIColor.red
        let topVC = topMostController()
        topVC?.present(vc, animated: true, completion:{
            self.showGreenVC()
        })
    }
    func showGreenVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        vc.view.backgroundColor=UIColor.green
        let topVC = topMostController()
        topVC?.present(vc, animated: true, completion:{
            self.showAlertVC()
        })
    }
    
    func showAlertVC() {
        let alertVC = UIAlertController(title: "大家好", message: "欢迎来到德莱联盟", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: nil)
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction)
        let topVC = topMostController()
        topVC?.present(alertVC, animated: true, completion:nil)
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
