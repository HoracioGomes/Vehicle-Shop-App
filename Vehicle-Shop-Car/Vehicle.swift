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

}
