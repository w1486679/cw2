//
//  NewTaskViewController.swift
//  CourseworkManagementTool
//
//  Created by Firas Hazim on 5/18/17.
//  Copyright © 2017 Firas Hazim. All rights reserved.
//

import UIKit
import CoreData

class NewTaskViewController: UIViewController {

    
    var coursework: Courseworks?
    
    @IBOutlet weak var NewTaskName: UITextField!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveNewTasks(_ sender: UIButton) {
          let newtask = Tasks(context: context)
        
        
        //Name "belong " here is the relationship between the entites
        
        newtask.belong?.name = coursework?.name
        
        
        
        newtask.name = self.NewTaskName.text
        
        //Name --addTo"has" here is the relationship between the entites
        coursework?.addToHas(newtask)
    
     (UIApplication.shared.delegate as! AppDelegate).saveContext()
    
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
