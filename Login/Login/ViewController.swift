//
//  ViewController.swift
//  Login
//
//  Created by Student on 29/07/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
        
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        performSegue(withIdentifier: "Login", sender: sender)
    }
    @IBAction func forgotUsernameButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "Login", sender: sender)
        
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "Login", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? UIViewController {
            destinationVC.navigationItem.title = username.text
        
            guard let sender = sender as? UIButton else { return }
            
            if sender == forgotUsernameButton {
                segue.destination.navigationItem.title = "Forgot Username"
            } else if sender == forgotPasswordButton {
                segue.destination.navigationItem.title = "Forgot Password"
                
            }else { segue.destination.navigationItem.title = username.text}
            }
        }
    }




