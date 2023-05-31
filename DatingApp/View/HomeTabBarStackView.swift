//
//  HomeTabBarStackView.swift
//  DatingApp
//
//  Created by Tamirlan Aubakirov on 31.05.2023.
//

import UIKit


class HomeTabBarStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
        setupStackView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    private func setupStackView() {
        distribution = .fillEqually
        axis = .horizontal
        let bottomSubviews = [UIColor.red, .blue, .green, .yellow, .orange].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        bottomSubviews.map { addArrangedSubview($0) }
    }
}
