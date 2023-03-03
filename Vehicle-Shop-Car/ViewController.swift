//
//  ViewController.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 01/03/23.
//

import UIKit

class ViewController: UIViewController {
    var currArray: Array<Vehicle>!
    var currenTitle: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        Dummies.populateDummies()
        initialFilter()
    }
    
    @IBAction func addAction(_ sender: Any) {
        self.performSegue(withIdentifier: "toAddSegue", sender: nil)
    }
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var segmentedControlStatus: UISegmentedControl!
    
    @IBOutlet weak var segmentedControlType: UISegmentedControl!
}

