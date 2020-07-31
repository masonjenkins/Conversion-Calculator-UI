//
//  ConverterViewController.swift
//  Conversion Calculator UI
//
//  Created by Mason Jenkins on 7/16/20.
//  Copyright © 2020 Mason Jenkins. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController
{
    
    var convertAction = [ConverterActions(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                         ConverterActions(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                         ConverterActions(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                         ConverterActions(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]

    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func converterButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: convertAction[0].label, style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.convertAction[0].outputUnit
            self.inputDisplay.text = self.convertAction[0].inputUnit
        }))
        alert.addAction(UIAlertAction(title: convertAction[1].label, style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.convertAction[1].outputUnit
            self.inputDisplay.text = self.convertAction[1].inputUnit
        }))
        alert.addAction(UIAlertAction(title: convertAction[2].label, style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.convertAction[2].outputUnit
            self.inputDisplay.text = self.convertAction[2].inputUnit
        }))
        alert.addAction(UIAlertAction(title: convertAction[3].label, style: .default, handler: {
            (alertAction) -> Void in
            
            self.outputDisplay.text = self.convertAction[3].outputUnit
            self.inputDisplay.text = self.convertAction[3].inputUnit
        }))
        
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputDisplay.text = convertAction[0].outputUnit
        inputDisplay.text = convertAction[0].inputUnit

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
