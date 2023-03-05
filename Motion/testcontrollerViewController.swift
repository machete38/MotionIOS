import UIKit

class testcontrollerViewController: UIViewController {
    @IBOutlet weak var back2startbutton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        back2startbutton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
    }
    
    @objc func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
