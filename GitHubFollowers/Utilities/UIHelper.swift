//
//  UIHelper.swift
//  GitHubFollowers
//
//  Created by Tagir Aiupov on 2021-06-02.
//

import UIKit

struct UIHelper {
    
    static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout {
        let width                       = view.bounds.width
        let padding: CGFloat            = 12
        let minimumitemspacing: CGFloat = 10
        let avaiableWidth               = width - padding * 2 - minimumitemspacing * 2
        let itemWidth                   = avaiableWidth / 3
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
        
        return flowLayout
    }
}
