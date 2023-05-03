//
//  SettingsViewController.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 17.04.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        title = "Setting"
        view.backgroundColor = .systemBackground
    }
}
