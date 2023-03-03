//
//  AddViewController.swift
//  Vehicle-Shop-Car
//
//  Created by Horacio Gomes dos Santos Junior on 03/03/23.
//

import UIKit

class AddViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var gearsLabel: UILabel!
    @IBOutlet weak var colorSlider: UISlider!
    @IBOutlet weak var colorBox: UIView!
    @IBOutlet weak var warningLabel: UILabel!
    
    var colorsArray: Array<UIColor>!
    func populateColors(){
        colorsArray = [
            UIColor.blue,
            UIColor.cyan,
            UIColor.gray,
            UIColor.red,
            UIColor.green,
            UIColor.black,
            UIColor.yellow,
            UIColor.purple
        ]
        
        colorSlider.minimumValue = 0
        colorSlider.maximumValue = Float(colorsArray.count - 1)
        
    }
    
    var selectedType: String = ""
    var filterDictionary =  Dictionary<String, Any>()
    
    
    
    @IBAction func changeType(_ sender: Any) {
        let ind: Int = (sender as! UISegmentedControl).selectedSegmentIndex
        
        switch ind {
        case 0:
            selectedType = "Sedan"
        case 1:
            selectedType = "Truck"
        default:
            break
        }
    }
    
    @IBAction func changeColor(_ sender: Any) {
        let ind : Int = Int( roundf(colorSlider.value))
        colorBox.backgroundColor = colorsArray[ind]
        filterDictionary["colorName"] = colorsArray[ind].named
    }
    
    
    @IBAction func changeGears(_ sender: Any) {
        
        filterDictionary["numGears"] = Int((sender as! UIStepper).value)
        gearsLabel.text = "\(Int((sender as! UIStepper).value))"
    }
    
    @IBAction func changeStatus(_ sender: Any) {
        let ind = (sender as! UISegmentedControl).selectedSegmentIndex
        filterDictionary["statusKey"] = "\(VehicleState(rawValue: ind)!)"
    }
    
    @IBAction func addAction(_ sender: Any) {
        
        if(!validate()){
            print(filterDictionary.values)
            print(selectedType)
            return
        }else{
            var newVehicle: Vehicle!
            
            if(selectedType == "Sedan"){
                print(filterDictionary.values)
                print(selectedType)
                newVehicle = Sedan(inpDictionary: filterDictionary)
                print(newVehicle)
                Dummies.dummies.append(newVehicle)
            } else if(selectedType == "Truck") {
                print(filterDictionary.values)
                print(selectedType)
                newVehicle = Truck(inpDictionary: filterDictionary)
                print(newVehicle)
                Dummies.dummies.append(newVehicle)
            }
            
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func validate() -> Bool{
        if(filterDictionary.values.count < 4 || selectedType == nil){
            warningLabel.isHidden = false
            warningLabel.text = "All fields are mandatory!"
            return false
        }
        else {
            warningLabel.isHidden = true
            return true
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        warningLabel.isHidden = true
        populateColors()
        nameTextField.delegate = self
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        filterDictionary["nameKey"] = textField.text
        resignFirstResponder()
        return true
    }
    


}
