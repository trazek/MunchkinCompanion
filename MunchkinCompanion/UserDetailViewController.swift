//
//  UserDetailViewController.swift
//  MunchkinCompanion
//
//  Created by Alex Gaesser on 1/31/15.
//  Copyright (c) 2015 AlexGaesser. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {
    
    var detailUserModel: UserModel!
    
    @IBOutlet weak var userLevelLabel: UILabel!
    @IBOutlet weak var combatLevelLabel: UILabel!
    @IBOutlet weak var oneShotLevelLabel: UILabel!
    @IBOutlet weak var effectiveCombatLabel: UILabel!
    @IBOutlet weak var netCombatResultLabel: UILabel!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.userNameTextField.text = detailUserModel.userName
        self.combatLevelLabel.text = "\(detailUserModel.combat)"
        self.userLevelLabel.text = "\(detailUserModel.level)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func decrementLevelButtonPressed(sender: UIButton) {
    }
    
    @IBAction func incrementLevelButtonPressed(sender: UIButton) {
        
    }
    
    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        let appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        
        detailUserModel.userName = userNameTextField.text
//        detailUserModel.combat = 
//        detailUserModel.level
        
        appDelegate.saveContext()
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
