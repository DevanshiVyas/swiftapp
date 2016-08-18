//
//  Note.swift
//  notesdeva
//
//  Created by codecamp on 8/18/16.
//  Copyright © 2016 codecamp. All rights reserved.
//

import UIKit

class Note: AnyObject {
    var title: String?
    var message: String?
    
    init (title: String?, message: String?){
        self.title = title
        self.message = message
    }

}
