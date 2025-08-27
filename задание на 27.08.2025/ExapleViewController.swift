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
    
    private let question: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.text = "Рейтинг этого фильма меньше чем 5? "
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    private let button: UIButton = {
        let button = UIButton(type:  .system)
        button.setTitle("Нет", for: .normal)
        button.backgroundColor = .ypWhite
        button.layer.cornerRadius = 15
        button.tintColor = .ypBlack
        button.titleLabel?.font = .systemFont(ofSize: 20, weight: .medium)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        [button, imageView, question,].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            button.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
        ])
    }
}
#Preview {
    ExapleViewController()
}
