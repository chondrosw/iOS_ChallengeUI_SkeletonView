//
//  CartViewController.swift
//  ChallengeUI
//
//  Created by Chondro on 24/12/22.
//

import UIKit
import SkeletonView
import SnapKit

class CartViewController: UIViewController {
    
    lazy var tableView:UITableView = {
        let view = UITableView()
        view.showsVerticalScrollIndicator = false
        view.backgroundColor = .white
        view.separatorColor = .clear
        view.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 16, right: 0)
        view.isSkeletonable = true
        return view
    }()
    
    lazy var refreshControl:UIRefreshControl = {
        let view = UIRefreshControl()
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        // Do any additional setup after loading the view.
    }
    
    private func setupView(){
        tableViewConstraint()
    }
    
    private func tableViewConstraint(){
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints{ make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        tableView.delegate = self
        tableView.dataSource = self
        tableView.addSubview(refreshControl)
        refreshControl.addTarget(self, action: #selector(refreshDataTableview), for: .valueChanged)
        
        tableView.register(EmptyCartTableViewCell.self, forCellReuseIdentifier: EmptyCartTableViewCell.identifier)
    }
    
    @objc private func refreshDataTableview(){
        refreshControl.endRefreshing()
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
