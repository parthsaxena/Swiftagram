//
//  ViewController.swift
//  Swiftagram
//
//  Created by Parth Saxena on 9/17/16.
//  Copyright © 2016 Socify. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        // check if user is already signed in
        if FIRAuth.auth()?.currentUser != nil {
            // user is already logged in
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainVC")
            self.present(vc!, animated: false, completion: nil)
        }
        
    }
    
    @IBAction func signInTapped(_ sender: AnyObject) {
        
        let username = usernameTextField.text
        let password = passwordTextField.text
        
        FIRAuth.auth()?.signIn(withEmail: username!, password: password!, completion: { (user, error) in
            if error != nil {
                // error logging in user
                let alert = UIAlertController(title: "Error", message: "Incorrect Username/Password. ", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else {
                // success
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainVC") 
                self.present(vc!, animated: true, completion: nil)
            }
        })
        
    }

}

