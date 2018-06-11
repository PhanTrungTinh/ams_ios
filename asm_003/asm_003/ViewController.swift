//
//  ViewController.swift
//  asm_003
//
//  Created by TinhPhan on 6/11/18.
//  Copyright © 2018 TinhPhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textNumber1: UITextField!
    @IBOutlet weak var textNumber2: UITextField!
    @IBOutlet weak var buttonSum: UIButton!
    @IBOutlet weak var buttonDed: UIButton!
    @IBOutlet weak var buttonMul: UIButton!
    @IBOutlet weak var buttonDiv: UIButton!
    @IBOutlet weak var buttonResult: UIButton!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textNumber1.layer.borderWidth=2;
        textNumber1.layer.borderColor=UIColor.black.cgColor
    
        textNumber2.layer.borderWidth=2;
        textNumber2.layer.borderColor=UIColor.black.cgColor
        
        buttonSum.layer.borderColor=UIColor.black.cgColor;
        buttonSum.layer.borderWidth=2;
        buttonSum.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        buttonDed.layer.borderColor=UIColor.black.cgColor;
        buttonDed.layer.borderWidth=2;
        buttonDed.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        buttonMul.layer.borderColor=UIColor.black.cgColor;
        buttonMul.layer.borderWidth=2;
        buttonMul.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        buttonDiv.layer.borderColor=UIColor.black.cgColor;
        buttonDiv.layer.borderWidth=2;
        buttonDiv.contentEdgeInsets = UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16)
        buttonResult.layer.borderColor=UIColor.blue.cgColor;
        buttonResult.backgroundColor = UIColor.blue
        buttonResult.contentEdgeInsets = UIEdgeInsets(top: 4, left: 16, bottom: 4, right: 16)
        labelResult.layer.borderColor=UIColor.red.cgColor;
        labelResult.layer.borderWidth=2;
    
 
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        buttonResult.layer.cornerRadius = buttonResult.bounds.size.height / 2;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

