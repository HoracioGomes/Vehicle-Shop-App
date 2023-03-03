//
//  String+Colored.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 03/03/23.
//

import Foundation
import UIKit

extension String{
    
    var color: UIColor?{
        switch self {
        case "blue": return UIColor.blue
        case "cyan": return UIColor.cyan
        case "gray": return UIColor.gray
        case "red": return UIColor.red
        case "green": return UIColor.green
        case "black": return UIColor.black
        case "yellow": return UIColor.yellow
        case "purple": return UIColor.purple
        default: return nil
        }
    }
    
}
