//
//  GallaryPopup.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//
import UIKit

class PopupGallary: UIView {
    
    let identifier = "identifier"
    var imageArray = [UIImage]()
    
    fileprivate let containerView: UIView = {
        let cv = UIView()
        cv.backgroundColor = .white
        cv.layer.cornerRadius = 24
        cv.clipsToBounds = true
        cv.translatesAutoresizingMaskIntoConstraints = false
        return cv
    }()
    
    fileprivate let sepView : UIView = {
        let sv = UIView()
        sv.backgroundColor = .black
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    fileprivate let headerLabel: UILabel = {
        let tl = UILabel()
        tl.adjustsFontSizeToFitWidth = true
        tl.textAlignment = .center
        tl.text = "Swipe right to see more images"
        tl.textColor = colors.customBlackHighlited
        tl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        tl.backgroundColor = .clear
        tl.translatesAutoresizingMaskIntoConstraints = false
        return tl
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 5
        layout.scrollDirection = .horizontal
        let cl = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cl.backgroundColor = .clear
        cl.translatesAutoresizingMaskIntoConstraints = false
        return cl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setConstraint()
        setConfiguration()
        self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animateOut)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc fileprivate func animateOut() {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.containerView.transform = CGAffineTransform(translationX: 0, y: -self.frame.height )
            self.alpha = 0
        }) { (complete) in
            if complete {
                self.removeFromSuperview()
            }
        }
    }
    
    @objc fileprivate func animateIn() {
        self.containerView.transform = CGAffineTransform(translationX: 0, y: -self.frame.height )
        self.alpha = 0
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            self.containerView.transform = .identity
            self.alpha = 1
        })
    }
    
    fileprivate func setConfiguration() {
        collectionView.collectionViewLayout = KRSCollectionFlowLayout()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(PopupCollectionCell.self, forCellWithReuseIdentifier: identifier)
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    fileprivate func setConstraint() {
        
        self.backgroundColor = UIColor.gray.withAlphaComponent(0.5)
        self.frame = UIScreen.main.bounds
        
        addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.45),
            containerView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.9)])
        
        containerView.addSubview(sepView)
        NSLayoutConstraint.activate([
            sepView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            sepView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            sepView.heightAnchor.constraint(equalToConstant: 2),
            sepView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50)])
        
        containerView.addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 2),
            headerLabel.bottomAnchor.constraint(equalTo: sepView.topAnchor, constant: -2),
            headerLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 16),
            headerLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -16)])
        //adding collection view and seting constraint up!
        containerView.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: sepView.bottomAnchor, constant: 6),
            collectionView.leftAnchor.constraint(equalTo: containerView.leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: containerView.rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -6)
            ])
        
        animateIn()
    }
}

extension PopupGallary: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier , for: indexPath) as! PopupCollectionCell
        collectionView.transform = CGAffineTransform(scaleX:-1,y: 1);
        cell.transform = CGAffineTransform(scaleX:-1,y: 1);
        cell.backgroundImageView.image = imageArray[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (frame.size.width * 0.8) , height: frame.size.height * 0.4)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 8, left: 10 , bottom: 8, right: 10)
    }
}

