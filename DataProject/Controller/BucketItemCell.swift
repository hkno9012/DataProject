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
    var currentBucketItem : BucketItem!
    {
        didSet
        {
            updateCellView()
        }
    }
    
    @IBOutlet weak var bucketItemText: UILabel!
    @IBOutlet weak var bucketItemSymbol: UILabel!
    @IBOutlet weak var bucketItemSignature: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    private func updateCellView()-> Void
    {
        if (currentBucketItem != nil)
        {
            bucketItemSignature.text = currentBucketItem.itemAuthor
            bucketItemText.text = currentBucketItem.itemContents
        }
        else
        {
            bucketItemSignature.text = "Hunter?"
            bucketItemText.text = "Whatever goes in the bucket"
        }
        
        bucketItemSymbol.text = randomEmoji()
    }
    
    private func randomEmoji()-> String
    {
        let emojiStart = 0x1F601
        let emojiEnd = 0x1F64F
        let symbolStart = 0x1F680
        let symbolEnd = 0x1F6C5
        
        let emojiRange = 79
        let symbolRange = 70
        
        let ascii = emojiStart + Int(arc4random_uniform(UInt32(emojiRange)))
        let emoji = UnicodeScalar(ascii)?.description
        return emoji!
    }
}
