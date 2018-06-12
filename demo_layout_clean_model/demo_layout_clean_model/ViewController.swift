//
//  ViewController.swift
//  demo_layout_clean_model
//
//  Created by TinhPhan on 6/12/18.
//  Copyright © 2018 TinhPhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
    backgroundCircle.layer.cornerRadius=backgroundCircle.bounds.size.height/2
        backgroundCircle.clipsToBounds=true
        backgroundCircle.layer.shadowColor=UIColor.blue.cgColor;
        backgroundCircle.layer.shadowOpacity=0.8
        backgroundCircle.layer.shadowOffset=CGSize.zero
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var backgroundCircle: UIView!
    
}

