//
//  HomeViewController.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - Properties
    
    
    var wDefaultWidth: NSLayoutConstraint?
    var wAnimatedWidth: NSLayoutConstraint?
    var wDefaultHeight: NSLayoutConstraint?
    var wAnimatedHeight: NSLayoutConstraint?
    
    
    
    
    //    fileprivate var profileBackView: UIView = {
    //        let mv = UIView()
    //        mv.layer.cornerRadius = 50
    //        mv.alpha = 0
    //        mv.backgroundColor = .red
    //        mv.clipsToBounds       = true
    //        mv.layer.masksToBounds = true
    //        mv.translatesAutoresizingMaskIntoConstraints = false
    //        return mv
    //    }()
    //
    //    let profileImageView: UIImageView = {
    //        let hi = UIImageView()
    ////        hi.image = UIImage(named: "steaks")
    //        hi.contentMode = .scaleAspectFill
    //        hi.clipsToBounds = true
    //        hi.translatesAutoresizingMaskIntoConstraints = false
    //        return hi
    //    }()
    //
    fileprivate var sepView: UIView = {
        var uv = UIView()
        uv.translatesAutoresizingMaskIntoConstraints = false
        return uv
    }()
    
    let sectiontitleLabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Cappadocia"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 28)
        nl.textAlignment = .center
        nl.textColor = .white
        nl.alpha = 0
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let descriptionText: UITextView = {
        let nl = UITextView()
        nl.isEditable = false
        nl.text = "Cappadocia is like no other place on this earth. Its many moving, natural, and edible attractions make it unique and fun. The millions of tourist that visit are not disappointed when they leave. They take with them memories that they will keep for the rest of their lives. As a Turkish neighbor once said, “Washington D.C. is the capital of America, but Cappadocia is the capital of the world.”"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 12)
        nl.textAlignment = .center
        nl.textColor = .white
        nl.backgroundColor = .clear
        nl.alpha = 0
        nl.isUserInteractionEnabled = true
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let BackgroundImageView: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "capasunset")
        hi.contentMode = .scaleAspectFill
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let welcomeView: UIView = {
        let mv = UIView()
        mv.backgroundColor = .clear
        mv.layer.cornerRadius = 15
        mv.layer.shadowColor   = UIColor.black.cgColor
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 30
        mv.layer.shadowOpacity = 0.8
        mv.clipsToBounds       = false
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    let welcomeBackgroundImage: UIImageView = {
        let hi = UIImageView()
        hi.image = UIImage(named: "trflag")
        hi.contentMode = .scaleAspectFill
        hi.alpha = 0
        hi.layer.cornerRadius = 15
        
        hi.clipsToBounds = true
        hi.translatesAutoresizingMaskIntoConstraints = false
        return hi
    }()
    
    let enterButton: UIButton = {
        let cb = UIButton()
        cb.setTitle("Enter\nThe city!", for: .normal)
        cb.titleLabel?.numberOfLines = 2
        cb.setTitleColor(colors.customBlackHighlited, for: .normal)
        cb.titleLabel?.textAlignment = .center
        cb.titleLabel?.font = UIFont(name: "Futura-CondensedExtraBold", size: 12)
        cb.layer.shadowColor   = UIColor.black.cgColor
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 30
        cb.layer.shadowOpacity = 0.8
        cb.addTarget(self, action: #selector(handleEnter), for: .touchUpInside)
        cb.layer.cornerRadius = 35
        cb.alpha = 0
        cb.backgroundColor = .white
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    
    //MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraint()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        welcomeAnimate()
    }
    
    //MARK: - Handlers
    
    @objc fileprivate func handleEnter() {
        present(MainViewController(), animated: true)
    }
    
    fileprivate func welcomeAnimate() {
        
        UIView.animate(withDuration: 0.6, delay: 1.2, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.wDefaultWidth?.isActive = false
            self.wDefaultHeight?.isActive = false
            self.wAnimatedWidth?.isActive = true
            self.wAnimatedHeight?.isActive = true
            self.welcomeView.backgroundColor = .white
            self.welcomeBackgroundImage.alpha = 0.84
            self.enterButton.alpha = 1
            self.descriptionText.alpha = 1
            self.sectiontitleLabel.alpha = 1
            self.view.layoutIfNeeded()
        }, completion: nil)
        UIView.animate(withDuration: 0.4, delay: 1.6, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            //            self.welcomeLabel.alpha = 1
        }, completion: nil)
    }
    
    
    fileprivate func setupConstraint() {
        view.addSubview(BackgroundImageView)
        NSLayoutConstraint.activate([
            BackgroundImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: -10),
            BackgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            BackgroundImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            BackgroundImageView.rightAnchor.constraint(equalTo: view.rightAnchor)])
        
        
        view.addSubview(welcomeView)
        welcomeView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        welcomeView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        wDefaultWidth = welcomeView.widthAnchor.constraint(equalToConstant: 60)
        wDefaultHeight = welcomeView.heightAnchor.constraint(equalToConstant: 60)
        wDefaultWidth?.isActive = true
        wDefaultHeight?.isActive = true
        wAnimatedWidth = welcomeView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.88)
        wAnimatedHeight = welcomeView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3)
        
        welcomeView.addSubview(welcomeBackgroundImage)
        NSLayoutConstraint.activate([
            welcomeBackgroundImage.topAnchor.constraint(equalTo: welcomeView.topAnchor),
            welcomeBackgroundImage.bottomAnchor.constraint(equalTo: welcomeView.bottomAnchor),
            welcomeBackgroundImage.leftAnchor.constraint(equalTo: welcomeView.leftAnchor),
            welcomeBackgroundImage.rightAnchor.constraint(equalTo: welcomeView.rightAnchor)])
        
        
        view.addSubview(sepView)
        NSLayoutConstraint.activate([
            sepView.topAnchor.constraint(equalTo: welcomeView.bottomAnchor),
            sepView.heightAnchor.constraint(equalToConstant: 1),
            sepView.widthAnchor.constraint(equalTo: view.widthAnchor),
            sepView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        
        view.addSubview(enterButton)
        NSLayoutConstraint.activate([
            enterButton.centerYAnchor.constraint(equalTo: sepView.centerYAnchor),
            enterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enterButton.widthAnchor.constraint(equalToConstant: 70),
            enterButton.heightAnchor.constraint(equalToConstant: 70)])
        
        welcomeView.addSubview(sectiontitleLabel)
        NSLayoutConstraint.activate([
            sectiontitleLabel.widthAnchor.constraint(equalTo: welcomeView.widthAnchor, multiplier: 0.65),
            sectiontitleLabel.heightAnchor.constraint(equalTo: welcomeView.heightAnchor, multiplier: 0.24),
            sectiontitleLabel.topAnchor.constraint(equalTo: welcomeView.topAnchor, constant: 4),
            sectiontitleLabel.centerXAnchor.constraint(equalTo: welcomeView.centerXAnchor)])
        
        welcomeView.addSubview(descriptionText)
        NSLayoutConstraint.activate([
            descriptionText.topAnchor.constraint(equalTo: sectiontitleLabel.bottomAnchor, constant: 4),
            descriptionText.leftAnchor.constraint(equalTo: welcomeView.leftAnchor, constant: 6),
            descriptionText.rightAnchor.constraint(equalTo: welcomeView.rightAnchor, constant:  -6),
            descriptionText.bottomAnchor.constraint(equalTo: enterButton.topAnchor, constant: -4)])
        
        
    }
    
}
