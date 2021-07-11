//
//  HomeViewController.swift
//  Norvels
//
//  Created by 郡司稜太 on 2021/06/07.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var createButton: UIImageView!
    @IBOutlet weak var playButton: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchPlayButton(_ sender: UIImageView) {
        let nextVC = self.storyboard?.instantiateViewController(identifier: "NavigationViewController") as! UINavigationController
            nextVC.modalPresentationStyle = .fullScreen
        let followingVC = nextVC.viewControllers[0] as! ListViewController
        switch sender {
        case createButton:
            followingVC.mode = "create"
        case playButton:
            followingVC.mode = "play"
        default:
            print("default")
        }
            self.present(nextVC, animated: true, completion: nil)
    }
    
}
