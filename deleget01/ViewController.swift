//
//  view2ViewController.swift
//  deleget01
//
//  Created by Mac on 3/22/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit


class ViewController: UIViewController, Delegate {
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detination = segue.destination as? View1Controller else { return }
        detination.delegate = self
    }
    
    func duSomeThing(with dada: String) {
        textLabel.text = dada
    }
    
}
