//
//  recipe.swift
//  recipe
//
//  Created by 205-5 on 2015-11-24.
//  Copyright © 2015 MarcBueno. All rights reserved.
//

import UIKit

class recipe: NSObject {
    var title: String?
    var content: String?
    
    init (title: String, content: String){
        self.title = title
        self.content = content
    }
    
    override init(){
        super.init()
    }

}
