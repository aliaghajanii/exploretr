//
//  ListOfPlacesViewController.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit

class ListOfPlacesViewController: UIViewController {
    
    let identifier = "jkikbgjbj"
    
    var cityDetail: [CityDetail]! {
        didSet{
            configData = cityDetail
        }
    }
    
    
    var shouldHideSomething: Bool = false
    
    var configData =  [CityDetail]()
    
    let BackgroundImageView: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "sbabsajsbj")
        hi.contentMode = .scaleAspectFill
        hi.clipsToBounds = true
        hi.alpha = 0.7
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 30
        layout.scrollDirection = .vertical
        let cl = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //            cl.layer.cornerRadius = 8
        cl.backgroundColor = .clear
        cl.translatesAutoresizingMaskIntoConstraints = false
        return cl
    }()
    
    let backgroundImage: UIImageView = {
        let bi = UIImageView()
        bi.contentMode = .scaleAspectFill
        bi.alpha = 0.5
        bi.image = UIImage(named: "grouped")
        bi.translatesAutoresizingMaskIntoConstraints = false
        return bi
    }()
    
    lazy var ListLabel: UILabel = {
        let tl = UILabel()
        tl.adjustsFontSizeToFitWidth = true
        tl.adjustsFontForContentSizeCategory = true
        tl.textAlignment = .center
        tl.textColor = colors.customBlackHighlited
        tl.alpha = 0.8
        tl.font = UIFont(name: "Futura-CondensedExtraBold", size: 19)
        tl.clipsToBounds = true
        tl.layer.cornerRadius = 12
        tl.backgroundColor = .clear
        tl.translatesAutoresizingMaskIntoConstraints = false
        return tl
    }()
    
    lazy var descriptionLabel: UILabel = {
        let tl = UILabel()
        tl.adjustsFontSizeToFitWidth = true
        tl.adjustsFontForContentSizeCategory = true
        tl.textAlignment = .center
        tl.textColor = colors.customBlackHighlited
        
        tl.text = "Select each Part to see the detail"
        tl.font = UIFont(name: "Futura-CondensedExtraBold", size: 18)
        tl.clipsToBounds = true
        tl.layer.cornerRadius = 12
        tl.backgroundColor = .clear
        tl.translatesAutoresizingMaskIntoConstraints = false
        return tl
    }()
    
    let foodBackView: UIView = {
        let fv = UIView()
        fv.backgroundColor = .white
        fv.alpha = 0.92
        fv.layer.shadowColor   = UIColor.black.cgColor
        fv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        fv.layer.shadowRadius  = 12
        fv.layer.shadowOpacity = 0.8
        fv.layer.cornerRadius = 12
        fv.clipsToBounds = false
        fv.translatesAutoresizingMaskIntoConstraints = false
        return fv
    }()
    
    let decripthonView: UIView = {
        let fv = UIView()
        fv.backgroundColor = .white
        fv.alpha = 0.92
        fv.layer.shadowColor   = UIColor.black.cgColor
        fv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        fv.layer.shadowRadius  = 12
        fv.layer.shadowOpacity = 0.8
        fv.layer.cornerRadius = 12
        fv.clipsToBounds = false
        fv.translatesAutoresizingMaskIntoConstraints = false
        return fv
    }()
    
    let backButton: UIButton = {
        let cb = UIButton()
        cb.setTitle("<", for: .normal)
        cb.titleLabel?.font = UIFont(name: "Futura-CondensedExtraBold", size: 20)
        cb.setTitleColor(colors.customBlackHighlited, for: .normal)
        cb.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        cb.layer.cornerRadius = 20
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraint()
        configureCollectionView()
    }
    
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }
    
    fileprivate func configureCollectionView() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ListOfPlacesCell.self, forCellWithReuseIdentifier: identifier)
        collectionView.showsVerticalScrollIndicator = false
    }
    
    fileprivate func setupConstraint() {
        
        
        
        view.addSubview(BackgroundImageView)
        NSLayoutConstraint.activate([
            BackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            BackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            BackgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            BackgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor)])
        
        
        view.addSubview(foodBackView)
        NSLayoutConstraint.activate([
            foodBackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: -6),
            foodBackView.bottomAnchor.constraint(equalTo: view.topAnchor, constant: 130),
            foodBackView.heightAnchor.constraint(equalToConstant: 47),
            foodBackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50)])
        
        foodBackView.addSubview(ListLabel)
        NSLayoutConstraint.activate([
            ListLabel.leftAnchor.constraint(equalTo: foodBackView.leftAnchor, constant: 12),
            ListLabel.bottomAnchor.constraint(equalTo: foodBackView.bottomAnchor),
            ListLabel.topAnchor.constraint(equalTo: foodBackView.topAnchor),
            ListLabel.rightAnchor.constraint(equalTo: foodBackView.rightAnchor, constant: -6)])
        
        
        view.addSubview(decripthonView)
        NSLayoutConstraint.activate([
            decripthonView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 6),
            decripthonView.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -130),
            decripthonView.heightAnchor.constraint(equalToConstant: 47),
            decripthonView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50 )])
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: foodBackView.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: decripthonView.topAnchor ),
            collectionView.leftAnchor.constraint(equalTo: decripthonView.leftAnchor, constant: -3),
            collectionView.rightAnchor.constraint(equalTo: foodBackView.rightAnchor, constant: 3)])
        
        
        decripthonView.addSubview(descriptionLabel)
        NSLayoutConstraint.activate([
            descriptionLabel.leftAnchor.constraint(equalTo: decripthonView.leftAnchor, constant: 4),
            descriptionLabel.bottomAnchor.constraint(equalTo: decripthonView.bottomAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: decripthonView.topAnchor),
            descriptionLabel.rightAnchor.constraint(equalTo: decripthonView.rightAnchor, constant: -10)])
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: foodBackView.bottomAnchor),
            collectionView.bottomAnchor.constraint(equalTo: decripthonView.topAnchor ),
            collectionView.leftAnchor.constraint(equalTo: decripthonView.leftAnchor, constant: 6),
            collectionView.rightAnchor.constraint(equalTo: foodBackView.rightAnchor, constant: -6)])
        
        
        view.addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 38)])
        
        
    }
    
}

extension ListOfPlacesViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return configData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dpecificDetail = configData[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! ListOfPlacesCell
        cell.placeData = dpecificDetail
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 120)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 30, left: 16, bottom: 20, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let dpecificDetail = configData[indexPath.item]
        let desVC =  DetailViewController()
        desVC.placeData = dpecificDetail
        present(desVC, animated: true)
    }
    
    
    
    
}

