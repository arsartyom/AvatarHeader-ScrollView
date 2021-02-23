//
//  TopImage.swift
//  Programmatic UI
//
//  Created by Artem Arslanov on 23.02.2021.
//  Copyright © 2021 Artem Arslanov. All rights reserved.
//

import UIKit

class TopImage: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(image: UIImage?) {
        super.init(frame: .zero)
        self.image = image
    
    }
    

}
