//
//  BucketItemCell.swift
//  DataProject
//
//  Created by Knott, Hunter on 11/30/18.
//  Copyright © 2018 Knott, Hunter. All rights reserved.
//

import UIKit

class BucketItemCell: UITableViewCell
{

    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
