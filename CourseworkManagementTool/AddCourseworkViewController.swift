//
//  AddCourseworkViewController.swift
//  CourseworkManagementTool
//
//  Created by Firas Hazim on 5/18/17.
//  Copyright © 2017 Firas Hazim. All rights reserved.
//

import UIKit
import CoreData


class AddCourseworkViewController: UIViewController {

    @IBOutlet weak var CourseworkName: UITextField!
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func saveCoursework(_ sender: UIButton) {
        
        if self.CourseworkName.text != "" {
            
            let newCourseworks = Courseworks(context: context)
            newCourseworks.name = self.CourseworkName.text
            
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
        }
        else{
            //alert
            let alert = UIAlertController(title: "Name Missing from Coursework", message: "enter a name", preferredStyle: .alert)
            let action1 = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action1)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
