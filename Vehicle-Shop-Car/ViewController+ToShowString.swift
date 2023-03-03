//
//  ViewController+ToShowString.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 02/03/23.
//

import Foundation
import UIKit

extension ViewController {
    
    func showString(title: String, vehicles: Array<Vehicle>){
        if(title != ""){
            currenTitle = title
        }
        var toShowString = currenTitle
        
        toShowString.append("\n")
        for vehicle in vehicles {
            toShowString.append("\n\t")
            toShowString.append(vehicle.name.uppercased())
            toShowString.append("\n\t\t")
            toShowString.append("Color: \(vehicle.color.named ?? "unknown")")
            toShowString.append("\n\t\t")
            toShowString.append("Max Gear: \(String(vehicle.maxGear))")
            toShowString.append("\n\t\t")
            toShowString.append("Status: \(vehicle.status ?? VehicleState.unknown)")
            toShowString.append("\n")
        }
        
        textView.text = toShowString
    }
}
