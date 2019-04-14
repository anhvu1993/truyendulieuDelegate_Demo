//
//  ViewController.swift
//  deleget01
//
//  Created by Mac on 3/22/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit
protocol Delegate {
    func duSomeThing (with dada: String)
}

class View1Controller: UIViewController {
    @IBOutlet weak var textField: UITextField!
    var delegate:Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func check(_ sender: Any) {
        //        if let delegate = delegate {
        let data = textField.text
        delegate?.duSomeThing(with: data!)
        navigationController?.popViewController(animated: true)
        //        }
    }
    
}
