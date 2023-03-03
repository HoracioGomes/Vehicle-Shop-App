//
//  Vehicle.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 01/03/23.
//

import UIKit

class Vehicle: NSObject {
    var name : String!
    var color: UIColor!
    var maxGear: Int!
    var status: VehicleState!
    
    init(name: String!, color: UIColor!, maxGear: Int!, status: VehicleState!) {
        self.name = name
        self.color = color
        self.maxGear = maxGear
        self.status = status
    }
    
    convenience init? (inpDictionary: Dictionary<String, Any>) {
        print("Dentro do construtor: \(inpDictionary.values)")
        guard let name =  inpDictionary["nameKey"] as? String,
              let gears = inpDictionary["numGears"] as? Int,
              let colorStr = inpDictionary["colorName"] as? String,
              let statusStr = inpDictionary["statusKey"] as? String
        else{
            return nil
        }
                
        var status = VehicleState.available
        
        for anyStatus in VehicleState.allCases
        {
            if("\(anyStatus)" == statusStr){
                status = anyStatus
            }
        }
        
        self.init(name: name, color: colorStr.color!, maxGear: gears, status: status)
    }

}
