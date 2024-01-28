//
//  BounceCollectionViewCell.swift
//  BouncyLayoutUsage
//
//  Created by Burak Eryavuz on 28.01.2024.
//

import UIKit

class BounceCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var badgeView: UIView!
    @IBOutlet weak var habitTitleLabel: UILabel!
    @IBOutlet weak var habitIconLabel: UILabel!
    @IBOutlet weak var streakLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUI()
    }
    
    func setUI() {
        containerView.layer.cornerRadius = 20
        bottomView.layer.cornerRadius = 20
        K.circleView(image: badgeView)
        
    }

}
