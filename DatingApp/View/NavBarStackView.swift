//
//  NavBarStackView.swift
//  DatingApp
//
//  Created by Tamirlan Aubakirov on 31.05.2023.
//

import UIKit


class NavBarStackView: UIStackView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStackView()
        setupConstraint()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupStackView() {
        axis = .horizontal
        distribution = .fillEqually
        
        let subviews = [UIColor.gray, UIColor.darkGray, UIColor.black].map { (color) -> UIView in
            let view = UIView()
            view.backgroundColor = color
            return view
        }
        
        subviews.map { addArrangedSubview($0)}
    }
    
    private func setupConstraint() {
        heightAnchor.constraint(equalToConstant: 100).isActive = true
    }
}
