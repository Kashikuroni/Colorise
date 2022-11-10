//
//  ViewController.swift
//  Colorise
//
//  Created by Mr Owlise on 10.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorPreview: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorPreview.layer.cornerRadius = 20
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }

    @IBAction func redSliderAction() {
        redValue.text = String(round(redSlider.value*100)/100)
    }
    
    @IBAction func greenSliderAction() {
        greenValue.text = String(round(greenSlider.value*100)/100)
    }
    @IBAction func blueSliderAction() {
        blueValue.text = String(round(blueSlider.value*100)/100)
    }
}

