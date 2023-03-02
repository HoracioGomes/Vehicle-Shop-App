//
//  ViewController.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 01/03/23.
//

import UIKit

class ViewController: UIViewController {
    var currArray: Array<Vehicle>!
    override func viewDidLoad() {
        super.viewDidLoad()
        Dummies.populateDummies()
    }
    
    @IBAction func addAction(_ sender: Any) {
        self.performSegue(withIdentifier: "toAddSegue", sender: nil)
    }
    
    @IBOutlet weak var textView: UITextView!
    
    
}

