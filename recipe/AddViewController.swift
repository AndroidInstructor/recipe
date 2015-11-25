//
//  AddViewController.swift
//  recipe
//
//  Created by 205-5 on 2015-11-24.
//  Copyright © 2015 MarcBueno. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBAction func doneDone(sender: AnyObject) {
        titleText.resignFirstResponder();
    }
    @IBAction func doneButtonClicked(sender: AnyObject) {
        recipeContent.resignFirstResponder()
    }
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var recipeContent: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
