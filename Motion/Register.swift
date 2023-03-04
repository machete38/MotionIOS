//
//  Register.swift
//  Motion
//
//  Created by Андрей Гареев on 07.03.2020.
//  Copyright © 2020 Motion inc. All rights reserved.
//

import UIKit

class Register: UIViewController {
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
      super.viewDidLoad()
        email.layer.cornerRadius = 10
        username.layer.cornerRadius = 10
        password.layer.cornerRadius = 10
    }}
