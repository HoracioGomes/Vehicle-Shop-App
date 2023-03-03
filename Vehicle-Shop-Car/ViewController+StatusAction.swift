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
        currArray = Array<Vehicle>()
        let indStatus = (sender as! UISegmentedControl).selectedSegmentIndex
        let indType = segmentedControlType.selectedSegmentIndex
        switch indStatus {
        case 0://Available
            
            for vehicle in Dummies.dummies{
                if(vehicle.status == VehicleState.available){
                    filterType(indType: indType, vehicle: vehicle)
                }
            }
            showString(title: "Available", vehicles: currArray)
        case 1://Out
            
            for vehicle in Dummies.dummies{
                if(vehicle.status == VehicleState.out){
                    filterType(indType: indType, vehicle: vehicle)
                }
            }
            print(currArray.count)
            showString(title: "Out", vehicles: currArray)
        case 2://Repairs
            for vehicle in Dummies.dummies{
                if(vehicle.status == VehicleState.repairs){
                    filterType(indType: indType, vehicle: vehicle)
                }
            }
            showString(title: "Repair", vehicles: currArray)
        default:
            break
        }
        
    }
    
    func filterType(indType: Int, vehicle: Vehicle){
        switch indType {
        case 0: if let thisVehicle = vehicle as? Sedan{
            currArray.append(thisVehicle)
        }
        case 1: if let thisVehicle = vehicle as? Truck{
            currArray.append(thisVehicle)
        }
        default:
            return
        }
    }
}
