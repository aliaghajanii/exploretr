//
//  DetailViewController.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    
    var placeData: CityDetail! {
        didSet {
            profileImage.image = placeData.image
            titleLabel.text = placeData.name
            descriptionTest.text = placeData.dscription
            addressLabel.text = "Address: \(placeData.address)"
            phoneLabel.text = "Phone Number: \(placeData.phone)"
            imageAssets = placeData.gallary!
            lat = placeData.lat
            lon = placeData.lon
            ttitle = placeData.name
        }
    }
    
    var lat: Double = 0
    var lon: Double = 0
    var ttitle: String = ""
    
    
    
    let BackgroundImageView: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "sbabsajsbj")
        hi.contentMode = .scaleAspectFill
        hi.clipsToBounds = true
        hi.alpha = 0.7
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    var imageAssets = [UIImage]()
    
    var displayLink: CADisplayLink!
    var value: CGFloat = 0.0
    var invert : Bool = false
    
    let sepView: UIView = {
        var uv = UIView()
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    let upperView: UIView = {
        let bv = UIView()
        bv.backgroundColor = colors.customBlackHighlited
        bv.layer.cornerRadius = 12
        bv.layer.shadowColor   = UIColor.black.cgColor
        bv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        bv.layer.shadowRadius  = 12
        bv.layer.shadowOpacity = 0.8
        bv.clipsToBounds       = false
        bv.translatesAutoresizingMaskIntoConstraints = false
        return bv
    }()
    
    var innerView: UIView = {
        let bv = UIView()
        //        bv.backgroundColor = .clear
        bv.layer.cornerRadius = 12
        bv.clipsToBounds       = true
        bv.translatesAutoresizingMaskIntoConstraints = false
        return bv
    }()
    
    let lowerView: UIView = {
        let bv = UIView()
        bv.backgroundColor = colors.customBlackHighlited
        bv.layer.cornerRadius = 12
        bv.layer.shadowColor   = UIColor.black.cgColor
        bv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        bv.layer.shadowRadius  = 12
        bv.layer.shadowOpacity = 0.8
        bv.clipsToBounds       = false
        bv.translatesAutoresizingMaskIntoConstraints = false
        return bv
    }()
    
    let profileBckView: UIView = {
        let mv = UIView()
        mv.backgroundColor = .red
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
        nl.text = "Image"
        nl.adjustsFontSizeToFitWidth = true
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 26)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let locationLabel: UILabel = {
        let nl = UILabel()
        nl.text = "Cappadocia, Turkey"
        nl.adjustsFontSizeToFitWidth = true
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 26)
        nl.textAlignment = .left
        nl.textColor = .white
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let addressLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .center
        nl.layer.shadowColor   = UIColor.black.cgColor
        nl.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        nl.layer.shadowRadius  = 12
        nl.layer.shadowOpacity = 0.8
        nl.numberOfLines = 0
        nl.textColor = colors.customBlackHighlited
        nl.backgroundColor = .white
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let phoneLabel: UILabel = {
        let nl = UILabel()
        nl.text = "Phone Number: 00029739292460294"
        nl.adjustsFontSizeToFitWidth = true
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        nl.textAlignment = .center
        nl.layer.shadowColor   = UIColor.black.cgColor
        nl.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        nl.layer.shadowRadius  = 12
        nl.layer.shadowOpacity = 0.8
        nl.numberOfLines = 0
        nl.textColor = colors.customBlackHighlited
        nl.backgroundColor = .white
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let descriptionTest: UITextView = {
        let hl = UITextView()
        hl.font = UIFont(name: "Futura-CondensedExtraBold", size: 16)
        hl.textAlignment = .left
        hl.textColor = .white
        hl.isEditable = false
        hl.backgroundColor = .clear
        hl.translatesAutoresizingMaskIntoConstraints = false
        return hl
    }()
    
    let mapButton: UIButton = {
        let cb = UIButton()
        cb.setTitle("Tap To\nSee Location\nIn Map", for: .normal)
        cb.titleLabel?.numberOfLines = 3
        cb.setTitleColor(colors.customBlackHighlited, for: .normal)
        cb.titleLabel?.textAlignment = .center
        cb.titleLabel?.font = UIFont(name: "Futura-CondensedExtraBold", size: 12)
        cb.layer.shadowColor   = UIColor.black.cgColor
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 30
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(showMap), for: .touchUpInside)
        cb.layer.cornerRadius = 45
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    let gallaryButton: UIButton = {
        let cb = UIButton()
        cb.setTitle("Tap To\nSee More\nImages", for: .normal)
        cb.titleLabel?.numberOfLines = 3
        cb.setTitleColor(colors.customBlackHighlited, for: .normal)
        cb.titleLabel?.textAlignment = .center
        cb.titleLabel?.font = UIFont(name: "Futura-CondensedExtraBold", size: 12)
        cb.layer.shadowColor   = UIColor.black.cgColor
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 30
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(gallaryTapped), for: .touchUpInside)
        cb.layer.cornerRadius = 40
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
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
        configureUI()
    }
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }
    
    @objc fileprivate func gallaryTapped() {
        let popupImages = PopupGallary()
        popupImages.imageArray = imageAssets
        view.addSubview(popupImages)
    }
    
    @objc fileprivate func showMap() {
        let mapView = MapViewController()
        mapView.getData = placeData
        present(mapView, animated: true)
    }
    
    fileprivate func configureUI() {
        displayLink = CADisplayLink(target: self, selector: #selector(handleAnimation))
        displayLink.add(to: RunLoop.main, forMode: .default)
    }
    
    @objc fileprivate func handleAnimation() {
        invert ? (value -= 1) : (value += 1)
        gallaryButton.alpha = value/100
        if value > 100 || value < 0 {
            invert = !invert
        }
    }
    
    
    
    fileprivate func setupConstraint() {
        view.addSubview(BackgroundImageView)
        NSLayoutConstraint.activate([
            BackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            BackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            BackgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            BackgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor)])
        
        
        view.addSubview(upperView)
        NSLayoutConstraint.activate([
            upperView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            upperView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.33),
            upperView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8),
            upperView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8)])
        
        view.addSubview(lowerView)
        NSLayoutConstraint.activate([
            lowerView.topAnchor.constraint(equalTo: upperView.bottomAnchor, constant: 13),
            lowerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            lowerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8),
            lowerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -8)])
        
        upperView.addSubview(profileBckView)
        NSLayoutConstraint.activate([
            profileBckView.leftAnchor.constraint(equalTo: upperView.leftAnchor, constant: 12),
            profileBckView.centerYAnchor.constraint(equalTo: upperView.centerYAnchor),
            profileBckView.widthAnchor.constraint(equalTo: upperView.widthAnchor, multiplier: 0.44),
            profileBckView.heightAnchor.constraint(equalTo: upperView.heightAnchor, multiplier: 0.6)])
        
        profileBckView.addSubview(profileImage)
        NSLayoutConstraint.activate([
            profileImage.leftAnchor.constraint(equalTo: upperView.leftAnchor, constant: 12),
            profileImage.centerYAnchor.constraint(equalTo: upperView.centerYAnchor),
            profileImage.widthAnchor.constraint(equalTo: upperView.widthAnchor, multiplier: 0.44),
            profileImage.heightAnchor.constraint(equalTo: upperView.heightAnchor, multiplier: 0.6)])
        
        profileBckView.addSubview(gallaryButton)
        NSLayoutConstraint.activate([
            gallaryButton.centerYAnchor.constraint(equalTo: profileBckView.centerYAnchor),
            gallaryButton.centerXAnchor.constraint(equalTo: profileBckView.centerXAnchor),
            gallaryButton.widthAnchor.constraint(equalToConstant: 80),
            gallaryButton.heightAnchor.constraint(equalToConstant: 80)])
        
        upperView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.leftAnchor.constraint(equalTo: profileBckView.rightAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: upperView.centerYAnchor),
            titleLabel.rightAnchor.constraint(equalTo: upperView.rightAnchor, constant: -12),
            titleLabel.heightAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 0.4)])
        
        upperView.addSubview(locationLabel)
        NSLayoutConstraint.activate([
            locationLabel.leftAnchor.constraint(equalTo: profileBckView.rightAnchor, constant: 16),
            locationLabel.topAnchor.constraint(equalTo: upperView.centerYAnchor),
            locationLabel.rightAnchor.constraint(equalTo: upperView.rightAnchor, constant: -12),
            locationLabel.heightAnchor.constraint(equalTo: profileImage.heightAnchor, multiplier: 0.4)])
        
        
        view.addSubview(sepView)
        NSLayoutConstraint.activate([
            sepView.topAnchor.constraint(equalTo: upperView.bottomAnchor, constant: 6),
            sepView.widthAnchor.constraint(equalTo: view.widthAnchor),
            sepView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sepView.heightAnchor.constraint(equalToConstant: 1)])
        
        view.addSubview(mapButton)
        NSLayoutConstraint.activate([
            mapButton.centerYAnchor.constraint(equalTo: sepView.centerYAnchor),
            mapButton.widthAnchor.constraint(equalToConstant: 90),
            mapButton.heightAnchor.constraint(equalToConstant: 90),
            mapButton.rightAnchor.constraint(equalTo: upperView.rightAnchor, constant: -18)])
        
        lowerView.addSubview(descriptionTest)
        NSLayoutConstraint.activate([
            descriptionTest.topAnchor.constraint(equalTo: mapButton.bottomAnchor, constant: 6),
            descriptionTest.leftAnchor.constraint(equalTo: lowerView.leftAnchor, constant: 6),
            descriptionTest.rightAnchor.constraint(equalTo: lowerView.rightAnchor, constant: -6),
            descriptionTest.heightAnchor.constraint(equalTo: lowerView.heightAnchor, multiplier: 0.5)])
        
        lowerView.addSubview(addressLabel)
        NSLayoutConstraint.activate([
            addressLabel.widthAnchor.constraint(equalTo: lowerView.widthAnchor),
            addressLabel.centerXAnchor.constraint(equalTo: lowerView.centerXAnchor),
            addressLabel.heightAnchor.constraint(equalTo: lowerView.heightAnchor, multiplier: 0.2),
            addressLabel.topAnchor.constraint(equalTo: descriptionTest.bottomAnchor, constant: 2)])
        
        
        lowerView.addSubview(phoneLabel)
        NSLayoutConstraint.activate([
            phoneLabel.widthAnchor.constraint(equalTo: lowerView.widthAnchor),
            phoneLabel.centerXAnchor.constraint(equalTo: lowerView.centerXAnchor),
            phoneLabel.heightAnchor.constraint(equalTo: lowerView.heightAnchor, multiplier: 0.12),
            phoneLabel.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 2)])
        
        
        view.addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 38)])
        
        
    }
    
    
    
}
