//
//  RecipeManager.swift
//  recipe
//
//  Created by 205-5 on 2015-11-24.
//  Copyright © 2015 MarcBueno. All rights reserved.
//

import UIKit

class RecipeManager: NSObject {
    static var recipes = [recipe]()
    
    class func AddRecipe(title: String, content: String){
        let r = recipe(title: title, content: content)
        recipes.append(r)
    }
    
    class func DeleteRecipe(id: Int){
        recipes.removeAtIndex(id)
    }
    
    class func GetRecipe(id:Int) -> recipe{
        if(recipes.count>0){
            return recipes[id]
        }else{
            return recipe()
        }
    }
}
