//
//  ViewController.swift
//  demo_layout_clean_model_coding
//
//  Created by TinhPhan on 6/12/18.
//  Copyright © 2018 TinhPhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupBackground()
        setupSubViewBlue()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        setRatioAndHeightConstraint(sub: mMenuBlueHorizontal, superView: mBackgroundBlueView)
    }
    //region UTILS
    func setupBackground(){
        self.view.addSubview(mBackgroundBlueView)
        self.view.addSubview(mBackgroundPinkView)
        mBackgroundPinkView.translatesAutoresizingMaskIntoConstraints = false
        mBackgroundBlueView.translatesAutoresizingMaskIntoConstraints = false
        mBackgroundBlueView.backgroundColor = UIColor.blue
        mBackgroundPinkView.backgroundColor = UIColor.red
        setupBackgroundConstrain()
    }
    func setupBackgroundConstrain() {
        // constrain bg blu
        let topBlu = NSLayoutConstraint(item: mBackgroundBlueView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        let leadingBlu = NSLayoutConstraint(item: mBackgroundBlueView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingBlu = NSLayoutConstraint(item: mBackgroundBlueView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightBlu = NSLayoutConstraint(item: mBackgroundBlueView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.view.bounds.size.height*(1/3))
     
        heightBlu.isActive = true
        topBlu.isActive = true
        leadingBlu.isActive = true
        trailingBlu.isActive = true
        // constrain bg pin
        let leadingPink = NSLayoutConstraint(item: mBackgroundPinkView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1, constant: 0)
        let trailingPink = NSLayoutConstraint(item: mBackgroundPinkView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1, constant: 0)
        let heightPink = NSLayoutConstraint(item: mBackgroundPinkView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: self.view.bounds.size.height*(2/3))
        let bottomPink = NSLayoutConstraint(item: mBackgroundPinkView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
      
        leadingPink.isActive = true
        trailingPink.isActive =  true
        heightPink.isActive = true
        bottomPink.isActive = true
    }
    func setupSubViewBlue()  {
        setupMenuHorizontal()
        setupNameApp()
        setupMenuPoint()
        setupVerticalCenterTop()
        
        setupTextStandby()
    }
    func setRatioAndHeightConstraint(sub: UIImageView,superView : UIView ) {
        let ratio = NSLayoutConstraint(item: sub, attribute: .height, relatedBy: .equal, toItem: sub, attribute: .width, multiplier: 1, constant: 1)
        let height =  NSLayoutConstraint(item: sub, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: superView.bounds.size.height/6)
        height.isActive = true
        ratio.isActive =  true
    }
    func setupMenuHorizontal() {
        mBackgroundBlueView.addSubview(mMenuBlueHorizontal)
        mMenuBlueHorizontal.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named:"menu.png")
        mMenuBlueHorizontal.image = image
        let topMenu = NSLayoutConstraint(item: mMenuBlueHorizontal, attribute: .top, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .top, multiplier: 1, constant: 32)
        let leadingMenu = NSLayoutConstraint(item: mMenuBlueHorizontal, attribute: .leading, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .leading, multiplier: 1, constant: 20)
        topMenu.isActive = true
        leadingMenu.isActive = true
    }
    func setupNameApp() {
        setupTextCommon(sub: mNameApp, font: 30.0, text: "DEEBOT N79", superView: mBackgroundBlueView, color: UIColor.white)
        let topName = NSLayoutConstraint(item: mNameApp, attribute: .top, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .top, multiplier: 1, constant: 32)
        let horizonotalCenterName = NSLayoutConstraint(item: mNameApp, attribute: .centerX, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .centerX, multiplier: 1, constant: 0)
        topName.isActive = true
        horizonotalCenterName.isActive = true
        
    }
    func setupMenuPoint() {
        mBackgroundBlueView.addSubview(mMenuPoint)
        mMenuPoint.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named:"point.png")
        mMenuPoint.image = image
        let topMenu = NSLayoutConstraint(item: mMenuPoint, attribute: .top, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .top, multiplier: 1, constant: 32)
        let trailingMenu = NSLayoutConstraint(item: mMenuPoint, attribute: .trailing, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .trailing, multiplier: 1, constant: -20)
        topMenu.isActive = true
        trailingMenu.isActive = true
    }
    func setupVerticalCenterTop(){
        let verticalOne = NSLayoutConstraint(item: mMenuBlueHorizontal, attribute: .centerY, relatedBy: .equal, toItem: mNameApp, attribute: .centerY, multiplier: 1, constant: 0)
        let verticalTwo = NSLayoutConstraint(item: mMenuBlueHorizontal, attribute: .centerY, relatedBy: .equal, toItem: mMenuPoint, attribute: .centerY, multiplier: 1, constant: 0)
//        let verticalThree = NSLayoutConstraint(item: mMenuBlueHorizontal, attribute: .centerY, relatedBy: .equal, toItem: mNameApp, attribute: .centerY, multiplier: 1, constant: 0)
        verticalOne.isActive = true
        verticalTwo.isActive = true
    }
    func setupTextStandby()  {
        setupTextCommon(sub: mTextStandby, font: 50.0, text: "Standby", superView: mBackgroundBlueView, color: UIColor.white)
        let vertical = NSLayoutConstraint(item: mTextStandby, attribute: .centerY, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .centerY, multiplier: 1, constant: 0)
        let horizontal = NSLayoutConstraint(item: mTextStandby, attribute: .centerX, relatedBy: .equal, toItem: mBackgroundBlueView, attribute: .centerX, multiplier: 0.55, constant: 0)
        vertical.isActive =  true
        horizontal.isActive = true
        
    }

    func setupTextCommon(sub: UILabel, font: CGFloat, text:String,superView:UIView,color:UIColor) {
        superView.addSubview(sub)
        sub.translatesAutoresizingMaskIntoConstraints =  false
        sub.text = text
        sub.font = UIFont.systemFont(ofSize: font)
        sub.textColor = color
    }
    //endregion
    
    //region VARS
    let mBackgroundBlueView = UIView()
    let mBackgroundPinkView = UIView()
    let mMenuBlueHorizontal = UIImageView()
    let mNameApp = UILabel()
    let mMenuPoint = UIImageView()
    let mTextStandby = UILabel()
    //endregion
    
    
}

