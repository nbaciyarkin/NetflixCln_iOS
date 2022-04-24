//
//  HeroHeaderUIView.swift
//  NetflixClone
//
//  Created by Yarkın Gazibaba on 22.04.2022.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    
    
    private let downloadButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        // to adding constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let playButon: UIButton = {
        
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        // to adding constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let heroImageView: UIImageView = {
       
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "dune_poster")
        return imageView
    }()
    
    // WHENEVER YOU see a fading out effect so basically the gradient
    private func addGradient(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor,
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
        
    }
    //

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addSubview(downloadButton)
        addSubview(playButon)
        applyConstraints()
        addGradient()
    }
    private func applyConstraints(){
        
        let playButtonConstraints = [
            playButon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            playButon.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButon.widthAnchor.constraint(equalToConstant: 120)
        ]
        NSLayoutConstraint.activate(playButtonConstraints)
        
        let downloadButtonConstraints = [
            downloadButton.trailingAnchor.constraint(equalTo:trailingAnchor, constant: -70),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(downloadButtonConstraints)
        
        
        
    }
    
    

    override func layoutSubviews() {
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    
    
}
