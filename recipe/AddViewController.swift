//
//  AddViewController.swift
//  recipe
//
//  Created by 205-5 on 2015-11-24.
//  Copyright © 2015 MarcBueno. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var doneButton: UIBarButtonItem!
    @IBAction func doneDone(sender: AnyObject) {
        titleText.resignFirstResponder();
    }
    @IBAction func addButton_click(sender: AnyObject) {
        
        RecipeManager.AddRecipe(titleText.text!, content: recipeContent.text!)
        titleText.text = ""
        recipeContent.text = ""

    }
    @IBAction func doneButtonClicked(sender: AnyObject) {
        recipeContent.resignFirstResponder()
    }
    @IBOutlet weak var titleText: UITextField!
    @IBOutlet weak var recipeContent: UITextView!
    @IBOutlet weak var addButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleText.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        recipeContent.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "recipeContentDidChange", name: UITextViewTextDidChangeNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textTitleDidChange", name: UITextFieldTextDidChangeNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func recipeContentDidChange(){
        handleDoneButtonState()
    }
    
    func textTitleDidChange(){
        handleDoneButtonState()
    }
    
    
    
    func handleDoneButtonState(){
        if(recipeContent.text != ""){
            doneButton.enabled = true
        }
        else{
            doneButton.enabled = false
        }
        if(titleText.text != "" || recipeContent.text != ""){
            addButton.enabled = true
            doneButton.enabled = true
            addButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        }else{
            addButton.enabled = false
            doneButton.enabled = false
            addButton.setTitleColor(UIColor.lightGrayColor(), forState: UIControlState.Normal)
        }
        
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
