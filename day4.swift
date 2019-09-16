import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        result.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    @IBOutlet var nameTxt: UITextField!
    
    @IBOutlet weak var phoneTxt: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet var ageDisp: UILabel!
    @IBOutlet var sldVal: UISlider!
    @IBAction func sldrAction(_ sender: UISlider) {
        ageDisp.text = String(Int(sldVal.value))
        
    }
    @IBOutlet weak var img: UIImageView!
    @IBOutlet var seg: UISegmentedControl!
    @IBAction func segm(_ sender: UISegmentedControl) {
        if(seg.selectedSegmentIndex == 0){
            
        }
        else{
            
        }
    }
    @IBAction func changeWall(_ sender: Any) {
        let act1 = {(obj : UIAlertAction) -> Void in self.img.image = UIImage(named : "1") }
         let act2 = {(obj : UIAlertAction) -> Void in self.img.image = UIImage(named : "2") }
         let act3 = {(obj : UIAlertAction) -> Void in self.img.image = UIImage(named : "3") }
        var alrt = UIAlertController(title: "change wall", message: "click option", preferredStyle: .actionSheet)
        alrt.addAction(UIAlertAction(title: "Image1", style: .default, handler: act1))
        
        alrt.addAction(UIAlertAction(title: "Image2", style: .default, handler: act2))
        alrt.addAction(UIAlertAction(title: "Image3", style: .default, handler: act3))
        alrt.addAction(UIAlertAction(title: "cancel", style: UIAlertActionStyle.cancel, handler: nil))
        present(alrt, animated: true, completion: nil)
    }
    @IBOutlet weak var switchVal: UISwitch!
    @IBAction func switchAction(_ sender: Any) {
        if(switchVal.isOn == true){
            
        }
        else{
            
        }
    }
    
    @IBAction func submitAction(_ sender: Any) {
        if(nameTxt.hasText == false || phoneTxt.hasText == false || seg.selectedSegmentIndex == -1){
            let alrt = UIAlertController(title: "warning", message:"Empty fileds", preferredStyle: UIAlertControllerStyle.alert)
            alrt.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            present(alrt, animated: true, completion: nil)
        }
        else if(phoneTxt.text?.count != 10){
            var alrt = UIAlertController(title: "warning", message:"Insert correct number", preferredStyle: UIAlertControllerStyle.alert)
            alrt.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
            present(alrt, animated: true, completion: nil)
        }
        else{
        result.isHidden = false
        if(seg.selectedSegmentIndex == 1 && switchVal.isOn == false){
            result.text = "You can persue next course with a job"
        }
        else if(seg.selectedSegmentIndex == 0 && switchVal.isOn == false){
            result.text = "you can persue next job"
        }
        else if(switchVal.isOn == true){
            result.text = String(nameTxt.text!) + ", you can persue job and go for higher studies"
           }
        }
    }
    
    
}

