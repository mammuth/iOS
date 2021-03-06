//
//  BookRentalsCard.swift
//  TUM Campus App
//
//  Created by Tim Gymnich on 19.04.17.
//  Copyright © 2017 LS1 TUM. All rights reserved.
//

import UIKit

class BookRentalsCardCell: CardTableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var deadlineLabel: UILabel!
    @IBOutlet var prolongLabel: UILabel!
    @IBOutlet var cardView: UIView! {
        didSet {
            backgroundColor = UIColor.clear
            cardView.layer.shadowOpacity = 0.4
            cardView.layer.shadowOffset = CGSize(width: 3.0, height: 2.0)
        }
    }

    
    override func setElement(_ element: DataElement) {
        if let rentalItem = element as? BookRental {
            titleLabel.text = rentalItem.title
            authorLabel.text = rentalItem.author
            deadlineLabel.text = rentalItem.deadline
            prolongLabel.text = rentalItem.prolong.rawValue // TODO: Remap to localized string when available
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
