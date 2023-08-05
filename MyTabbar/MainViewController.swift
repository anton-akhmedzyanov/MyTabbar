//
//  MainViewController.swift
//  MyTabbar
//
//  Created by Anton Akhmedzyanov on 03.08.2023.
//

import UIKit

class MainViewController: UIViewController {

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabbarVc = segue.destination as? UITabBarController else { return }
        guard let viewcontrollers = tabbarVc.viewControllers else { return }
        
        for viewcontroller in viewcontrollers {
            if let firstVC = viewcontroller as? FirstViewController {
                firstVC.view.backgroundColor = .green
            } else if let secondVC = viewcontroller as? SecondViewController {
                secondVC.view.backgroundColor = .systemCyan
            } else if let navigationVC = viewcontroller as? UINavigationController {
                guard let thirdVC = navigationVC.topViewController as? ThirdViewController else {return}
                thirdVC.title = "Third screen"
                thirdVC.view.backgroundColor = .systemMint
            }
        }
    }
}
