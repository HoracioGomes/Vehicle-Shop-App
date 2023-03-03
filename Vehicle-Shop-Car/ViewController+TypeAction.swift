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
        currArray = Array<Vehicle>()
        let indType = (sender as! UISegmentedControl).selectedSegmentIndex
        let indStatus = segmentedControlStatus.selectedSegmentIndex
        switch indType {
        case 0://Sedan
            for anyVeh in Dummies.dummies{
                if let thisSedan = anyVeh as? Sedan{
                    filterStatus(indStatus: indStatus, vehicle: thisSedan)
                }
            }
            
            showString(title: "", vehicles: currArray)
        case 1://Truck
            for anyVeh in Dummies.dummies{
                if let thisTruck = anyVeh as? Truck{
                    filterStatus(indStatus: indStatus, vehicle: thisTruck)
                    
                }
            }
            showString(title: "", vehicles: currArray)
        default:
            break
        }
    }
    
    func filterStatus(indStatus: Int, vehicle: Vehicle){
        switch indStatus {
        case 0: if(vehicle.status == VehicleState.available){currArray.append(vehicle)}
        case 1: if(vehicle.status == VehicleState.out){currArray.append(vehicle)}
        case 2: if(vehicle.status == VehicleState.repairs){currArray.append(vehicle)}
        default:
            return
        }
    }
}
