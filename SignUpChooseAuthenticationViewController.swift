//
//  SignUpChooseAuthenticationViewController.swift
//  carpoolApp_v1.0
//
//  Created by Matt Hills on 6/27/16.
//  Copyright © 2016 Matthew Hills. All rights reserved.
//

import UIKit

class SignUpChooseAuthenticationViewController: UIViewController {
    
    @IBOutlet weak var signUpFacebookButton: UIButton!
    @IBOutlet weak var signUpEmailButton: UIButton!
    
    @IBAction func closeViewButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Sign Up for Loop"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0/255, green: 51/255, blue: 0/255, alpha: 1.0)
        navigationController?.navigationBar.barStyle = UIBarStyle.BlackTranslucent
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name:"HelveticaNeue-Light", size: 20)!]
        
        signUpFacebookButton.layer.cornerRadius = signUpFacebookButton.bounds.height / 2
        signUpEmailButton.layer.cornerRadius = signUpEmailButton.bounds.height / 2
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
    }
}
