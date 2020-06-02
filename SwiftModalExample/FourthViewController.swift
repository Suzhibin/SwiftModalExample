//
//  FourthViewController.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showRedVC()
    }
    func showRedVC() {
        let configuration = ModalConfiguration.default
        configuration.direction = .bottom
        configuration.isEnableBackgroundAnimation=true//开启动画
        let size = CGSize(width: UIScreen.main.bounds.width, height: 300)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        vc.view.backgroundColor=UIColor.red
        presentModalViewController(vc, contentSize: size, configuration: configuration,completion:{
            self.showAlertVC()
        })
    }
    func showAlertVC() {
        let alertVC = UIAlertController(title: "大家好", message: "欢迎来到德莱联盟", preferredStyle: .actionSheet)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: nil)
        alertVC.addAction(cancelAction)
        alertVC.addAction(okAction)
        present(alertVC, animated: true, completion:{
            self.showGreenVC()
        })
    }
    func showGreenVC() {
        let configuration = ModalConfiguration.default
        configuration.direction = .left
        let size = CGSize(width: 200, height: 500)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        vc.view.backgroundColor=UIColor.green
        presentModalViewController(vc, contentSize: size, configuration: configuration, completion: nil)
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
