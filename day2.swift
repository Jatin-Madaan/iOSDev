//
//  ViewController.swift
//  demoPractice
//
//  Created by Student on 02/09/19.
//  Copyright © 2019 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var lbl1 : UILabel!
    @IBOutlet var swtch : UISwitch!
    @IBAction func swtchAction(){
        if(swtch.isOn == true){
            lbl1.text = "Switch ON"
            view.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
            sdr.isEnabled = false
        }
        else{
            lbl1.text = "Switch OFF"
            sdr.isEnabled = true
            view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
    }
    
    @IBOutlet var sdr : UISlider!
    @IBAction func sdrAction(){
        var val = Int(sdr.value)
        lbl1.text = String(val)
        
    }
    @IBOutlet var seg : UISegmentedControl!
    @IBOutlet var img : UIImageView!
    
    @IBAction func segAction(){
        if(seg.selectedSegmentIndex == 0){
            img.image = UIImage(named: "pic1")
        }
        else if(seg.selectedSegmentIndex == 1){
            img.image = UIImage(named: "pic2")
        }
        else{
            img.image = UIImage(named: "pic3")
        }
    }
}
