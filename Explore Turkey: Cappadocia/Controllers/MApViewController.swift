//
//  MApViewController.swift
//  Explore Turkey: Cappadocia
//
//  Created by ali aghajani on 9/26/19.
//  Copyright © 2019 ali aghajani. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    
    var getData: CityDetail! {
        didSet {
            lat = getData.lat
            lon = getData.lon
            ttitle = getData.name
        }
    }
    
    let mapView: MKMapView = {
        let mv = MKMapView()
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    var lat: Double = 0
    var lon: Double = 0
    var ttitle: String = ""
    
    let regionRadius: CLLocationDistance = 700
    
    
    let textView: UIView = {
        let mv = UIView()
        mv.layer.cornerRadius = 15
        mv.layer.shadowColor   = UIColor.black.cgColor
        mv.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        mv.layer.shadowRadius  = 15
        mv.layer.shadowOpacity = 0.8
        mv.clipsToBounds       = false
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    lazy var textlabel: UILabel = {
        let nl = UILabel()
        nl.adjustsFontSizeToFitWidth = true
        nl.text =  "Open In Maps"
        nl.font = UIFont(name: "Futura-CondensedExtraBold", size: 12)
        nl.textAlignment = .center
        nl.textColor = colors.customBlackHighlited
        nl.isUserInteractionEnabled = true
        nl.translatesAutoresizingMaskIntoConstraints = false
        return nl
    }()
    
    let backButton: UIButton = {
        let cb = UIButton()
        cb.setTitle("<", for: .normal)
        cb.titleLabel?.font = UIFont(name: "Futura-CondensedExtraBold", size: 20)
        cb.setTitleColor(.white, for: .normal)
        cb.addTarget(self, action: #selector(handleDismiss), for: .touchUpInside)
        cb.layer.cornerRadius = 20
        cb.layer.shadowColor   = UIColor.black.cgColor
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 12
        cb.layer.shadowOpacity = 0.8
        cb.backgroundColor = colors.customBlackHighlited
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    
    let openInMapsButton: UIButton = {
        let cb = UIButton()
        cb.setImage(UIImage(named: "mapppps")!, for: .normal)
        cb.addTarget(self, action: #selector(handleOpening), for: .touchUpInside)
        cb.layer.cornerRadius = 25
        cb.layer.shadowColor   = UIColor.black.cgColor
        cb.layer.shadowOffset  = CGSize(width: 0.5, height: 6.0)
        cb.layer.shadowRadius  = 12
        cb.layer.shadowOpacity = 0.8
        cb.backgroundColor = colors.customBlackHighlited
        cb.translatesAutoresizingMaskIntoConstraints = false
        return cb
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //        centerMapOnLocation(location: initialLocation)
        setupConstraint()
        
        
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocation(latitude: lat, longitude: lon).coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        let artwork = Artwork(title: ttitle, coordinate: CLLocationCoordinate2D(latitude: lat, longitude: lon))
        mapView.addAnnotation(artwork)
        mapView.setRegion(region, animated: true)
        
        
        
        //        GMSServices.provideAPIKey("AIzaSyCnLyTfeb8EOQxt4aqvcF00rH9Ie9cVF60")
        //        let camera = GMSCameraPosition.camera(withLatitude: lat, longitude: lon, zoom: 16)
        //        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        //        self.view = mapView
        //        let currentLocation = CLLocationCoordinate2DMake(lat, lon)
        //        let marker = GMSMarker(position: currentLocation)
        //        marker.title = ttitle
        //        marker.map = mapView
        
        
        
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate,
                                                  latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    
    @objc func handleDismiss() {
        dismiss(animated: true)
    }
    
    @objc func handleOpening() {
        
        let coordinate = CLLocationCoordinate2DMake(self.lat, self.lon)
        let region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.02))
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: region.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)]
        mapItem.name = getData.name
        mapItem.openInMaps(launchOptions: options)
        
    }
    
    fileprivate func setupConstraint() {
        //        MapView.addSubview(backButton)
        //        NSLayoutConstraint.activate([
        //            backButton.widthAnchor.constraint(equalToConstant: 40),
        //            backButton.heightAnchor.constraint(equalToConstant: 40),
        //            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
        //            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 30)])
        //
        
        view.addSubview(mapView)
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: view.topAnchor),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            mapView.leftAnchor.constraint(equalTo: view.leftAnchor),
            mapView.rightAnchor.constraint(equalTo: view.rightAnchor)
            
            ])
        
        mapView.addSubview(backButton)
        NSLayoutConstraint.activate([
            backButton.widthAnchor.constraint(equalToConstant: 40),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            backButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 38)])
        
        mapView.addSubview(textlabel)
        NSLayoutConstraint.activate([
            textlabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            textlabel.heightAnchor.constraint(equalToConstant: 50),
            textlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textlabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40)])
        
        mapView.addSubview(openInMapsButton)
        NSLayoutConstraint.activate([
            openInMapsButton.bottomAnchor.constraint(equalTo: textlabel.topAnchor, constant: -2),
            openInMapsButton.heightAnchor.constraint(equalToConstant: 50),
            openInMapsButton.widthAnchor.constraint(equalToConstant: 50),
            openInMapsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
            
            ])
        
    }
    
    
}
