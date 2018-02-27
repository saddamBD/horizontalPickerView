

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let animals = ["Cat", "Bat", "Rat", "Lion", "Tiger", "Horse"]
    
    let pickerView = UIPickerView()
    
    var rotationAngle: CGFloat!
    
    let width:CGFloat = 100
    let height:CGFloat = 100

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.layer.borderColor = UIColor.black.cgColor
        pickerView.layer.borderWidth = 1.5
        
        // Picker View rotation
        rotationAngle = -90 * (.pi/180)
        pickerView.transform = CGAffineTransform(rotationAngle: rotationAngle)
        
        
        // Picker view creation
        pickerView.frame = CGRect(x: 0 - 150, y: 100, width: view.frame.width + 300, height: 100)
        
        self.view.addSubview(pickerView)
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return animals.count
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: width, height: height)
        
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: width, height: height)
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 30)
        label.text = animals[row]
        view.addSubview(label)
        
        // view rotation
        view.transform = CGAffineTransform(rotationAngle: 90 * (.pi/180))
        
        return view
    }


}


















