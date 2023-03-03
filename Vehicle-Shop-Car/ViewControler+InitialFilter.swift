//
//  ViewControler+InitialFilter.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 02/03/23.
//

import Foundation
import UIKit

extension ViewController {
    
    func initialFilter(){
        currArray = Array<Vehicle>()
        for vehicle in Dummies.dummies{
            if(vehicle.status == VehicleState.available){
                if let vehicleAvailable = vehicle as? Sedan{
                    currArray.append(vehicleAvailable)
                }
            }
        }
        showString(title: "Available", vehicles: currArray)
    }
    
    
}
