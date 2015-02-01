//
//  AddUserViewController.swift
//  MunchkinCompanion
//
//  Created by Alex Gaesser on 1/31/15.
//  Copyright (c) 2015 AlexGaesser. All rights reserved.
//

import UIKit
import CoreData

class AddUserViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userLevelLabel: UILabel!
    @IBOutlet weak var userCombatLabel: UILabel!
    @IBOutlet weak var userOneShotLabel: UILabel!
    @IBOutlet weak var effectiveCombatLabel: UILabel!
    @IBOutlet weak var netCombatResultLabel: UILabel!
    @IBOutlet weak var combatOutcomeLabel: UILabel!
    @IBOutlet weak var monsterLevelLabel: UITextField!
    
    var level = 9
    var combat = 10
    var oneShot = 0
    var monsterLevel = 0
    var effectiveCombat = 0
    var netCombatResult = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        
        let appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        
        let managedObjectContext = appDelegate.managedObjectContext
        let entityDescription = NSEntityDescription.entityForName("UserModel", inManagedObjectContext: managedObjectContext!)
        let user = UserModel(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext!)
        user.userName = userNameTextField.text
        user.level = level
        println("\(user.level)")
        user.combat = combat
        println("\(user.combat)")
        
        appDelegate.saveContext()
        
        var request = NSFetchRequest(entityName: "UserModel")
        var error:NSError? = nil
        
        var results:NSArray = managedObjectContext!.executeFetchRequest(request, error: &error)!
        
        for res in results {
            println(res)
        }
        println("done button")


        self.navigationController?.popViewControllerAnimated(true)
    }
    
//    @IBAction func addButtonPressed(sender: UIButton) {
//        
//        let appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
//        
//        let managedObjectContext = appDelegate.managedObjectContext
//        let entityDescription = NSEntityDescription.entityForName("UserModel", inManagedObjectContext: managedObjectContext!)
//        let user = UserModel(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext!)
//        user.userName = userNameTextField.text
//        user.level = level
//        println("\(user.level)")
//        user.combat = combat
//        println("\(user.combat)")
//        
//        appDelegate.saveContext()
//        
//        var request = NSFetchRequest(entityName: "UserModel")
//        var error:NSError? = nil
//        
//        var results:NSArray = managedObjectContext!.executeFetchRequest(request, error: &error)!
//        
//        for res in results {
//            println(res)
//        }
//        println("done button")
//        
//        self.navigationController?.popViewControllerAnimated(true)
//    }
//    

}
