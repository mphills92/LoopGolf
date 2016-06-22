//
//  BecomeCaddyViewController.swift
//  carpoolApp_v1.0
//
//  Created by Matt Hills on 6/9/16.
//  Copyright © 2016 Matthew Hills. All rights reserved.
//

import UIKit

class BecomeCaddyViewController: UIViewController {
    
    
    @IBOutlet weak var getStartedButton: UIButton!
    
    @IBAction func closeViewButtonPressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    var screenSize = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageViewBackground = UIImageView(frame: CGRectMake(0, 0, screenSize.width, screenSize.height))
        imageViewBackground.image = UIImage(named: "CaddyBackgroundImage")
        imageViewBackground.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.addSubview(imageViewBackground)
        self.view.sendSubviewToBack(imageViewBackground)
        
        navigationController?.navigationBar.barTintColor = UIColor(red: 0/255, green: 51/255, blue: 0/255, alpha: 1.0)
        navigationController?.navigationBar.barStyle = UIBarStyle.BlackTranslucent
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName: UIFont(name:"HelveticaNeue-Light", size: 20)!]
        
        getStartedButton.layer.borderColor = UIColor.whiteColor().CGColor
        getStartedButton.layer.borderWidth = 1
        getStartedButton.layer.cornerRadius = getStartedButton.bounds.height / 2
        getStartedButton.layer.backgroundColor = UIColor.darkGrayColor().colorWithAlphaComponent(0.2).CGColor
    }
}
