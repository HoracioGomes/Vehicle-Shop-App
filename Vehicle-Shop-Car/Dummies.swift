//
//  Dummies.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 01/03/23.
//

import Foundation
import UIKit

class Dummies{
    
    static var dummies: Array<Vehicle>!
    
    class func populateDummies(){
        dummies = Array<Vehicle>()
        let vehicle_1 = Sedan(name: "Gol", color: UIColor.cyan, maxGear: 4, status: VehicleState.out)
        let vehicle_2 = Sedan(name: "Voyage", color: UIColor.gray, maxGear: 5, status: VehicleState.repairs)
        let vehicle_3 = Truck(name: "Celta", color: UIColor.red, maxGear: 4, status: VehicleState.out)
        let vehicle_4 = Sedan(name: "Touro", color: UIColor.blue, maxGear: 6, status: VehicleState.available)
        
        dummies.append(vehicle_1)
        dummies.append(vehicle_2)
        dummies.append(vehicle_3)
        dummies.append(vehicle_4)
    }
    

}
