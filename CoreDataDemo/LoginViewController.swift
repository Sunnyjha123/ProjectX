//
//  LoginViewController.swift
//  CoreDataDemo
//
//  Created by CW on 08/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        performSegue(withIdentifier: "LoginToMain", sender: self)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
