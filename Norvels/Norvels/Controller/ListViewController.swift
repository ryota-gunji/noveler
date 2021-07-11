//
//  ListViewController.swift
//  Norvels
//
//  Created by 郡司稜太 on 2021/06/08.
//

import UIKit

class ListViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    let sampleArray = ["野球道","青春アミーゴ","We Will Rock You"]
    let sampleUserArray = ["鈴木一郎","山下智久","フレディマーキュリー"]
    var mode:String!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var createButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 5, height: 10))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "Logo")
        imageView.image = image
        self.navigationItem.titleView = imageView
        
        createButton.layer.cornerRadius = 8.0
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
        //上にスワイプしリロード
        tableView.refreshControl = UIRefreshControl()
        tableView.refreshControl?.addTarget(self, action: #selector(onRefresh(_:)), for: .valueChanged)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.titleLabel.text = sampleArray[indexPath.row]
        cell.userLabel.text = sampleUserArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 70
    }
    
    @objc private func onRefresh(_ sender: AnyObject) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.tableView.refreshControl?.endRefreshing()
        }
    }
}
