//
//  ViewController.swift
//  WeatherApp
//
//  Created by Jonah Tharakan on 8/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    // Model:
    
    lazy var model: Model = Model()
    
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
    
    lazy var locationInput: UITextField = {
        let tf = UITextField()
        tf.keyboardType = .alphabet
        tf.textAlignment = .center
        tf.returnKeyType = .send
        tf.clearButtonMode = .whileEditing
        tf.font = UIFont(name: "Arial", size: 20)
        tf.borderStyle = .roundedRect
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
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
        view.addSubview(locationInput)
        
        locationLabel.text = model.location
        temperatureLabel.text = String(model.temperature)
        
        locationInput.addTarget(self, action: #selector(sendPressed), for: .editingDidEndOnExit)
    }
    
    func setupConstraints() {
        locationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        locationLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        locationLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        locationLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        temperatureLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        temperatureLabel.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        temperatureLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        temperatureLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        locationInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        locationInput.centerYAnchor.constraint(equalTo: view.topAnchor, constant: 210).isActive = true
        locationInput.widthAnchor.constraint(equalToConstant: 250).isActive = true
        locationInput.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func sendPressed() {
        model.location = locationInput.text ?? ""
        locationInput.text = ""
        locationInput.resignFirstResponder()
        locationLabel.text = model.location
    }


}

