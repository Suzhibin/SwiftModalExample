//
//  ViewController.swift
//  SwiftModalExample
//
//  Created by Suzhibin on 2020/6/2.
//  Copyright © 2020 Suzhibin. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            
            switch indexPath.row {
            case 0:
                performSegue(withIdentifier: "FirstViewController", sender: nil)
            case 1:
                performSegue(withIdentifier: "SecondViewController", sender: nil)
            case 2:
                performSegue(withIdentifier: "ThirdViewController", sender: nil)
            case 3:
                performSegue(withIdentifier: "FourthViewController", sender: nil)
            case 4:
               performSegue(withIdentifier: "FifthViewController", sender: nil)
            default:
                return
            }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           if (segue.identifier == "FirstViewController") {
               let send = segue.destination
               send.title="多层view  弹出"
               return
           }
           if (segue.identifier == "EarlierSegue") {
               let send = segue.destination
               send.title="系统 模态弹出Controller 只能弹一次"
               return
           }
           if (segue.identifier == "EarlierSegue") {
               let send = segue.destination
               send.title="系统 模态弹出Controller 可弹多次"
               return
           }
           if (segue.identifier == "EarlierSegue") {
               let send = segue.destination
               send.title="UIPresentationController   只能弹一次"
               return
           }
           if (segue.identifier == "EarlierSegue") {
               let send = segue.destination
               send.title="UIPresentationController   可弹多次"
               return
           }
       }

}

