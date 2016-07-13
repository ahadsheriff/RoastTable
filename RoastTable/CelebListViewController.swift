//
//  CelebListViewController.swift
//  RoastTable
//
//  Created by Ahad Sheriff on 7/12/16.
//  Copyright © 2016 Ahad Sheriff. All rights reserved.
//

import UIKit

class CelebListViewController: UITableViewController {
    
    let celebs = Celeb.celebsFromBundle()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return celebs.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        let cell: CelebListViewCell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! CelebListViewCell

        let celeb = celebs[indexPath.row]
        
        cell.setCell(celeb.twitter, imageName: celeb.imageName)

        return cell
    }

}
