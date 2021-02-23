//
//  HeadImage.swift
//  Programmatic UI
//
//  Created by Artem Arslanov on 23.02.2021.
//  Copyright © 2021 Artem Arslanov. All rights reserved.
//

import UIKit

class HeadImage: UIImageView {
    var measure: CGFloat!
    let borderRadius: CGFloat = 4

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(image: UIImage, width: CGFloat){
        super.init(frame: .zero)
        self.image = image
        self.measure = width/8
        configureImageView()
    }

    func configureImageView(){
        contentMode = .scaleAspectFill
        
        widthAnchor.constraint(equalToConstant: measure).isActive = true
        heightAnchor.constraint(equalToConstant: measure).isActive = true
        layer.cornerRadius = measure/2
        layer.borderWidth  = borderRadius
        layer.borderColor  = UIColor.red.cgColor
        clipsToBounds = true
    }
    
}
