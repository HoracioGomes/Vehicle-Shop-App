//
//  ViewController.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 01/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Dummies.populateDummies()
    }

    
    @IBAction func statusAction(_ sender: Any) {
    }
    
    @IBAction func typeAction(_ sender: Any) {
    }
    
    @IBAction func addAction(_ sender: Any) {
    }
    
    @IBOutlet weak var textView: UITextView!
}

