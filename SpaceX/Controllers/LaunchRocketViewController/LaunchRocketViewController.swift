//
//  LaunchRocketViewController.swift
//  SpaceX
//
//  Created by Сергей Анпилогов on 11.04.2023.
//

import UIKit

class LaunchRocketViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "arrow.backward")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(backToMainSreenButton))
        barButtonItem.tintColor = .primary
        navigationItem.leftBarButtonItem = barButtonItem
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
    }
    
    @objc
    private func backToMainSreenButton() {
        navigationController?.popViewController(animated: true)
    }
}
