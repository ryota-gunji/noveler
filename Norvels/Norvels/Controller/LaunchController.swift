//
//  ViewController.swift
//  Norvels
//
//  Created by 郡司稜太 on 2021/06/06.
//

import UIKit

class LaunchController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            let nextVC = self.storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
                nextVC.modalPresentationStyle = .fullScreen
                self.present(nextVC, animated: true, completion: nil)
        }
    }


}

