import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // свайп налево
        let leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureAction))
       leftSwipeGesture.direction = .right //тут указано налево но оно работает только когда свайп вправо 
            view.addGestureRecognizer(leftSwipeGesture)
        
    }

   @objc func swipeGestureAction() {
       let transition = CATransition()
       transition.duration = 0.27
       transition.type = .reveal
       transition.subtype = .fromLeft
       view.window?.layer.add(transition, forKey: kCATransition)
       dismiss(animated: false, completion: nil)
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

