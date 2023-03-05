import UIKit
import Firebase

class Register: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        email.layer.cornerRadius = 10
        username.layer.cornerRadius = 10
        password.layer.cornerRadius = 10
         
        email.delegate = self
        username.delegate = self
        password.delegate = self
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        guard let email = email.text, let password = password.text else { return }
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Error registering user: \(error.localizedDescription)")
                return
            }
            print("Signed Up successfully")
            
            //  надо больше параметров при реге добавить
        }
    }
    
    // это чтобы клавиатура убиралась после ввода
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

    
