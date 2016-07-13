//
//  CelebListViewCell.swift
//  RoastTable
//
//  Created by Ahad Sheriff on 7/13/16.
//  Copyright © 2016 Ahad Sheriff. All rights reserved.
//

import UIKit

class CelebListViewCell: UITableViewCell {

    @IBOutlet weak var pic: UIImageView!
    
    @IBOutlet weak var handle: UILabel!
    
    func setCell(handleText: String, imageName: String) {
        self.handle.text = handleText
        self.pic.image = UIImage(named: imageName)
    }
    
}
