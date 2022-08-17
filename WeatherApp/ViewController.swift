//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jonah Tharakan on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    // UI Elements:
    
    lazy var locationLabel: UILabel = {
        let l = UILabel()
        l.textAlignment = .center
        l.font = UIFont(name: "Arial", size: 30)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var temperatureLabel: UILabel = {
        let l = UILabel()
        l.textAlignment = .center
        l.font = UIFont(name: "Arial", size: 30)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        setupConstraints()
    }
    
    
    func setupView() {
        view.backgroundColor = UIColor(red: 147/255, green: 212/255, blue: 245/255, alpha: 1.0)
        
        view.addSubview(locationLabel)
        view.addSubview(temperatureLabel)
    }
    
    func setupConstraints() {
        locationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        locationLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        locationLabel.widthAnchor.constraint(equalToConstant: 400).isActive = true
        locationLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        temperatureLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        temperatureLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        temperatureLabel.widthAnchor.constraint(equalToConstant: 400).isActive = true
        temperatureLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }


}

