//
//  ViewController+StatusAction.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 02/03/23.
//

import Foundation
import UIKit

extension ViewController{
    @IBAction func statusAction(_ sender: Any) {
        let ind = (sender as! UISegmentedControl).selectedSegmentIndex
        currArray = Array<Vehicle>()
        switch ind {
        case 0://Available
            
            for vehicle in Dummies.dummies{
                if(vehicle.status == VehicleState.available){
                    currArray.append(vehicle)
                }
            }
            showString(title: "Available", vehicles: currArray)
        case 1://Out
            
            for vehicle in Dummies.dummies{
                if(vehicle.status == VehicleState.out){
                    currArray.append(vehicle)
                }
            }
            showString(title: "Out", vehicles: currArray)
        case 2://Repairs
            for vehicle in Dummies.dummies{
                if(vehicle.status == VehicleState.repairs){
                    currArray.append(vehicle)
                }
            }
            showString(title: "Repair", vehicles: currArray)
        default:
            break
        }
        
    }
}
