//
//  ExapleViewController.swift
//  задание на 27.08.2025
//
//  Created by Матвей Симонов on 27.08.2025.
//

import UIKit

final class ExapleViewController: UIViewController {
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        //imageView.image = UIImage(named: ")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let counterLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "1/10"
        label.font = .systemFont(ofSize: 23, weight: .medium)
        label.textAlignment = .right
        return label
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .black
        label.text = ""
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton(type:  .system)
        button.setTitle("button", for: .normal)
        button.backgroundColor = .white
        button.layer.cornerRadius = 15
        button.tintColor = .black
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    private func random(){
        if Bool.random(){
            sleep(10)
            return label.text = "<====: ?? :====>"
        } else {
            sleep(10)
            return imageView.image = UIImage(named: "Image 1")
        }
        return
    }
    @objc private func buttonTapped() {
    random()
    }
       
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        [button, imageView, label].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        
        }
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            button.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            imageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
        ])
    }
}
#Preview {
    ExapleViewController()
}
