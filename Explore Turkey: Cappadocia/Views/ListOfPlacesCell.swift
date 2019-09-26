//
//  ListOfPlacesCell.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit

class ListOfPlacesCell: UICollectionViewCell {
    
    
    var placeData: CityDetail! {
        didSet {
            profileImage.image = placeData.image
            titleLabel.text = placeData.name
            descriptionLabel.text = placeData.dscription
        }
    }
    
    fileprivate var sepView: UIView = {
        var uv = UIView()
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    let backView: UIView = {
        let bv = UIView()
        bv.backgroundColor = colors.customBlackHighlited
        bv.layer.cornerRadius = 12
        
        bv.clipsToBounds       = true
        
        bv.translatesAutoresizingMaskIntoConstraints = false
        return bv
    }()
    
    let profileBckView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 45
        mv.layer.shadowColor   = UIColor.black.cgColor
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 12
        mv.layer.shadowOpacity = 0.8
        mv.clipsToBounds       = false
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let profileImage: UIImageView = {
        let bi = UIImageView()
        bi.contentMode = .scaleAspectFill
        bi.clipsToBounds = true
        bi.layer.cornerRadius = 45
        bi.translatesAutoresizingMaskIntoConstraints = false
        return bi
    }()
    
    let titleLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let descriptionLabel: UILabel = {
        let hl = UILabel()
        hl.font = UIFont(name: "Futura-CondensedExtraBold", size: 11)
        hl.textAlignment = .left
        hl.numberOfLines = 2
        hl.textColor = .white
        hl.backgroundColor = .clear
        hl.translatesAutoresizingMaskIntoConstraints = false
        return hl
    }()
    
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraint()
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupConstraint() {
        
        addSubview(backView)
        NSLayoutConstraint.activate([
            backView.topAnchor.constraint(equalTo: topAnchor),
            backView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backView.leftAnchor.constraint(equalTo: leftAnchor),
            backView.rightAnchor.constraint(equalTo: rightAnchor)])
        
        
        backView.addSubview(profileBckView)
        NSLayoutConstraint.activate([
            profileBckView.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 12),
            profileBckView.centerYAnchor.constraint(equalTo: backView.centerYAnchor),
            profileBckView.widthAnchor.constraint(equalToConstant: 90),
            profileBckView.heightAnchor.constraint(equalToConstant: 90)])
        
        profileBckView.addSubview(profileImage)
        NSLayoutConstraint.activate([
            profileImage.leftAnchor.constraint(equalTo: backView.leftAnchor, constant: 12),
            profileImage.centerYAnchor.constraint(equalTo: backView.centerYAnchor),
            profileImage.widthAnchor.constraint(equalToConstant: 90),
            profileImage.heightAnchor.constraint(equalToConstant: 90)])
        
        
        backView.addSubview(sepView)
        NSLayoutConstraint.activate([
            sepView.widthAnchor.constraint(equalTo: backView.widthAnchor),
            sepView.heightAnchor.constraint(equalToConstant: 1),
            sepView.centerYAnchor.constraint(equalTo: backView.centerYAnchor),
            sepView.centerXAnchor.constraint(equalTo: backView.centerXAnchor)])
        
        backView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: backView.topAnchor, constant: 8),
            titleLabel.bottomAnchor.constraint(equalTo: sepView.topAnchor, constant: -4),
            titleLabel.leftAnchor.constraint(equalTo: profileBckView.rightAnchor, constant: 12),
            titleLabel.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -12)])
        
        backView.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: sepView.bottomAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: backView.bottomAnchor, constant: -4),
            descriptionLabel.leftAnchor.constraint(equalTo: profileBckView.rightAnchor, constant: 12),
            descriptionLabel.rightAnchor.constraint(equalTo: backView.rightAnchor, constant: -12)])
    }
}
