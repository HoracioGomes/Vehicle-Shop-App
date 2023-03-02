//
//  TypeAction.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 02/03/23.
//

import Foundation
import UIKit

extension ViewController {
    
    @IBAction func typeAction(_ sender: Any) {
        
        let ind = (sender as! UISegmentedControl).selectedSegmentIndex
        
        switch ind {
        case 0://Sedan
            for anyVeh in Dummies.dummies{
                if let thisSedan = anyVeh as? Sedan{
                    currArray.append(thisSedan)
                }
            }
            showString(title: "Sedan", vehicles: currArray)
        case 1://Truck
            for anyVeh in Dummies.dummies{
                if let thisTruck = anyVeh as? Truck{
                    currArray.append(thisTruck)
                }
            }
            showString(title: "Truck", vehicles: currArray)
        default:
            break
        }
    }
}
