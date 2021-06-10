//
//  GFSecondaryTitleLabel.swift
//  GitHubFollowers
//
//  Created by Tagir Aiupov on 2021-06-03.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configure()
    }
    
    
    private func configure() {
        textColor                  = .secondaryLabel
        adjustsFontSizeToFitWidth  = true
        minimumScaleFactor         = 0.75
        lineBreakMode              = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
