//
//  Extension + Tableview + CartViewController.swift
//  ChallengeUI
//
//  Created by Chondro on 25/12/22.
//

import Foundation
import SkeletonView
import UIKit

extension CartViewController:SkeletonTableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableviewCell = tableView.dequeueReusableCell(withIdentifier: EmptyCartTableViewCell.identifier)!
        return tableviewCell
    }
    
    func numSections(in collectionSkeletonView: UITableView) -> Int {
        return 2
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath) -> ReusableCellIdentifier {
        return EmptyCartTableViewCell.identifier
    }
    
    func collectionSkeletonView(_ skeletonView: UITableView, skeletonCellForRowAt indexPath: IndexPath) -> UITableViewCell? {
        let tableviewCell = skeletonView.dequeueReusableCell(withIdentifier: EmptyCartTableViewCell.identifier)!
        tableviewCell.isSkeletonable = true
        return tableviewCell
    }
}
