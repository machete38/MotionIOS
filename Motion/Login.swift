import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
   @IBAction func loginButtonTapped(_ sender: Any) {
       guard let email = usernameTextField.text, !email.isEmpty else {
           let alert = UIAlertController(title: "Error", message: "Please enter your email.", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
           self.present(alert, animated: true, completion: nil)
           return
       }
       
       guard let password = passwordTextField.text, !password.isEmpty else {
           let alert = UIAlertController(title: "Error", message: "Please enter your password.", preferredStyle: .alert)
           alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
           self.present(alert, animated: true, completion: nil)
           return
       }
       
       Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
           guard let strongSelf = self else { return }
           
           if let error = error {
               let alert = UIAlertController(title: "Error", message: "Failed to login. Please try again.", preferredStyle: .alert)
               alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
               strongSelf.present(alert, animated: true, completion: nil)
               print("Error: \(error.localizedDescription)")
               return
           }
           
           // Login successful, perform segue to transition to next view controller
           strongSelf.performSegue(withIdentifier: "seg1", sender: self)
           print("User logged in successfully!")
       }
   }

}

