//
//  Login.swift
//  Motion
//
//  Created by Андрей Гареев on 07.03.2020.
//  Copyright © 2020 Motion inc. All rights reserved.
//

import UIKit

class Login: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    @IBAction func siwpeRight(_ sender: UISwipeGestureRecognizer) {
            performSegue(withIdentifier: "swipeRight", sender: self)
    }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


