//
//  ViewController.swift
//  asm_04_Autolayout_Coding
//
//  Created by TinhPhan on 6/11/18.
//  Copyright © 2018 TinhPhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mColorView1)
        self.view.addSubview(mcolorView2)
        commonSetup()
        mcolorView2.addSubview(imageView)
        setupImageView()
    
    }
    func commonSetup(){
        setupView1()
        setupView2()
    }
    func setupImageView(){
        imageView.translatesAutoresizingMaskIntoConstraints=false
        let image = UIImage(named:"me.jpg")
        imageView.image = image
        let topImage = NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: mcolorView2, attribute: .top, multiplier: 1, constant: 20)
        let leadingImage = NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: mcolorView2, attribute: .leading, multiplier: 1, constant:   20)
        
        let trainlingImage = NSLayoutConstraint(item: imageView, attribute: .trailing, relatedBy: .equal, toItem: mcolorView2, attribute: .trailing , multiplier: 1, constant: -20)
        let bottomImage = NSLayoutConstraint(item: imageView, attribute: .bottom, relatedBy: .equal, toItem: mcolorView2,
            attribute: .bottom, multiplier: 1, constant: -20)
        topImage.isActive =  true
        leadingImage.isActive = true
        trainlingImage.isActive = true
        bottomImage.isActive = true
    }
    func setupView1() {
        mColorView1.translatesAutoresizingMaskIntoConstraints = false
        mColorView1.backgroundColor = UIColor.brown
        let topColor1 = NSLayoutConstraint(item: mColorView1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 20)
        let leadingColor1 = NSLayoutConstraint(item: mColorView1, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingColor1 = NSLayoutConstraint(item: mColorView1, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightColor1 = NSLayoutConstraint(item: mColorView1, attribute: .height, relatedBy: .equal, toItem:nil, attribute: .notAnAttribute, multiplier: 1, constant: self.view.bounds.size.height/2)
        topColor1.isActive=true
        leadingColor1.isActive=true
        trailingColor1.isActive=true
        heightColor1.isActive=true
    }
    
    func setupView2() {
        mcolorView2.translatesAutoresizingMaskIntoConstraints = false
        mcolorView2.backgroundColor = UIColor.red
        let leadingColor2 = NSLayoutConstraint(item: mcolorView2, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingColor2 = NSLayoutConstraint(item: mcolorView2, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightColor2 = NSLayoutConstraint (item: mcolorView2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.view.bounds.size.height/2)
        let bottomColor2 = NSLayoutConstraint(item: mcolorView2, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        leadingColor2.isActive=true
        trailingColor2.isActive=true
        bottomColor2.isActive=true
        heightColor2.isActive=true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //region VARS2
    let mColorView1=UIView()
    let mcolorView2 = UIView()
    let imageView = UIImageView()
    //endregion
    
}

