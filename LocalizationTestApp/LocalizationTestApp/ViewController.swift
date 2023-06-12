//
//  ViewController.swift
//  LocalizationTestApp
//
//  Created by Руслан Штыбаев on 12.06.2023.
//

import UIKit
import LocalizationTest

class ViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Start", for: .normal)
        button.backgroundColor = .black
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 14
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(button)
        button.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.center = view.center
        
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
    }

    @objc private func buttonDidTap() {
        LocalizationManager().start(at: self)
    }
}

