//
//  SMTableViewCell.swift
//  Sample
//
//  Created by Anwesh M on 18/08/22.
//

import UIKit

class SMTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var subjectLabel: UILabel!
    @IBOutlet weak var chapterLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCardView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    private func setupCardView(){
        cardView.layer.cornerRadius = 15
        cardView.layer.backgroundColor =  UIColor.white.cgColor
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOpacity = 0.3
        cardView.layer.shadowOffset = CGSize.zero
        cardView.layer.shadowRadius = 4
    }
    
}
