//
//  ViewController.swift
//  DatingApp
//
//  Created by Tamirlan Aubakirov on 31.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let redView = NavBarStackView()
    let blueView = UIView()
    let greenView = HomeTabBarStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        blueView.backgroundColor = .blue

        let overallStackView = UIStackView(arrangedSubviews: [redView, blueView, greenView])
        overallStackView.axis = .vertical
        view.addSubview(overallStackView)
        overallStackView.fillSuperview()
    }

}

