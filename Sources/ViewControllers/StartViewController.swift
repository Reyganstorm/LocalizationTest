//
//  StartViewController.swift
//  
//
//  Created by Руслан Штыбаев on 12.06.2023.
//

import UIKit
import SnapKit

final class StartViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "flag", in: .module, with: nil))
        imageView.contentMode = .scaleAspectFit
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 5
        imageView.layer.masksToBounds = false
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = NSLocalizedString("greetings", bundle: .module, comment: "")
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        dissmisWithSwipe()
    }
    
    private func setupView() {
        view.addSubview(imageView)
        view.addSubview(label)
        
        imageView.snp.makeConstraints { make in
            make.left.greaterThanOrEqualToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.top.equalTo(additionalSafeAreaInsets.top).offset(200)
            make.height.lessThanOrEqualTo(100)
        }
        
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.left.equalToSuperview().offset(40)
            make.height.greaterThanOrEqualTo(40)
            make.top.equalTo(imageView.snp.bottom).offset(30)
        }
    }
    
        func dissmisWithSwipe() {
            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(back))
            swipe.direction = .right
            self.view.addGestureRecognizer(swipe)
        }
    
        @objc private func back() {
            dismiss(animated: false)
        }
}
