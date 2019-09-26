//
//  PopupCollectionCell.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit

class PopupCollectionCell: UICollectionViewCell {
    
    
    let backgroundImageView: UIImageView = {
        let fi = UIImageView()
        //        fi.image = UIImage(named: "fav")
        fi.contentMode = .scaleAspectFill
        fi.clipsToBounds = true
        fi.layer.cornerRadius = 12
        fi.translatesAutoresizingMaskIntoConstraints = false
        return fi
    }()
    
    
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraint()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Handlers
    
    fileprivate func setupConstraint() {
        
        addSubview(backgroundImageView)
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leftAnchor.constraint(equalTo: leftAnchor),
            backgroundImageView.rightAnchor.constraint(equalTo: rightAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
    
}


