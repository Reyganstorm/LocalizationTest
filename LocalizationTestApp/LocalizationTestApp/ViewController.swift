//
//  ViewController.swift
//  LocalizationTestApp
//
//  Created by Руслан Штыбаев on 12.06.2023.
//

import UIKit
import SnapKit
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
        setNavigationBar()
        view.backgroundColor = .red
        view.addSubview(button)
        button.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
        button.center = view.center
        button.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
    }
    
    @objc private func buttonDidTap() {
        LocalizationManager().start(at: self)
    }
    
    @objc private func navButtonDidTap() {
//        actionSheet = UIAlertController(title: nil, message: "Switch Language", preferredStyle: UIAlertController.Style.actionSheet)
//        for language in availableLanguages {
//            let displayName = Localize.displayNameForLanguage(language)
//            let languageAction = UIAlertAction(title: displayName, style: .default, handler: {
//                (alert: UIAlertAction!) -> Void in
//                    Localize.setCurrentLanguage(language)
//            })
//            actionSheet.addAction(languageAction)
//        }
//        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: {
//            (alert: UIAlertAction) -> Void in
//        })
//        actionSheet.addAction(cancelAction)
//        self.present(actionSheet, animated: true, completion: nil)
    }
    
    func setNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        self.navigationItem.standardAppearance = appearance
        self.navigationItem.scrollEdgeAppearance = appearance
        navigationController?.navigationBar.prefersLargeTitles = false
        
        let imageS = UIImage(systemName: "gearshape")?.withTintColor(.black, renderingMode: .alwaysOriginal)
        let settingsItem = UIBarButtonItem(
            image: imageS,
            style: .plain,
            target: self, action: #selector(navButtonDidTap)
        )
        
        navigationItem.rightBarButtonItem = settingsItem
//        navigationItem.
    }
    
    
}

