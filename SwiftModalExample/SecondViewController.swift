//
//  SecondViewController.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showRedVC()
    }
       
    func showRedVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        vc.view.backgroundColor=UIColor.red
        present(vc, animated: true, completion:{
            self.showGreenVC()
        })
    }
    func showGreenVC() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ModalViewController")
        vc.view.backgroundColor=UIColor.green
        present(vc, animated: true, completion: nil)
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
