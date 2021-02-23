//
//  ViewController.swift
//  Programmatic UI
//
//  Created by Artem Arslanov on 23.02.2021.
//  Copyright © 2021 Artem Arslanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var containerSize  = CGSize(width: self.view.frame.width, height: self.view.frame.height + 500)
    
    lazy var scrollView: UIScrollView  = {
        var scrollView = UIScrollView(frame: .zero)
        scrollView.backgroundColor = .systemBackground
        scrollView.frame = view.layoutMarginsGuide.layoutFrame
        scrollView.contentSize = containerSize
        return scrollView
    }()
    
    var layout: UILayoutGuide!
    var headImage: HeadImage!
    var topImage  = TopImage(image: #imageLiteral(resourceName: "car"))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWindow()
        configureScroll()
        configureTopImage()
        configureHeadImage()
        
        
        
        
        
        
        

    }
    
    func configureScroll(){
        view.addSubview(scrollView)
        
    }
    
    func configureHeadImage(){
        headImage = HeadImage(image: #imageLiteral(resourceName: "person"), width: view.frame.size.width)
        let insetFromLeading = view.frame.size.width / 5
        
        scrollView.addSubview(headImage)
        headImage.translatesAutoresizingMaskIntoConstraints = false
        headImage.centerYAnchor.constraint(equalTo: topImage.bottomAnchor).isActive = true
    
        headImage.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: insetFromLeading).isActive = true
        
    }
    func configureTopImage(){

        scrollView.addSubview(topImage)
        topImage.contentMode = .scaleAspectFill
        topImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topImage.topAnchor.constraint(equalTo: scrollView.topAnchor),
               topImage.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
               topImage.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
               topImage.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 0.2)
        ])
       
        topImage.clipsToBounds = true
    }
    
    func configureWindow(){
        view.backgroundColor = .systemBackground
        layout = view.layoutMarginsGuide
        
    }
}

